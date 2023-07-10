Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E998974D812
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 15:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D35410E296;
	Mon, 10 Jul 2023 13:46:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C1EB10E0EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 13:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688996807; x=1720532807;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DUq5JK9sp2jgwmkIjEzDqxj6GFLtg0tRouta5yozwH0=;
 b=gIujzcRenoTI4+dlNvQgUpEhPTkWwf1nGIuF5ydEr1Znzt/w/yh6pHsX
 JJQlQZAl/4W8eKeZuJybPP9/ViB1JnG+uOyBYkt5ZLjZVhNXO73XEV754
 QpIT23ODGEGjdmQ5lg3wKxYdx01d2SKhEj/utMrAEYUUNgUrENxj26h0D
 EVJW5Zp/i82ed9YNd7MMeOQxP/LuBZrWQOmVyvHzWXDn3XaZSq4tk0cix
 vBxnEKp4cTMOmi5ckJZ62CL2kWygCgCoHMTr5MZhbcm4BMrTckKaDQtP3
 mSdeETc5kYhy9/Lcgc44jAftmhf8CbL8L6JeNih3XwBiKwhIw89NfbsGh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="367839840"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="367839840"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 06:46:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="724015157"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="724015157"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jul 2023 06:46:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 06:46:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 06:46:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 06:46:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hq/REVxLnSCAr37cFC5LQ1vxQAvzsZiofSfr9CMjyXtLa1zPfI2qznraP/jrID+NrsLtaOrNVV56pQWEv4t//rmKZplHJIv45Fnx57YDKwBBZqk4clo6HIqJvYiX4V/uOl9u0LbHQ8BJUAuDZLXLbrtvIWoXjChMdrKNju6FeTa+AgeFJCWXqdzUaO/uDFYna4tmC/Y+Hk6RFEATwSl1urLgENQi281wUM1RXAAXXwBnVsjKGWqRXlLUuqUJZ+ayFzRyAo7lE9Nu7+OKNBz1TaCAWum11I9EGpa8/+dgVwjZwz/gXIH+49LKuwgMfZk7nEZtM39qT2id+wNaLAlHZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+yCgQ1b4tdh2RifmwJVyqGB2sozNLQADPLV1xGLa0F0=;
 b=GTQQEtCqIKWDrdh1o8wRdsqn5nhxCg+8vmg4jnrQA6R12+92Mg6P1wEAi278RX+ZPjNuOUit7I1r5jszfpt4+YJN7e5X8Xse9XWA7eWEKxTNANWATi86hfubR2Vp/FWi5SQ0x9JNk85smxyTwmpn8TAId1I3e/qDf4uvq3zDyq/FvnDka2KjSucXQWdTyi7jrSDUnjoO8jUEcfdXS25WW28IuGI/Obuor1TvTbVAXnpsgPD6EZ++mX1ajsmRa1pWti+M5vpFjsh/KnT1MiVemoNRWwAZoFCe6z3jnbkxXL0MyHpIxXm4r0OctgBk/wwR66wvLcyY+wlfHNrYM4xLXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 SA1PR11MB5948.namprd11.prod.outlook.com (2603:10b6:806:23c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.17; Mon, 10 Jul
 2023 13:46:35 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::40b2:8e65:948d:2bc7]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::40b2:8e65:948d:2bc7%6]) with mapi id 15.20.6565.028; Mon, 10 Jul 2023
 13:46:35 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/color: Add function to load
 degamma LUT in MTL
Thread-Index: AQHZp/Lf4mDAsKJJSUmoR2ja2CCyba+dAZuAgBYX9GA=
Date: Mon, 10 Jul 2023 13:46:35 +0000
Message-ID: <DM4PR11MB614119BF93A1115FB57F497DB930A@DM4PR11MB6141.namprd11.prod.outlook.com>
References: <20230626055444.1113796-1-chaitanya.kumar.borah@intel.com>
 <20230626055444.1113796-2-chaitanya.kumar.borah@intel.com>
 <87mt0mv2ge.fsf@intel.com>
