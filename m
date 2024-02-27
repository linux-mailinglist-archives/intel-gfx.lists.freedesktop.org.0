Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6AD869BCF
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 17:16:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E0EC10E944;
	Tue, 27 Feb 2024 16:16:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B8+/jwEL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4749310E935
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 16:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709050579; x=1740586579;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/UjoQ92+vNVD38KTLMJyASA97I87NVS+TpxL3In42U8=;
 b=B8+/jwELkOuSAtdlXFmWWkdyfp/JR+3ZxtXh3UOdu8SC5YwtXezmBzPc
 /TkKc8/1MWaFquaQZvYNE1aZ1AORRtAV9Ec1A0+rt9PMWCger/ifVdRcn
 kgDSnjgBQSdJxPcMy5v4lNL2AXlSdJVNCkXrB7Fe+22GgIHNjb0qfUS/j
 L8uWu/xazNHXooqQsblFn7P2Om+vqfe6bNqjirX00HRputimL+y1r4U1s
 spaVz4ya8oF2zMXstH3Gtd0oa78mgqKWz3/cNqgUNtfaUMqleE9H4YVae
 4GZ86p5MPzZpz7jdyPucYw6q4k2SZjuXlLa2CzLGxiEj4HNxhDFADdJIh A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3559574"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="3559574"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 08:16:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="38128621"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 08:16:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 08:16:16 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 08:16:16 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 08:16:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ULCgKU/XGHsRoQGo+1hcCsH9U77BEmGjsp+N9apm0kMf8xUABcHQG2vtiqIUdTVpaHj4CEEaf9HzQNPwAAaLsKAgGLxPyh63IJb7Ib2W5ai9C4Wp7cLmtUTH0ohjaXxguJaYxYigm9okXu4nWq5xFEc5oj6BaQP4+G+wQ4hY304sswh5oxn9HkoDAOm0MieFaa1WevMNrfLF3F4tQ5e+TeIXaRo7XtYiuFN5DU+knSYsm+ChO6ZUOL9utbQh3/UaRoXfmqF5+kFXTBA6GdJdnFDcRKorPhsrf47rJ9S/kiah/jJx/A96QS+EktWJtpY0sFZATd/9cZ3B9UksaGl2ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0BreGIRdpbRmJR0VCnuEtkEvfnFHZomHGXZQ0/e1rlI=;
 b=lvWGVFOlBVLZVQf0Fgpz+gvp/QqSsYKGzm1QtebEB2LmohIkL64M2LgGikp8EodkxuLt+fNUOUg/CRHKJY/kNnFGWM+i6WsvFHQYrxt5Kb7DK6eeqXn2OmnSO+13uBbOsP4yjHxjY2hlpCHs5mSkBG3ouWJ7IAdrkIV9TlQuSvfBipG6XRijEQ7bjIzuVYN8FRi/rlmgodBXAo6vcxHqvmUnzCI3ZzFOfnV08Vk7OY5gjoH2W99DZkWZW3L5PCA4Ra/0XMEVOW+QAPKYbYhApxJ0vpBUPB6pbHxnsy+uikHPjRFtDAZGyd1OA+Q1tHa9t3lmVDGq9S8MnMBCDbfIeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by PH7PR11MB7124.namprd11.prod.outlook.com (2603:10b6:510:20f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Tue, 27 Feb
 2024 16:16:11 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833%4]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 16:16:09 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 2/3] Start separating pipe vs transcoder set logic for
 bigjoiner during modeset
Thread-Topic: [PATCH 2/3] Start separating pipe vs transcoder set logic for
 bigjoiner during modeset
Thread-Index: AQHaZPsKnYbuA/ExNUieQrLVTti4erEdoeyAgABN4YCAAHXaoA==
Date: Tue, 27 Feb 2024 16:16:09 +0000
Message-ID: <PH7PR11MB8252431C43BFFFAD842CD99589592@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
 <20240221192010.25413-3-stanislav.lisovskiy@intel.com>
 <PH7PR11MB8252102DD5A939C77255DBD289592@PH7PR11MB8252.namprd11.prod.outlook.com>
 <Zd2nJerFprXRrodW@intel.com>
