Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1031BF8E0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 15:05:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 946C46E866;
	Thu, 30 Apr 2020 13:05:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B944F6E866
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 13:05:02 +0000 (UTC)
IronPort-SDR: 0O34fEO1EQpT6brLdEeCW/bTRJg0oKEIAC7R/0/JEVTQtyipP+kT3itYuC8wTd338jallvSGBG
 3P6aQjnuHABg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 06:05:01 -0700
IronPort-SDR: kRdiAh5W37sBcN+XAh5tnaMjsY8STcIUZ+J3lZlIG1jqQZXoDjHYnYTswg5XNknxrGi95d6o6r
 J86Eunix1cSA==
X-IronPort-AV: E=Sophos;i="5.73,334,1583222400"; d="scan'208";a="405396553"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.83.63])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 06:04:57 -0700
MIME-Version: 1.0
In-Reply-To: <20200428100816.951014-5-lionel.g.landwerlin@intel.com>
References: <20200428100816.951014-1-lionel.g.landwerlin@intel.com>
 <20200428100816.951014-5-lionel.g.landwerlin@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Thu, 30 Apr 2020 16:04:53 +0300
Message-ID: <158825189330.103009.17820443295319674218@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PATCH v7 4/4] drm/i915/perf: enable filtering on
 multiple contexts
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
Cc: chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lionel Landwerlin (2020-04-28 13:08:16)
> Add 2 new properties to the i915-perf open ioctl to specify an array
> of GEM context handles as well as the length of the array.
> 
> This can be used by drivers using multiple GEM contexts to implement a
> single GL context.
> 
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

Do add link to the userspace changes in the actual patch so that it
is preserved at merge time, not only the cover letter.

Regards, Joonas

> ---
>  drivers/gpu/drm/i915/i915_perf.c | 58 ++++++++++++++++++++++++++++++--
>  include/uapi/drm/i915_drm.h      | 21 ++++++++++++
>  2 files changed, 76 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 79f68efd7d5b..e236d2a8720b 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -3686,7 +3686,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
>                                     struct perf_open_properties *props)
>  {
>         u64 __user *uprop = uprops;
> -       u32 i;
> +       u32 __user *uctx_handles = NULL;
> +       u32 i, n_uctx_handles = 0;
>         int err;
>  
>         memset(props, 0, sizeof(struct perf_open_properties));
> @@ -3737,7 +3738,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
>  
>                 switch ((enum drm_i915_perf_property_id)id) {
>                 case DRM_I915_PERF_PROP_CTX_HANDLE:
> -                       if (props->n_ctx_handles > 0) {
> +                       if (props->n_ctx_handles > 0 || n_uctx_handles > 0) {
>                                 DRM_DEBUG("Context handle specified multiple times\n");
>                                 err = -EINVAL;
>                                 goto error;
> @@ -3851,6 +3852,38 @@ static int read_properties_unlocked(struct i915_perf *perf,
>                         }
>                         props->poll_oa_period = value;
>                         break;
> +               case DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY:
> +                       /* HSW can only filter in HW and only on a single
> +                        * context.
> +                        */
> +                       if (IS_HASWELL(perf->i915)) {
> +                               DRM_DEBUG("Multi context filter not supported on HSW\n");
> +                               err = -ENODEV;
> +                               goto error;
> +                       }
> +                       uctx_handles = u64_to_user_ptr(value);
> +                       break;
> +               case DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY_LENGTH:
> +                       if (IS_HASWELL(perf->i915)) {
> +                               DRM_DEBUG("Multi context filter not supported on HSW\n");
> +                               err = -ENODEV;
> +                               goto error;
> +                       }
> +                       if (props->n_ctx_handles > 0 || n_uctx_handles > 0) {
> +                               DRM_DEBUG("Context handle specified multiple times\n");
> +                               err = -EINVAL;
> +                               goto error;
> +                       }
> +                       props->ctx_handles =
> +                               kmalloc_array(value,
> +                                             sizeof(*props->ctx_handles),
> +                                             GFP_KERNEL);
> +                       if (!props->ctx_handles) {
> +                               err = -ENOMEM;
> +                               goto error;
> +                       }
> +                       n_uctx_handles = value;
> +                       break;
>                 case DRM_I915_PERF_PROP_MAX:
>                         MISSING_CASE(id);
>                         err = -EINVAL;
> @@ -3860,6 +3893,21 @@ static int read_properties_unlocked(struct i915_perf *perf,
>                 uprop += 2;
>         }
>  
> +       if (n_uctx_handles > 0 && props->n_ctx_handles > 0) {
> +               DRM_DEBUG("Context handle specified multiple times\n");
> +               err = -EINVAL;
> +               goto error;
> +       }
> +
> +       for (i = 0; i < n_uctx_handles; i++) {
> +               err = get_user(props->ctx_handles[i], uctx_handles);
> +               if (err)
> +                       goto error;
> +
> +               uctx_handles++;
> +               props->n_ctx_handles++;
> +       }
> +
>         return 0;
>  
>  error:
> @@ -4643,8 +4691,12 @@ int i915_perf_ioctl_version(void)
>          *
>          * 5: Add DRM_I915_PERF_PROP_POLL_OA_PERIOD parameter that controls the
>          *    interval for the hrtimer used to check for OA data.
> +        *
> +        * 6: Add DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY &
> +        *    DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY_LENGTH to allow an
> +        *    application monitor/pin multiple contexts.
>          */
> -       return 5;
> +       return 6;
>  }
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 14b67cd6b54b..f80e7932d728 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1993,6 +1993,27 @@ enum drm_i915_perf_property_id {
>          */
>         DRM_I915_PERF_PROP_POLL_OA_PERIOD,
>  
> +       /**
> +        * Specifies an array of u32 GEM context handles to filter reports
> +        * with.
> +        *
> +        * Using this parameter is incompatible with using
> +        * DRM_I915_PERF_PROP_CTX_HANDLE.
> +        *
> +        * This property is available in perf revision 6.
> +        */
> +       DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY,
> +
> +       /**
> +        * Specifies the length of the array specified with
> +        * DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY.
> +        *
> +        * The length must be in the range [1, 4].
> +        *
> +        * This property is available in perf revision 6.
> +        */
> +       DRM_I915_PERF_PROP_CTX_HANDLE_ARRAY_LENGTH,
> +
>         DRM_I915_PERF_PROP_MAX /* non-ABI */
>  };
>  
> -- 
> 2.26.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
