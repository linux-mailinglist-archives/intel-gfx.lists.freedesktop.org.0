Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4B893B37C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 17:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB04810E72B;
	Wed, 24 Jul 2024 15:19:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VFk48I8d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EA8810E72B
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 15:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721834341; x=1753370341;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=JoRBUu+dAv32oR+ilKE5E3SUmbgwoqrckYuZO1rT5Sg=;
 b=VFk48I8dlRnBrGtQOHRj80btVhVJFNzK7dRWc9PqXzp7uJzrocfd/MhG
 LBzrJl5CCTugJ0QhwRr3N+U1xJqpo07xMmz4ORLFx03A8KacNAnF0PAmZ
 3uJjQ4vSqEABS/wdXnHD6guA3fZicbb3TXtsfslwu28Nd01O6dIbQPkZO
 0It3s2smkQXZU2rhuHZtGDUShiG5ri3XUWqfhjIe43qJ9xUrpAEmF2/Te
 DJLiVShZnDXYa2fzvZEf2FjL2aisEWUUKuX26F/+IXrhz1nnKUXXhHtRT
 TpD5QPiTCIVIHZ0tkMzd5xH+9nQ4TeaJ5L9uNRM7hqMWD0COVb/tOS4SX g==;
X-CSE-ConnectionGUID: 7fpMEPmQRYKOnrNC1t2AGA==
X-CSE-MsgGUID: eG9f7wiETKOBsZxFOw4HDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19215843"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19215843"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 08:19:00 -0700
X-CSE-ConnectionGUID: sfbbESClSgSAaYpbUCDQDQ==
X-CSE-MsgGUID: IrUHIcOzR0i5ieJxnVVPnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52492489"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.197])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 08:18:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp: Clear VSC SDP during post ddi disable routine
In-Reply-To: <5e9a2674-8582-4fd9-9495-440322d457fc@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240723042802.3618046-1-suraj.kandpal@intel.com>
 <5e9a2674-8582-4fd9-9495-440322d457fc@intel.com>
Date: Wed, 24 Jul 2024 18:18:55 +0300
Message-ID: <87ed7ikecg.fsf@intel.com>
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

On Wed, 24 Jul 2024, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 7/23/2024 9:58 AM, Suraj Kandpal wrote:
>> Clear VSC SDP if intel_dp_set_infoframes is called from post ddi disable
>> routine i.e with the variable of enable as false. This is to avoid
>> an infoframes.enable mismatch issue which is caused when pipe is
>> connected to eDp which has psr then connected to DPMST. In this case
>> eDp's post ddi disable routine does not clear infoframes.enable VSC
>> for the given pipe and DPMST does not recompute VSC SDP and write
>> infoframes.enable which causes a mismatch.
>>
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
> LGTM
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 1e43e32e0519..8b60d7f34ab8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -4370,7 +4370,7 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
>>   		val &= ~VDIP_ENABLE_PPS;
>>   
>>   	/* When PSR is enabled, this routine doesn't disable VSC DIP */
>> -	if (!crtc_state->has_psr)
>> +	if (!enable || !crtc_state->has_psr)

The comment no longer matches the code with this.

BR,
Jani.

>>   		val &= ~VIDEO_DIP_ENABLE_VSC_HSW;
>>   
>>   	intel_de_write(dev_priv, reg, val);

-- 
Jani Nikula, Intel
