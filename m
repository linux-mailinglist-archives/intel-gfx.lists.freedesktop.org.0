Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 879F960F57F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 12:40:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83E7710E1AC;
	Thu, 27 Oct 2022 10:40:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CBC910E1AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 10:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666867239; x=1698403239;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uV6ayQpHo02H1KczeLmq/wPEY+xEKMEH4CcQKcIl4F8=;
 b=LCv5VpCd+/rqQu9ECI25bI2UbIoLHg3tkFXC47gPtfr//39nOs6y933H
 BD9+w5SmMhmmh3MOYPWGJ1Wywn2rW6BIZ5o/UYIdNV+o+Vbk3vV7J/5ff
 S/akyU7u5jeDBpinc8SJpDMdlVhcuVmwNLvNuObVRQYs62bSR2phUUkJs
 dppriwsOrYzDnCjKuiNQPR+ZiBkciUKAsaiakw32XPlsOBBh63QVf9kCN
 etvuyqvs2fuGlBTT47oLZVrFAn9Ae9U6VOf/myq6zeNoiVrwFyExlrLkQ
 cYLmJxzpgAF54FW0rtk9KYIZMBEOFUM1Bn6bcYQ3igN+/2dp7Hg03pcqJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="370255605"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="370255605"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 03:40:38 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="961578803"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="961578803"
Received: from unknown (HELO intel.com) ([10.252.46.180])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 03:40:37 -0700
Date: Thu, 27 Oct 2022 12:40:34 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Karolina Drobnik <karolina.drobnik@intel.com>
Message-ID: <Y1pgIvGVhvCXOFLT@ashyti-mobl2.lan>
References: <20221025091903.986819-1-karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221025091903.986819-1-karolina.drobnik@intel.com>
Subject: Re: [Intel-gfx] [PATCH] i915/i915_gem_context: Remove debug message
 in i915_gem_context_create_ioctl
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Karolina,

On Tue, Oct 25, 2022 at 11:19:03AM +0200, Karolina Drobnik wrote:
> We know that as long as GEM context create ioctl succeeds, a context was
> created. There is no need to write about it, especially when such a message
> heavily pollutes dmesg and makes debugging actual errors harder.
> 
> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>

pushed to drm-intel-gt-next.

Thank you!
Andi

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 1e29b1e6d186..1456ca87c04e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -2298,7 +2298,6 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
>  	}
>  
>  	args->ctx_id = id;
> -	drm_dbg(&i915->drm, "HW context %d created\n", args->ctx_id);
>  
>  	return 0;
>  
> -- 
> 2.25.1
