Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DBE7D2F06
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 11:55:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54C8B10E1AB;
	Mon, 23 Oct 2023 09:55:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5158D10E1AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 09:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698054938; x=1729590938;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=p7LZXQd5a444YFudckBR9cctM2VYnab01qzRM4XwybE=;
 b=PiKCzaxHxDfc+PWMnKRVxC8cjhiVZ4pYV1g/jvxILrfQOYIVgqQ1fy3Q
 cTnDk9I1jHWvb8iSdcUjS1dPM6e/CNFhrb8AgOb9pRMnOT/8FAqoHZZ72
 s/JLWy1fibieJOkHdZKnbILyD67TtTXWEc8jmFRFGVm9SrveZqL1/vkWQ
 XgCVH14Hlkz/Tr5Odf0mnjLGv8YP8ubhCxMdZEEjeAXpfEXfSM1AK32t8
 713f0/8p7j1+CJjugGLFEi2X3u5tAsdnCX+7miyWEYJ+dobcAVzriNW1D
 X5FTzvhs+JzGbzQRG6O8zgiMoG873qTzt90Nbs46p2fG/pijnYurW9Tvj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="371874505"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="371874505"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 02:55:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="707889950"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="707889950"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.40.234])
 ([10.249.40.234])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 02:55:36 -0700
Message-ID: <7a83d52f-0bcb-6223-db6c-1bf9cb7ed39b@linux.intel.com>
Date: Mon, 23 Oct 2023 11:55:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231023-wabb-v3-0-1a4fbc632440@intel.com>
 <20231023-wabb-v3-4-1a4fbc632440@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20231023-wabb-v3-4-1a4fbc632440@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 4/4] drm/i915: Set copy engine
 arbitration for Wa_16018031267 / Wa_16018063123
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On 10/23/2023 9:41 AM, Andrzej Hajda wrote:
> From: Jonathan Cavitt <jonathan.cavitt@intel.com>
>
> Set copy engine arbitration into round robin mode
> for part of Wa_16018031267 / Wa_16018063123 mitigation.
>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_regs.h | 3 +++
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>   2 files changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> index b8618ee3e3041a..c0c8c12edea104 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> @@ -124,6 +124,9 @@
>   #define RING_INDIRECT_CTX(base)			_MMIO((base) + 0x1c4) /* gen8+ */
>   #define RING_INDIRECT_CTX_OFFSET(base)		_MMIO((base) + 0x1c8) /* gen8+ */
>   #define ECOSKPD(base)				_MMIO((base) + 0x1d0)
> +#define   XEHP_BLITTER_SCHEDULING_MODE_MASK	REG_GENMASK(12, 11)
> +#define   XEHP_BLITTER_ROUND_ROBIN_MODE		\
> +		REG_FIELD_PREP(XEHP_BLITTER_SCHEDULING_MODE_MASK, 1)
>   #define   ECO_CONSTANT_BUFFER_SR_DISABLE	REG_BIT(4)
>   #define   ECO_GATING_CX_ONLY			REG_BIT(3)
>   #define   GEN6_BLITTER_FBC_NOTIFY		REG_BIT(3)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 192ac0e59afa13..108d9326735910 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2782,6 +2782,11 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   			 RING_SEMA_WAIT_POLL(engine->mmio_base),
>   			 1);
>   	}
> +	/* Wa_16018031267, Wa_16018063123 */
> +	if (NEEDS_FASTCOLOR_BLT_WABB(engine))


Not sure if I missed any previous discussion on this, the WA talked 
about applying this on main copy engine. This needs to be taken into 
account in

NEEDS_FASTCOLOR_BLT_WABB()

> +		wa_masked_field_set(wal, ECOSKPD(engine->mmio_base),
> +				    XEHP_BLITTER_SCHEDULING_MODE_MASK,
> +				    XEHP_BLITTER_ROUND_ROBIN_MODE);
>   }

This function sets masked_reg = true and will not read the register back 
and I remember MattR asked internally to not use that if that is not 
required.


With those two concern handled this is  Reviewed-by: Nirmoy Das 
<nirmoy.das@intel.com>


Regards,

Nirmoy

>   
>   static void
>
