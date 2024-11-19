Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 051839D2680
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 14:11:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8480410E633;
	Tue, 19 Nov 2024 13:11:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FzIhNZtF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AC8610E633;
 Tue, 19 Nov 2024 13:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732021878; x=1763557878;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=O66ndQEWiMw7NF0ucuubiUrZaDXPqU0ziQ90v2ZhdMA=;
 b=FzIhNZtFtghyCKCl9FJwTMYml9v8Xth3U50phi31ROt8+X1xarwl8Oj5
 /dNxgIx+vNVSh0wIhSSDhdoMqcyIAko6SPKVhnA3TQ4UYFVhYpL/3seBN
 9R9xHMfaIxpEYYb5TSFkrAGV4IiBPB4gIBIiR6UvhDf7nYT8phisGH5nh
 FOUaRWAUfRaO8MrdyZG4lKKfpyl/57x9s7B7xZyTgPIcO831RQojxzpAf
 3iz5hj1MLVQZ0NRp+8R4+Ou4hIDOQbt1fwLClBQd1DOu7QNsemCUunBeC
 zFX/NvzRz/LQW3t/LhfP4drQ33blT83RP4b6ks76tQcfSm1eOV2v06Oa9 w==;
X-CSE-ConnectionGUID: 14ICWqtqRaSQY0OxW0GP7w==
X-CSE-MsgGUID: hcqSDXIySF61hqzzhoPx4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31770793"
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="31770793"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 05:11:17 -0800
X-CSE-ConnectionGUID: drzCGTLRSzCYhAfPk2K6Hg==
X-CSE-MsgGUID: brvLmYV+Qi2vyVNaa5Vdrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="120481906"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 05:11:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/11] drm/i915/ddi: simplify
 intel_ddi_get_encoder_pipes() slightly
In-Reply-To: <Zzx5IKsm7us1CcBP@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1731941270.git.jani.nikula@intel.com>
 <0aa1274597fa84a0dc3c9ccf7bb20997d1d154bf.1731941270.git.jani.nikula@intel.com>
 <Zzx5IKsm7us1CcBP@ideak-desk.fi.intel.com>
Date: Tue, 19 Nov 2024 15:11:12 +0200
Message-ID: <87frnn2wsv.fsf@intel.com>
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

On Tue, 19 Nov 2024, Imre Deak <imre.deak@intel.com> wrote:
> On Mon, Nov 18, 2024 at 04:49:06PM +0200, Jani Nikula wrote:
>> Use a temporary variable for DDI mode to simplify the conditions. This
>> is in line with the other places that read DDI mode.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++----
>>  1 file changed, 5 insertions(+), 4 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 33628cbc0f72..e25b712bf03b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -818,7 +818,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
>>  	mst_pipe_mask = 0;
>>  	for_each_pipe(dev_priv, p) {
>>  		enum transcoder cpu_transcoder = (enum transcoder)p;
>> -		unsigned int port_mask, ddi_select;
>> +		u32 port_mask, ddi_select, ddi_mode;
>>  		intel_wakeref_t trans_wakeref;
>>  
>>  		trans_wakeref = intel_display_power_get_if_enabled(dev_priv,
>> @@ -842,9 +842,10 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
>>  		if ((tmp & port_mask) != ddi_select)
>>  			continue;
>>  
>> -		if ((tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_DP_MST ||
>> -		    (HAS_DP20(display) &&
>> -		     (tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B))
>> +		ddi_mode = tmp & TRANS_DDI_MODE_SELECT_MASK;
>> +
>> +		if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST ||
>> +		    (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display)))
>
> nit: the above condition and the fdi counterpart is used elsewhere too,
> so could use a helper. The patchset looks ok regardless:

It'll need to change anyway going forward, as the latter needs better
SST vs. MST detection.

> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks,
Jani.


>
>>  			mst_pipe_mask |= BIT(p);
>>  
>>  		*pipe_mask |= BIT(p);
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
