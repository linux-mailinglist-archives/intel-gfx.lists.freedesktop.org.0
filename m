Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CA9468146
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Dec 2021 01:29:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4496B7A41E;
	Sat,  4 Dec 2021 00:29:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE6E37A41E
 for <Intel-gfx@lists.freedesktop.org>; Sat,  4 Dec 2021 00:29:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10187"; a="223951803"
X-IronPort-AV: E=Sophos;i="5.87,286,1631602800"; d="scan'208";a="223951803"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 16:29:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="478503446"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 03 Dec 2021 16:29:24 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 3 Dec 2021 16:29:24 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 3 Dec 2021 16:29:23 -0800
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.020;
 Fri, 3 Dec 2021 16:29:23 -0800
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Taylor, Clinton A"
 <clinton.a.taylor@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adlp: Remove require_force_probe
 protection
Thread-Index: AQHX2nwWOJlwZLejFUGjqTJPd265/qwHROwAgBpM0GA=
Date: Sat, 4 Dec 2021 00:28:30 +0000
Deferred-Delivery: Sat, 4 Dec 2021 00:27:43 +0000
Message-ID: <b5c438f0b05b41ffbd9dbfcba26467d9@intel.com>
References: <20211115235345.32206-1-clinton.a.taylor@intel.com>
 <YZQxlF5B0kcqzJvO@intel.com>
In-Reply-To: <YZQxlF5B0kcqzJvO@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp: Remove require_force_probe
 protection
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Assuming the whitespace cleanup requested below is completed:

Acked-by: Jon Bloomfield <jon.bloomfield@intel.com>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Rodrigo Vivi
> Sent: Tuesday, November 16, 2021 2:33 PM
> To: Taylor, Clinton A <clinton.a.taylor@intel.com>
> Cc: Intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp: Remove
> require_force_probe protection
>=20
> On Mon, Nov 15, 2021 at 03:53:45PM -0800, clinton.a.taylor@intel.com
> wrote:
> > From: Clint Taylor <clinton.a.taylor@intel.com>
> >
> >     drm/i915/adlp: Remove require_force_probe protection
> >
> >     Removing force probe protection from ADL_P platform. Did
> >     not observe warnings, errors, flickering or any visual
> >     defects while doing ordinary tasks like browsing and
> >     editing documents in a two monitor setup.
>=20
> some strange alignment here... please remove the extra
> tabs here.
>=20
> >
> >     For more info drm-tip idle run results :
> >     https://intel-gfx-ci.01.org/tree/drm-tip/drmtip.html?
>=20
> hmm... I could swear that I had seen the ADL-P green there a few
> days ago as well... But right now I couldn't see ADL-P there...
>=20
> So that fails on having a *reliable* green CI picture...
> Any idea why that is down at this moment?
>=20
> >
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >
> > Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_pci.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c
> b/drivers/gpu/drm/i915/i915_pci.c
> > index 4c7fcc5f9a97..af9f4988bd88 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -970,7 +970,6 @@ static const struct intel_device_info adl_p_info =
=3D {
> >  	GEN12_FEATURES,
> >  	XE_LPD_FEATURES,
> >  	PLATFORM(INTEL_ALDERLAKE_P),
> > -	.require_force_probe =3D 1,
> >  	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) |
> BIT(TRANSCODER_B) |
> >  			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
> >  			       BIT(TRANSCODER_DSI_0) |
> BIT(TRANSCODER_DSI_1),
> > --
> > 2.33.1
> >
