Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D061D8B97B6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 11:28:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 543EF10E8EF;
	Thu,  2 May 2024 09:28:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q8CQg2jE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4865E10E946
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 09:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714642118; x=1746178118;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3S6q8m2sjjDtzCRzMNUYr/vibHmL7EkkCBti+DhF86Y=;
 b=Q8CQg2jEJwwQVnLdYsrTln9Buzg7Fg1QwAqjEDxHhiStQS6c95p6rfzs
 CgQHqG6U7UcgmmhWubK/JVnC5zasAz3VMIGJR7okrtE5NRH6blMgtsakd
 dhFVce3o24g/zeDynp4vLs0BuzdVUUT+hNZJKq42NYhiYINvR9Zfw2ll4
 kTIZVgF6EMdGO14/hriTunvitYB4QCAaeMtvHtC9vBYegwF1umKBvwzQt
 3hZXv02flcaD8DjFcEtxpsDCXNcumQO5KzPboVSq/Hs7Z4wD/vUjTKa9Y
 8vZ2rvyAztTyRVSMT90Js9pHcbjjJsctye3R1sl2QPmnACnBPUwgJI+7S g==;
X-CSE-ConnectionGUID: q2LdQRjOQVSb9ceFtmAxWQ==
X-CSE-MsgGUID: 7ctXZ/ZdQmyV5bSO4Tz6rQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="10274980"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="10274980"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 02:28:38 -0700
X-CSE-ConnectionGUID: QyJmmh7iS2e19HSa2gWIrg==
X-CSE-MsgGUID: tjMSDz+mT+KA90HWCbztdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27144887"
Received: from unknown (HELO localhost) ([10.245.245.19])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 02:28:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jouni.hogander@intel.com
Subject: Re: [PATCH 05/19] drm/i915: pass dev_priv explicitly to
 EDP_PSR_AUX_CTL
In-Reply-To: <ZjGmcO2B--qp60n9@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1714471597.git.jani.nikula@intel.com>
 <66ec1f81be49c87cd9613ba052ce6fd50362d0e0.1714471597.git.jani.nikula@intel.com>
 <ZjGmcO2B--qp60n9@intel.com>
Date: Thu, 02 May 2024 12:28:33 +0300
Message-ID: <87edakpnpa.fsf@intel.com>
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

On Tue, 30 Apr 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Apr 30, 2024 at 01:09:59PM +0300, Jani Nikula wrote:
>> Avoid the implicit dev_priv local variable use, and pass dev_priv
>> explicitly to the EDP_PSR_AUX_CTL register macro.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Two things crossing my mind at this point:
>
> 1. perhaps we should have grouped by impacted file and all these psr cases
>    together?
> 2. then perhaps while doing the whole file we could already do a
>    s/dev_priv/i915 on those impacted functions..
>
> but well, it crossed my mind, but I'm actually happy with this easy
> review and perhaps a last full sed s/dev_priv/i915.

I'm actually not going for s/dev_priv/i915/ at all! The next step is
going to be passing struct intel_display * to the register macros. It'll
just work, because all they use is

#define DISPLAY_INFO(i915)		(__to_intel_display(i915)->info.__device_info)

which handles either.

And going for struct intel_display * is just slightly more involved than
the pure rename.

> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the reviews!

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
>>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>>  2 files changed, 2 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 0b1f7e62470e..daeb1b65a2e5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -323,7 +323,7 @@ static i915_reg_t psr_aux_ctl_reg(struct drm_i915_private *dev_priv,
>>  				  enum transcoder cpu_transcoder)
>>  {
>>  	if (DISPLAY_VER(dev_priv) >= 8)
>> -		return EDP_PSR_AUX_CTL(cpu_transcoder);
>> +		return EDP_PSR_AUX_CTL(dev_priv, cpu_transcoder);
>>  	else
>>  		return HSW_SRD_AUX_CTL;
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> index 5fd4f875ade0..a4f785bcf605 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> @@ -86,7 +86,7 @@
>>  #define HSW_SRD_AUX_CTL				_MMIO(0x64810)
>>  #define _SRD_AUX_CTL_A				0x60810
>>  #define _SRD_AUX_CTL_EDP			0x6f810
>> -#define EDP_PSR_AUX_CTL(tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_CTL_A)
>> +#define EDP_PSR_AUX_CTL(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_CTL_A)
>>  #define   EDP_PSR_AUX_CTL_TIME_OUT_MASK		DP_AUX_CH_CTL_TIME_OUT_MASK
>>  #define   EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK	DP_AUX_CH_CTL_MESSAGE_SIZE_MASK
>>  #define   EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK	DP_AUX_CH_CTL_PRECHARGE_2US_MASK
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