In-Reply-To: <87mt0mv2ge.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6141:EE_|SA1PR11MB5948:EE_
x-ms-office365-filtering-correlation-id: 6f8febcb-0331-4cfe-41d1-08db814c13f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LsRwYTgSEflXlgIRgh/MTm+YLJ/0o60jiiP0AK1QN8Vw0TnVat6T9Bm+NkjCWLuWz3e5i+sDwr+vCe/jvnYCgXBB3JgOTz4VKVLxc8/DDqWFtEC0XftkksWH7OZA+h9IRS65es+KQIPGZxCz9IWzFBtEkDbRl4qc6SA3igEoq11alPXmxEyshU7Q5T/wKop4X3JDTAThNqRS2cMJYyBJhFk2dUayTE/NLSiKmB/qdWUVSjHnGR45Z9OJp5NCo/c3ika4JfbOywhEKlc807rrTVMx37nk80nphh9eqSfpwW7K+5NPQmZOLho7by0r8/NVgWEf4hXeQcdx/2ygsvIb8UDkOghPNdkBQPgUolnlVKOQfg5Epokzr/jhjPyi3Gx0bJEGyFlon343CZnLkzwXrUp2TuFE+ndo+2dVe6F5S0CHPDvfbirnh80t0J6ORldNyv5D9DP3ADdUaWIc9Fcsv/0IuF5vopuMpgVWx4jSu9pdeOHimAwKEsSE1C3F1e1ReiENc3PlxgvJOHL9//+BVzVLwat2UszUkTiWX1HG/wHpdXfF0kpByn/gBPdJ6M/EV0hnN+5C648vQIi/Gnp9nRI4A0YlXdbJP4me1UfCqVGB0CmLnVmfwq8VP9X1G2sb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(346002)(396003)(39860400002)(366004)(451199021)(9686003)(26005)(7696005)(71200400001)(110136005)(83380400001)(53546011)(6506007)(2906002)(186003)(478600001)(66476007)(52536014)(38100700002)(38070700005)(86362001)(122000001)(64756008)(8676002)(33656002)(55016003)(76116006)(316002)(66946007)(82960400001)(5660300002)(66556008)(66446008)(8936002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yzJuRy9eabnLhd4BAkWxFv9Vn96boKxEeavT/udRSkPn0JaW6WmMrE/y4J8Y?=
 =?us-ascii?Q?qaJDnUO28BrYqm8kmReNUbq4nrYsh0ghKKssptVgWRDA89PSnNb1Aj3zRFoq?=
 =?us-ascii?Q?qu7Lc50wNe+IPVeBDmIiR09ew0JSwLj0bwSdkuArWnlP5Cqzwp+m4LLn4qQO?=
 =?us-ascii?Q?kYT0NLsEwlABI97E9QI3/LUMGmrNMZ5s7z3dz/9ojVd58CrLxlxeeh2P21mu?=
 =?us-ascii?Q?hdgvyk9j3tJEIWt5DcnAXzhnF0oPlDzDHuN8F7EMVhWaMO8VIzQsDkHwmGxx?=
 =?us-ascii?Q?GQxo8ovlxx2HdY5FjBISJ8I6VGOL7AVlMrvlXf15EinfNs4W+Z+JUpzJcMxj?=
 =?us-ascii?Q?Ymbk66qrDkIZDbA1v7NKflXJOuuXHGJRpgkvEXvt/7OqWK20bQthjRhyH0kV?=
 =?us-ascii?Q?eEfnZM3fnSg7tNVnIzOKwGqrbQoriY8sl/Hj7CCepRjlYxMeeTd2Kve5foGs?=
 =?us-ascii?Q?cd5btsk9lhRVSGDBWKYbtwK+Z7/W5kwFuiVzpNA4Sw/PdVmi7sNRPhULii6q?=
 =?us-ascii?Q?kVL0gMbiLkHhGP+cgQjgc7uLUKkxG72uTmuCczPl4IK4oV+Hd/YQqkn1i9eg?=
 =?us-ascii?Q?X+Fy6RMdunGKOvaTIpgP0oXxXCQv/1Bn7eHs2+3cKxM32jhpDXjEjHbCqTHk?=
 =?us-ascii?Q?pr8zW4qbx+ctmr0miG6kWsGmN3sylY9RKKRBnNKapjbc4Tt+MVFumurw5EqV?=
 =?us-ascii?Q?XtneRRPnot8pLL0eaw2WMzKWzb/fp9km4FoyVanubXDmEG4jWv/wxp2SCe/n?=
 =?us-ascii?Q?RNZk3kugUPWhcd11YO2bAoL1st8t+NFs14JsBcKmDWVlyt2QEmw9RjpNyiRl?=
 =?us-ascii?Q?17cdNmnugquom3WJ085BCqXWGjHiQS1PeyLnqn+Oh2PhTdNdLFXy8n1c3vs3?=
 =?us-ascii?Q?/b5Jb+jP9jo3wR4c+kOctsSNDZnYnIeFYKXvKJNVdAN6PPeLCXjIarEquHp4?=
 =?us-ascii?Q?HcqJpoIoTu4RVE+EZfHegkj39nLbIOv3T8XbRqUgmX/7INiMX17HHO8LYyN6?=
 =?us-ascii?Q?S/1jv6F1SxsxeJLnFx3DVTcZMzj1iFhg5AGeojcp2pWQqIOGSYhhrY5NrT3E?=
 =?us-ascii?Q?EwA4VOMmerzdxuFg3niWYjuiSXHHItfXaqJUQlHqYma1tMBOZHcFsPeOWSC9?=
 =?us-ascii?Q?A1IOL1y877XZSDczHmAYXMF0RnOqTO+AjrQEtyQ8oCWFoMmWI+CRfrC8K6Hw?=
 =?us-ascii?Q?XdG4C9oZGDH97lLSqE+Mo2RNQ5/ufeM0gCoPnV8s9EjXEraMPqq/EdDnTC42?=
 =?us-ascii?Q?e06z0IiLTvqLlISuUKQhFiW6TtF9OiCw/M5roFkmPUwO8/L5ULr8fLjAElmn?=
 =?us-ascii?Q?sBX72QlUEGjaLWNRqDHxSSvoHJ9lLdy9CXlVmjIPDCILpH0EhXHazKyVYPFH?=
 =?us-ascii?Q?yipa7m5MaYwzXdjOtarco3HsRXBceMZr4PVp7rkRYdqvrQGVeZBAhY7ji4fi?=
 =?us-ascii?Q?HsyGndRJqpvcEj8U1cSIXFIC157X9AfdXUeVbfrOZK+ueprSa3I1zv9n3xNr?=
 =?us-ascii?Q?wd6MJxx8qY1uTGwQO0CA6JxsXdVQkJGEIJJzt1AllyGhiwjpqQ1d9bbGIAN4?=
 =?us-ascii?Q?MbwiU/WeS5D/mEtuEZhQp2rm3dQue6rh7QKF4mCP6f5oF1LDzo95cDG2lbGs?=
 =?us-ascii?Q?dw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f8febcb-0331-4cfe-41d1-08db814c13f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2023 13:46:35.5375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zrf6KTwVHuLwSFPKhZ3MEdtDbI4xbaUryGmQECvE/ohv9rEWjyLGkXCoxK3GQoPJI15yN1Zn2ChGqZChtc9mD+UV/xcTYzEKMFAwa+49YIc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5948
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/color: Add function to load
 degamma LUT in MTL
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

