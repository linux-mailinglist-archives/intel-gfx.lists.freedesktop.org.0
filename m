Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FAC453930
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 19:08:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 556FB6E0DF;
	Tue, 16 Nov 2021 18:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE2756E0DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Nov 2021 18:08:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="319992693"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="319992693"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 10:08:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="645552915"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2021 10:08:02 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 16 Nov 2021 10:08:01 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 16 Nov 2021 10:08:01 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.012;
 Tue, 16 Nov 2021 10:08:01 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915/rpl-s: Add PCH ID
Thread-Index: AQHX2Am80GmLZnTbbUWtc9ZBhtuQt6wFCSYAgAFwegA=
Date: Tue, 16 Nov 2021 18:08:01 +0000
Message-ID: <06626790aa3e4fc8a69bd906b524a2d6@intel.com>
References: <20211112210825.1489596-1-anusha.srivatsa@intel.com>
 <20211112210825.1489596-3-anusha.srivatsa@intel.com>
 <87r1bh1uzt.fsf@intel.com>
In-Reply-To: <87r1bh1uzt.fsf@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/rpl-s: Add PCH ID
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
> Sent: Monday, November 15, 2021 4:09 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/rpl-s: Add PCH ID
>=20
> On Fri, 12 Nov 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > Add the PCH ID for the same.
>=20
> The same as what? Please use use commit messages that are self-contained.
>=20
> >
> > Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pch.c | 1 +
> > drivers/gpu/drm/i915/intel_pch.h | 1 +
> >  include/drm/i915_pciids.h        | 5 ++++-
>=20
> Were the new PCI IDs supposed to be in the previous patch? If here, why a=
re
> they not mentioned in the commit message?


Will update the commit message.

Anusha=20
> BR,
> Jani.
>=20
> >  3 files changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_pch.c
> > b/drivers/gpu/drm/i915/intel_pch.c
> > index d1d4b97b86f5..da8f82c2342f 100644
> > --- a/drivers/gpu/drm/i915/intel_pch.c
> > +++ b/drivers/gpu/drm/i915/intel_pch.c
> > @@ -129,6 +129,7 @@ intel_pch_type(const struct drm_i915_private
> *dev_priv, unsigned short id)
> >  		return PCH_JSP;
> >  	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
> >  	case INTEL_PCH_ADP2_DEVICE_ID_TYPE:
> > +	case INTEL_PCH_ADP3_DEVICE_ID_TYPE:
> >  		drm_dbg_kms(&dev_priv->drm, "Found Alder Lake PCH\n");
> >  		drm_WARN_ON(&dev_priv->drm,
> !IS_ALDERLAKE_S(dev_priv) &&
> >  			    !IS_ALDERLAKE_P(dev_priv));
> > diff --git a/drivers/gpu/drm/i915/intel_pch.h
> > b/drivers/gpu/drm/i915/intel_pch.h
> > index 7c0d83d292dc..6bff77521094 100644
> > --- a/drivers/gpu/drm/i915/intel_pch.h
> > +++ b/drivers/gpu/drm/i915/intel_pch.h
> > @@ -57,6 +57,7 @@ enum intel_pch {
> >  #define INTEL_PCH_JSP2_DEVICE_ID_TYPE		0x3880
> >  #define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
> >  #define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
> > +#define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
> >  #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
> >  #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
> >  #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35
> has 2918 */
> > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> > index 00deb011b74c..0e112f56a9a8 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -675,6 +675,9 @@
> >  	INTEL_VGA_DEVICE(0xA788, info), \
> >  	INTEL_VGA_DEVICE(0xA789, info), \
> >  	INTEL_VGA_DEVICE(0xA78A, info), \
> > -	INTEL_VGA_DEVICE(0xA78B, info)
> > +	INTEL_VGA_DEVICE(0xA78B, info), \
> > +	INTEL_VGA_DEVICE(0x4690, info), \
> > +	INTEL_VGA_DEVICE(0x4692, info), \
> > +	INTEL_VGA_DEVICE(0x4693, info)
> >
> >  #endif /* _I915_PCIIDS_H */
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
