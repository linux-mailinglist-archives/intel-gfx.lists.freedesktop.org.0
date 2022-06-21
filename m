Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D26955331F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 15:15:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEABC10FB6C;
	Tue, 21 Jun 2022 13:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14BDB10FB6C
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 13:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655817303; x=1687353303;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YUYwtaXj9SgmqysmEbqusuW4kLxsRO+hkPFVMwMcPao=;
 b=MjCuFl8otnsBFH8Flqi0ifozpecMYEiwso5VEy0dxrgcUKLPnQyuSY+W
 h15Id6me4mndQPZ9/qCw/ThZaHvzuReD4U31jqOpalkDctAq4Ho+Udphc
 Vtejga551iSo8RuH+seR+0vCNpspNc2+mSNV4Kl+lG2LqCrSEZ9OO3knh
 tiq9m++jZetjvujBI8p4Kyfs8fXJMerhntsOAfUnKsV4mITHbi5Flucbt
 UNApPDa64lEiSYILflFM7fJsUvxTUCkdVqu3wZ2verHCU025QXxZ9sRVI
 PXog1bHu9BgEqv/P3TaEZcACjSwZEgjtKihsI7cn3WpSOPecP/ximRnzH w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="277662631"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="277662631"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 06:15:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="562377939"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 21 Jun 2022 06:15:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 06:15:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 06:15:01 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Tue, 21 Jun 2022 06:15:01 -0700
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Tangudu, Tilak" <tilak.tangudu@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Ewins,
 Jon" <jon.ewins@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>, "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "Nilawar, Badal" <badal.nilawar@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>, "Sundaresan, Sujaritha"
 <sujaritha.sundaresan@intel.com>
Thread-Topic: [PATCH 11/11] drm/i915 : Add D3COLD OFF support
Thread-Index: AQHYhWmpoAHxlKx4zkaJwPPxefxSn61Z0s1Q
Date: Tue, 21 Jun 2022 13:15:00 +0000
Message-ID: <8044338d379646c18fa48c82cba641b3@intel.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
 <20220621123516.370479-12-tilak.tangudu@intel.com>
In-Reply-To: <20220621123516.370479-12-tilak.tangudu@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-originating-ip: [10.108.32.68]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 11/11] drm/i915 : Add D3COLD OFF support
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Tangudu, Tilak <tilak.tangudu@intel.com>
> Sent: Tuesday, June 21, 2022 6:05 PM
> To: intel-gfx@lists.freedesktop.org; Ewins, Jon <jon.ewins@intel.com>; Vi=
vi,
> Rodrigo <rodrigo.vivi@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>; Wilson, Chris P <chris.p.wilson@intel.com>;
> Dixit, Ashutosh <ashutosh.dixit@intel.com>; Nilawar, Badal
> <badal.nilawar@intel.com>; Gupta, Anshuman <anshuman.gupta@intel.com>;
> Tangudu, Tilak <tilak.tangudu@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Gupta, saurabhg <saurabhg.gupta@intel.com>;
> Iddamsetty, Aravind <aravind.iddamsetty@intel.com>; Sundaresan, Sujaritha
> <sujaritha.sundaresan@intel.com>
> Subject: [PATCH 11/11] drm/i915 : Add D3COLD OFF support
>=20
> Added lmem deep suspend/resume, which covers lmem eviction and added
> GT/GUC deep suspend/resume using i915_gem_backup_suspend,
> i915_gem_suspend_late and i915_gem_resume.
>=20
> Added HAS_D3COLD_OFF feature macro to use for D3COLD OFF feature
We don't need such Macro HAS_D3COLD_OFF , checking bridge pme capability fr=
om D3Cold is sufficient,
As it is a pci feature. You can refer below patch.
https://patchwork.freedesktop.org/patch/489746/?series=3D104128&rev=3D3