Hello Jani,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, June 26, 2023 5:52 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/color: Add function to load
> degamma LUT in MTL
>=20
> On Mon, 26 Jun 2023, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > MTL onwards Degamma LUT/PRE-CSC LUT precision has been increased
> from
> > 16 bits to 24 bits. Currently, drm framework only supports LUTs up to
> > 16 bit precision. Until a new uapi comes along to support higher
> > bitdepth, upscale the values sent from userland to 24 bit before
> > writing into the HW to continue supporting degamma on MTL.
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c | 42
> > ++++++++++++++++++++--
> >  1 file changed, 40 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > b/drivers/gpu/drm/i915/display/intel_color.c
> > index 8966e6560516..25c73e2e6fa3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -1498,6 +1498,38 @@ static void glk_load_degamma_lut(const struct
> intel_crtc_state *crtc_state,
> >  	ilk_lut_write(crtc_state, PRE_CSC_GAMC_INDEX(pipe), 0);  }
> >
> > +static void mtl_load_degamma_lut(const struct intel_crtc_state *crtc_s=
tate,
> > +				 const struct drm_property_blob *blob) {
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	struct drm_color_lut *degamma_lut =3D blob->data;
> > +	enum pipe pipe =3D crtc->pipe;
> > +	int i, lut_size =3D drm_color_lut_size(blob);
> > +
> > +	/*
> > +	 * When setting the auto-increment bit, the hardware seems to
> > +	 * ignore the index bits, so we need to reset it to index 0
> > +	 * separately.
> > +	 */
> > +	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe), 0);
> > +	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe),
> > +			  PRE_CSC_GAMC_AUTO_INCREMENT);
> > +
> > +	for (i =3D 0; i < lut_size; i++) {
> > +		u64 word =3D mul_u32_u32(degamma_lut[i].green, (1 << 24)) /
> (1 << 16);
> > +		u32 lut_val =3D (word & 0xffffff);
> > +
> > +		intel_de_write_fw(i915, PRE_CSC_GAMC_DATA(pipe),
> > +				  lut_val);
> > +	}
> > +	/* Clamp values > 1.0. */
> > +	while (i++ < glk_degamma_lut_size(i915))
> > +		intel_de_write_fw(i915, PRE_CSC_GAMC_DATA(pipe), 1 <<
> 24);
> > +
> > +	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe), 0); }
>=20
> Please adjust glk_load_degamma_lut() instead of copy-pasting the entire t=
hing
> with small modifications. One of which is breaking dsb use.
>=20
> You'll probably also want to add small conversion helpers between 16 and
> 24 bits instead of doing them inline.
>=20

