Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D949AEB7EF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 14:43:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24E1F10EA05;
	Fri, 27 Jun 2025 12:43:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jGymb10F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E003E10E9FF;
 Fri, 27 Jun 2025 12:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751028210; x=1782564210;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=amX9Hn9SZqcN8rl3C6HwI8vOhhkBrCH7Q6cSo++gkFs=;
 b=jGymb10FXI4OooUrUNPPIulnFipX/cfWqPPEgS+UL1vNmjpt1t5EiNQ5
 Q2BZwjV1ISa2AkYajWopmgUeRcMp5PoSdBwWBtYUK2JSdNkOLautu6/xP
 txfG4FcU7wFKX+qbf2RUbQrf9Stwng1XNNS5wzicvUMnuM0tghC+lhcc1
 AiBgHB2ZgkHktOp7y4R4GQvTYGYIDvq1LrVoxzSsxuYaCPQi3R2lgnHgf
 lO2k2vfZgtVtG3tR+awTvZQWvH2mNOKkCwv+Nu2uCQhtecd5+pQDWLHA1
 mtWMO7JAj+f42z+nF11WMPrgYJSB2oWq7xH5onm7T89uBi8ujytaiXkzq Q==;
X-CSE-ConnectionGUID: vuia8yKHTLCqR7kLKvVHCA==
X-CSE-MsgGUID: IsreLrjtRfmBvoLAp+Z+uA==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="63937720"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="63937720"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 05:43:29 -0700
X-CSE-ConnectionGUID: 6OPP5vxXRWybhJwHFePztA==
X-CSE-MsgGUID: DiArT/yrSHWGoaYYfn+u2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="176476991"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 05:43:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 18/18] drm/i915/ddi: prefer read_poll_timeout() over
 readx_poll_timeout()
In-Reply-To: <aF6H5qosTRHtzfJH@ideak-desk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1751023767.git.jani.nikula@intel.com>
 <59bcc15dd4debf00ee0c7b430a3b701462ac9de7.1751023767.git.jani.nikula@intel.com>
 <aF6H5qosTRHtzfJH@ideak-desk>
Date: Fri, 27 Jun 2025 15:43:25 +0300
Message-ID: <e964f219f14f46661fd9ff03443a85069480230e@intel.com>
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

On Fri, 27 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Fri, Jun 27, 2025 at 02:36:32PM +0300, Jani Nikula wrote:
>> Unify on using read_poll_timeout() throughout instead of mixing with
>> readx_poll_timeout(). While the latter can be ever so slightly simpler,
>> they are both complicated enough that it's better to unify on one
>> approach only.
>> 
>> While at it, better separate the handling of error returns from
>> drm_dp_dpcd_readb() and the actual status byte. This is best achieved by
>> inlining the read_fec_detected_status() function.
>> 
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c | 33 +++++++++---------------
>>  1 file changed, 12 insertions(+), 21 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 0405396c7750..fc4587311607 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -2339,34 +2339,25 @@ static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
>>  		drm_dbg_kms(display->drm, "Failed to clear FEC detected flags\n");
>>  }
>>  
>> -static int read_fec_detected_status(struct drm_dp_aux *aux)
>> -{
>> -	int ret;
>> -	u8 status;
>> -
>> -	ret = drm_dp_dpcd_readb(aux, DP_FEC_STATUS, &status);
>> -	if (ret < 0)
>> -		return ret;
>> -
>> -	return status;
>> -}
>> -
>>  static int wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
>>  {
>>  	struct intel_display *display = to_intel_display(aux->drm_dev);
>>  	int mask = enabled ? DP_FEC_DECODE_EN_DETECTED : DP_FEC_DECODE_DIS_DETECTED;
>> -	int status;
>> -	int err;
>> +	u8 status = 0;
>> +	int ret, err;
>>  
>> -	err = readx_poll_timeout(read_fec_detected_status, aux, status,
>> -				 status & mask || status < 0,
>> -				 10000, 200000);
>> +	ret = read_poll_timeout(drm_dp_dpcd_readb, err,
>
> drm_dp_dpcd_read_byte()? With that it looks ok:

Oh, yes.

>
> Reviewed-by: Imre Deak <imre.deak@intel.com>
>
>> +				err || (status & mask),
>> +				10 * 1000, 200 * 1000, false,
>
> Nit: there's also USEC_PER_MSEC.

I considered that, and decided the straight 1000 is more obvious.

BR,
Jani.

>
>> +				aux, DP_FEC_STATUS, &status);
>>  
>> -	if (err || status < 0) {
>> +	/* Either can be non-zero, but not both */
>> +	ret = ret ?: err;
>> +	if (ret) {
>>  		drm_dbg_kms(display->drm,
>> -			    "Failed waiting for FEC %s to get detected: %d (status %d)\n",
>> -			    str_enabled_disabled(enabled), err, status);
>> -		return err ? err : status;
>> +			    "Failed waiting for FEC %s to get detected: %d (status 0x%02x)\n",
>> +			    str_enabled_disabled(enabled), ret, status);
>> +		return ret;
>>  	}
>>  
>>  	return 0;
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