>=20
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c       | 96 ++++++++++++++++++------
>  drivers/gpu/drm/i915/i915_drv.h          |  1 +
>  drivers/gpu/drm/i915/i915_pci.c          |  1 +
>  drivers/gpu/drm/i915/intel_device_info.h |  1 +
>  4 files changed, 76 insertions(+), 23 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_driver.c
> b/drivers/gpu/drm/i915/i915_driver.c
> index 669365c2958c..1ca45d933a4a 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1609,9 +1609,21 @@ static int intel_runtime_suspend(struct device *kd=
ev)
>  	 * We are safe here against re-faults, since the fault handler takes
>  	 * an RPM reference.
>  	 */
> -	i915_gem_runtime_suspend(dev_priv);
> +	if (HAS_D3COLD_OFF(dev_priv)) {
> +		i915_gem_backup_suspend(dev_priv);
> +		i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
> +		i915_gem_suspend_late(dev_priv);
> +	} else {
> +		i915_gem_runtime_suspend(dev_priv);
> +		intel_gt_runtime_suspend(to_gt(dev_priv));
>=20
> -	intel_gt_runtime_suspend(to_gt(dev_priv));
> +		/*
> +		 * FIXME: Temporary hammer to avoid freezing the machine on
> our DGFX
> +		 * This should be totally removed when we handle the pci states
> properly
> +		 * on runtime PM and on s2idle cases.
> +		 */
> +		pci_d3cold_disable(pdev);
> +	}
>=20
>  	intel_runtime_pm_disable_interrupts(dev_priv);
>=20
> @@ -1641,12 +1653,6 @@ static int intel_runtime_suspend(struct device *kd=
ev)
>  		drm_err(&dev_priv->drm,
>  			"Unclaimed access detected prior to suspending\n");
>=20
> -	/*
> -	 * FIXME: Temporary hammer to avoid freezing the machine on our
> DGFX
> -	 * This should be totally removed when we handle the pci states
> properly
> -	 * on runtime PM and on s2idle cases.
> -	 */
> -	pci_d3cold_disable(pdev);
>  	rpm->suspended =3D true;
>=20
>  	/*
> @@ -1662,14 +1668,18 @@ static int intel_runtime_suspend(struct device
> *kdev)
>  		 */
>  		intel_opregion_notify_adapter(dev_priv, PCI_D3hot);
>  	} else {
> -		/*
> -		 * current versions of firmware which depend on this opregion
> -		 * notification have repurposed the D1 definition to mean
> -		 * "runtime suspended" vs. what you would normally expect
> (D3)
> -		 * to distinguish it from notifications that might be sent via
> -		 * the suspend path.
> -		 */
> -		intel_opregion_notify_adapter(dev_priv, PCI_D1);
> +		if (HAS_D3COLD_OFF(dev_priv)) {
> +			intel_opregion_suspend(dev_priv, PCI_D3cold);
This is not needed, this opregion mbox is already depreciated.
> +		} else {
> +			/*
> +			 * current versions of firmware which depend on this
> opregion
> +			 * notification have repurposed the D1 definition to
> mean
> +			 * "runtime suspended" vs. what you would normally
> expect (D3)
> +			 * to distinguish it from notifications that might be sent
> via
> +			 * the suspend path.
> +			 */
> +			intel_opregion_notify_adapter(dev_priv, PCI_D1);
> +		}
>  	}
>=20
>  	assert_forcewakes_inactive(&dev_priv->uncore);
> @@ -1677,6 +1687,12 @@ static int intel_runtime_suspend(struct device *kd=
ev)
>  	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
>  		intel_hpd_poll_enable(dev_priv);
>=20
> +	if (HAS_D3COLD_OFF(dev_priv)) {
> +		i915_save_pci_state(pdev);
PCI core do save/restore state , do we need this ?
> +		pci_disable_device(pdev);
> +		pci_set_power_state(pdev, PCI_D3cold);
We don't need to set the pci state as well,  as though pci config state, it=
 can set up to max d3hot.
> +	}
> +
>  	drm_dbg(&dev_priv->drm, "Device suspended\n");
>  	return 0;
>  }
> @@ -1696,9 +1712,28 @@ static int intel_runtime_resume(struct device *kde=
v)
>  	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm-
> >wakeref_count));
>  	disable_rpm_wakeref_asserts(rpm);
>=20
> -	intel_opregion_notify_adapter(dev_priv, PCI_D0);
> +	if (HAS_D3COLD_OFF(dev_priv)) {
> +		ret =3D pci_set_power_state(pdev, PCI_D0);
> +		if (ret) {
> +			drm_err(&dev_priv->drm,
> +				"failed to set PCI D0 power state (%d)\n", ret);
> +			return ret;
> +		}
> +
> +		i915_load_pci_state(pdev);
> +
> +		ret =3D pci_enable_device(pdev);
> +		if (ret)
> +			return ret;
> +		pci_set_master(pdev);
> +		intel_opregion_resume(dev_priv);
> +	} else {
> +		pci_d3cold_enable(pdev);
> +		intel_opregion_notify_adapter(dev_priv, PCI_D0);
> +	}
> +
>  	rpm->suspended =3D false;
> -	pci_d3cold_enable(pdev);
> +
>  	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
>  		drm_dbg(&dev_priv->drm,
>  			"Unclaimed access during suspend, bios?\n"); @@ -
> 1711,12 +1746,27 @@ static int intel_runtime_resume(struct device *kdev)
>=20
>  	intel_runtime_pm_enable_interrupts(dev_priv);
>=20
> -	/*
> -	 * No point of rolling back things in case of an error, as the best
> -	 * we can do is to hope that things will still work (and disable RPM).
> -	 */
> -	intel_gt_runtime_resume(to_gt(dev_priv));
> +	if (HAS_D3COLD_OFF(dev_priv)) {
> +		ret =3D i915_pcode_init(dev_priv);
> +		if (ret)
> +			return ret;
>=20
> +		sanitize_gpu(dev_priv);
> +		ret =3D i915_ggtt_enable_hw(dev_priv);
> +		if (ret)
> +			drm_err(&dev_priv->drm, "failed to re-enable
> GGTT\n");
> +
> +		i915_ggtt_resume(to_gt(dev_priv)->ggtt);
> +
> +		i915_gem_resume(dev_priv);
> +
> +	} else {
> +		/*
> +		 * No point of rolling back things in case of an error, as the best
> +		 * we can do is to hope that things will still work (and disable
> RPM).
> +		 */
> +		intel_gt_runtime_resume(to_gt(dev_priv));
> +	}
>  	/*
>  	 * On VLV/CHV display interrupts are part of the display
>  	 * power well, so hpd is reinitialized from there. For diff --git
> a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h index
> ec8c7a2af673..633d20c2372a 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1300,6 +1300,7 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>=20
>  #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
> #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
> +#define HAS_D3COLD_OFF(i915) (INTEL_INFO(dev_priv)->has_d3cold_off)
>=20
>  /*
>   * Platform has the dedicated compression control state for each lmem su=
rfaces
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 5e51fc29bb8b..749ccb14fd6f 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1064,6 +1064,7 @@ static const struct intel_device_info xehpsdv_info =
=3D {
>  	.has_guc_deprivilege =3D 1, \
>  	.has_heci_pxp =3D 1, \
>  	.needs_compact_pt =3D 1, \
> +	.has_d3cold_off =3D 1, \
>  	.has_media_ratio_mode =3D 1, \
>  	.platform_engine_mask =3D \
>  		BIT(RCS0) | BIT(BCS0) | \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> b/drivers/gpu/drm/i915/intel_device_info.h
> index 08341174ee0a..495c12d65c3e 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -140,6 +140,7 @@ enum intel_ppgtt_type {
>  	/* Keep has_* in alphabetical order */ \
>  	func(has_64bit_reloc); \
>  	func(has_64k_pages); \
> +	func(has_d3cold_off); \
>  	func(needs_compact_pt); \
>  	func(gpu_reset_clobbers_display); \
>  	func(has_reset_engine); \
> --
> 2.25.1

