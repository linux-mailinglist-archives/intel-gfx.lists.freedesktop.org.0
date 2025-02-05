Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 557C9A28C23
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 14:44:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5276D10E7B1;
	Wed,  5 Feb 2025 13:44:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i3eQkPnl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CF9D10E7B0;
 Wed,  5 Feb 2025 13:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738763071; x=1770299071;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pZuQOs0ezi3gK/5h3906HBUA9ZpL+1+rDBjo3QVvfHg=;
 b=i3eQkPnlvZ07EXYpnR5TztDvple49mzfOcV4X3yY/NZ8H+z4+X+HT+db
 514y41QVsPEUmhfE27aGXCfn44siHP3gEBcHiolvBoyS8Xy4n5Km+qbos
 Ive/lYv1if44DIyhulkvxxDGr/XuwG/2wrag8E0xlZW0caPYE85CkAx76
 nUJrtcMcQu3EA56wYk5pHzkf+41cuL2pJs1JmcTFw0VMNA+MEXpLsbCcL
 nCn8O+NxfF45Llz1D8lEwWhQB0Re2hZ3xcHMQsxQMicPfkmeXQn44Ayho
 HyyQYPBxG9UNGkjAH6GUn0vz3qEIdxQyP4w9a1qTICLMdA7aM1pk1qBp3 Q==;
X-CSE-ConnectionGUID: tT+BCx7JTWCzGsG/opqB1g==
X-CSE-MsgGUID: sMfpCWufTf+ZhafuRuN4Cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="38533866"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="38533866"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 05:44:31 -0800
X-CSE-ConnectionGUID: iTxNbSnQTTehHI4EK+XCQA==
X-CSE-MsgGUID: txM82kzESNqKRWgH+f7hYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111347119"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 05:42:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/mst: fix INT_MAX to .4 fixed point conversion
 mistake
In-Reply-To: <Z6I3iNAjlZHnxxyf@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250204153717.2996923-1-jani.nikula@intel.com>
 <Z6I3iNAjlZHnxxyf@ideak-desk.fi.intel.com>
Date: Wed, 05 Feb 2025 15:41:59 +0200
Message-ID: <8734gs4ifs.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 04 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, Feb 04, 2025 at 05:37:17PM +0200, Jani Nikula wrote:
>> intel_dp_mtp_tu_compute_config() conversion to use .4 fixed point didn't
>> take into account that intel_dp_mst_max_dpt_bpp() may return INT_MAX
>> when the transport limitation is not relevant. Converting INT_MAX to .4
>> fixed point results in -1.0, which then gets used as if it were a real
>> max BPP value:
>> 
>> i915 0000:00:02.0: [drm:intel_dp_mtp_tu_compute_config [i915]] Limiting bpp to max DPT bpp (24.0000 -> -1.0000)
>> i915 0000:00:02.0: [drm:intel_dp_mtp_tu_compute_config [i915]] Looking for slots in range min bpp 18.0000 max bpp -1.0000
>> 
>> Just return 0 for "no max DPT BPP", and handle it explicitly.
>> 
>> Fixes: 67782bf6e8a6 ("drm/i915/mst: Convert intel_dp_mtp_tu_compute_config() to .4 format")
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Pushed to din, thanks for the review!

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index b729e27cdde2..95abc6ea85eb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -111,7 +111,7 @@ static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
>>  		&crtc_state->hw.adjusted_mode;
>>  
>>  	if (!intel_dp_is_uhbr(crtc_state) || DISPLAY_VER(display) >= 20 || !dsc)
>> -		return INT_MAX;
>> +		return 0;
>>  
>>  	/*
>>  	 * DSC->DPT interface width:
>> @@ -248,7 +248,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>>  	}
>>  
>>  	max_dpt_bpp_x16 = fxp_q4_from_int(intel_dp_mst_max_dpt_bpp(crtc_state, dsc));
>> -	if (max_bpp_x16 > max_dpt_bpp_x16) {
>> +	if (max_dpt_bpp_x16 && max_bpp_x16 > max_dpt_bpp_x16) {
>>  		drm_dbg_kms(display->drm, "Limiting bpp to max DPT bpp (" FXP_Q4_FMT " -> " FXP_Q4_FMT ")\n",
>>  			    FXP_Q4_ARGS(max_bpp_x16), FXP_Q4_ARGS(max_dpt_bpp_x16));
>>  		max_bpp_x16 = max_dpt_bpp_x16;
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
