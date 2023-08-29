Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 626D478C184
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 11:31:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A051510E113;
	Tue, 29 Aug 2023 09:31:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A7DD10E113
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 09:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693301482; x=1724837482;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XTpeXP/3zvZweWgQH78npGcEspoOdSfzP3sNbJe2WRM=;
 b=OT4rsZOZrxgVWeINTqH5F+p/1HYekzyO+mWF9G6PDnflx1upJRy15RPp
 PqwcCfFd9683f+ShX9Zs47olSGBLPMT68kThZ12xxjsT1rzX+tunB/gyl
 kE3IrpfHOMj7Fv1Cw2OO2/EPjQHVArwvaWhcO5bWy9DUB11DtiyEGN4f1
 3Pa3XGu+zeGPLdDmGNcrN0Wuy5+5J5IvjaleU8Q+7Slummyh53pkV6IUA
 KK1nvvf+vxtujqw1bL21CGFi3dJPzim5u4eXRlt/5UHZH3eOsdnoTkf/A
 gU3Yci2ZQNVxmpycDuDUQt6hxVpcn+Ze2YUitvlMZ4hM+jyA8BFPIZzsw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="406317653"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="406317653"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 02:30:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="738634028"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="738634028"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga002.jf.intel.com with SMTP; 29 Aug 2023 02:30:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Aug 2023 12:30:41 +0300
Date: Tue, 29 Aug 2023 12:30:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZO26wSnWE8d_EtlC@intel.com>
References: <20230727053518.709345-1-jouni.hogander@intel.com>
 <20230727053518.709345-5-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230727053518.709345-5-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915: Handle dma fences in
 dirtyfb callback
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 27, 2023 at 08:35:18AM +0300, Jouni Högander wrote:
> Take into account dma fences in dirtyfb callback. If there is no
> unsignaled dma fences perform flush immediately. If there are
> unsignaled dma fences perform invalidate and add callback which will
> queue flush when the fence gets signaled.
> 
> v2: Use dma_resv_get_singleton
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 57 +++++++++++++++++++++++--
>  1 file changed, 54 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 446bbf7986b6..56a21377680d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -7,6 +7,9 @@
>  #include <drm/drm_framebuffer.h>
>  #include <drm/drm_modeset_helper.h>
>  
> +#include <linux/dma-fence.h>
> +#include <linux/dma-resv.h>
> +
>  #include "i915_drv.h"
>  #include "intel_display.h"
>  #include "intel_display_types.h"
> @@ -1896,6 +1899,21 @@ static int intel_user_framebuffer_create_handle(struct drm_framebuffer *fb,
>  	return drm_gem_handle_create(file, &obj->base, handle);
>  }
>  
> +struct frontbuffer_fence_cb {
> +	struct dma_fence_cb base;
> +	struct intel_frontbuffer *front;
> +};
> +
> +static void intel_user_framebuffer_fence_wake(struct dma_fence *dma,
> +					      struct dma_fence_cb *data)
> +{
> +	struct frontbuffer_fence_cb *cb = container_of(data, typeof(*cb), base);
> +
> +	intel_frontbuffer_queue_flush(cb->front);
> +	kfree(cb);
> +	dma_fence_put(dma);
> +}
> +
>  static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
>  					struct drm_file *file,
>  					unsigned int flags, unsigned int color,
> @@ -1903,11 +1921,44 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
>  					unsigned int num_clips)
>  {
>  	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
> +	struct intel_frontbuffer *front = to_intel_frontbuffer(fb);
> +	struct dma_fence *fence;
> +	struct frontbuffer_fence_cb *cb;
> +	int ret = 0;
> +
> +	if (dma_resv_test_signaled(obj->base.resv, dma_resv_usage_rw(false)))
> +		goto flush;
> +
> +	intel_frontbuffer_invalidate(front, ORIGIN_DIRTYFB);

Looks like this could be deferred until dma_fence_add_callback()
has informed us whether the fence has signalled in the meantime.
That way we only do the invalidate if we succesfully add the
callback. Could in theory drop the dma_resv_test_signaled() as well,
but maybe it's worth keeping that around to avoid the kmalloc()/etc.
whenever possible.

Apart from that and the few comments I gave to the other patch
it all looks pretty reasonable to me.

> +
> +	ret = dma_resv_get_singleton(obj->base.resv, dma_resv_usage_rw(false),
> +				     &fence);
> +	if (ret || !fence)
> +		goto flush;
> +
> +	cb = kmalloc(sizeof(*cb), GFP_KERNEL);
> +	if (!cb) {
> +		dma_fence_put(fence);
> +		ret = -ENOMEM;
> +		goto flush;
> +	}
>  
> -	i915_gem_object_flush_if_display(obj);
> -	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
> +	cb->front = front;
>  
> -	return 0;
> +	ret = dma_fence_add_callback(fence, &cb->base,
> +				     intel_user_framebuffer_fence_wake);
> +	if (ret) {
> +		intel_user_framebuffer_fence_wake(fence, &cb->base);
> +		if (ret == -ENOENT)
> +			ret = 0;
> +	}
> +
> +	return ret;
> +
> +flush:
> +	i915_gem_object_flush_if_display(obj);
> +	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
> +	return ret;
>  }
>  
>  static const struct drm_framebuffer_funcs intel_fb_funcs = {
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
