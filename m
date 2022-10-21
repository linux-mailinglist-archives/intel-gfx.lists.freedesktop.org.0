Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F423F607C55
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 18:35:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7377E10E405;
	Fri, 21 Oct 2022 16:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D461C10E405
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 16:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666370096; x=1697906096;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wpoduPHkZ6wgxgKBp2t1sf5fUQEdtivoHjf5mvHBx6c=;
 b=U5woycey84an27vh8m6YJz2c2TSwo1mljEIExLwA7SQRw0FW9J6H3OVR
 3vef3/SzRp+GBE5Mf02tooBm6xD05OZEEuhUI/Cv5fpwUxJ+zoQQhVQKf
 TLtvtT6ARlQhaONE1NPYJeNFIYRrvBcNxXxStNIh8O6pQbvxkQp/DXRXb
 ECus/BXPVoAUQK1M64S7f6FMyPkEsi0t5qr5BYuPTMfK/6AqKi1IfTAUU
 mBrJNpsYqqPqA7bJ0+Mbl6E2kt9WsDOKubxX4NoJ5oDUO5VfWo5Lshvld
 1WSszKEqzytk8QhR2cZjyQUoY0S4pdauF4/7LejWx+5/EQbisDmARHLz/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="294443374"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="294443374"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 09:34:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="661675105"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="661675105"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 21 Oct 2022 09:34:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Oct 2022 19:34:52 +0300
Date: Fri, 21 Oct 2022 19:34:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <Y1LKLECGcZ38aF4O@intel.com>
References: <20220923073515.23093-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220923073515.23093-1-nirmoy.das@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix a potential UAF at device
 unload
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 23, 2022 at 09:35:14AM +0200, Nirmoy Das wrote:
> i915_gem_drain_freed_objects() might not be enough to
> free all the objects and RCU delayed work might get
> scheduled after the i915 device struct gets freed.
> 
> Call i915_gem_drain_workqueue() to catch all RCU delayed work.

shard-snb is stil hitting the mm.shrink_count WARNn reliably,
and things go downhill after that.

> 
> Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_gem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 88df9a35e0fe..7541028caebd 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1278,7 +1278,7 @@ void i915_gem_init_early(struct drm_i915_private *dev_priv)
>  
>  void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
>  {
> -	i915_gem_drain_freed_objects(dev_priv);
> +	i915_gem_drain_workqueue(dev_priv);
>  	GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
>  	GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
>  	drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
