Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6AB8B54DB
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 12:16:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D70F10F03F;
	Mon, 29 Apr 2024 10:16:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cj0FTI+7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9498510F03F
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 10:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714385813; x=1745921813;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=o/+DXrR/EIPnxZYlfWKg4PbJcqeCG4KtDQcXulOJ6B4=;
 b=cj0FTI+7gKaDNQ3wO7Zx6CjmCqTDPJSMtsOA56HEDsuT05b6hLksvn+x
 t2pt0mvYULhoPfZNBN3yp3sIhDbRh7U/5p0alxMfAbZNmgwopIOA7feWs
 WdkoEW3Rp9XqDrR9n6qlebRxL6TraTr6O/CdiWlilah8V4YQaOUt7k+GU
 zdzeO/6OyNvhexIa/1eGaX71PB3JLleMub6HiDRrC20xQMjMmhmcuSw6J
 BA+F8hpKSGLWocKbrIexgIPdZ1ChNGZ+EiLpi5yYhg9BNkr+AZaUES8OM
 i38FkdV2PMywAVqXjlWN2FBNaaj2qnC6BMbGYmZMSz96tGhy0BYPuyPAV A==;
X-CSE-ConnectionGUID: AMGtJNkkRlK8u6cvxZ2LMw==
X-CSE-MsgGUID: DKMuRMH4R/iKvn2qxuoPsA==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="12973892"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="12973892"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 03:16:53 -0700
X-CSE-ConnectionGUID: 494bC5hORu+qjCIIGkI3zg==
X-CSE-MsgGUID: u+2lpTtVQFWjJIq4pq8lmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="26692446"
Received: from aantonov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 03:16:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 3/4] drm/i915/display: split out intel_fbc_regs.h
 from i915_reg.h
In-Reply-To: <ZivCPC7znGUDO0lR@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1714128645.git.jani.nikula@intel.com>
 <aa9b5d8adefbe97e1e37c9cfada3ab1581b0e8d5.1714128645.git.jani.nikula@intel.com>
 <ZivCPC7znGUDO0lR@intel.com>
Date: Mon, 29 Apr 2024 13:16:48 +0300
Message-ID: <87h6fk4gof.fsf@intel.com>
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

On Fri, 26 Apr 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Apr 26, 2024 at 01:51:36PM +0300, Jani Nikula wrote:
>> Clean up i915_reg.h.
>>=20
>> v2: Drop chicken regs and comments (Ville)
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed the lot to din.

BR,
Jani.


--=20
Jani Nikula, Intel
