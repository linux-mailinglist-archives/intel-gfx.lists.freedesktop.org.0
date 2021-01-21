Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F3B2FF650
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 21:50:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 162B36E952;
	Thu, 21 Jan 2021 20:50:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB54A6E954
 for <Intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 20:50:26 +0000 (UTC)
IronPort-SDR: 6NXAre7huJNSyBkYEE4B5w4kGM+S9IHctMdlcU2sUagj8ExxXxcmuuUWQdY1MstoyeWmWG6YNa
 J6bOfLf7W76w==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="243417693"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="243417693"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 12:50:25 -0800
IronPort-SDR: FdeSQDl3oiEYYYq8gl6K0FCcsbTHr4VPk0omoF2ZIkpwYnYWer9ilRmMBKduFrTvdlCYyiih56
 OhboN2u4WoFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="427504101"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2021 12:50:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 Jan 2021 12:50:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 Jan 2021 12:50:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 21 Jan 2021 12:50:25 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 21 Jan 2021 12:50:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VYmvJVVXnezIUwYAnZBACgEx1OLzaRKJ2C00o5l8HTis4TjHERmYSxWd+1lmHCW+mtHmUeLyG6eh2+mhrR2YoEWthyQPBwvS9232miMh9/mVd2EmqKPzlcD+Ue92lLz9AIw3M8uBY1DaoUjOCjtBZ1B7QzJPeSwfG3hRy9IJDeKiblKtZZ+iF70Y7Gl3en2y4e4jaELtNvzBYBxn4KCJ8fV7earurC6IBH8RIi7t4YsX9ZsTT3Tj2yw0k119SN2F7ULPSka3lurqfL9PQoUjaW5H79a4yNc4XYsJU+zLPlq8JiNUVb3X6PWqrxZBp4/AynHOpojydPEEoqpgXEZFaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HO8hjOcCMxiuHOO+9WC4sF+tG/0jbSI58d2qOkinkNU=;
 b=h9gKHccN3V6ykcTpolywdcb5vtBOlHZhRPEHQDQTzqOeXCjfHK9DEhtJR6S458VZOHx9XdgoMS55ZAgsl3HKsvUVp/SMiEJkPl2wSzYiYaFbypYtxDoyVlnlvwaAtqn4p0YQBpnRFohSeJb8YIrV2wR4Iaq7TFpBm/deVTGL6iRkMxnWhcZud8JyGk5FdppvE4awiV75aj/fIBRyVzOSZXjHv24CJ4UTQ6rHmizr9wlg7JDuXht5plE+K+NBsrGjMPz9WLlQ+wB+U+FuRRzaCOlHHZ3McuIubNZfWvYHr1esHwp6ZU40WZ/gxJ66BPJTB3NV5zPa67lR/fXVKjkRTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HO8hjOcCMxiuHOO+9WC4sF+tG/0jbSI58d2qOkinkNU=;
 b=TBIw5My/n5++IpjBoNxg7uWl3Bj36Y13QVMy4LmalUPp3FCeXGjjX5VSMbOCuUUIBbas+GSWcFdmCv59aSiYkvbsVKQvPANwfrITiupRz9m6Qj86EVSc/Y38mwco7cTc5ND+F7QCpYFIveM/lHFnuN3KYURZ+MQzlKbmspiMIOo=
