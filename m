Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 579C58B9915
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 12:41:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE2C010F4FA;
	Thu,  2 May 2024 10:40:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QmGarcwT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07D9F10F4FA
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 10:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714646459; x=1746182459;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uDXpR7JNOz4wuWcYiOlPgX4cMDgIdWdG+CwNhJa55Fc=;
 b=QmGarcwT86aetOqxekqqDt3seSNOs00tQtUSfm+TYZkCpg4lbdXIAxu/
 mmfEe5nwOwqSfLzY9nHRqhMN3gabg80x1BTmNrYXYVaWzOaFz1Rs3MqBM
 Psrn+6Ee9Gn1hjHsvWBdA1mMgr4XR53imMfzBQmfnu5xflzbCdcshRExi
 HJtGukcOYuKmWHQxuhBqKiikV/XkNt0Fbpt7qqj/+I0z4myABNvbuZdgZ
 dPkdtYZd4cYQchWWsyB3WxaQRlGWhQcxTcDdfvRAcTxr79D2ftFUWuJFw
 H7dsd+vHukQILk4Dz5UJpPFoODhsmPuJ3FAtVG8AbwijbQbUpc+D9SD4H w==;
X-CSE-ConnectionGUID: jyM1PoLJTlmnZohznXoNzA==
X-CSE-MsgGUID: C4Q+o81CTKChn0qMCNgXMw==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="32922094"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="32922094"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 03:40:58 -0700
X-CSE-ConnectionGUID: v0+xdlDrQI6vrMhbObKh1w==
X-CSE-MsgGUID: 7/+kYLrlRHSaVG7e4HdJbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27092124"
Received: from unknown (HELO localhost) ([10.245.245.19])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 03:40:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jouni.hogander@intel.com
Subject: Re: [PATCH 17/19] drm/i915: pass dev_priv explicitly to ALPM_CTL2
In-Reply-To: <ZjGoJC6I5W9HQw4R@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1714471597.git.jani.nikula@intel.com>
 <09acf2751cfd2f524e6ba97c3ac285495eae5c86.1714471597.git.jani.nikula@intel.com>
 <ZjGoJC6I5W9HQw4R@intel.com>
Date: Thu, 02 May 2024 13:40:54 +0300
Message-ID: <874jbgpkcp.fsf@intel.com>
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
> On Tue, Apr 30, 2024 at 01:10:11PM +0300, Jani Nikula wrote:
>> Avoid the implicit dev_priv local variable use, and pass dev_priv
>> explicitly to the ALPM_CTL2 register macro.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> index 4d950b22d4f1..05dc1c1d4ac2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> @@ -321,7 +321,7 @@
>>  #define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)
>>  
>>  #define _ALPM_CTL2_A	0x60954
>> -#define ALPM_CTL2(tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL2_A)
>> +#define ALPM_CTL2(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL2_A)
>
> no usage? should we just delete it?

I believe a recent addition to enable ALPM. Jouni?

BR,
Jani.

>
>>  #define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK		REG_GENMASK(28, 24)
>>  #define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)
>>  #define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK		REG_GENMASK(19, 16)
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
