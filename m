Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 836C1ACDF85
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 15:45:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E89010E824;
	Wed,  4 Jun 2025 13:45:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jff60H2K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D8DC10E7C6;
 Wed,  4 Jun 2025 13:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749044707; x=1780580707;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=rbbQDugOCHJoSpWmg2mst+M58X9S5qnkMdWFQXovWM4=;
 b=jff60H2Kj6ByrFYnyEnDL32OwC4W6FGeRmUcXazgIUoEgpav6pDkVfKs
 Rts362w24NeoYQ8mYw62taneY1uHaEU2MtJpPs1yiXrdo/DItNlvj7X+6
 GSrivy1mUKCa9SrSanlzUw+Op+Zsy0QSLUO1vAM1drB6o2aXnuCW+lUGb
 MXQT9AEoxqNbYpqzj5XjJ/tmkW4W0cGksXlqLkKskNIvWCSBiJtWyB3OU
 SGh5WyKs6GUtgVyD1ION+CdPZYrSy5x/SaK2zEsA0Kz7lGN3Ne3v0UYfK
 X1N7RKXciBvdEqh88yZVRDWas+UDmCP4a8EWVoMrsP3eevmtonZBx6ByR w==;
X-CSE-ConnectionGUID: q+4tGjn8RkWHLw9dkHCpUA==
X-CSE-MsgGUID: CjLD2KGmQHW9lPVdFq840A==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="62517211"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="62517211"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:45:07 -0700
X-CSE-ConnectionGUID: ECFf1cuuSCq1SfKDIdNaZw==
X-CSE-MsgGUID: zHxCCbtXQYeDYtSddpwakA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="176149398"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.101])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:45:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [RESEND 3/6] drm/i915/wm: DG2 doesn't have dram info to look up
 wm_lv_0_adjust_needed
In-Reply-To: <c8088aeeee1a64fd66c02eb1e3116b02b39daced.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1748337870.git.jani.nikula@intel.com>
 <a866641bff364dcfcaaabaa1d53c4a8cfa94ff3f.1748337870.git.jani.nikula@intel.com>
 <c8088aeeee1a64fd66c02eb1e3116b02b39daced.camel@intel.com>
Date: Wed, 04 Jun 2025 16:45:02 +0300
Message-ID: <c8aaed05464481b2ef277eb7e2e9c215ac513c62@intel.com>
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

On Wed, 04 Jun 2025, "Govindapillai, Vinod" <vinod.govindapillai@intel.com>=
 wrote:
> On Tue, 2025-05-27 at 12:25 +0300, Jani Nikula wrote:
>> There's no dram info on DG2 that we could use. The struct dram_info is
>> all zero on it, but be explicit about this.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>> =C2=A0drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
>> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
>> b/drivers/gpu/drm/i915/display/skl_watermark.c
>> index f5600f4b7772..817939f6d4dd 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -3251,7 +3251,7 @@ adjust_wm_latency(struct intel_display *display,
>> =C2=A0	 * any underrun. If not able to get Dimm info assume 16GB dimm
>> =C2=A0	 * to avoid any underrun.
>> =C2=A0	 */
>> -	if (dram_info->wm_lv_0_adjust_needed)
>> +	if (!display->platform.dg2 && dram_info->wm_lv_0_adjust_needed)
>
> For Disp version >=3D 12, wm_lv_0_adjust_needed is hard coded to false. S=
o I don't think this explicit
> DG2 check is needed here..

The point here is that there is no dram info parsing for DG2 at
all. intel_dram_detect() bails out early for DG2. It's wrong to even
look at it.

And part of that is preparation for patch 6, where dram_info will be
NULL for platforms that don't do dram info parsing!

BR,
Jani.



>
> with that,
>
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>
>
>
>> =C2=A0		wm[0] +=3D 1;
>> =C2=A0}
>> =C2=A0
>

--=20
Jani Nikula, Intel