Received: from DM6PR11MB2683.namprd11.prod.outlook.com (2603:10b6:5:c6::13) by
 DM5PR11MB0057.namprd11.prod.outlook.com (2603:10b6:4:6b::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3742.12; Thu, 21 Jan 2021 20:50:19 +0000
Received: from DM6PR11MB2683.namprd11.prod.outlook.com
 ([fe80::29b9:554:9ed:83b2]) by DM6PR11MB2683.namprd11.prod.outlook.com
 ([fe80::29b9:554:9ed:83b2%6]) with mapi id 15.20.3763.013; Thu, 21 Jan 2021
 20:50:19 +0000
From: "Gaurav, Kumar" <kumar.gaurav@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Gupta, Anshuman" <anshuman.gupta@intel.com>
Thread-Topic: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption support
Thread-Index: AQHW7jbIH9N2MRh6tkiniInCJdu+rKousF4AgAPb0QCAAALfMA==
Date: Thu, 21 Jan 2021 20:50:18 +0000
Message-ID: <DM6PR11MB268360BF1C1787E2EFECF5AD97A10@DM6PR11MB2683.namprd11.prod.outlook.com>
References: <20210119074320.28768-1-sean.z.huang@intel.com>
 <20210119074320.28768-14-sean.z.huang@intel.com>
 <9babc226536544f7aa7ec98e80de4b21@intel.com> <YAnketZoGh4+ppkg@intel.com>
In-Reply-To: <YAnketZoGh4+ppkg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [98.208.38.76]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c02a1a2c-489a-4946-006a-08d8be4e29e7
x-ms-traffictypediagnostic: DM5PR11MB0057:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB0057E2351957B32027CD7F5B97A10@DM5PR11MB0057.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n6WN85VCXWdkmeNqgYQIXIjXKLAi62gFx6/Lwt0DVUPVrAadd0CWVcNCE7mjYCtE3akWL1gS/xMw/wcIQnMF3HvL5O8d2HOdLGWoWNeCc6khc1v/7nFF4ughTaSU19SJWYd/4sMTuZQqXx/Otw/4TDF7KIUvUiomw1zIgg2Cg/wXhANkzMRo4XOYTrgHb8uzC8vRuBGMbWbUurMATpC1LJ+d/BoLSFEA2iCay3fInAUConuTdXr9JOsNCktKGNgt2KtW26pt5WoaKwtIZehiwc9lT8T6QDuC8hnt8QbgpDUBLGlmdIx8UIKydcs/BeCaG+xQ+WzSYalEk3BXqCtH8NhObkfST3EAefQxz0JHynf1M9XLjKItatgPFYrjHte0n5EhwqvqSPyXFYSNO+Tnh3sjPvatidm+BsbhjKQCilOmhJdCwhWWVuTHAWJWRHBUXmCF46phlL0e8J4rabciwtwT9DRVLK6b9Y/DVtqylQ60taHIR4NdY4T62CGg/qbn5OQRtIKv2mfPP/dj/EhbAg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2683.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(346002)(366004)(396003)(39860400002)(52536014)(55016002)(71200400001)(8936002)(53546011)(6506007)(9686003)(478600001)(54906003)(83380400001)(316002)(186003)(66556008)(5660300002)(66574015)(2906002)(66476007)(7696005)(66446008)(76116006)(86362001)(8676002)(66946007)(110136005)(33656002)(4326008)(64756008)(6636002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?lOkSz3stGt5cgxrV8yD0Xx0EXihsfZyzOr2BhqYwOIsQ8htRz0WxqyCeTM?=
 =?iso-8859-1?Q?ek8Iy7DHxKA1FuoHRL7BJNPvnH3C5udwfGLb7IuH3EonrEGWoZZNpiLwc9?=
 =?iso-8859-1?Q?IEVbS9OEsJ9Syoh30gVLwzaeWj9QO1Jm7puFZXD6B+aYfV1CaARi56vV7Z?=
 =?iso-8859-1?Q?0Yuj+KdnvOn+ephYhfeLb1AThg4boNWor+7OOnSiarus40AaKMFdiPcGiR?=
 =?iso-8859-1?Q?CwuLP/44IvQpsDired5iM4uyczhERiIsz9e4Vf/HyfkttRpWkijYj28mMI?=
 =?iso-8859-1?Q?v5DBFCrUvMpJGwxcasEh4OXepc3M+fRaTm+xQtgTVgr0uh+BhzqdIKZA2M?=
 =?iso-8859-1?Q?6LBmKrrXQhCoXMXMplK0GzM0PpxV4qJvRFSmq2ax7GmlIg3+9NgD4kMrP+?=
 =?iso-8859-1?Q?xTOBSqk4Qg+OpMx+cEjXB2768nNLbxT2Cz4PWKvS3FSpGMYjEB4Lr1LAFF?=
 =?iso-8859-1?Q?5P6c96qlwUy+iPH7ea2JXhOg60Z9IXnQd+nNEkmxErnW9eTfo9InLP/dkB?=
 =?iso-8859-1?Q?db0QFzFQlHqOlIOBTXH4Z44VCcdRQIR0cMiJ0pHi8jdKSw19TMcmduUjGr?=
 =?iso-8859-1?Q?czaFKaWMAJWDBJIMSMN/153QF8PNBPKTCzdd2KtPQflRdY2KyQOGkOzEVW?=
 =?iso-8859-1?Q?5VyESyQAeh6dBZHKbrmmgEuc1B+samx7WV7BRtTQ49bQj6foknSaKBgxfA?=
 =?iso-8859-1?Q?DTOCl6fdcll9nt12FxxugTAmVRrsgYON2Hj1EKPjR91Yu6zGd/HofnvpzW?=
 =?iso-8859-1?Q?OHc+dsoLRKVxH9hdid6d195atsFLehuwUtkme1auz4uz+4jl35T/DFrdgH?=
 =?iso-8859-1?Q?gXUnoZxxJGuXElR8uWZnKZxu5taL8Cbq0Yb7iO68k6EzoLMeOTS5dXhCgh?=
 =?iso-8859-1?Q?qdt4GDP26PYeVouUaUPM9bA81NS6PcCkw35JNRWijHJyYPdPyE1yIWuQkO?=
 =?iso-8859-1?Q?sJVbmhlgMCwvJkHDNqXE9c+8Ma0BcV9MQqH3b53P7fbbQnd4Xh2kdWyJ5o?=
 =?iso-8859-1?Q?MwH26C98vHdmRwDBw=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2683.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c02a1a2c-489a-4946-006a-08d8be4e29e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2021 20:50:19.0797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z9yFFIC35Vx/cgt9uCsZFCcTOx6QiBEFLkEZke6SV6UmNHIjXRwY+m7bmpQjbEZvuRvryKfOW/wGsgmM7zl8/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0057
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v23 13/13] drm/i915/pxp: Add plane decryption
 support
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>, "Bommu, Krishnaiah" <krishnaiah.bommu@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>, "Huang,
 Sean Z" <sean.z.huang@intel.com>, "Vetter, Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks Anshuman for adding me for review.

Actually, using plane Gamma is good idea to show black frame. Another optio=
n could be alpha value since we know for ChromeOS protected buffer will alw=
ays be flipped on overlays.

Below explanation captures need for black frame in i915 Display for HWDRM p=
rotected surfaces -
Problem Statement -
There is race condition between Ring3 and Ring0 where encrypted frame could=
 be flipped by i915 Display despite Ring3 checking if HWDRM session keys ar=
e valid for encrypted frame.  =


Google Bug -
BUG1 -[Intel] i915 framebuffer tracking (protected surfaces that can't be d=
ecrypted are being rendered as encrypted) -b/155511255

Background -
There are 4 high level pipelines working together in HWDRM playback.
1. CDM Pipeline -
App CDM SW Stack -> LibVA/iHD -> i915 -> MEI -> CSME-FW =


2. Media(Audio/Video) Pipeline
App Media SW Stack -> LibVA/iHD -> i915 -> GPU =


3. 3D Pipeline in Compositor
App Composition SW Stack -> OpenGL/MESA/MiniGBM -> i915 -> GPU/Display

4. Display Pipeline in Compositor
App Composition SW Stack -> Ozone/MiniGBM -> i915 -> Display

Discussion Point -
Even after Pipeline #4 is context robustness compliant there is a corner ca=
se/race condition for corruption as following  - BUG1
App's Composition SW Stack -> Creates Protected Context and Protected Buffe=
r(MiniGBM)
App's Composition SW Stack -> Supplies Protected Buffer to LibVA/iHD -> i91=
5 -> GPU -> Encrypted decoded output
App's Composition SW Stack -> Gets back decode output -> Checks for context=
 robustness -> Submits frame for flip -> i915 Display(by the time i915 Disp=
lay gets flip PAVP session is invalid despite being atomic since invalidati=
on of PAVP is HW async event) -> Display HW -> Shows corruption


-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com> =

Sent: Thursday, January 21, 2021 12:31 PM
To: Gupta, Anshuman <anshuman.gupta@intel.com>
Cc: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org=
; Nikula, Jani <jani.nikula@intel.com>; Gaurav, Kumar <kumar.gaurav@intel.c=
om>; Bommu, Krishnaiah <krishnaiah.bommu@intel.com>; Vetter, Daniel <daniel=
.vetter@intel.com>
Subject: Re: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption support

On Tue, Jan 19, 2021 at 09:35:18AM +0000, Gupta, Anshuman wrote:
> Jani/Ville
> I had received an offline comment form Gaurav on this patch, See =

> below,
> > -----Original Message-----
> > From: Huang, Sean Z <sean.z.huang@intel.com>
> > Sent: Tuesday, January 19, 2021 1:13 PM
> > To: Intel-gfx@lists.freedesktop.org
> > Cc: Gaurav, Kumar <kumar.gaurav@intel.com>; Gupta, Anshuman =

> > <anshuman.gupta@intel.com>; Bommu, Krishnaiah =

> > <krishnaiah.bommu@intel.com>; Huang, Sean Z <sean.z.huang@intel.com>
> > Subject: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption support
> > =

> > From: Anshuman Gupta <anshuman.gupta@intel.com>
> > =

> > Add support to enable/disable PLANE_SURF Decryption Request bit.
> > It requires only to enable plane decryption support when following =

> > condition met.
> > 1. PXP session is enabled.
> > 2. Buffer object is protected.
> > =

> > v2:
> > - Rebased to libva_cp-drm-tip_tgl_cp tree.
> > - Used gen fb obj user_flags instead gem_object_metadata. [Krishna]
> > =

> > v3:
> > - intel_pxp_gem_object_status() API changes.
> > =

> > Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > Cc: Huang Sean Z <sean.z.huang@intel.com>
> > Cc: Gaurav Kumar <kumar.gaurav@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_sprite.c | 21 ++++++++++++++++++---
> >  drivers/gpu/drm/i915/i915_reg.h             |  1 +
> >  2 files changed, 19 insertions(+), 3 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > index cf3589fd0ddb..39f8c922ce66 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -39,6 +39,8 @@
> >  #include <drm/drm_plane_helper.h>
> >  #include <drm/drm_rect.h>
> > =

> > +#include "pxp/intel_pxp.h"
> > +
> >  #include "i915_drv.h"
> >  #include "i915_trace.h"
> >  #include "i915_vgpu.h"
> > @@ -768,6 +770,11 @@ icl_program_input_csc(struct intel_plane *plane,
> >  			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);  }
> > =

