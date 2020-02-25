Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA14716F0D7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 22:07:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 912496EBAB;
	Tue, 25 Feb 2020 21:07:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBCDF6EBAB
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 21:07:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 13:07:40 -0800
X-IronPort-AV: E=Sophos;i="5.70,485,1574150400"; d="scan'208";a="231155393"
Received: from dbstims-dev.fm.intel.com ([10.1.27.172])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 13:07:40 -0800
Date: Tue, 25 Feb 2020 13:07:39 -0800
From: "Stimson, Dale B" <dale.b.stimson@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200225210738.GA70617@dbstims-dev.fm.intel.com>
References: <20200224113312.13674-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224113312.13674-1-jani.nikula@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: stop assigning drm->dev_private
 pointer
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-02-24 13:33:12, Jani Nikula wrote:
> We no longer need or use it as we subclass struct drm_device in our
> struct drm_i915_private, and can always use to_i915() to get at
> i915. Stop assigning the pointer to catch anyone trying to add new users
> for ->dev_private.
> 
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Dale B Stimson <dale.b.stimson@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.c                  | 2 --
>  drivers/gpu/drm/i915/selftests/mock_gem_device.c | 1 -
>  2 files changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 4034e431cc4c..d5aed3b7d7e3 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -1372,8 +1372,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		return ERR_PTR(err);
>  	}
>  
> -	i915->drm.dev_private = i915;
> -
>  	i915->drm.pdev = pdev;
>  	pci_set_drvdata(pdev, i915);
>  
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index 3b8986983afc..754d0eb6beaa 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -144,7 +144,6 @@ struct drm_i915_private *mock_gem_device(void)
>  		goto put_device;
>  	}
>  	i915->drm.pdev = pdev;
> -	i915->drm.dev_private = i915;
>  
>  	intel_runtime_pm_init_early(&i915->runtime_pm);
>  
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
