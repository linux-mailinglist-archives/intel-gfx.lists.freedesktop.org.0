Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C4717CCDA
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 09:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A2CC8970E;
	Sat,  7 Mar 2020 08:31:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 368E26E0BA;
 Sat,  7 Mar 2020 08:30:58 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 4169A8052B;
 Sat,  7 Mar 2020 09:30:56 +0100 (CET)
Date: Sat, 7 Mar 2020 09:30:54 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200307083054.GD28810@ravnborg.org>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
 <20200302222631.3861340-26-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302222631.3861340-26-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=QyXUC8HyAAAA:8
 a=7gkXJVJtAAAA:8 a=e5mUnYsNAAAA:8 a=ap8kxzlr4sUX81DPyLQA:9
 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22 a=Vxmtnl_E_bksehYqCbjh:22
Subject: Re: [Intel-gfx] [PATCH 25/51] drm: Garbage collect drm_dev_fini
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 02, 2020 at 11:26:05PM +0100, Daniel Vetter wrote:
> It has become empty. Given the few users I figured not much point
> splitting this up.
> 
> v2: Rebase over i915 changes.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>

Acked-by: Sam Ravnborg <sam@ravnborg.org>

> ---
>  drivers/gpu/drm/cirrus/cirrus.c               |  1 -
>  drivers/gpu/drm/drm_drv.c                     | 23 +------------------
>  drivers/gpu/drm/drm_mipi_dbi.c                |  1 -
>  drivers/gpu/drm/i915/i915_drv.c               |  9 --------
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |  2 --
>  drivers/gpu/drm/ingenic/ingenic-drm.c         |  1 -
>  drivers/gpu/drm/mcde/mcde_drv.c               |  1 -
>  drivers/gpu/drm/tidss/tidss_drv.c             |  2 --
>  drivers/gpu/drm/tiny/gm12u320.c               |  1 -
>  drivers/gpu/drm/tiny/repaper.c                |  1 -
>  drivers/gpu/drm/udl/udl_drv.c                 |  1 -
>  drivers/gpu/drm/vgem/vgem_drv.c               |  1 -
>  drivers/gpu/drm/vkms/vkms_drv.c               |  1 -
>  drivers/gpu/drm/xen/xen_drm_front.c           |  2 --
>  include/drm/drm_drv.h                         |  5 +---
>  15 files changed, 2 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/gpu/drm/cirrus/cirrus.c b/drivers/gpu/drm/cirrus/cirrus.c
> index 2232556ce34c..a9d789a56536 100644
> --- a/drivers/gpu/drm/cirrus/cirrus.c
> +++ b/drivers/gpu/drm/cirrus/cirrus.c
> @@ -529,7 +529,6 @@ static void cirrus_mode_config_init(struct cirrus_device *cirrus)
>  static void cirrus_release(struct drm_device *dev)
>  {
>  	drm_mode_config_cleanup(dev);
> -	drm_dev_fini(dev);
>  }
>  
>  DEFINE_DRM_GEM_FOPS(cirrus_fops);
> diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> index 90b6ae81d431..c709a0ce018c 100644
> --- a/drivers/gpu/drm/drm_drv.c
> +++ b/drivers/gpu/drm/drm_drv.c
> @@ -283,7 +283,6 @@ void drm_minor_release(struct drm_minor *minor)
>   *		struct driver_device *priv = container_of(...);
>   *
>   *		drm_mode_config_cleanup(drm);
> - *		drm_dev_fini(drm);
>   *	}
>   *
>   *	static struct drm_driver driver_drm_driver = {
> @@ -738,23 +737,6 @@ int devm_drm_dev_init(struct device *parent,
>  }
>  EXPORT_SYMBOL(devm_drm_dev_init);
>  
> -/**
> - * drm_dev_fini - Finalize a dead DRM device
> - * @dev: DRM device
> - *
> - * Finalize a dead DRM device. This is the converse to drm_dev_init() and
> - * frees up all data allocated by it. All driver private data should be
> - * finalized first. Note that this function does not free the @dev, that is
> - * left to the caller.
> - *
> - * The ref-count of @dev must be zero, and drm_dev_fini() should only be called
> - * from a &drm_driver.release callback.
> - */
> -void drm_dev_fini(struct drm_device *dev)
> -{
> -}
> -EXPORT_SYMBOL(drm_dev_fini);
> -
>  /**
>   * drm_dev_alloc - Allocate new DRM device
>   * @driver: DRM driver to allocate device for
> @@ -803,11 +785,8 @@ static void drm_dev_release(struct kref *ref)
>  {
>  	struct drm_device *dev = container_of(ref, struct drm_device, ref);
>  
> -	if (dev->driver->release) {
> +	if (dev->driver->release)
>  		dev->driver->release(dev);
> -	} else {
> -		drm_dev_fini(dev);
> -	}
>  
>  	drm_managed_release(dev);
>  
> diff --git a/drivers/gpu/drm/drm_mipi_dbi.c b/drivers/gpu/drm/drm_mipi_dbi.c
> index 069603dfcd10..a678e07508d4 100644
> --- a/drivers/gpu/drm/drm_mipi_dbi.c
> +++ b/drivers/gpu/drm/drm_mipi_dbi.c
> @@ -591,7 +591,6 @@ void mipi_dbi_release(struct drm_device *drm)
>  	DRM_DEBUG_DRIVER("\n");
>  
>  	drm_mode_config_cleanup(drm);
> -	drm_dev_fini(drm);
>  }
>  EXPORT_SYMBOL(mipi_dbi_release);
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index bb14209beeed..ff24ca5df7ed 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -911,13 +911,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	return i915;
>  }
>  
> -static void i915_driver_destroy(struct drm_i915_private *i915)
> -{
> -	struct pci_dev *pdev = i915->drm.pdev;
> -
> -	drm_dev_fini(&i915->drm);
> -}
> -
>  /**
>   * i915_driver_probe - setup chip and create an initial config
>   * @pdev: PCI device
> @@ -1020,7 +1013,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	pci_disable_device(pdev);
>  out_fini:
>  	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
> -	i915_driver_destroy(i915);
>  	drm_dev_put(&i915->drm);
>  	return ret;
>  }
> @@ -1077,7 +1069,6 @@ static void i915_driver_release(struct drm_device *dev)
>  	intel_runtime_pm_driver_release(rpm);
>  
>  	i915_driver_late_release(dev_priv);
> -	i915_driver_destroy(dev_priv);
>  }
>  
>  static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index acf889e4b993..2b4407ac26de 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -76,7 +76,6 @@ static void mock_device_release(struct drm_device *dev)
>  
>  	drm_mode_config_cleanup(&i915->drm);
>  
> -	drm_dev_fini(&i915->drm);
>  out:
>  	put_device(&i915->drm.pdev->dev);
>  	i915->drm.pdev = NULL;
> @@ -215,7 +214,6 @@ struct drm_i915_private *mock_gem_device(void)
>  	intel_gt_driver_late_release(&i915->gt);
>  	intel_memory_regions_driver_release(i915);
>  	drm_mode_config_cleanup(&i915->drm);
> -	drm_dev_fini(&i915->drm);
>  	drm_dev_put(&i915->drm);
>  
>  	return NULL;
> diff --git a/drivers/gpu/drm/ingenic/ingenic-drm.c b/drivers/gpu/drm/ingenic/ingenic-drm.c
> index e2c832eb4e9a..192aaa4421a3 100644
> --- a/drivers/gpu/drm/ingenic/ingenic-drm.c
> +++ b/drivers/gpu/drm/ingenic/ingenic-drm.c
> @@ -492,7 +492,6 @@ static irqreturn_t ingenic_drm_irq_handler(int irq, void *arg)
>  static void ingenic_drm_release(struct drm_device *drm)
>  {
>  	drm_mode_config_cleanup(drm);
> -	drm_dev_fini(drm);
>  }
>  
>  static int ingenic_drm_enable_vblank(struct drm_crtc *crtc)
> diff --git a/drivers/gpu/drm/mcde/mcde_drv.c b/drivers/gpu/drm/mcde/mcde_drv.c
> index 7474481503a1..a543ebf3d541 100644
> --- a/drivers/gpu/drm/mcde/mcde_drv.c
> +++ b/drivers/gpu/drm/mcde/mcde_drv.c
> @@ -223,7 +223,6 @@ static void mcde_release(struct drm_device *drm)
>  	struct mcde *mcde = drm->dev_private;
>  
>  	drm_mode_config_cleanup(drm);
> -	drm_dev_fini(drm);
>  }
>  
>  DEFINE_DRM_GEM_CMA_FOPS(drm_fops);
> diff --git a/drivers/gpu/drm/tidss/tidss_drv.c b/drivers/gpu/drm/tidss/tidss_drv.c
> index 32a85628dbec..460d5e9d0cf4 100644
> --- a/drivers/gpu/drm/tidss/tidss_drv.c
> +++ b/drivers/gpu/drm/tidss/tidss_drv.c
> @@ -108,8 +108,6 @@ static void tidss_release(struct drm_device *ddev)
>  	drm_kms_helper_poll_fini(ddev);
>  
>  	tidss_modeset_cleanup(tidss);
> -
> -	drm_dev_fini(ddev);
>  }
>  
>  DEFINE_DRM_GEM_CMA_FOPS(tidss_fops);
> diff --git a/drivers/gpu/drm/tiny/gm12u320.c b/drivers/gpu/drm/tiny/gm12u320.c
> index 524ca0941cf9..3928f69bbd3d 100644
> --- a/drivers/gpu/drm/tiny/gm12u320.c
> +++ b/drivers/gpu/drm/tiny/gm12u320.c
> @@ -637,7 +637,6 @@ static void gm12u320_driver_release(struct drm_device *dev)
>  
>  	gm12u320_usb_free(gm12u320);
>  	drm_mode_config_cleanup(dev);
> -	drm_dev_fini(dev);
>  }
>  
>  DEFINE_DRM_GEM_FOPS(gm12u320_fops);
> diff --git a/drivers/gpu/drm/tiny/repaper.c b/drivers/gpu/drm/tiny/repaper.c
> index df5654ef53ee..4741ff670ec9 100644
> --- a/drivers/gpu/drm/tiny/repaper.c
> +++ b/drivers/gpu/drm/tiny/repaper.c
> @@ -914,7 +914,6 @@ static void repaper_release(struct drm_device *drm)
>  	DRM_DEBUG_DRIVER("\n");
>  
>  	drm_mode_config_cleanup(drm);
> -	drm_dev_fini(drm);
>  }
>  
>  static const uint32_t repaper_formats[] = {
> diff --git a/drivers/gpu/drm/udl/udl_drv.c b/drivers/gpu/drm/udl/udl_drv.c
> index 6a5594946096..8b78c356beb5 100644
> --- a/drivers/gpu/drm/udl/udl_drv.c
> +++ b/drivers/gpu/drm/udl/udl_drv.c
> @@ -38,7 +38,6 @@ static void udl_driver_release(struct drm_device *dev)
>  {
>  	udl_fini(dev);
>  	udl_modeset_cleanup(dev);
> -	drm_dev_fini(dev);
>  }
>  
>  static struct drm_driver driver = {
> diff --git a/drivers/gpu/drm/vgem/vgem_drv.c b/drivers/gpu/drm/vgem/vgem_drv.c
> index 7486014e9149..ec1a8ebb6f1b 100644
> --- a/drivers/gpu/drm/vgem/vgem_drv.c
> +++ b/drivers/gpu/drm/vgem/vgem_drv.c
> @@ -432,7 +432,6 @@ static void vgem_release(struct drm_device *dev)
>  	struct vgem_device *vgem = container_of(dev, typeof(*vgem), drm);
>  
>  	platform_device_unregister(vgem->platform);
> -	drm_dev_fini(&vgem->drm);
>  }
>  
>  static struct drm_driver vgem_driver = {
> diff --git a/drivers/gpu/drm/vkms/vkms_drv.c b/drivers/gpu/drm/vkms/vkms_drv.c
> index 2f35fe789343..eef85f1a0ce5 100644
> --- a/drivers/gpu/drm/vkms/vkms_drv.c
> +++ b/drivers/gpu/drm/vkms/vkms_drv.c
> @@ -64,7 +64,6 @@ static void vkms_release(struct drm_device *dev)
>  	platform_device_unregister(vkms->platform);
>  	drm_atomic_helper_shutdown(&vkms->drm);
>  	drm_mode_config_cleanup(&vkms->drm);
> -	drm_dev_fini(&vkms->drm);
>  	destroy_workqueue(vkms->output.composer_workq);
>  }
>  
> diff --git a/drivers/gpu/drm/xen/xen_drm_front.c b/drivers/gpu/drm/xen/xen_drm_front.c
> index d22b5da38935..b91d23b5f3ae 100644
> --- a/drivers/gpu/drm/xen/xen_drm_front.c
> +++ b/drivers/gpu/drm/xen/xen_drm_front.c
> @@ -460,8 +460,6 @@ static void xen_drm_drv_release(struct drm_device *dev)
>  	drm_atomic_helper_shutdown(dev);
>  	drm_mode_config_cleanup(dev);
>  
> -	drm_dev_fini(dev);
> -
>  	if (front_info->cfg.be_alloc)
>  		xenbus_switch_state(front_info->xb_dev,
>  				    XenbusStateInitialising);
> diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
> index cbd050419ab8..edee40e31e4b 100644
> --- a/include/drm/drm_drv.h
> +++ b/include/drm/drm_drv.h
> @@ -265,9 +265,7 @@ struct drm_driver {
>  	 * @release:
>  	 *
>  	 * Optional callback for destroying device data after the final
> -	 * reference is released, i.e. the device is being destroyed. Drivers
> -	 * using this callback are responsible for calling drm_dev_fini()
> -	 * to finalize the device and then freeing the struct themselves.
> +	 * reference is released, i.e. the device is being destroyed.
>  	 */
>  	void (*release) (struct drm_device *);
>  
> @@ -623,7 +621,6 @@ int drm_dev_init(struct drm_device *dev,
>  int devm_drm_dev_init(struct device *parent,
>  		      struct drm_device *dev,
>  		      struct drm_driver *driver);
> -void drm_dev_fini(struct drm_device *dev);
>  
>  struct drm_device *drm_dev_alloc(struct drm_driver *driver,
>  				 struct device *parent);
> -- 
> 2.24.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
