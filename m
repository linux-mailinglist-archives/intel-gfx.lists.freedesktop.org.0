Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A9D2CEFA8
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 15:24:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEFA56E195;
	Fri,  4 Dec 2020 14:24:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FABD6E195
 for <Intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 14:24:15 +0000 (UTC)
IronPort-SDR: zH5VwPrI4hmtfnnZ24nSxbyjlQHbrDlsjUjpz1JiUCDprsmWkGmHma9ZoJqsMSl3ma86jk4QVy
 zhfBqBsChFtA==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="153204010"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="153204010"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 06:24:14 -0800
IronPort-SDR: uIgHiQK0NzqBL0jhYi1Gm4NxRKY2XQcP9Gts7oI9ANu0uhycCo6+Q4kBuvZrrJ0K/7L8FrjVGr
 SlNasf12SHLg==
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="550966754"
Received: from azavras-mobl1.ger.corp.intel.com (HELO [10.252.55.3])
 ([10.252.55.3])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 06:24:13 -0800
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
References: <20201202040341.31981-1-sean.z.huang@intel.com>
 <20201202040341.31981-25-sean.z.huang@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <74a9f7c8-2509-8d7b-771f-132dea1c4bb9@intel.com>
Date: Fri, 4 Dec 2020 16:24:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201202040341.31981-25-sean.z.huang@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC-v4 24/26] drm/i915/pxp: User interface for
 Protected buffer
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Kondapally Kalyan <kalyan.kondapally@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 02/12/2020 06:03, Huang, Sean Z wrote:
> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>
> This api allow user mode to create Protected buffer and context creation.
>
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
> Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>
> Cc: Gupta Anshuman <Anshuman.Gupta@intel.com>
> Cc: Huang Sean Z <sean.z.huang@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   | 15 ++++++++++--
>   drivers/gpu/drm/i915/gem/i915_gem_context.h   | 10 ++++++++
>   .../gpu/drm/i915/gem/i915_gem_context_types.h |  2 +-
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  5 ++++
>   drivers/gpu/drm/i915/i915_gem.c               | 23 +++++++++++++++----
>   include/uapi/drm/i915_drm.h                   | 19 +++++++++++++++
>   6 files changed, 67 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index a6299da64de4..dd5d24a13cb9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -2060,12 +2060,23 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>   	case I915_CONTEXT_PARAM_RECOVERABLE:
>   		if (args->size)
>   			ret = -EINVAL;
> -		else if (args->value)
> -			i915_gem_context_set_recoverable(ctx);
> +		else if (args->value) {
> +			if (!i915_gem_context_is_protected(ctx))
> +				i915_gem_context_set_recoverable(ctx);
> +			else
> +				ret = -EPERM;
> +			}
>   		else
>   			i915_gem_context_clear_recoverable(ctx);
>   		break;
>   
> +	case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
> +		if (args->size)
> +			ret = -EINVAL;
> +		else if (args->value)
> +			i915_gem_context_set_protected(ctx);
> +		break;
> +
>   	case I915_CONTEXT_PARAM_PRIORITY:
>   		ret = set_priority(ctx, args);
>   		break;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index a133f92bbedb..5897e7ca11a8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -70,6 +70,16 @@ static inline void i915_gem_context_set_recoverable(struct i915_gem_context *ctx
>   	set_bit(UCONTEXT_RECOVERABLE, &ctx->user_flags);
>   }
>   
> +static inline void i915_gem_context_set_protected(struct i915_gem_context *ctx)
> +{
> +	set_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
> +}
> +
> +static inline bool i915_gem_context_is_protected(struct i915_gem_context *ctx)
> +{
> +	return test_bit(UCONTEXT_PROTECTED, &ctx->user_flags);
> +}
> +
>   static inline void i915_gem_context_clear_recoverable(struct i915_gem_context *ctx)
>   {
>   	clear_bit(UCONTEXT_RECOVERABLE, &ctx->user_flags);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index ae14ca24a11f..81ae94c2be86 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -135,7 +135,7 @@ struct i915_gem_context {
>   #define UCONTEXT_BANNABLE		2
>   #define UCONTEXT_RECOVERABLE		3
>   #define UCONTEXT_PERSISTENCE		4
> -
> +#define UCONTEXT_PROTECTED		5
>   	/**
>   	 * @flags: small set of booleans
>   	 */
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index e2d9b7e1e152..90ac955463f4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -161,6 +161,11 @@ struct drm_i915_gem_object {
>   	} mmo;
>   
>   	I915_SELFTEST_DECLARE(struct list_head st_link);
> +	/**
> +	 * @user_flags: small set of booleans set by the user
> +	 */
> +	unsigned long user_flags;
> +#define I915_BO_PROTECTED     BIT(0)
>   
>   	unsigned long flags;
>   #define I915_BO_ALLOC_CONTIGUOUS BIT(0)
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 41698a823737..6a791fd24eaa 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -184,7 +184,8 @@ static int
>   i915_gem_create(struct drm_file *file,
>   		struct intel_memory_region *mr,
>   		u64 *size_p,
> -		u32 *handle_p)
> +		u32 *handle_p,
> +		u64 user_flags)
>   {
>   	struct drm_i915_gem_object *obj;
>   	u32 handle;
> @@ -204,6 +205,8 @@ i915_gem_create(struct drm_file *file,
>   	if (IS_ERR(obj))
>   		return PTR_ERR(obj);
>   
> +	obj->user_flags = user_flags;
> +
>   	ret = drm_gem_handle_create(file, &obj->base, &handle);
>   	/* drop reference from allocate - handle holds it now */
>   	i915_gem_object_put(obj);
> @@ -258,11 +261,12 @@ i915_gem_dumb_create(struct drm_file *file,
>   	return i915_gem_create(file,
>   			       intel_memory_region_by_type(to_i915(dev),
>   							   mem_type),
> -			       &args->size, &args->handle);
> +			       &args->size, &args->handle, 0);
>   }
>   
>   struct create_ext {
> -        struct drm_i915_private *i915;
> +	struct drm_i915_private *i915;
> +	unsigned long user_flags;
>   };
>   
>   static int __create_setparam(struct drm_i915_gem_object_param *args,
> @@ -273,6 +277,17 @@ static int __create_setparam(struct drm_i915_gem_object_param *args,
>   		return -EINVAL;
>   	}
>   
> +	switch (lower_32_bits(args->param)) {
> +	case I915_PARAM_PROTECTED_CONTENT:
> +		if (args->size) {
> +			return -EINVAL;
> +		} else if (args->data) {
> +			ext_data->user_flags = args->data;
> +			return 0;
> +		}
> +	break;
> +	}
> +
>   	return -EINVAL;
>   }
>   
> @@ -318,7 +333,7 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
>   	return i915_gem_create(file,
>   			       intel_memory_region_by_type(i915,
>   							   INTEL_MEMORY_SYSTEM),
> -			       &args->size, &args->handle);
> +			       &args->size, &args->handle, ext_data.user_flags);
>   }
>   
>   static int
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 2c1ce2761d55..fab00bfbbdee 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1715,6 +1715,15 @@ struct drm_i915_gem_context_param {
>    * Default is 16 KiB.
>    */
>   #define I915_CONTEXT_PARAM_RINGSIZE	0xc
> +
> +/*
> + * I915_CONTEXT_PARAM_PROTECTED_CONTENT:
> + *
> + * If set to true (1) PAVP content protection is enabled.
> + * When enabled, the context is marked unrecoverable and may
> + * become invalid due to PAVP teardown event or other error.
> + */
> +#define I915_CONTEXT_PARAM_PROTECTED_CONTENT    0xd


This is about protected contexts. It should probably go into its own 
patch along with the code for the gem_context object.


-Lionel


>   /* Must be kept compact -- no holes and well documented */
>   
>   	__u64 value;
> @@ -1734,6 +1743,16 @@ struct drm_i915_gem_object_param {
>    */
>   #define I915_OBJECT_PARAM  (1ull<<32)
>   
> +/*
> + * I915_PARAM_PROTECTED_CONTENT:
> + *
> + * If set to true (1) buffer contents is expected to be protected by
> + * PAVP encryption and requires decryption for scan out and processing.
> + * Protected buffers can only be used in PAVP protected contexts.
> + * A protected buffer may become invalid as a result of PAVP teardown.
> + */
> +#define I915_PARAM_PROTECTED_CONTENT  0x1
> +
>   	__u64 param;
>   
>   	/* Data value or pointer */


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
