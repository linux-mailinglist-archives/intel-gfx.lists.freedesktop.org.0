Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A27F17C0CF
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 15:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74423896E5;
	Fri,  6 Mar 2020 14:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C60F86E20B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 14:46:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 06:46:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="441958322"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 06 Mar 2020 06:46:01 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 651BD5C1DD1; Fri,  6 Mar 2020 16:44:43 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200306133852.3420322-5-chris@chris-wilson.co.uk>
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
 <20200306133852.3420322-5-chris@chris-wilson.co.uk>
Date: Fri, 06 Mar 2020 16:44:43 +0200
Message-ID: <871rq54k6c.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/17] drm/i915: Wrap i915_active in a
 simple kreffed struct
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> For conveniences of callers that just want to use an i915_active to
> track a wide array of concurrent timelines, wrap the base i915_active
> struct inside a kref. This i915_active will self-destruct after use.
>

Found the user,
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_active.c | 53 ++++++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_active.h |  4 +++
>  2 files changed, 57 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index 7b3d6c12ad61..1826de14d2da 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -881,6 +881,59 @@ void i915_active_noop(struct dma_fence *fence, struct dma_fence_cb *cb)
>  	active_fence_cb(fence, cb);
>  }
>  
> +struct auto_active {
> +	struct i915_active base;
> +	struct kref ref;
> +};
> +
> +struct i915_active *i915_active_get(struct i915_active *ref)
> +{
> +	struct auto_active *aa = container_of(ref, typeof(*aa), base);
> +
> +	kref_get(&aa->ref);
> +	return &aa->base;
> +}
> +
> +static void auto_release(struct kref *ref)
> +{
> +	struct auto_active *aa = container_of(ref, typeof(*aa), ref);
> +
> +	i915_active_fini(&aa->base);
> +	kfree(aa);
> +}
> +
> +void i915_active_put(struct i915_active *ref)
> +{
> +	struct auto_active *aa = container_of(ref, typeof(*aa), base);
> +
> +	kref_put(&aa->ref, auto_release);
> +}
> +
> +static int auto_active(struct i915_active *ref)
> +{
> +	i915_active_get(ref);
> +	return 0;
> +}
> +
> +static void auto_retire(struct i915_active *ref)
> +{
> +	i915_active_put(ref);
> +}
> +
> +struct i915_active *i915_active_create(void)
> +{
> +	struct auto_active *aa;
> +
> +	aa = kmalloc(sizeof(*aa), GFP_KERNEL);
> +	if (!aa)
> +		return NULL;
> +
> +	kref_init(&aa->ref);
> +	i915_active_init(&aa->base, auto_active, auto_retire);
> +
> +	return &aa->base;
> +}
> +
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>  #include "selftests/i915_active.c"
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> index 973ff0447c6c..7e438501333e 100644
> --- a/drivers/gpu/drm/i915/i915_active.h
> +++ b/drivers/gpu/drm/i915/i915_active.h
> @@ -215,4 +215,8 @@ void i915_request_add_active_barriers(struct i915_request *rq);
>  void i915_active_print(struct i915_active *ref, struct drm_printer *m);
>  void i915_active_unlock_wait(struct i915_active *ref);
>  
> +struct i915_active *i915_active_create(void);
> +struct i915_active *i915_active_get(struct i915_active *ref);
> +void i915_active_put(struct i915_active *ref);
> +
>  #endif /* _I915_ACTIVE_H_ */
> -- 
> 2.25.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
