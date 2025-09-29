Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E59CBA8C42
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 11:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 752C410E3E0;
	Mon, 29 Sep 2025 09:53:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WXtaiPtH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 903B110E3E0;
 Mon, 29 Sep 2025 09:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759139605; x=1790675605;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=f4Zq8YVWZcBL4pvH2ah8d5WOtfpZ4ebUppDY/uQyRmo=;
 b=WXtaiPtHBg3pXwQEoxMY7opHD/gYtZ3jW10aBinfVaerC/C8tsz+fNJg
 aaGUPDx5n+FsHHQBlejB0VwEmqY/9nO0DfjXa57ifQA3raE3h6UlcsFA7
 lbtc158/DTYpyqZiiO25QVbHOztVy4t4g2KZKLJP998ZkJrHsR5Yb4bAX
 bUAGZ1gm+HL7KJUrCuhlBTaSxT7Jkl3u87iwIu6eheRj88CNwcb9UDuYP
 QREPVcyiacEZ2eJuhs3DZmYSJDrz4b7YYMj/u+VJJcS8HUfiTAiclpcFC
 Yd20YV0iwLuyKPpmd++pxQpHcQvtdU3/pSgVdleDWhrxw1c7MWlXI7l+I g==;
X-CSE-ConnectionGUID: grLH63TYTc+RWcy3cE/qvw==
X-CSE-MsgGUID: 2zjposm7TiCZQ3TeUOvn0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11567"; a="65012685"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="65012685"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 02:53:25 -0700
X-CSE-ConnectionGUID: cBLOR/HNSA6RUGR1g2hC1w==
X-CSE-MsgGUID: slkzuOaPR92WR1SJTBuJjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="177756469"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 02:53:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/11] drm/{i915, xe}/stolen: refactor and unify interfaces
In-Reply-To: <aNbeTOg51r9puj4i@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1758732183.git.jani.nikula@intel.com>
 <aNbeTOg51r9puj4i@intel.com>
Date: Mon, 29 Sep 2025 12:53:20 +0300
Message-ID: <8647037b236072ce48940261430d55a7654d4922@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 26 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Sep 24, 2025 at 07:43:29PM +0300, Jani Nikula wrote:
>>=20
>> Jani Nikula (11):
>>   drm/{i915,xe}/stolen: rename i915_stolen_fb to intel_stolen_node
>>   drm/xe/stolen: rename fb to node in stolen compat header
>>   drm/xe/stolen: convert compat stolen macros to inline functions
>>   drm/xe/stolen: switch from BUG_ON() to WARN_ON() in compat
>>   drm/i915/stolen: convert intel_stolen_node into a real struct of its
>>     own
>>   drm/xe/stolen: convert compat static inlines to proper functions
>>   drm/{i915,xe}/stolen: make struct intel_stolen_node opaque
>>   drm/{i915,xe}/stolen: add device pointer to struct intel_stolen_node
>>   drm/{i915,xe}/stolen: use the stored i915/xe device pointer
>>   drm/{i915,xe}/stolen: convert stolen interface to struct drm_device
>>   drm/xe/stolen: use the same types as i915 interface
>
> Looks fine by me. Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks for the review, pushed to din.

> Side note: I have branch somewhere that replaces the raw
> drm_mm_node FBC stuff with a real i915_gem_object. I used
> that as a way to easily expose the CFB and LLB as files in
> debugfs so that I could observe/modify the actual CFB contents.
> I should look into making that official to help future FBC
> debugging. With the abstraction layer I shouldn't even need
> to touch the FBC code itself anymore...

Yay!

BR,
Jani.

--=20
Jani Nikula, Intel
