Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4419512D1B2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:04:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BFE189EB1;
	Mon, 30 Dec 2019 16:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB2789EB1
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 16:03:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 08:03:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,375,1571727600"; d="scan'208";a="251413091"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 30 Dec 2019 08:03:56 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 536355C1DD6; Mon, 30 Dec 2019 18:03:33 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191230160112.3838434-1-chris@chris-wilson.co.uk>
References: <20191230160112.3838434-1-chris@chris-wilson.co.uk>
Date: Mon, 30 Dec 2019 18:03:33 +0200
Message-ID: <87h81hreay.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/selftests: Flush the context
 worker
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> When cleaning up the mock device, remember to flush the context worker
> to free the residual GEM contexts before shutting down the device.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/802
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_gem.c                  | 4 ++--
>  drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 ++
>  2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 9ddcf17230e6..a3d701b50a6b 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1172,6 +1172,8 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
>  
>  void i915_gem_driver_release(struct drm_i915_private *dev_priv)
>  {
> +	i915_gem_driver_release__contexts(dev_priv);
> +
>  	intel_gt_driver_release(&dev_priv->gt);
>  
>  	intel_wa_list_free(&dev_priv->gt_wa_list);
> @@ -1179,8 +1181,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv)
>  	intel_uc_cleanup_firmwares(&dev_priv->gt.uc);
>  	i915_gem_cleanup_userptr(dev_priv);
>  
> -	i915_gem_driver_release__contexts(dev_priv);
> -
>  	i915_gem_drain_freed_objects(dev_priv);
>  
>  	WARN_ON(!list_empty(&dev_priv->gem.contexts.list));
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index 2b01094e4318..3b8986983afc 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -58,6 +58,8 @@ static void mock_device_release(struct drm_device *dev)
>  	mock_device_flush(i915);
>  	intel_gt_driver_remove(&i915->gt);
>  
> +	i915_gem_driver_release__contexts(i915);
> +
>  	i915_gem_drain_workqueue(i915);
>  	i915_gem_drain_freed_objects(i915);
>  
> -- 
> 2.25.0.rc0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
