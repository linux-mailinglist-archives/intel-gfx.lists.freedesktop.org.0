Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 686E21B4714
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 16:20:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF196E9FF;
	Wed, 22 Apr 2020 14:20:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D96956E9FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 14:20:41 +0000 (UTC)
IronPort-SDR: 1qiU9MUyZH1yL2YlYL08dShXS5WIzqg8urC6fwUJc7VsaLQw/Cop90lldX3me2p0+G7Zx9b54m
 m6/+0+wBvcBQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 07:20:41 -0700
IronPort-SDR: otiJUcSFMZch51VKfJETIzPmAtFg0V+vLV0fhgI+w82JwER7YkNkUITy3aNpTxEPTenrghnbxe
 tcQRXeAMXdUg==
X-IronPort-AV: E=Sophos;i="5.72,414,1580803200"; d="scan'208";a="429927464"
Received: from morangux-mobl.ger.corp.intel.com (HELO [10.214.194.47])
 ([10.214.194.47])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 07:20:40 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200421164130.11135-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6298d6d6-d88c-8186-496d-7538f545f48c@linux.intel.com>
Date: Wed, 22 Apr 2020 15:20:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200421164130.11135-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] RFC drm/i915/gem: Allow creation of
 contexts with an 'empty' VM
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 21/04/2020 17:41, Chris Wilson wrote:
> Normally when we create a new context, and a new ppGTT to go with it, we
> point all the unused pages in the ppGTT to a 'safe' scratch page. Any
> inadvertent access outside of the declared user's area will result in a
> read/write to scratch instead. However, sometimes it is preferrable to
> that to cause a fault instead. This does not trap execution of the
> faulting batch, but it does record the error:
> 
> FAULT_TLB_DATA: 0x00000000 0x00000004
>      Address 0x0000000000004000 PPGTT
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> ---
> The name and value semantics are horrendous. The non-trapping behaviour
> is also less than ideal. Worth it?

Empty VM definitely sounds misleading.

Is there any argument to require root for this?

And why not a context create flag? 
I915_CONTEXT_CREATE_NO_VM_OUT_OF_BOUNDS_PROTECTION?

Flag feels simpler for the purpose, plus it can be handled post 
extension processing to remove the question of interleaved set_vm and 
set_empty_vm extension.

Regards,

Tvrtko

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 48 +++++++++++++++++++++
>   include/uapi/drm/i915_drm.h                 |  2 +
>   2 files changed, 50 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 1c4afa864bfe..f981269e883d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1191,6 +1191,33 @@ static int set_ringsize(struct i915_gem_context *ctx,
>   				 __intel_context_ring_size(args->value));
>   }
>   
> +static int set_empty_vm(struct i915_gem_context *ctx,
> +			struct drm_i915_gem_context_param *args)
> +{
> +	struct i915_address_space *vm = ctx->vm;
> +	int i;
> +
> +	if (!vm || INTEL_GEN(ctx->i915) < 8)
> +		return -ENODEV;
> +
> +	if (args->size || args->value)
> +		return -EINVAL;
> +
> +	if (!vm->scratch[0].encode)
> +		return 0;
> +
> +	if (vm->mm.head_node.hole_size != vm->total)
> +		return -EBUSY;
> +
> +	free_scratch(vm);
> +
> +	fill_page_dma(px_base(i915_vm_to_ppgtt(vm)->pd), 0, 512);
> +	for (i = 0; i <= vm->top; i++)
> +		vm->scratch[i].encode = 0;
> +
> +	return 0;
> +}
> +
>   static int __get_ringsize(struct intel_context *ce, void *arg)
>   {
>   	long sz;
> @@ -1220,6 +1247,19 @@ static int get_ringsize(struct i915_gem_context *ctx,
>   	return 0;
>   }
>   
> +static int get_empty_vm(struct i915_gem_context *ctx,
> +			struct drm_i915_gem_context_param *args)
> +{
> +	if (!ctx->vm || INTEL_GEN(ctx->i915) < 8)
> +		return -ENODEV;
> +
> +	if (args->size)
> +		return -EINVAL;
> +
> +	args->value = !ctx->vm->scratch[0].encode;
> +	return 0;
> +}
> +
>   int
>   i915_gem_user_to_context_sseu(struct drm_i915_private *i915,
>   			      const struct drm_i915_gem_context_param_sseu *user,
> @@ -1896,6 +1936,10 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>   		ret = set_ringsize(ctx, args);
>   		break;
>   
> +	case I915_CONTEXT_PARAM_EMPTY_VM:
> +		ret = set_empty_vm(ctx, args);
> +		break;
> +
>   	case I915_CONTEXT_PARAM_BAN_PERIOD:
>   	default:
>   		ret = -EINVAL;
> @@ -2348,6 +2392,10 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
>   		ret = get_ringsize(ctx, args);
>   		break;
>   
> +	case I915_CONTEXT_PARAM_EMPTY_VM:
> +		ret = get_empty_vm(ctx, args);
> +		break;
> +
>   	case I915_CONTEXT_PARAM_BAN_PERIOD:
>   	default:
>   		ret = -EINVAL;
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 14b67cd6b54b..b18215a61332 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1640,6 +1640,8 @@ struct drm_i915_gem_context_param {
>    * Default is 16 KiB.
>    */
>   #define I915_CONTEXT_PARAM_RINGSIZE	0xc
> +
> +#define I915_CONTEXT_PARAM_EMPTY_VM	0xd
>   /* Must be kept compact -- no holes and well documented */
>   
>   	__u64 value;
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
