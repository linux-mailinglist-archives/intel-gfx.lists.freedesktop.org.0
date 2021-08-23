Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F533F4767
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 11:26:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26CD289CE2;
	Mon, 23 Aug 2021 09:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9E8689CE2
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 09:26:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="213937415"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="213937415"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 02:26:12 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="535271279"
Received: from mhartley-mobl1.ger.corp.intel.com (HELO [10.213.253.18])
 ([10.213.253.18])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 02:26:11 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Cc: John Harrison <John.C.Harrison@Intel.com>
References: <20210805163647.801064-1-matthew.d.roper@intel.com>
 <20210805163647.801064-9-matthew.d.roper@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5c838e5d-6311-0abb-4a5c-44c7e55b990c@linux.intel.com>
Date: Mon, 23 Aug 2021 10:26:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210805163647.801064-9-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5 8/9] drm/i915/dg2: Maintain
 backward-compatible nested batch behavior
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


On 05/08/2021 17:36, Matt Roper wrote:
> For tgl+, the per-context setting of MI_MODE[12] determines whether
> the bits of a nested MI_BATCH_BUFFER_START instruction should be
> interpreted in the traditional manner or whether they should
> instead use a new tgl+ meaning that breaks backward compatibility, but
> allows nesting into 3rd-level batchbuffers.  For previous platforms,
> the hardware default for this register bit is to maintain
> backward-compatible behavior unless a context intentionally opts into
> the new behavior; however Xe_HPG flips the hardware default behavior.
> 
>>From a SW perspective, we want to maintain the backward-compatible
> behavior for userspace, so we'll apply a fake workaround to set it back
> to the legacy behavior on platforms where the hardware default is to
> break compatibility.  At the moment there is no Linux userspace that
> utilizes third-level batchbuffers, so this will avoid userspace from
> needing to make any changes.  using the legacy meaning is the correct
> thing to do.  If/when we have userspace consumers that want to utilize
> third-level batch nesting, we can provide a context parameter to allow
> them to opt-in.
> 
> Bspec: 45974, 45718
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 39 +++++++++++++++++++--
>   drivers/gpu/drm/i915/i915_reg.h             |  1 +
>   2 files changed, 38 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index aae609d7d85d..97b3cd81b721 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -644,6 +644,37 @@ static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
>   		     DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE);
>   }
>   
> +static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> +					 struct i915_wa_list *wal)
> +{
> +	/*
> +	 * This is a "fake" workaround defined by software to ensure we
> +	 * maintain reliable, backward-compatible behavior for userspace with
> +	 * regards to how nested MI_BATCH_BUFFER_START commands are handled.
> +	 *
> +	 * The per-context setting of MI_MODE[12] determines whether the bits
> +	 * of a nested MI_BATCH_BUFFER_START instruction should be interpreted
> +	 * in the traditional manner or whether they should instead use a new
> +	 * tgl+ meaning that breaks backward compatibility, but allows nesting
> +	 * into 3rd-level batchbuffers.  When this new capability was first
> +	 * added in TGL, it remained off by default unless a context
> +	 * intentionally opted in to the new behavior.  However Xe_HPG now
> +	 * flips this on by default and requires that we explicitly opt out if
> +	 * we don't want the new behavior.
> +	 *
> +	 * From a SW perspective, we want to maintain the backward-compatible
> +	 * behavior for userspace, so we'll apply a fake workaround to set it
> +	 * back to the legacy behavior on platforms where the hardware default
> +	 * is to break compatibility.  At the moment there is no Linux
> +	 * userspace that utilizes third-level batchbuffers, so this will avoid
> +	 * userspace from needing to make any changes.  using the legacy
> +	 * meaning is the correct thing to do.  If/when we have userspace
> +	 * consumers that want to utilize third-level batch nesting, we can
> +	 * provide a context parameter to allow them to opt-in.
> +	 */
> +	wa_masked_dis(wal, RING_MI_MODE(engine->mmio_base), TGL_NESTED_BB_EN);
> +}
> +
>   static void
>   __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
>   			   struct i915_wa_list *wal,
> @@ -651,11 +682,15 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
>   {
>   	struct drm_i915_private *i915 = engine->i915;
>   
> +	wa_init_start(wal, name, engine->name);
> +
> +	/* Applies to all engines */
> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
> +		fakewa_disable_nestedbb_mode(engine, wal);
> +
>   	if (engine->class != RENDER_CLASS)
>   		return;

Is it intentional to skip wa_init_finish on non-render engines? Would be 
a bit odd although granted no significant functional difference apart 
from not logging and maybe not trimming the list storage.

Regards,

Tvrtko

>   
> -	wa_init_start(wal, name, engine->name);
> -
>   	if (IS_DG1(i915))
>   		dg1_ctx_workarounds_init(engine, wal);
>   	else if (GRAPHICS_VER(i915) == 12)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 77f6dcaba2b9..269685955fbd 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2821,6 +2821,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>   #define MI_MODE		_MMIO(0x209c)
>   # define VS_TIMER_DISPATCH				(1 << 6)
>   # define MI_FLUSH_ENABLE				(1 << 12)
> +# define TGL_NESTED_BB_EN				(1 << 12)
>   # define ASYNC_FLIP_PERF_DISABLE			(1 << 14)
>   # define MODE_IDLE					(1 << 9)
>   # define STOP_RING					(1 << 8)
> 
