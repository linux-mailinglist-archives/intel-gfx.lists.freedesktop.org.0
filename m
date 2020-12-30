Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CC92E79A7
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Dec 2020 14:27:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D1A892E0;
	Wed, 30 Dec 2020 13:27:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD3BF892E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Dec 2020 13:27:55 +0000 (UTC)
IronPort-SDR: KtIlXZZB72LfvlbE4RzHt1B9jrkOIc3yA/LrPnTBPkGQmLjjiCtA0cgXQuUFp+DOm4vjTFQoJ/
 B3Y0rJmb50gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9849"; a="261355705"
X-IronPort-AV: E=Sophos;i="5.78,461,1599548400"; d="scan'208";a="261355705"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2020 05:27:55 -0800
IronPort-SDR: tEorE5sTdm4uJT4wqnfOYZj37qCN88yNBJUkHLiAP7koXwWajM7glmIjr8qwRVQQgSbeQzzqTd
 RUhmSdHt3erw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,461,1599548400"; d="scan'208";a="393460465"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 30 Dec 2020 05:27:54 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id AA6DF5C20E0; Wed, 30 Dec 2020 15:25:23 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201229141626.4773-1-chris@chris-wilson.co.uk>
References: <20201229141626.4773-1-chris@chris-wilson.co.uk>
Date: Wed, 30 Dec 2020 15:25:23 +0200
Message-ID: <87y2hfl930.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Taint the reset mutex with the
 shrinker
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Declare that, under extreme circumstances, the shrinker may need to wait
> upon a request, in which case reset must not itself deadlock in order to
> ensure forward progress of the driver. That is since the shrinker may
> depend upon a reset, any reset cannot touch the shrinker.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_reset.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index b85b6f3dcd60..e14b23c3b1cb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1394,6 +1394,9 @@ void intel_gt_init_reset(struct intel_gt *gt)
>  	mutex_init(&gt->reset.mutex);
>  	init_srcu_struct(&gt->reset.backoff_srcu);
>  
> +	/* While undesirable to wait inside the shrinker, complain anyway */
> +	i915_gem_shrinker_taints_mutex(gt->i915, &gt->reset.mutex);
> +
>  	/* no GPU until we are ready! */
>  	__set_bit(I915_WEDGED, &gt->reset.flags);
>  }
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
