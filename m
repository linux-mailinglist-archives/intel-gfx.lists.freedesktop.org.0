Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A2578A4B5
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 04:51:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28DEF10E0B5;
	Mon, 28 Aug 2023 02:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E251110E0B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 02:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693191059; x=1724727059;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=v9g6wpd0oO73Jd1mbsjEkoYyUvi4OhBSnr52rTVCrso=;
 b=BeHhaS4L4Z24YkRgvOKU0XpAfdSKqTIRCfqWvzrFLCZjlb3U6EOwk6yO
 Mzq5TT36jpSBHoeob7FcsBkmb5tfeuZSg1tG0aGBMgQ6SEtjIBJmdgAh7
 qwfjDsmHXavuzM8iNew6AME67mrIK+hcFK+wMhg8n5QweInPJcoqVDzuV
 My1e1nz9MSSnwaqXsxsYbV9rFfdgzJWCuWi33iBT2ElSOu1mBuwhEXh6Y
 qm4tOAwA7Omqs8pi5NjsjdMGQq0JELmgtv8Nf1w2NMaw4DHMRU92loaoO
 G8fCaQA7QTSHvLFqhEiBJy+fGjtEYjyaLcIFZBXylfWskSb75DUPWwFt4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="461365573"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="461365573"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 19:50:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="773112166"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="773112166"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 27 Aug 2023 19:50:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Aug 2023 05:50:55 +0300
Date: Mon, 28 Aug 2023 05:50:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZOwLj3AQJj0ahKdJ@intel.com>
References: <20230727053518.709345-1-jouni.hogander@intel.com>
 <20230727053518.709345-4-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230727053518.709345-4-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915: Add new frontbuffer
 tracking interface to queue flush
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

On Thu, Jul 27, 2023 at 08:35:17AM +0300, Jouni Högander wrote:
> We want to wait dma fences in dirtyfb ioctl. As we don't want to make
> dirtyfb ioctl as blocking call we need to use
> dma_fence_add_callback. Callback used for dma_fence_add_callback is
> called from atomic context. Due to this we need to add a new
> frontbuffer tracking interface to queue flush.
> 
> v2: Check if flush work is already pending
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_frontbuffer.c  | 33 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_frontbuffer.h  |  4 +++
>  2 files changed, 37 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> index 17a7aa8b28c2..d33b6021d9ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -202,6 +202,39 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
>  		frontbuffer_flush(i915, frontbuffer_bits, origin);
>  }
>  
> +static void intel_frontbuffer_flush_work(struct work_struct *work)
> +{
> +	struct intel_frontbuffer *front =
> +		container_of(work, struct intel_frontbuffer, flush_work);
> +
> +	i915_gem_object_flush_if_display(front->obj);
> +	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
> +	intel_frontbuffer_put(front);
> +}
> +
> +/**
> + * intel_frontbuffer_queue_flush - queue flushing frontbuffer object
> + * @front: GEM object to flush
> + *
> + * This function is targeted for our dirty callback for queueing flush when
> + * dma fence is signales
> + */
> +void intel_frontbuffer_queue_flush(struct intel_frontbuffer *front)
> +{
> +	unsigned int frontbuffer_bits;
> +
> +	if (!front)
> +		return;
> +
> +	frontbuffer_bits = atomic_read(&front->bits);

I'm thinking we could check that already before we add the fence cb.

> +	if (!frontbuffer_bits || work_pending(&front->flush_work))

The work_pending() check is here to kep the kref in sync?
Maybe better to just use the return value of schedule_work() for
that?

> +		return;
> +
> +	kref_get(&front->ref);
> +	INIT_WORK(&front->flush_work, intel_frontbuffer_flush_work);

Don't we have a better place for the INIT_WORK() (eg. when we initialize
the intel_frontbuffer)?

> +	schedule_work(&front->flush_work);
> +}
> +
>  static int frontbuffer_active(struct i915_active *ref)
>  {
>  	struct intel_frontbuffer *front =
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> index 3c474ed937fb..11760b5ce9fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> @@ -47,6 +47,8 @@ struct intel_frontbuffer {
>  	struct i915_active write;
>  	struct drm_i915_gem_object *obj;
>  	struct rcu_head rcu;
> +
> +	struct work_struct flush_work;
>  };
>  
>  /*
> @@ -163,6 +165,8 @@ static inline void intel_frontbuffer_flush(struct intel_frontbuffer *front,
>  	__intel_fb_flush(front, origin, frontbuffer_bits);
>  }
>  
> +void intel_frontbuffer_queue_flush(struct intel_frontbuffer *front);
> +
>  void intel_frontbuffer_track(struct intel_frontbuffer *old,
>  			     struct intel_frontbuffer *new,
>  			     unsigned int frontbuffer_bits);
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
