Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E2B4B9318
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 22:22:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EC8110E203;
	Wed, 16 Feb 2022 21:22:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 859AB10E203
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645046542; x=1676582542;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wzDBdYUt1VgGK/y/rkl0E04JMQd/4loVL/0++H2V/1k=;
 b=VxEwWVRDMH+0my4xuNFSOMFs2y4PcmGLrGiYedc+H4LozamoIM5j76Ja
 69xfBaXl/NuCxpYYYP3Je6A6wQPR8ZWp+LrR/1kzegySAhrC1hYV3qUiA
 8p+120wW/uSrc+amUotghfiCPIeM31J1UhYiHfJcfNrH/R8xRMljwkaI0
 Oh6G4mtbh0DeVfHVusDZrZDSwyDK+avgT3hNElCb6SWlYrj9KcQD0CsXN
 UFzvGStD/L9oCN/IqABoQUSWdfOcJ1nfcakZNmhbyWUQQXPYZsfZIswfQ
 lqVkbYRZ6EyF7Ix1vIAtlwZy8kQ7Qymv/0yz+zWsSHtjKB/VnS7709IxH A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="311469815"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="311469815"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 13:22:21 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="500087745"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 13:22:21 -0800
Date: Wed, 16 Feb 2022 13:22:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Yokoyama, Caz" <caz.yokoyama@intel.com>
Message-ID: <Yg1rDNOm+VFb6ZjM@mdroper-desk1.amr.corp.intel.com>
References: <20220215214544.2197483-1-matthew.d.roper@intel.com>
 <1e6dbfc2e899dca401a92953110d347960263253.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1e6dbfc2e899dca401a92953110d347960263253.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH topic/for-CI] drm/i915: Add DG2 PCI IDs
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Applied to the topic/core-for-CI branch so that CI testing can get
started on DG2 soon.  Thanks for the review.


Matt

On Wed, Feb 16, 2022 at 04:13:14PM +0000, Yokoyama, Caz wrote:
> Reviewed-by: Caz Yokoyama <caz.yokoyama@intel.com>
> -caz
> 
> On Tue, 2022-02-15 at 13:45 -0800, Matt Roper wrote:
> > DG2 hardware will start showing up in CI shortly; let's make sure
> > it's
> > recognized by the driver.
> > 
> > Bspec: 44477
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_pci.c          |  2 +-
> >  drivers/gpu/drm/i915/intel_device_info.c | 21 ++++++++++++++++++
> >  include/drm/i915_pciids.h                | 27
> > ++++++++++++++++++++++++
> >  3 files changed, 49 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > b/drivers/gpu/drm/i915/i915_pci.c
> > index 8246cbe9b01d..91677a9f330c 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -1038,7 +1038,6 @@ static const struct intel_device_info
> > xehpsdv_info = {
> >  	.require_force_probe = 1,
> >  };
> >  
> > -__maybe_unused
> >  static const struct intel_device_info dg2_info = {
> >  	XE_HP_FEATURES,
> >  	XE_HPM_FEATURES,
> > @@ -1137,6 +1136,7 @@ static const struct pci_device_id pciidlist[] =
> > {
> >  	INTEL_ADLN_IDS(&adl_p_info),
> >  	INTEL_DG1_IDS(&dg1_info),
> >  	INTEL_RPLS_IDS(&adl_s_info),
> > +	INTEL_DG2_IDS(&dg2_info),
> >  	{0, 0, 0}
> >  };
> >  MODULE_DEVICE_TABLE(pci, pciidlist);
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > b/drivers/gpu/drm/i915/intel_device_info.c
> > index 94da5aa37391..ae13bc3c7970 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -178,6 +178,18 @@ static const u16 subplatform_rpls_ids[] = {
> >  	INTEL_RPLS_IDS(0),
> >  };
> >  
> > +static const u16 subplatform_g10_ids[] = {
> > +	INTEL_DG2_G10_IDS(0),
> > +};
> > +
> > +static const u16 subplatform_g11_ids[] = {
> > +	INTEL_DG2_G11_IDS(0),
> > +};
> > +
> > +static const u16 subplatform_g12_ids[] = {
> > +	INTEL_DG2_G12_IDS(0),
> > +};
> > +
> >  static bool find_devid(u16 id, const u16 *p, unsigned int num)
> >  {
> >  	for (; num; num--, p++) {
> > @@ -220,6 +232,15 @@ void intel_device_info_subplatform_init(struct
> > drm_i915_private *i915)
> >  	} else if (find_devid(devid, subplatform_rpls_ids,
> >  			      ARRAY_SIZE(subplatform_rpls_ids))) {
> >  		mask = BIT(INTEL_SUBPLATFORM_RPL_S);
> > +	} else if (find_devid(devid, subplatform_g10_ids,
> > +			      ARRAY_SIZE(subplatform_g10_ids))) {
> > +		mask = BIT(INTEL_SUBPLATFORM_G10);
> > +	} else if (find_devid(devid, subplatform_g11_ids,
> > +			      ARRAY_SIZE(subplatform_g11_ids))) {
> > +		mask = BIT(INTEL_SUBPLATFORM_G11);
> > +	} else if (find_devid(devid, subplatform_g12_ids,
> > +			      ARRAY_SIZE(subplatform_g12_ids))) {
> > +		mask = BIT(INTEL_SUBPLATFORM_G12);
> >  	}
> >  
> >  	if (IS_TIGERLAKE(i915)) {
> > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> > index 533890dc9da1..3609f3254f24 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -681,4 +681,31 @@
> >  	INTEL_VGA_DEVICE(0xA788, info), \
> >  	INTEL_VGA_DEVICE(0xA789, info)
> >  
> > +/* DG2 */
> > +#define INTEL_DG2_G10_IDS(info) \
> > +	INTEL_VGA_DEVICE(0x5690, info), \
> > +	INTEL_VGA_DEVICE(0x5691, info), \
> > +	INTEL_VGA_DEVICE(0x5692, info), \
> > +	INTEL_VGA_DEVICE(0x56A0, info), \
> > +	INTEL_VGA_DEVICE(0x56A1, info), \
> > +	INTEL_VGA_DEVICE(0x56A2, info)
> > +
> > +#define INTEL_DG2_G11_IDS(info) \
> > +	INTEL_VGA_DEVICE(0x5693, info), \
> > +	INTEL_VGA_DEVICE(0x5694, info), \
> > +	INTEL_VGA_DEVICE(0x5695, info), \
> > +	INTEL_VGA_DEVICE(0x56A5, info), \
> > +	INTEL_VGA_DEVICE(0x56A6, info), \
> > +	INTEL_VGA_DEVICE(0x56B0, info), \
> > +	INTEL_VGA_DEVICE(0x56B1, info)
> > +
> > +#define INTEL_DG2_G12_IDS(info) \
> > +	INTEL_VGA_DEVICE(0x56A3, info), \
> > +	INTEL_VGA_DEVICE(0x56A4, info)
> > +
> > +#define INTEL_DG2_IDS(info) \
> > +	INTEL_DG2_G10_IDS(info), \
> > +	INTEL_DG2_G11_IDS(info), \
> > +	INTEL_DG2_G12_IDS(info)
> > +
> >  #endif /* _I915_PCIIDS_H */

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
