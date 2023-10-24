Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE847D49CC
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 10:16:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D52B410E2F5;
	Tue, 24 Oct 2023 08:16:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A61A10E2F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 08:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698135406; x=1729671406;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=nQ/8iuakCHitD8AzNxSxmNYGyo2yUbQttv7koevM3jY=;
 b=Jnzk4MXPRHxoHsRNZxJnZAIUqi9sN3sRDmaS2PnzQ5qDXgGZSKvz+AKp
 ZeRmUGlBacotAZKoUZzNEGzHy+9yerW/J2SjE9EHaR1Er7AeID3xG0Gjg
 8vT7Yju74MZm+Y+N3+Dh0gmiZ8I8pJ9AVMd4sieIrnoOprRmqMtPwruTI
 U4+3q9j2FXKdNgM9LnsOm58uu3M/qCC0zmhgDFhgpKYj5u9f+m+FRZemy
 4lsn3SEL53ftdg23KW0ou+LSxCYjtIRDRlf9ofyjSK9UdzWwWWSnPUKNC
 M7+mNWdbB+UPMQKeU9A78g4RZ78aNs1SnEqLttEHMG2DPY4TnWo3EXZjb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366354168"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="366354168"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 01:16:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="874991906"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="874991906"
Received: from apaczko-mobl3.ger.corp.intel.com (HELO [10.252.47.59])
 ([10.252.47.59])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 01:16:44 -0700
Message-ID: <5fc7f788-5877-fa85-b7e9-4b6b9f0484c2@linux.intel.com>
Date: Tue, 24 Oct 2023 10:16:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
 <20231023-wabb-v4-4-f75dec962b7d@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20231023-wabb-v4-4-f75dec962b7d@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 4/4] drm/i915: Set copy engine
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


On 10/23/2023 10:21 PM, Andrzej Hajda wrote:
> From: Jonathan Cavitt <jonathan.cavitt@intel.com>
>
> Set copy engine arbitration into round robin mode
> for part of Wa_16018031267 / Wa_16018063123 mitigation.
>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
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
> +		wa_masked_field_set(wal, ECOSKPD(engine->mmio_base),
> +				    XEHP_BLITTER_SCHEDULING_MODE_MASK,
> +				    XEHP_BLITTER_ROUND_ROBIN_MODE);
>   }
>   
>   static void
>
