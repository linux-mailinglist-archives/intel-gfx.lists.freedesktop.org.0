Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA02C8D6232
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:53:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 653B010E32E;
	Fri, 31 May 2024 12:53:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LvPCaW6F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E390510E16A
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 12:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717160003; x=1748696003;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=PGfIbqNQbeiTAr0Qsv2B6L2eY9U37KC3HrLvjGFoAl8=;
 b=LvPCaW6FG0oaxhOZ4WZm8H0ul1UsxW0g+GrFz0QVIMu8/4gSZ/AjDdIw
 Fjv0EeApW96C9uH+agmjCxHysatZt3ZuD4U8yqcgFFOtY9VeCGnyzjAA1
 YsYFK66V7FAbek/MAN6twTDypOxg8YRKwUOJc/EfjTCqp1wXY8QvIeCh2
 QpmxAoY/dYXOQHbV0tYEgiPaTs/4MkTCrJesvcp8dETHL9QXSvRJp4eVV
 Vx1Eg4qvN/rM7KKc24e8xhrBd/sbARukerRilHz30orlBuOF3n55gPyEC
 +6tgrGrxcPyHmeNPrxPOhYdMwgoRtNclldH0i1VBse23cyz/BxNpA6ySV Q==;
X-CSE-ConnectionGUID: dESV6fanRkaQOS4grP9x2Q==
X-CSE-MsgGUID: wSp7LdtxRJKgfAV6OlfCoA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13461163"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13461163"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:53:22 -0700
X-CSE-ConnectionGUID: 11XKj6yUSkONLFeMbD3V7Q==
X-CSE-MsgGUID: Am9xAtMETkKen2NU3mT94Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="41226102"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:53:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/5] drm/i915: DP AUX CH macro cleanups
In-Reply-To: <Zlm8th9xrAe1z8LY@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1716894909.git.jani.nikula@intel.com>
 <Zlm8th9xrAe1z8LY@intel.com>
Date: Fri, 31 May 2024 15:53:16 +0300
Message-ID: <87a5k6f8hv.fsf@intel.com>
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

On Fri, 31 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, May 28, 2024 at 02:15:37PM +0300, Jani Nikula wrote:
>> Jani Nikula (5):
>>   drm/i915/gvt: use proper macros for DP AUX CH CTL registers
>>   drm/i915: remove unused DP AUX CH register macros
>>   drm/i915: rearrange DP AUX register macros
>>   drm/i915: move PCH DP AUX CH regs to intel_dp_aux_regs.h
>>   drm/i915: remove intermediate _PCH_DP_* macros
>
> Didn't spot anything off.
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.


>
>>=20
>>  .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 18 +++++++---
>>  drivers/gpu/drm/i915/gvt/handlers.c           | 35 +++++++++----------
>>  drivers/gpu/drm/i915/i915_reg.h               | 32 ++---------------
>>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  8 ++---
>>  4 files changed, 37 insertions(+), 56 deletions(-)
>>=20
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
