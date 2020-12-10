Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6762D55FC
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 10:02:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35DDB6E425;
	Thu, 10 Dec 2020 09:02:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 262336E425
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 09:02:21 +0000 (UTC)
IronPort-SDR: 58Us7BaKefn+DO6/qGtYW3PPJkZRcRzIUgSvKFch1DTyAAe6ZBDpftPajqytggzKpNSrca0/BH
 5j5f/yuyaYLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="174337060"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="174337060"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 01:02:20 -0800
IronPort-SDR: sx56YYiqLYi/kKyNXo2E6V9xhY9i16jRWqf4HhtsZiLHzilrCkb30gf8J/3EGnDmzfjyEbOYii
 HzTlfIq2xPCA==
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="371441347"
Received: from ggiordax-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.87.181])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 01:02:12 -0800
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB45319AE783547ABAE415ABD7D9CE0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-2-sean.z.huang@intel.com>
 <160733527668.9322.11627414165047259578@jlahtine-mobl.ger.corp.intel.com>
 <DM6PR11MB45317C78700D10613CA68D01D9CE0@DM6PR11MB4531.namprd11.prod.outlook.com>
 <DM6PR11MB45319AE783547ABAE415ABD7D9CE0@DM6PR11MB4531.namprd11.prod.outlook.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160759092834.5062.4622790818328271981@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Thu, 10 Dec 2020 11:02:08 +0200
Subject: Re: [Intel-gfx] [RFC-v1 01/16] drm/i915/pxp: Introduce Intel PXP
 component
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Huang, Sean Z (2020-12-07 20:48:55)
> 
> >Repeating the same comment as on previous review, avoid including anything in i915_drv.h and only include in the relevant files that require to touch the internals of the structs.
> 
> I would still need to include i915_drv.h for macro INTEL_GEN(), hopefully it's acceptable.

That is fine. I was referring to the opposite, do not include
"intel_pxp.h" from i915_drv.h.

It's instead better to add "intel_pxp_types.h" etc. (look for *_types.h
files from i915 source) and minimize what is included by each file.

Regards, Joonas

