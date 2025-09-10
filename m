Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 734A1B50E86
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Sep 2025 08:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F7E910E864;
	Wed, 10 Sep 2025 06:53:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kiI25MsZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43B7610E2BF;
 Wed, 10 Sep 2025 06:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757487208; x=1789023208;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=argXRs57Q5ChljOSGp6LYTxzHR/VEZErfrnFs1T5eX8=;
 b=kiI25MsZrMlIK9Dg7JLg5Yr0aTdFZ3dI3Md5JxZ9a4WtmnS/4cCvSlI7
 g5WA6qokOnX2tQvZCc0QOC+J8huIYCP8+2MugxDaitGELtv1Rsp4FAzo0
 RsiPniaVQkaedQ7MFWwATMjP+CEGSN/er7UKe5UrsuRWPwz75y/YmFDuI
 3i6se5o0mxGXbhZit/6eIa8lTnd/t8XBaw0KawOb6w2Ek6o1CiBy0EIzr
 BsrveLx+MuiMM4+ATiL4MJwfpNfrqK+zHEXaBdEixUZON0LniPcHzuhQh
 WTq14Pn6hjwcw8gQ9ONNt3SUY10cKKn3j//PhDgyzMuoQ0Yjqsk2weHJG w==;
X-CSE-ConnectionGUID: acfiaVcuT+mnQOJZ/Ey1Rw==
X-CSE-MsgGUID: +JHON1QsRqiGFcLeMKX2yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="82376640"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="82376640"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 23:53:27 -0700
X-CSE-ConnectionGUID: 4ERkyensQza9ZQviIBu/WQ==
X-CSE-MsgGUID: FWfMDlo0RQWr2yIUzOHIeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,253,1751266800"; d="scan'208";a="173150912"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.72])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 23:53:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [RESEND 00/12] drm/i915: vlv clock cleanups
In-Reply-To: <aMArwlpXAoA60Q-0@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1755607980.git.jani.nikula@intel.com>
 <aMArwlpXAoA60Q-0@intel.com>
Date: Wed, 10 Sep 2025 09:53:21 +0300
Message-ID: <138e4a2e2770990e5c367dd8c9d3a76095664d84@intel.com>
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

On Tue, 09 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Aug 19, 2025 at 03:53:30PM +0300, Jani Nikula wrote:
>> Rebase and resend of [1].
>>=20
>> [1] https://lore.kernel.org/r/cover.1754385408.git.jani.nikula@intel.com
>>=20
>> Jani Nikula (12):
>>   drm/i915: add vlv_clock_get_gpll()
>>   drm/i915: add vlv_clock_get_czclk()
>>   drm/i915: add vlv_clock_get_hrawclk()
>>   drm/i915: make vlv_get_cck_clock_hpll() static
>>   drm/i915: add vlv_clock_get_cdclk()
>>   drm/i915: make vlv_get_cck_clock() static
>>   drm/i915: rename vlv_get_hpll_vco() to vlv_clock_get_hpll_vco()
>>   drm/i915: cache the results in vlv_clock_get_hpll_vco() and use it
>>     more
>>   drm/i915: remove intel_update_czclk() as unnecessary
>>   drm/i915: log HPLL frequency similar to CZCLK
>>   drm/i915: move hpll and czclk caching under display
>>   drm/i915: split out vlv_clock.[ch]
>>=20
>>  drivers/gpu/drm/i915/Makefile                 |  1 +
>>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 29 ++----
>>  drivers/gpu/drm/i915/display/intel_display.c  | 61 -------------
>>  drivers/gpu/drm/i915/display/intel_display.h  |  6 --
>>  .../gpu/drm/i915/display/intel_display_core.h |  5 ++
>>  .../drm/i915/display/intel_display_driver.c   |  1 -
>>  drivers/gpu/drm/i915/display/vlv_clock.c      | 89 +++++++++++++++++++
>>  drivers/gpu/drm/i915/display/vlv_clock.h      | 38 ++++++++
>
> Ideally that should live in soc/
>
> I think we could even link it separately to both i915 and
> the (eventual) display module since they don't actually
> need to share anything (apart from the sideband mailbox
> interface). Would avoid having to add anything for this
> stuff into the inter module interface.

Superficially soc/ is obvious, but it has been a bit of a problem area
for sharing between drivers. For example, what to do with platform
detection code there? Or MMIO?

> And as mentioned in the reply to one of the patches the
> vlv_iosf_sb_get/put() stuff is now quite messy. So that
> probably needs another cleanup pass to make the interface
> actually sensible.

Judging by the CI results, I guess we need that pass before
merging. Ugh.

> I guess all of that could be done/thought about later though,
> so for now the series is:
> Acked-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, need to still track that problem before merging.

BR,
Jani.

>
>>  drivers/gpu/drm/i915/gt/intel_rc6.c           |  3 +-
>>  drivers/gpu/drm/i915/gt/intel_rps.c           | 11 ++-
>>  drivers/gpu/drm/i915/i915_drv.h               |  3 -
>>  drivers/gpu/drm/xe/xe_device_types.h          |  6 --
>>  12 files changed, 148 insertions(+), 105 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.c
>>  create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.h
>>=20
>> --=20
>> 2.47.2

--=20
Jani Nikula, Intel
