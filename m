Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B709D4A9732
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 10:55:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25BD10F326;
	Fri,  4 Feb 2022 09:55:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DE2F10F302
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Feb 2022 09:55:54 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id i5so7921338oih.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Feb 2022 01:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XKzS8W1xn5TPR/GlDWZaU+1+deO1Y4moF0e2Mpo7pSc=;
 b=Quhh01JzKbHRUffBESOLWyjLlWbeB8i5pzjWt1A0s0XBHW5Zn5tCiuJr+DOZ6pW8j7
 c6aJdxi2/tB1DuG/CECXYiBEAwp5dmwfaojWNbEYBId9998PRQQk9mBBxRRGzUcFJffV
 V5QgWaQaSllFMy+gUIH0bhIjksEIs/0rhpNoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XKzS8W1xn5TPR/GlDWZaU+1+deO1Y4moF0e2Mpo7pSc=;
 b=I83wsr9p69x9BrhKeH6EAYw7t1dws9ASKch/92TnQrbOeVp9AhZfxalYHQlpToEI19
 0J3mTF9CawZMN9aCGZTtMBPHrM68eyFW9Jn/FatWL4MsFjjs2e/PKRKuCYomk4pN0Zgc
 sJwaJAFiRQcV8EY53g1cUaI4cvBB2F7m2idpB881IcHt7RjKZV+pGl43KHCxwnonCkj0
 c3A+qVc4CF1Fs2njudt4sv47N0RcK4qhj0cTd4Xf40sdfm5HIIMHWKrFqlJE8k6iDh06
 I6hvy1xJXRWOtjnl1QNfDoSfOenHZGQgBWT9w1UIGsRVeZOAn+oa2fZPDWSTgdRW9x8Y
 w8fw==
X-Gm-Message-State: AOAM532BRcePcjTYuibLlCBQ5OYOUTYTbvuR+q7ZwBuWtHtc93w6RBdb
 YADNgu9wG+W/vPftWc77zdRxNIoAciJoh+Y7eDsRqw==
X-Google-Smtp-Source: ABdhPJyyGFbAIV3np0sHoMK1CHrGfgBVuMM2vjz3bXO7jC4g0CeeO9r0SZ2xP7NzeorjPw/NwT5wUZHimnLGh0NSKio=
X-Received: by 2002:a05:6808:2221:: with SMTP id
 bd33mr930563oib.278.1643968553735; 
 Fri, 04 Feb 2022 01:55:53 -0800 (PST)
MIME-Version: 1.0
References: <20220119203541.2410082-1-John.C.Harrison@Intel.com>
 <20220119203541.2410082-3-John.C.Harrison@Intel.com>
In-Reply-To: <20220119203541.2410082-3-John.C.Harrison@Intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 4 Feb 2022 10:55:42 +0100
Message-ID: <CAKMK7uGijP097LzoNo=MtLHpu5a6fUj=XHP5+N6SmkW5c=9i9Q@mail.gmail.com>
To: john.c.harrison@intel.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/uapi: Add query for
 hwconfig table
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
Cc: Kenneth Graunke <kenneth.w.graunke@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Slawomir Milczarek <slawomir.milczarek@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 19, 2022 at 9:35 PM <John.C.Harrison@intel.com> wrote:
>
> From: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
> GuC contains a consolidated table with a bunch of information about the
> current device.
>
> Previously, this information was spread and hardcoded to all the components
> including GuC, i915 and various UMDs. The goal here is to consolidate
> the data into GuC in a way that all interested components can grab the
> very latest and synchronized information using a simple query.
>
> As per most of the other queries, this one can be called twice.
> Once with item.length=0 to determine the exact buffer size, then
> allocate the user memory and call it again for to retrieve the
> table data. For example:
>   struct drm_i915_query_item item = {
>     .query_id = DRM_I915_QUERY_HWCONCFIG_TABLE;
>   };
>   query.items_ptr = (int64_t) &item;
>   query.num_items = 1;
>
>   ioctl(fd, DRM_IOCTL_I915_QUERY, query, sizeof(query));
>
>   if (item.length <= 0)
>     return -ENOENT;
>
>   data = malloc(item.length);
>   item.data_ptr = (int64_t) &data;
>   ioctl(fd, DRM_IOCTL_I915_QUERY, query, sizeof(query));
>
>   // Parse the data as appropriate...
>
> The returned array is a simple and flexible KLV (Key/Length/Value)
> formatted table. For example, it could be just:
>   enum device_attr {
>      ATTR_SOME_VALUE = 0,
>      ATTR_SOME_MASK  = 1,
>   };
>
>   static const u32 hwconfig[] = {
>       ATTR_SOME_VALUE,
>       1,             // Value Length in DWords
>       8,             // Value
>
>       ATTR_SOME_MASK,
>       3,
>       0x00FFFFFFFF, 0xFFFFFFFF, 0xFF000000,
>   };
>
> The attribute ids are defined in a hardware spec.
>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Kenneth Graunke <kenneth.w.graunke@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Slawomir Milczarek <slawomir.milczarek@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_query.c | 23 +++++++++++++++++++++++
>  include/uapi/drm/i915_drm.h       |  1 +
>  2 files changed, 24 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
> index 2dfbc22857a3..609e64d5f395 100644
> --- a/drivers/gpu/drm/i915/i915_query.c
> +++ b/drivers/gpu/drm/i915/i915_query.c
> @@ -479,12 +479,35 @@ static int query_memregion_info(struct drm_i915_private *i915,
>         return total_length;
>  }
>
> +static int query_hwconfig_table(struct drm_i915_private *i915,
> +                               struct drm_i915_query_item *query_item)
> +{
> +       struct intel_gt *gt = to_gt(i915);
> +       struct intel_guc_hwconfig *hwconfig = &gt->uc.guc.hwconfig;
> +
> +       if (!hwconfig->size || !hwconfig->ptr)
> +               return -ENODEV;
> +
> +       if (query_item->length == 0)
> +               return hwconfig->size;
> +
> +       if (query_item->length < hwconfig->size)
> +               return -EINVAL;
> +
> +       if (copy_to_user(u64_to_user_ptr(query_item->data_ptr),
> +                        hwconfig->ptr, hwconfig->size))
> +               return -EFAULT;
> +
> +       return hwconfig->size;
> +}
> +
>  static int (* const i915_query_funcs[])(struct drm_i915_private *dev_priv,
>                                         struct drm_i915_query_item *query_item) = {
>         query_topology_info,
>         query_engine_info,
>         query_perf_config,
>         query_memregion_info,
> +       query_hwconfig_table,
>  };
>
>  int i915_query_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 914ebd9290e5..132515199f27 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -2685,6 +2685,7 @@ struct drm_i915_query_item {
>  #define DRM_I915_QUERY_ENGINE_INFO     2
>  #define DRM_I915_QUERY_PERF_CONFIG      3
>  #define DRM_I915_QUERY_MEMORY_REGIONS   4
> +#define DRM_I915_QUERY_HWCONFIG_TABLE   5
>  /* Must be kept compact -- no holes and well documented */

New uapi needs kerneldoc in the uapi header, and please fill in any
gaps you have (i.e. if the query uapi this is built on top of isn't
fully documented yet).

Also this holds across the board, so please keep in mind in patch review.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
