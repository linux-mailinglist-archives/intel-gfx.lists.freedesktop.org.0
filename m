Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 912027CDD2F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 15:26:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C71FC10E3E8;
	Wed, 18 Oct 2023 13:26:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7A3810E3E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 13:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697635577; x=1729171577;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1suwgm46+xpSDy8OWZo3M0AWRr5NrsgAIcjFH9joGA0=;
 b=PRnCF6TBSddrbSrYoauKuHqVag3CrhDOs+8HObqIlEEP1Vr6mxqZexXx
 vZp/9dvORZU6fMovzGMqqjJOpoF/bFfthVf+S34zHgSmwr0WRBsSPBou2
 15KOtWui5ZPasxMiBXg3YCMwmm6nk5quMOTAcGx3p+XWVo2MyFWrwJpf1
 VjTwpgJoIdttbefwx185uTLqShvtU0LJfR3lZZcRxsraC5FN4Fzy5Dtas
 SDjnvlH29qABoHcnUdrxU3irImVEwsekfGiCButyAPXQuAFNs2sYArKxK
 EPNYMenZh4EMzZZEU0yRiDMn3PgCN/88Y03/LrnsW0K3QkNeiDXsOtVJr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="450235356"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="450235356"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 06:26:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="930197557"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="930197557"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.19.191])
 ([10.213.19.191])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 06:26:13 -0700
Message-ID: <fde62609-daab-4e1f-bbbb-823faad04d6f@intel.com>
Date: Wed, 18 Oct 2023 15:26:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230920210704.3624771-1-jonathan.cavitt@intel.com>
 <20230920210704.3624771-5-jonathan.cavitt@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230920210704.3624771-5-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v12 4/4] drm/i915: Set copy engine
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
Cc: andi.shyti@intel.com, matthew.d.roper@intel.com, tomasz.mistat@intel.com,
 rodrigo.vivi@intel.com, gregory.f.germano@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 20.09.2023 23:07, Jonathan Cavitt wrote:
> Set copy engine arbitration into round robin mode
> for part of Wa_16018031267 / Wa_16018063123 mitigation.
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/gt/intel_engine_regs.h | 3 +++
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>   2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> index b8618ee3e3041..c0c8c12edea10 100644
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
> index 660d4f358eab7..b8f3b991e4202 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2781,6 +2781,11 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   			 RING_SEMA_WAIT_POLL(engine->mmio_base),
>   			 1);
>   	}
> +	/* Wa_16018031267, Wa_16018063123 */
> +	if (NEEDS_FASTCOLOR_BLT_WABB(engine))
> +		wa_masked_field_set(wal, ECOSKPD(engine->mmio_base),
> +				    XEHP_BLITTER_SCHEDULING_MODE_MASK,
> +				    XEHP_BLITTER_ROUND_ROBIN_MODE);
>   }
>   
>   static void