> > +static bool intel_fb_obj_protected(const struct drm_i915_gem_object
> > +*obj) {
> > +	return obj->user_flags & I915_BO_PROTECTED ? true : false; }
> > +
> >  static void
> >  skl_plane_async_flip(struct intel_plane *plane,
> >  		     const struct intel_crtc_state *crtc_state, @@ -804,6
> > +811,7 @@ skl_program_plane(struct intel_plane *plane,
> >  	u32 surf_addr =3D plane_state->color_plane[color_plane].offset;
> >  	u32 stride =3D skl_plane_stride(plane_state, color_plane);
> >  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> > +	const struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> >  	int aux_plane =3D intel_main_to_aux_plane(fb, color_plane);
> >  	int crtc_x =3D plane_state->uapi.dst.x1;
> >  	int crtc_y =3D plane_state->uapi.dst.y1; @@ -814,7 +822,7 @@ =

> > skl_program_plane(struct intel_plane *plane,
> >  	u8 alpha =3D plane_state->hw.alpha >> 8;
> >  	u32 plane_color_ctl =3D 0, aux_dist =3D 0;
> >  	unsigned long irqflags;
> > -	u32 keymsk, keymax;
> > +	u32 keymsk, keymax, plane_surf;
> >  	u32 plane_ctl =3D plane_state->ctl;
> > =

> >  	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state); @@ -890,8 +898,15 @@ =

> > skl_program_plane(struct intel_plane *plane,
> >  	 * the control register just before the surface register.
> >  	 */
> >  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> > -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> > -			  intel_plane_ggtt_offset(plane_state) + surf_addr);
> > +	plane_surf =3D intel_plane_ggtt_offset(plane_state) + surf_addr;
> > +
> > +	if (intel_pxp_gem_object_status(dev_priv) &&
> > +	    intel_fb_obj_protected(obj))
> > +		plane_surf |=3D PLANE_SURF_DECRYPTION_ENABLED;
> Here in case of if fb obj is protected but pxp session is not enabled i.e=
 intel_pxp_gem_object_status() returns false, request to show the black fra=
me buffer on display instead of corrupted data.
>                             plane_surf =3D 0xXXX; //Pointer to black =

> framebuffer But above approach would be a hack.
> @Jani and @Ville could you please guide with the general way of handling =
this as pxp session keys can be invalidated at any time.

Would need such a black buffer to be always pinned into the gtt, which is s=
eems a bit wasteful. We could perhaps just force the plane to output black =
eg. by using the plane gamma. I think we should always have the per-plane g=
amma available on skl+ universal planes. Cursor may be a different story.

--
Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