In-Reply-To: <Zd2nJerFprXRrodW@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|PH7PR11MB7124:EE_
x-ms-office365-filtering-correlation-id: edd00466-77f3-4b36-4e67-08dc37af6877
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AFPVRisM0VF9tNbsJo/O9Jt3v1qCgR+414ZFHvXfdFwMF57p8K26yQxfMcjZtud8YXpN5oRUnhQQ3nbJfpk9H9XxKuJTvpd5ug9V4iONeSqroZN2zROGuwd53w1Gy2+HzeoBN/ZJTT4+NG7UJrOjkkJTF5Fp0Q5tIxAK1S0s7c1dN1VM0L7hcjqe2b+v0Vin1VbNtqe6vvLkQh1Ky7C2+SImrbqpwgjvYYYAr5wTbBtrdQnqU+8dhC4daitAVcdX38DYBzFPNQYd7KzTMNHh5LVRW+VQUGCM9Qb2FNdtSI6kRXPrIv+xaigmfpRSqZRsHnEyef0m2MHc50XHrhmBbDUQZgnAfjm6MADjkZLNZZHHMWhfr6kF73/1eFciUrr0Xou7QpskMQa1Rnjy8kqEZ7rj/rL1prLpMk7+D7RILApS+Tl8AZ3WzxTMGC623mMe3Jn1YXlg6QaYz5TH6N6E7ElTShRTq42LIf12UCuGu+fYnEUbajSyYMtQu/wpXa/PC+qOfjWZr6BwZAIRb1d8+xsfSFljeyOfaMjajvYZWJgb7UZL7vUuy00NX4xVY3Aq/kXIDbbjKgQNhpE5gyWZztdcgnZLUPKsLC2cIutgUliSa2jTlJltutw/Km6mcLX331ZQSNSXMIneuJo3Dg+AMjHoyvjC0EcTpCrQlythK/dxn0G86Q+s2jGPzxZ6Exa3jl7ey/Jws4G5QrKJuAlx3Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Tb5g0vHe3op4EU3dnzJSvdGW1hvR9+p6dpkcrYblixHAlbpY/3K+u2SeyK?=
 =?iso-8859-1?Q?9snv51BVXgvLjbOQRXPQTXPTBQiGbS7lcNr+1JbXqDcUa+O7dvE013xBoR?=
 =?iso-8859-1?Q?LJAEpphyQ4Tavyfmh8v9iO9n1dl3S/QElt9LFE7/M1pSPBtbghweYCdVyl?=
 =?iso-8859-1?Q?l9UcXENls7+W4YzZVadYiYxFJUL883GEGXdr7odqTrVnzuafy3BM83qyn1?=
 =?iso-8859-1?Q?jeDYU2szJW1UfBKdwtz8sDsPBuMhCZS0w4ay/ZsPFklHqwjLwO+mto5E7F?=
 =?iso-8859-1?Q?bpOLu3kQV/AZ4RqeibyDhmjJHt1AMFx+oIc+lKSPMHIM7vPuj85tYKyLg/?=
 =?iso-8859-1?Q?pGudfm2m5oFkx3RKIwSnZ8FhY9jkltw/cIgvA2GtKEF0fEEMM9KURoZzcv?=
 =?iso-8859-1?Q?f69o9Vm72DBJ8SP/0O3FKkIIV69J7aSRcPo4vrAZt6bDX0WeLijtfqk+h1?=
 =?iso-8859-1?Q?H6S+ICH/Xsnijv2n7etRp2G+unRJ7D1nxlOMIv7rp1mSzfImGz0iGnBmhP?=
 =?iso-8859-1?Q?gHG5A/tTACjs0zRjdo7Y8jIuEimHQIw2yICCgx6/fKOo8mgTkyH9mcbft+?=
 =?iso-8859-1?Q?ksFmm5PO0RQLZ7w3euGb0QVLlgxElaUbbngMnhQIK4KHSc56dVFATa4EPR?=
 =?iso-8859-1?Q?4S6sZxeiln+Mk0R4fUxAw2GV6BFU5TJgoj75fkXlwl/7WZ0aLxxVP1rywu?=
 =?iso-8859-1?Q?I0JFmxIpcWohKdxyTtLyjcAjTOHshHAuNWeg/cQwShns5Q8Igw9oLe/LMc?=
 =?iso-8859-1?Q?NXt6U1OeGXi/HvHhOwFf+kV2SuLTSpEkImDEJrYYyYGjAXMTqvLdlpudFI?=
 =?iso-8859-1?Q?0vDH7XT2AOY6inmtHLoMEo2U+9nPd0ZLTa2VdyPrMyj14VNh7osnLeHgpb?=
 =?iso-8859-1?Q?gjzbFTmQvUmp8LRQrUG4vR3L2rrhirn1qL58GjsZz6sY7+ayHR8kgihOre?=
 =?iso-8859-1?Q?LXYKyiN3ujO51sQd5zvaOwUtLs7F4goqrSAbP5fMs4XMckpAFDdcrSwqpD?=
 =?iso-8859-1?Q?Kt8AsRwCEOAanzU5FkCdykr3UL74D8ygQp2bcV0HTY6YUN9gxQmO/lk4vA?=
 =?iso-8859-1?Q?dwVyn1/ZJFD9gzJL4VNu3SulWefbXglrpgaBZiJzh2Y1M8jbMm5WSpmbxF?=
 =?iso-8859-1?Q?IKOTcmnY8KEhTOlO8s9jHrpX+z2lhW0CUc5KOEzn1RnzU0JlM7SXlWjkLW?=
 =?iso-8859-1?Q?eQ0BlZgPxEsGiqzBVwhXNAJqkN2kVT7m/0pbzuF91RreOPCizRgOdBYc3y?=
 =?iso-8859-1?Q?Ggg8rhpUFJ4iQB+0GHWtkP8KFI9LTOqTdD/uMDMg9hWtAWofNYX+oadERC?=
 =?iso-8859-1?Q?e0Y7SGaUP/GnaYGwx5lVcxtWr6P/QMqzuoAj6+TQwnXHrMa140ET4cL7+0?=
 =?iso-8859-1?Q?ph3y7lTffAug/hq3P5mRWytf7rUWu44ddKuTaFJdxrWxgB4nExjTyJ19Wv?=
 =?iso-8859-1?Q?zzi7W+Uy6b+NSHQJeq59C+aZZC8Jm1ELtO6YPXjIY8t8+ah2h8TE31hfPj?=
 =?iso-8859-1?Q?+68R+zF1p0LcyHJbXz3LRsG6OaPsoaaCgZBGNgJcM8+NvedXcVdgeqRNXW?=
 =?iso-8859-1?Q?Qqiuv2zWNSAwwGuTBBqQppVUud0UEkyvovyEs1nITV51rkEhXr71Qj0oSl?=
 =?iso-8859-1?Q?dgN32e9WYe9sXeKcOBpK31otCEPtPMK85B?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edd00466-77f3-4b36-4e67-08dc37af6877
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2024 16:16:09.0681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: coT1kWZUY6IF3UkwIDPCTTR5EP8tX323G/16Px+Z8I/PN+Akdpz/HJoPcoPMK9OUqZU8cR7kqG9J9zEooB9hwSRHdanBLOxftIHlFA7TSpo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7124
X-OriginatorOrg: intel.com
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
> From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> Sent: Tuesday, February 27, 2024 2:41 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Saarinen, Jani <jani.saarinen@intel.=
com>;
> ville.syrjala@linux.intel.com
> Subject: Re: [PATCH 2/3] Start separating pipe vs transcoder set logic fo=
r
> bigjoiner during modeset
>=20
> On Tue, Feb 27, 2024 at 06:40:23AM +0200, Srinivas, Vidya wrote:
> >
> >
> > > -----Original Message-----
> > > From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> > > Sent: Thursday, February 22, 2024 12:50 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen,
> > > Jani <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com;
> > > Srinivas, Vidya <vidya.srinivas@intel.com>
> > > Subject: [PATCH 2/3] Start separating pipe vs transcoder set logic
> > > for bigjoiner during modeset
> > >
> > > Handle only bigjoiner masters in
> > > skl_commit_modeset_enables/disables,
> > > slave crtcs should be handled by master hooks. Same for encoders.
> > > That way we can also remove a bunch of checks like
> > > intel_crtc_is_bigjoiner_slave.
> > >
> > > v2: Get rid of master vs slave checks and separation in crtc
> > > enable/disable hooks.
> > >     Use unified iteration cycle for all of those, while enabling/disa=
bling
> > >     transcoder only for those pipes where its needed(Ville Syrj=E4l=
=E4)
> > >
> > > v3: Move all the intel_encoder_* calls under transcoder code
> > > path(Ville
> > > Syrj=E4l=E4)
> > >
> > > v4:  - Call intel_crtc_vblank_on from hsw_crtc_enable only for
> > > non-transcoder path
> > >        (for master pipe that will be called from
> > > intel_encoders_enable/intel_enable_ddi)
> > >      - Fix stupid mistake with using crtc->pipe for the mask,
> > > instead of BIT(crtc-
> > > >pipe)
> > >
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c     |  21 +--
> > >  drivers/gpu/drm/i915/display/intel_display.c | 183 ++++++++++++-----=
--
> > >  drivers/gpu/drm/i915/display/intel_display.h |   6 +
> > >  3 files changed, 121 insertions(+), 89 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index bea4415902044..6071e9f500871 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -3100,7 +3100,6 @@ static void intel_ddi_post_disable(struct
> > > intel_atomic_state *state,
> > >  				   const struct drm_connector_state
> > > *old_conn_state)  {
> > >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > -	struct intel_crtc *slave_crtc;
> > >
> > >  	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
> > >  		intel_crtc_vblank_off(old_crtc_state);
> > > @@ -3117,17 +3116,6 @@ static void intel_ddi_post_disable(struct
> > > intel_atomic_state *state,
> > >  			ilk_pfit_disable(old_crtc_state);
> > >  	}
> > >
> > > -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
> > > -
> > > intel_crtc_bigjoiner_slave_pipes(old_crtc_state)) {
> > > -		const struct intel_crtc_state *old_slave_crtc_state =3D
> > > -			intel_atomic_get_old_crtc_state(state, slave_crtc);
> > > -
> > > -		intel_crtc_vblank_off(old_slave_crtc_state);
> > > -
> > > -		intel_dsc_disable(old_slave_crtc_state);
> > > -		skl_scaler_disable(old_slave_crtc_state);
> > > -	}
> > > -
> > >  	/*
> > >  	 * When called from DP MST code:
> > >  	 * - old_conn_state will be NULL
> > > @@ -3363,8 +3351,7 @@ static void intel_enable_ddi(struct
> > > intel_atomic_state *state,  {
> > >  	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
> > >
> > > -	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
> > > -		intel_ddi_enable_transcoder_func(encoder, crtc_state);
> > > +	intel_ddi_enable_transcoder_func(encoder, crtc_state);
> > >
> > >  	/* Enable/Disable DP2.0 SDP split config before transcoder */
> > >  	intel_audio_sdp_split_update(crtc_state);
> > > @@ -3469,9 +3456,6 @@ void intel_ddi_update_active_dpll(struct
> > > intel_atomic_state *state,
> > >  				  struct intel_crtc *crtc)
> > >  {
> > >  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> > > -	struct intel_crtc_state *crtc_state =3D
> > > -		intel_atomic_get_new_crtc_state(state, crtc);
> > > -	struct intel_crtc *slave_crtc;
> > >  	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> > >
> > >  	/* FIXME: Add MTL pll_mgr */
> > > @@ -3479,9 +3463,6 @@ void intel_ddi_update_active_dpll(struct
> > > intel_atomic_state *state,
> > >  		return;
> > >
> > >  	intel_update_active_dpll(state, crtc, encoder);
> > > -	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> > > -
> > > intel_crtc_bigjoiner_slave_pipes(crtc_state))
> > > -		intel_update_active_dpll(state, slave_crtc, encoder);
> > >  }
> > >
> > >  static void
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 916c13a149fd5..e1ea53fd6a288 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -1631,31 +1631,12 @@ static void
> > > hsw_configure_cpu_transcoder(const
> > > struct intel_crtc_state *crtc_sta
> > >  	hsw_set_transconf(crtc_state);
> > >  }
> > >
> > > -static void hsw_crtc_enable(struct intel_atomic_state *state,
> > > -			    struct intel_crtc *crtc)
> > > +static void hsw_crtc_enable_pre_transcoder(struct intel_atomic_state
> *state,
> > > +					   struct intel_crtc *crtc)
> > >  {
> > >  	const struct intel_crtc_state *new_crtc_state =3D
> > >  		intel_atomic_get_new_crtc_state(state, crtc);
> > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > -	enum pipe pipe =3D crtc->pipe, hsw_workaround_pipe;
> > > -	enum transcoder cpu_transcoder =3D new_crtc_state->cpu_transcoder;
> > > -	bool psl_clkgate_wa;
> > > -
> > > -	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> > > -		return;
> > > -
> > > -	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
> > > -
> > > -	if (!new_crtc_state->bigjoiner_pipes) {
> > > -		intel_encoders_pre_pll_enable(state, crtc);
> > > -
> > > -		if (new_crtc_state->shared_dpll)
> > > -			intel_enable_shared_dpll(new_crtc_state);
> > > -
> > > -		intel_encoders_pre_enable(state, crtc);
> > > -	} else {
> > > -		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
> > > -	}
> > >
> > >  	intel_dsc_enable(new_crtc_state);
> > >
> > > @@ -1665,19 +1646,17 @@ static void hsw_crtc_enable(struct
> > > intel_atomic_state *state,
> > >  	intel_set_pipe_src_size(new_crtc_state);
> > >  	if (DISPLAY_VER(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv))
> > >  		bdw_set_pipe_misc(new_crtc_state);
> > > +}
> > >
> > > -	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
> > > -	    !transcoder_is_dsi(cpu_transcoder))
> > > -		hsw_configure_cpu_transcoder(new_crtc_state);
> > > +static void hsw_crtc_enable_post_transcoder(struct
> > > +intel_atomic_state
> > > *state,
> > > +					    struct intel_crtc *crtc)
> > > +{
> > > +	const struct intel_crtc_state *new_crtc_state =3D
> > > +		intel_atomic_get_new_crtc_state(state, crtc);
> > > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > >
> > >  	crtc->active =3D true;
> > >
> > > -	/* Display WA #1180: WaDisableScalarClockGating: glk */
> > > -	psl_clkgate_wa =3D DISPLAY_VER(dev_priv) =3D=3D 10 &&
> > > -		new_crtc_state->pch_pfit.enabled;
> > > -	if (psl_clkgate_wa)
> > > -		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
> > > -
> > >  	if (DISPLAY_VER(dev_priv) >=3D 9)
> > >  		skl_pfit_enable(new_crtc_state);
> > >  	else
> > > @@ -1700,27 +1679,84 @@ static void hsw_crtc_enable(struct
> > > intel_atomic_state *state,
> > >  		icl_set_pipe_chicken(new_crtc_state);
> > >
> > >  	intel_initial_watermarks(state, crtc);
> > > +}
> > >
> > > -	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> > > -		intel_crtc_vblank_on(new_crtc_state);
> > > +static void hsw_crtc_enable(struct intel_atomic_state *state,
> > > +			    struct intel_crtc *crtc)
> > > +{
> > > +	const struct intel_crtc_state *new_crtc_state =3D
> > > +		intel_atomic_get_new_crtc_state(state, crtc);
> > > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > +	enum transcoder cpu_transcoder =3D new_crtc_state->cpu_transcoder;
> > > +	struct intel_crtc *_crtc;
> > > +	int slave_pipe_mask =3D
> > > intel_crtc_bigjoiner_slave_pipes(new_crtc_state);
> >
> >
> > Many thanks for the patch series.
> > Should we calculate slave_pipe_mask only if the modeset was received
> > on the slave pipe. Else, we noticed that each time its traversing
> > through slave pipe even when modeset was received on master (say pipe
> > =3D 1) Kindly suggest.
>=20
> That is exactly how it should happen. For bigjoiner if we get a modeset o=
n
> master pipe, we traverse both master and its slaves.
> That is how bigjoiner is supposed to work.

Hello Stan
Many thanks for the inputs and info.

Apologies, actually we tried to use your series as is but we faced drm_WARN=
 panic
and we couldn't get the 6k working. We tried to debug a bit and
based on that we added these comments here. We have added
all the details in VLK-52374. Could you kindly help check and suggest?
Thank you so much.

Regards
Vidya

>=20
> >
> > > +	int pipe_mask =3D slave_pipe_mask | BIT(crtc->pipe);
> > > +	bool psl_clkgate_wa;
> > > +	enum pipe pipe =3D crtc->pipe, hsw_workaround_pipe;
> > >
> > > -	intel_encoders_enable(state, crtc);
> > > +	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> > > +		return;
> > >
> > > -	if (psl_clkgate_wa) {
> > > -		intel_crtc_wait_for_next_vblank(crtc);
> > > -		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
> > > -	}
> > > +	/*
> > > +	 * Use reverse iterator to go through slave pipes first.
> > > +	 * TODO: We might need smarter iterator here
> > > +	 */
> > > +	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, _crtc,
> > > +						 pipe_mask) {
> > > +		const struct intel_crtc_state *_new_crtc_state =3D
> > > +			intel_atomic_get_new_crtc_state(state, _crtc);
> > > +		bool needs_transcoder =3D ((slave_pipe_mask & BIT(_crtc-
> > > >pipe)) =3D=3D 0) &&
> > > +					!transcoder_is_dsi(cpu_transcoder);
> > > +
> > > +		intel_dmc_enable_pipe(dev_priv, crtc->pipe);
> > > +
> > > +		if (!new_crtc_state->bigjoiner_pipes) {
> > > +			if (needs_transcoder)
> > > +				intel_encoders_pre_pll_enable(state, crtc);
> >
> >
> > Should we use _crtc here. In remaining places in this function also.
> > Kindly suggest.
>=20
> Yes, you are right. Even though it doesn't hurt currently, because we cal=
l this
> only for master so crtc is guaranteed to be the one which needs to follow=
 the
> transcoder path.
>=20
> >
> > > +
> > > +			if (new_crtc_state->shared_dpll)
> > > +				intel_enable_shared_dpll(new_crtc_state);
> > > +
> > > +			if (needs_transcoder)
> > > +				intel_encoders_pre_enable(state, crtc);
> > > +		} else {
> > > +			icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
> > > +		}
> > > +
> > > +		hsw_crtc_enable_pre_transcoder(state, _crtc);
> > > +
> > > +		if (needs_transcoder)
> > > +			hsw_configure_cpu_transcoder(_new_crtc_state);
> > > +
> > > +		/* Display WA #1180: WaDisableScalarClockGating: glk */
> > > +		psl_clkgate_wa =3D DISPLAY_VER(dev_priv) =3D=3D 10 &&
> > > +			new_crtc_state->pch_pfit.enabled;
> > > +		if (psl_clkgate_wa)
> > > +			glk_pipe_scaler_clock_gating_wa(dev_priv, pipe,
> > > true);
> > > +
> > > +		hsw_crtc_enable_post_transcoder(state, _crtc);
> > > +
> > > +		if (needs_transcoder)
> > > +			intel_encoders_enable(state, crtc);
> > > +		else
> > > +			intel_crtc_vblank_on(_new_crtc_state);
> > > +
> > > +		if (psl_clkgate_wa) {
> > > +			intel_crtc_wait_for_next_vblank(crtc);
> > > +			glk_pipe_scaler_clock_gating_wa(dev_priv, pipe,
> > > false);
> > > +		}
> > >
> > > -	/* If we change the relative order between pipe/planes enabling, we
> > > need
> > > -	 * to change the workaround. */
> > > -	hsw_workaround_pipe =3D new_crtc_state->hsw_workaround_pipe;
> > > -	if (IS_HASWELL(dev_priv) && hsw_workaround_pipe !=3D
> > > INVALID_PIPE) {
> > > -		struct intel_crtc *wa_crtc;
> > > +		/* If we change the relative order between pipe/planes
> > > enabling, we need
> > > +		 * to change the workaround. */
> > > +		hsw_workaround_pipe =3D new_crtc_state-
> > > >hsw_workaround_pipe;
> > > +		if (IS_HASWELL(dev_priv) && hsw_workaround_pipe !=3D
> > > INVALID_PIPE) {
> > > +			struct intel_crtc *wa_crtc;
> > >
> > > -		wa_crtc =3D intel_crtc_for_pipe(dev_priv,
> > > hsw_workaround_pipe);
> > > +			wa_crtc =3D intel_crtc_for_pipe(dev_priv,
> > > hsw_workaround_pipe);
> > >
> > > -		intel_crtc_wait_for_next_vblank(wa_crtc);
> > > -		intel_crtc_wait_for_next_vblank(wa_crtc);
> > > +			intel_crtc_wait_for_next_vblank(wa_crtc);
> > > +			intel_crtc_wait_for_next_vblank(wa_crtc);
> > > +		}
> > >  	}
> > >  }
> > >
> > > @@ -1784,28 +1820,27 @@ static void hsw_crtc_disable(struct
> > > intel_atomic_state *state,
> > >  	const struct intel_crtc_state *old_crtc_state =3D
> > >  		intel_atomic_get_old_crtc_state(state, crtc);
> > >  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > > +	int slave_pipe_mask =3D
> > > intel_crtc_bigjoiner_slave_pipes(old_crtc_state);
> > > +	int pipe_mask =3D slave_pipe_mask | BIT(crtc->pipe);
> > > +	struct intel_crtc *_crtc;
> > > +
> > > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, _crtc,
> > > +					 pipe_mask) {
> > > +		const struct intel_crtc_state *_old_crtc_state =3D
> > > +			intel_atomic_get_old_crtc_state(state, _crtc);
> > > +		bool needs_encoder_disable =3D (slave_pipe_mask & BIT(_crtc-
> > > >pipe)) =3D=3D
> > > +0;
> > > +
> > > +		if (needs_encoder_disable) {
> > > +			intel_encoders_disable(state, _crtc);
> > > +			intel_encoders_post_disable(state, _crtc);
> > > +		}
> > >
> > > -	/*
> > > -	 * FIXME collapse everything to one hook.
> > > -	 * Need care with mst->ddi interactions.
> > > -	 */
> > > -	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
> > > -		intel_encoders_disable(state, crtc);
> > > -		intel_encoders_post_disable(state, crtc);
> > > -	}
> > > -
> > > -	intel_disable_shared_dpll(old_crtc_state);
> > > -
> > > -	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
> > > -		struct intel_crtc *slave_crtc;
> > > -
> > > -		intel_encoders_post_pll_disable(state, crtc);
> > > +		intel_disable_shared_dpll(_old_crtc_state);
> > >
> > > -		intel_dmc_disable_pipe(i915, crtc->pipe);
> > > +		if (needs_encoder_disable)
> > > +			intel_encoders_post_pll_disable(state, _crtc);
> > >
> > > -		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> > > -
> > > intel_crtc_bigjoiner_slave_pipes(old_crtc_state))
> > > -			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
> > > +		intel_dmc_disable_pipe(i915, _crtc->pipe);
> > >  	}
> > >  }
> > >
> > > @@ -6788,8 +6823,10 @@ static void
> > > intel_commit_modeset_disables(struct
> > > intel_atomic_state *state)
> > >  		 * Slave vblanks are masked till Master Vblanks.
> > >  		 */
> > >  		if (!is_trans_port_sync_slave(old_crtc_state) &&
> > > -		    !intel_dp_mst_is_slave_trans(old_crtc_state) &&
> > > -		    !intel_crtc_is_bigjoiner_slave(old_crtc_state))
> > > +		    !intel_dp_mst_is_slave_trans(old_crtc_state))
> > > +			continue;
> > > +
> > > +		if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
> > >  			continue;
> >
> > Should we use !intel_crtc_is_bigjoiner_slave here?
> > Kindly suggest.
>=20
> No. The main idea of that whole refactoring is that we never do anything =
for
> slave pipes in *commit_modeset_disables/enables. Those are intentionally
> skipped and handled from master pipes. In bigjoiner slave pipes are no
> longer independent.
> So if we detect that pipe is the slave pipe with a check above - we skip =
it.
>=20
> >
> > >
> > >  		intel_old_crtc_state_disables(state, old_crtc_state, @@ -
> > > 6807,6 +6844,9 @@ static void intel_commit_modeset_disables(struct
> > > intel_atomic_state *state)
> > >  		if (!old_crtc_state->hw.active)
> > >  			continue;
> > >
> > > +		if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
> > > +			continue;
> > > +
> > >  		intel_old_crtc_state_disables(state, old_crtc_state,
> > >  					      new_crtc_state, crtc);
> > >  	}
> > > @@ -6919,8 +6959,10 @@ static void
> skl_commit_modeset_enables(struct
> > > intel_atomic_state *state)
> > >  			continue;
> > >
> > >  		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
> > > -		    is_trans_port_sync_master(new_crtc_state) ||
> > > -		    intel_crtc_is_bigjoiner_master(new_crtc_state))
> > > +		    is_trans_port_sync_master(new_crtc_state))
> > > +			continue;
> > > +
> > > +		if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> > >  			continue;
> > >
> > Should we use !intel_crtc_is_bigjoiner_master here?
> > Kindly suggest.
>=20
> See above. We handle here only master pipes and skip slave pipes here.
>=20
> >
> > >  		modeset_pipes &=3D ~BIT(pipe);
> > > @@ -6930,7 +6972,7 @@ static void skl_commit_modeset_enables(struct
> > > intel_atomic_state *state)
> > >
> > >  	/*
> > >  	 * Then we enable all remaining pipes that depend on other
> > > -	 * pipes: MST slaves and port sync masters, big joiner master
> > > +	 * pipes: MST slaves and port sync masters
> > >  	 */
> > >  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > >  		enum pipe pipe =3D crtc->pipe;
> > > @@ -6938,6 +6980,9 @@ static void skl_commit_modeset_enables(struct
> > > intel_atomic_state *state)
> > >  		if ((modeset_pipes & BIT(pipe)) =3D=3D 0)
> > >  			continue;
> > >
> > > +		if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> > > +			continue;
> > > +
> > >  		modeset_pipes &=3D ~BIT(pipe);
> > >
> > >  		intel_enable_crtc(state, crtc);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> > > b/drivers/gpu/drm/i915/display/intel_display.h
> > > index f4a0773f0fca8..e1e8d956c305e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > > @@ -280,6 +280,12 @@ enum phy_fia {
> > >  			    base.head)					\
> > >  		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))
> > >
> > > +#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc,
> > > pipe_mask)	\
> > > +	list_for_each_entry_reverse(intel_crtc,
> > > 	\
> > > +				    &(dev)->mode_config.crtc_list,
> > > 	\
> > > +				    base.head)
> > > 	\
> > > +		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))
> > > +
> > >  #define for_each_intel_encoder(dev, intel_encoder)		\
> > >  	list_for_each_entry(intel_encoder,			\
> > >  			    &(dev)->mode_config.encoder_list,	\
> > > --
> > > 2.37.3
> >