Thank you for the review. I have sent a new version of the patch set with t=
he comments addressed.
I look forward to your comments.

Regards

Chaitanya

> BR,
> Jani.
>=20
>=20
> > +
> >  static void glk_load_luts(const struct intel_crtc_state *crtc_state)
> > {
> >  	const struct drm_property_blob *pre_csc_lut =3D
> > crtc_state->pre_csc_lut; @@ -1635,11 +1667,17 @@
> > icl_program_gamma_multi_segment(const struct intel_crtc_state
> > *crtc_state)
> >
> >  static void icl_load_luts(const struct intel_crtc_state *crtc_state)
> > {
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> >  	const struct drm_property_blob *pre_csc_lut =3D crtc_state-
> >pre_csc_lut;
> >  	const struct drm_property_blob *post_csc_lut =3D
> > crtc_state->post_csc_lut;
> >
> > -	if (pre_csc_lut)
> > -		glk_load_degamma_lut(crtc_state, pre_csc_lut);
> > +	if (pre_csc_lut) {
> > +		if (DISPLAY_VER(i915) >=3D 14)
> > +			mtl_load_degamma_lut(crtc_state, pre_csc_lut);
> > +		else
> > +			glk_load_degamma_lut(crtc_state, pre_csc_lut);
> > +	}
> >
> >  	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
> >  	case GAMMA_MODE_MODE_8BIT:
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