> 
> -----Original Message-----
> From: Huang, Sean Z 
> Sent: Monday, December 7, 2020 10:26 AM
> To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Intel-gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [RFC-v1 01/16] drm/i915/pxp: Introduce Intel PXP component
> 
> Hi Joonas,
> 
> Thanks for the details review. I have apply the modification according to the review, and will update as rev2.
> > Description is no more true for single-session only
> DONE
> 
> > Same here, needs updating.
> DONE
> 
> >Repeating the same comment as on previous review, avoid including anything in i915_drv.h and only include in the relevant files that require to touch the internals of the structs.
> DONE
> 
> > I think this should instead go as part of intel_gt, not here.
> DONE
> 
> > We should aim to only take struct intel_pxp as parameter for intel_pxp_* functions.
> DONE, I think the suggestion is reasonable. I expect that will modify the code significantly in the future commits, but let me try intel_pxp_* instead of i915
> 
> > This would be either a major kernel programmer error or the memory would be seriously corrupt. No point leaving such checks to production code, so GEM_BUG_ON(!i915) would be enough to run the checks in CI and debug builds.
> DONE, I just remove the error check
> 
> > Also, we have not really initialized anything so it's really premature to print anything in this patch.
> DONE, remove the print
> 
> > Same here, we really want to tighten the scope to intel_pxp and call 
> > this from intel_gt_fini(), so signature should look like: void 
> > intel_pxp_fini(struct intel_pxp *pxp)
> DONE
> 
> Best regards,
> Sean
> 
> -----Original Message-----
> From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Sent: Monday, December 7, 2020 2:01 AM
> To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [RFC-v1 01/16] drm/i915/pxp: Introduce Intel PXP component
> 
> Quoting Huang, Sean Z (2020-12-07 02:21:19)
> > PXP (Protected Xe Path) is an i915 componment, available on GEN12+, 
> > that helps user space to establish the hardware protected session and 
> > manage the status of each alive software session, as well as the life 
> > cycle of each session.
> > 
> > By design PXP will expose ioctl so allow user space to create, set, 
> > and destroy each session. It will also provide the communication 
> > chanel to TEE (Trusted Execution Environment) for the protected 
> > hardware session creation.
> 
> Description is no more true for single-session only.
> 
> <SNIP>
> 
> > +++ b/drivers/gpu/drm/i915/Kconfig
> > @@ -130,6 +130,25 @@ config DRM_I915_GVT_KVMGT
> >           Choose this option if you want to enable KVMGT support for
> >           Intel GVT-g.
> >  
> > +config DRM_I915_PXP
> > +       bool "Enable Intel PXP support for Intel Gen12+ platform"
> > +       depends on DRM_I915
> > +       select INTEL_MEI_PXP
> > +       default n
> > +       help
> > +         This option selects INTEL_MEI_ME if it isn't already selected to
> > +         enabled full PXP Services on Intel platforms.
> > +
> > +         PXP is an i915 componment, available on Gen12+, that helps user
> > +         space to establish the hardware protected session and manage the
> > +         status of each alive software session, as well as the life cycle
> > +         of each session.
> > +
> > +         PXP expose ioctl so allow user space to create, set, and destroy
> > +         each session. It will also provide the communication chanel to
> > +         TEE (Trusted Execution Environment) for the protected hardware
> > +         session creation.
> 
> Same here, needs updating.
> 
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -105,6 +105,8 @@
> >  
> >  #include "intel_region_lmem.h"
> >  
> > +#include "pxp/intel_pxp.h"
> 
> Repeating the same comment as on previous review, avoid including anything in i915_drv.h and only include in the relevant files that require to touch the internals of the structs.
> 
> > +
> >  /* General customization:
> >   */
> >  
> > @@ -1215,6 +1217,8 @@ struct drm_i915_private {
> >         /* Mutex to protect the above hdcp component related values. */
> >         struct mutex hdcp_comp_mutex;
> >  
> > +       struct intel_pxp pxp;
> 
> I think this should instead go as part of intel_gt, not here.
> 
> > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> > @@ -0,0 +1,25 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright(c) 2020 Intel Corporation.
> > + */
> > +
> > +#include "i915_drv.h"
> > +#include "intel_pxp.h"
> > +
> > +int intel_pxp_init(struct drm_i915_private *i915)
> 
> We should aim to only take struct intel_pxp as parameter for intel_pxp_* functions.
> 
> > +{
> > +       if (!i915)
> > +               return -EINVAL;
> 
> This would be either a major kernel programmer error or the memory would be seriously corrupt. No point leaving such checks to production code, so GEM_BUG_ON(!i915) would be enough to run the checks in CI and debug builds.
> 
> > +       /* PXP only available for GEN12+ */
> > +       if (INTEL_GEN(i915) < 12)
> > +               return 0;
> 
> I think -ENODEV would be more appropriate return value. Also, we should look into returning this error value from inside the actual init code.
> We want the user to be able to differentiate between kernel does not support and hardware does not support status.
> 
> > +       drm_info(&i915->drm, "i915 PXP is inited with i915=[%p]\n", 
> > + i915);
> 
> We shouldn't be printing the pointer values, especially not in INFO level messages. INFO level messages should be useful for the end-user to read. This is not very useful, we should instead consider something along the lines of:
> 
> "Protected Xe Path (PXP) protected content support initialized"
> 
> Also, we have not really initialized anything so it's really premature to print anything in this patch.
> 
> > +
> > +       return 0;
> > +}
> > +
> > +void intel_pxp_uninit(struct drm_i915_private *i915)
> 
> Same here, we really want to tighten the scope to intel_pxp and call this from intel_gt_fini(), so signature should look like:
> 
> void intel_pxp_fini(struct intel_pxp *pxp)
> 
> Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
