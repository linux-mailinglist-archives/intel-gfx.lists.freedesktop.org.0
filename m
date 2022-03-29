Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D91E74EA8B5
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 09:50:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC9389F0B;
	Tue, 29 Mar 2022 07:50:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7981589F0B
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 07:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648540206; x=1680076206;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=d+MDM9FH93uMGAqgXyB8cZ5BGp/MfnBBmT1ctJU6qwo=;
 b=ibKDyvvLVJGObgFQLtQ1jcVXKddjIR3LoJcmr9hGb1wIK/E8Oyq/EMcs
 h1Jgg7NmIhb3UXBzkTAdjkSTBJSbUSiESL2WbuG4CeO2QTI14Q+7I1EDe
 VGoVdWpe9PNchLPM5AxN959GznquWBDndh+e14lknNoCEUZVtarlpHGeR
 sqeupymldpO/11Y73+N0o8gYDoY6k1zIJ3F2UP2+GQR2WLmNKi3skMVc8
 g61SwTqxfH42K++yEiRwIoRAGRp2wXgCR5cL4gIdrnUYVaiJ+WuAZWRBR
 MEDHtm/PUHdSEFRtgwvOqjaKN9ldzE52we9XOG2hiikRPL8v01niS+3ks g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="322373990"
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="322373990"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 00:50:05 -0700
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="564409059"
Received: from aburakov-mobl.ger.corp.intel.com (HELO [10.213.216.20])
 ([10.213.216.20])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 00:50:04 -0700
Message-ID: <f47d7b98-31ac-5b65-ed47-a27fa52d5de2@linux.intel.com>
Date: Tue, 29 Mar 2022 08:50:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220328172551.43309-1-matthew.auld@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220328172551.43309-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [CI 1/4] drm/i915/gt: Explicitly clear BB_OFFSET
 for new contexts
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


On 28/03/2022 18:25, Matthew Auld wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Even though the initial protocontext we load onto HW has the register
> cleared, by the time we save it into the default image, BB_OFFSET has
> had the enable bit set. Reclear BB_OFFSET for each new context.

Intriguing - is there any impact to this which would require cc: stable?

Regards,

Tvrtko

> Testcase: igt/i915_selftests/gt_lrc
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_regs.h |  1 +
>   drivers/gpu/drm/i915/gt/intel_lrc.c         | 17 +++++++++++++++++
>   drivers/gpu/drm/i915/gt/selftest_lrc.c      |  5 +++++
>   3 files changed, 23 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> index 0bf8b45c9319..d6da3bbf66f8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> @@ -109,6 +109,7 @@
>   #define RING_SBBSTATE(base)			_MMIO((base) + 0x118) /* hsw+ */
>   #define RING_SBBADDR_UDW(base)			_MMIO((base) + 0x11c) /* gen8+ */
>   #define RING_BBADDR(base)			_MMIO((base) + 0x140)
> +#define RING_BB_OFFSET(base)			_MMIO((base) + 0x158)
>   #define RING_BBADDR_UDW(base)			_MMIO((base) + 0x168) /* gen8+ */
>   #define CCID(base)				_MMIO((base) + 0x180)
>   #define   CCID_EN				BIT(0)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 07bef7128fdb..f673bae97a03 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -662,6 +662,18 @@ static int lrc_ring_mi_mode(const struct intel_engine_cs *engine)
>   		return -1;
>   }
>   
> +static int lrc_ring_bb_offset(const struct intel_engine_cs *engine)
> +{
> +	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
> +		return 0x80;
> +	else if (GRAPHICS_VER(engine->i915) >= 12)
> +		return 0x70;
> +	else if (GRAPHICS_VER(engine->i915) >= 9)
> +		return 0x64;
> +	else
> +		return -1;
> +}
> +
>   static int lrc_ring_gpr0(const struct intel_engine_cs *engine)
>   {
>   	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
> @@ -768,6 +780,7 @@ static void init_common_regs(u32 * const regs,
>   			     bool inhibit)
>   {
>   	u32 ctl;
> +	int loc;
>   
>   	ctl = _MASKED_BIT_ENABLE(CTX_CTRL_INHIBIT_SYN_CTX_SWITCH);
>   	ctl |= _MASKED_BIT_DISABLE(CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);
> @@ -779,6 +792,10 @@ static void init_common_regs(u32 * const regs,
>   	regs[CTX_CONTEXT_CONTROL] = ctl;
>   
>   	regs[CTX_TIMESTAMP] = ce->runtime.last;
> +
> +	loc = lrc_ring_bb_offset(engine);
> +	if  (loc != -1)
> +		regs[loc + 1] = 0;
>   }
>   
>   static void init_wa_bb_regs(u32 * const regs,
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 21c29d315cc0..13f57c7c4224 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -323,6 +323,11 @@ static int live_lrc_fixed(void *arg)
>   				lrc_ring_cmd_buf_cctl(engine),
>   				"RING_CMD_BUF_CCTL"
>   			},
> +			{
> +				i915_mmio_reg_offset(RING_BB_OFFSET(engine->mmio_base)),
> +				lrc_ring_bb_offset(engine),
> +				"RING_BB_OFFSET"
> +			},
>   			{ },
>   		}, *t;
>   		u32 *hw;
