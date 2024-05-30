Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BBE8D45AC
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 08:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3965810E21F;
	Thu, 30 May 2024 06:59:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y30GNcos";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E155C10E21F;
 Thu, 30 May 2024 06:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717052383; x=1748588383;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mFEXPmYeDrlwTAWMEXrRAdpAoBY8v2v94YlbzDnRwf0=;
 b=Y30GNcosAD6vqhqqMqs4nxI3U+pErn1OPh5opWkU/uKEwVexObnrZZmF
 0WavmA+FqgtRt+Qjp4+4x5nmQm9Uhs9Si6Rz0XeopB1MF/b/Kv+sux0V2
 dgCQnOfbX/Yuw1cbTGF6/ahG6sbULitY7q4a7tU7YpyKvtJXCa79Qwt2B
 5rFIIlldd+REGx5XuMFGpCnhPTSJWIEz5ESbwmsggb+RHE/JMaRZa2uRb
 tZcIfkR44121+OQdoCKU9qFJbHapldDQb9tSJHH6ExlskFN31oBrIIVbD
 rPiuFhPtMvwIfNDKclgKXXG5qacDu/NAA2LVODjja2B/C8QPMmFSS9jt2 w==;
X-CSE-ConnectionGUID: HTcE0RnETV+KKq5LdlGB9A==
X-CSE-MsgGUID: WFlDuA/VTLynLSMBJAEJ8g==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="13354389"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="13354389"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 23:59:42 -0700
X-CSE-ConnectionGUID: jdJah5eKRLq9TWLR79BGdA==
X-CSE-MsgGUID: z8FuxQROQlqv3DlwyGs/9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="58885997"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.132])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 23:59:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 02/12] drm/i915/wm: clarify logging on not finding CxSR
 latency config
In-Reply-To: <20240529210005.GQ4990@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1716906179.git.jani.nikula@intel.com>
 <bd4ac9a69db1b2be4159b5ed97a16f2e845cd24d.1716906179.git.jani.nikula@intel.com>
 <20240529210005.GQ4990@mdroper-desk1.amr.corp.intel.com>
Date: Thu, 30 May 2024 09:59:37 +0300
Message-ID: <87ikyviy3q.fsf@intel.com>
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

On Wed, 29 May 2024, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Tue, May 28, 2024 at 05:24:51PM +0300, Jani Nikula wrote:
>> Clarify and unify the logging on not finding PNV CxSR latency config.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/i9xx_wm.c | 17 +++++++----------
>>  1 file changed, 7 insertions(+), 10 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
>> index 8657ec0abd2d..8b8a0f305c3a 100644
>> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
>> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
>> @@ -75,7 +75,7 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *
>>  	int i;
>>  
>>  	if (i915->fsb_freq == 0 || i915->mem_freq == 0)
>> -		return NULL;
>> +		goto err;
>
> Is there even a need for this check?  0/0 will fail to match anything in
> the table and will just drop through to the debug message anyway, right?

True, could be dropped. I just thought it was more explicit this way,
but maybe fewer lines is better.

BR,
Jani.

>
>
> Matt
>
>>  
>>  	for (i = 0; i < ARRAY_SIZE(cxsr_latency_table); i++) {
>>  		const struct cxsr_latency *latency = &cxsr_latency_table[i];
>> @@ -88,7 +88,10 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *
>>  			return latency;
>>  	}
>>  
>> -	drm_dbg_kms(&i915->drm, "Unknown FSB/MEM found, disable CxSR\n");
>> +err:
>> +	drm_dbg_kms(&i915->drm,
>> +		    "Could not find CxSR latency for DDR%s, FSB %u MHz, MEM %u MHz\n",
>> +		    i915->is_ddr3 ? "3" : "2", i915->fsb_freq, i915->mem_freq);
>>  
>>  	return NULL;
>>  }
>> @@ -637,8 +640,7 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
>>  
>>  	latency = pnv_get_cxsr_latency(dev_priv);
>>  	if (!latency) {
>> -		drm_dbg_kms(&dev_priv->drm,
>> -			    "Unknown FSB/MEM found, disable CxSR\n");
>> +		drm_dbg_kms(&dev_priv->drm, "Unknown FSB/MEM, disabling CxSR\n");
>>  		intel_set_memory_cxsr(dev_priv, false);
>>  		return;
>>  	}
>> @@ -4023,12 +4025,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
>>  		dev_priv->display.funcs.wm = &g4x_wm_funcs;
>>  	} else if (IS_PINEVIEW(dev_priv)) {
>>  		if (!pnv_get_cxsr_latency(dev_priv)) {
>> -			drm_info(&dev_priv->drm,
>> -				 "failed to find known CxSR latency "
>> -				 "(found ddr%s fsb freq %d, mem freq %d), "
>> -				 "disabling CxSR\n",
>> -				 (dev_priv->is_ddr3 == 1) ? "3" : "2",
>> -				 dev_priv->fsb_freq, dev_priv->mem_freq);
>> +			drm_info(&dev_priv->drm,  "Unknown FSB/MEM, disabling CxSR\n");
>>  			/* Disable CxSR and never update its watermark again */
>>  			intel_set_memory_cxsr(dev_priv, false);
>>  			dev_priv->display.funcs.wm = &nop_funcs;
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
