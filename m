Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4414D453932
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 19:09:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AEB06E10B;
	Tue, 16 Nov 2021 18:09:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76DF96E10B
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Nov 2021 18:09:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="257538862"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="257538862"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 10:08:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="506551920"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga008.jf.intel.com with ESMTP; 16 Nov 2021 10:08:50 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 16 Nov 2021 10:08:50 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 16 Nov 2021 10:08:50 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.012;
 Tue, 16 Nov 2021 10:08:50 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915/rpl-s: Add PCI IDS
Thread-Index: AQHX2Am7zHKpWP4Cc0K2Wj5B2kFntqwFCH6AgAFxPGA=
Date: Tue, 16 Nov 2021 18:08:50 +0000
Message-ID: <8415315aa9024b0589bcc8ebcadfdc62@intel.com>
References: <20211112210825.1489596-1-anusha.srivatsa@intel.com>
 <20211112210825.1489596-2-anusha.srivatsa@intel.com>
 <87v90t1v3q.fsf@intel.com>
In-Reply-To: <87v90t1v3q.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/rpl-s: Add PCI IDS
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, November 15, 2021 4:07 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/rpl-s: Add PCI IDS
>=20
> On Fri, 12 Nov 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > Adding PCI ids for RPL-S. Introducing RPL-S as a subplatform of ADL-S.
> > From graphics POV,RPL-S is the same as ADL-S.
>=20
> The cover letter has a better description of what rpl-s is, but the cover=
 letter
> does not get committed to git. Please at least mention Raptor Lake in the
> title.
>=20
> Also, nitpick, please use imperative language in the commit messages. Add=
,
> introduce instead of adding, introducing.

As I read the commit messages again, I see what you mean here. Will make th=
e changes.

Thanks,
Anusha
> BR,
> Jani.
>=20
>=20
> >
> > BSpec: 53655
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  arch/x86/kernel/early-quirks.c           |  1 +
> >  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
> >  drivers/gpu/drm/i915/i915_pci.c          |  1 +
> >  drivers/gpu/drm/i915/intel_device_info.c |  7 +++++++
> > drivers/gpu/drm/i915/intel_device_info.h |  3 +++
> >  include/drm/i915_pciids.h                | 11 +++++++++++
> >  6 files changed, 25 insertions(+)
> >
> > diff --git a/arch/x86/kernel/early-quirks.c
> > b/arch/x86/kernel/early-quirks.c index 391a4e2b8604..fd2d3ab38ebb
> > 100644
> > --- a/arch/x86/kernel/early-quirks.c
> > +++ b/arch/x86/kernel/early-quirks.c
> > @@ -554,6 +554,7 @@ static const struct pci_device_id intel_early_ids[]
> __initconst =3D {
> >  	INTEL_RKL_IDS(&gen11_early_ops),
> >  	INTEL_ADLS_IDS(&gen11_early_ops),
> >  	INTEL_ADLP_IDS(&gen11_early_ops),
> > +	INTEL_RPLS_IDS(&gen11_early_ops),
> >  };
> >
> >  struct resource intel_graphics_stolen_res __ro_after_init =3D
> > DEFINE_RES_MEM(0, 0); diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index 21ff781b8149..406b9204d34b
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1470,6 +1470,8 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
> >  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G10)
> #define
> > IS_DG2_G11(dev_priv) \
> >  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
> > +#define IS_RAPTORLAKE_S(dev_priv) \
> > +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S,
> INTEL_SUBPLATFORM_RPL)
> >  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
> >  				    (INTEL_DEVID(dev_priv) & 0xFF00) =3D=3D
> 0x0C00)  #define
> > IS_BDW_ULT(dev_priv) \ diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > b/drivers/gpu/drm/i915/i915_pci.c index 5e6795853dc3..9c33ae887f2e
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -1117,6 +1117,7 @@ static const struct pci_device_id pciidlist[] =3D=
 {
> >  	INTEL_ADLS_IDS(&adl_s_info),
> >  	INTEL_ADLP_IDS(&adl_p_info),
> >  	INTEL_DG1_IDS(&dg1_info),
> > +	INTEL_RPLS_IDS(&adl_s_info),
> >  	{0, 0, 0}
> >  };
> >  MODULE_DEVICE_TABLE(pci, pciidlist);
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > b/drivers/gpu/drm/i915/intel_device_info.c
> > index 6e6b317bc33c..565b50c3f34f 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -182,6 +182,10 @@ static const u16 subplatform_portf_ids[] =3D {
> >  	INTEL_ICL_PORT_F_IDS(0),
> >  };
> >
> > +static const u16 subplatform_rpl_ids[] =3D {
> > +	INTEL_RPLS_IDS(0),
> > +};
> > +
> >  static bool find_devid(u16 id, const u16 *p, unsigned int num)  {
> >  	for (; num; num--, p++) {
> > @@ -218,6 +222,9 @@ void intel_device_info_subplatform_init(struct
> drm_i915_private *i915)
> >  	} else if (find_devid(devid, subplatform_portf_ids,
> >  			      ARRAY_SIZE(subplatform_portf_ids))) {
> >  		mask =3D BIT(INTEL_SUBPLATFORM_PORTF);
> > +	} else if (find_devid(devid, subplatform_rpl_ids,
> > +			      ARRAY_SIZE(subplatform_rpl_ids))) {
> > +		mask =3D BIT(INTEL_SUBPLATFORM_RPL);
> >  	}
> >
> >  	if (IS_TIGERLAKE(i915)) {
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> > b/drivers/gpu/drm/i915/intel_device_info.h
> > index 669f0d26c3c3..186e773fd0da 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > @@ -110,6 +110,9 @@ enum intel_platform {
> >  #define INTEL_SUBPLATFORM_G10	0
> >  #define INTEL_SUBPLATFORM_G11	1
> >
> > +/* RPL */
> > +#define INTEL_SUBPLATFORM_RPL	0
> > +
> >  enum intel_ppgtt_type {
> >  	INTEL_PPGTT_NONE =3D I915_GEM_PPGTT_NONE,
> >  	INTEL_PPGTT_ALIASING =3D I915_GEM_PPGTT_ALIASING, diff --git
> > a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h index
> > c00ac54692d7..00deb011b74c 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -666,4 +666,15 @@
> >  	INTEL_VGA_DEVICE(0x46C2, info), \
> >  	INTEL_VGA_DEVICE(0x46C3, info)
> >
> > +/* RPL-S */
> > +#define INTEL_RPLS_IDS(info) \
> > +	INTEL_VGA_DEVICE(0xA780, info), \
> > +	INTEL_VGA_DEVICE(0xA781, info), \
> > +	INTEL_VGA_DEVICE(0xA782, info), \
> > +	INTEL_VGA_DEVICE(0xA783, info), \
> > +	INTEL_VGA_DEVICE(0xA788, info), \
> > +	INTEL_VGA_DEVICE(0xA789, info), \
> > +	INTEL_VGA_DEVICE(0xA78A, info), \
> > +	INTEL_VGA_DEVICE(0xA78B, info)
> > +
> >  #endif /* _I915_PCIIDS_H */
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
