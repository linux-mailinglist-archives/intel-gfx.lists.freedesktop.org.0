Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39266425884
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 18:57:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BEB56E850;
	Thu,  7 Oct 2021 16:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EB536E850
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 16:56:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="223707818"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="223707818"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 09:56:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="568704618"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 07 Oct 2021 09:56:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 7 Oct 2021 09:56:54 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 7 Oct 2021 09:56:53 -0700
Received: from bgsmsx606.gar.corp.intel.com ([10.67.234.8]) by
 BGSMSX606.gar.corp.intel.com ([10.67.234.8]) with mapi id 15.01.2242.012;
 Thu, 7 Oct 2021 22:26:51 +0530
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Mun, 
 Gwan-gyeong" <gwan-gyeong.mun@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>, "Navare,
 Manasi D" <manasi.d.navare@intel.com>, "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/4] drm/i915/panelreplay: HAS_PR() macro
 added for panel replay
Thread-Index: AQHXu5dF64TNhHWQNk2G1A20AD7tR6vHYHOAgABeiKA=
Date: Thu, 7 Oct 2021 16:56:50 +0000
Message-ID: <25358b11516c488aa271005a2d35273a@intel.com>
References: <20211007155729.27812-1-animesh.manna@intel.com>
 <20211007155729.27812-2-animesh.manna@intel.com> <YV8iyeS0eVnnoUAM@intel.com>
In-Reply-To: <YV8iyeS0eVnnoUAM@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/panelreplay: HAS_PR() macro
 added for panel replay
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, October 7, 2021 10:10 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Mun, Gwan-gyeong <gwan-
> gyeong.mun@intel.com>; Kahola, Mika <mika.kahola@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Navare, Manasi D <manasi.d.navare@intel.com>;
> Souza, Jose <jose.souza@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/panelreplay: HAS_PR() ma=
cro
> added for panel replay
>=20
> On Thu, Oct 07, 2021 at 09:27:26PM +0530, Animesh Manna wrote:
> > Platforms having Display 13 and above will support panel replay
> > feature of DP 2.0 monitor. Added a HAS_PR() macro to check for panel
> > replay capability.
> >
> > v1: Initial version.
> > v2: DISPLAY_VER macro used instead of has_pr flag. [Jose]
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_drv.h | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index 12256218634f..8db0626337e3
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1693,6 +1693,7 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
> >  #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)-
> >display.has_ddi)
> >  #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)-
> >display.has_fpga_dbg)
> >  #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)-
> >display.has_psr)
> > +#define HAS_PR(dev_priv)		 (DISPLAY_VER(dev_priv) >=3D 13)
>=20
> Public relations?

Want to have a flag to enable/disable overall feature and useful in future =
to check power improvement with and without panel replay.
Initial had a feature flag in device_info structure like other features and=
 later make a relation with DISPLAY_VER as per feedback.
https://patchwork.freedesktop.org/patch/452817/?series=3D94470&rev=3D1
Should we go back with feature flag or can go ahead with DISPLAY_VER relati=
on?

Regards,
Animesh

>=20
> >  #define HAS_PSR_HW_TRACKING(dev_priv) \
> >  	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
> >  #define HAS_PSR2_SEL_FETCH(dev_priv)	 (GRAPHICS_VER(dev_priv) >=3D
> 12)
> > --
> > 2.29.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
