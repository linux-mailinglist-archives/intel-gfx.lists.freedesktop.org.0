Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 161A188F762
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 06:46:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C117211231F;
	Thu, 28 Mar 2024 05:46:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eSmLTqp/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BA1F11231D
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 05:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711604767; x=1743140767;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FkTBLeZ/P2elHT5ymoMM8CibwD2UPaUCKrg5j5Pg+Kw=;
 b=eSmLTqp/ru28oWPCEmN8kRMKneCAcDkUd1doeJiMoeVosl0IKG3tElIH
 Rvej8MOvudpT0dLnt0xYI+HjlOy3eFvleTNIouToCWmjKpHyTyqdugTYF
 /z6/ReNXRIcp/85pgfw3NWRhVjyxbMJ/lmrXs+4dntY+BO9UfaI3VcXgM
 pXkNKLMZZZ3eODTg4sRxkSdBvz7Z/6oI59fgb+Iio0dATBF/N3AqKMpsW
 6CV1Ukm/cM9M9iscjRzB8V1EIq7Sd8XV3ehHP+wuiTN2ZNuKsY31FS5Se
 RnE+wViDgjVR0VyYRcf9IR+PTjhd/B7H+EecyBQRSPmVByYBkRabLqMcQ A==;
X-CSE-ConnectionGUID: qggayjwcSw+RPPtOCgo07w==
X-CSE-MsgGUID: cvq3Z1lNRfe1kutGs+OTgg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="18123404"
X-IronPort-AV: E=Sophos;i="6.07,160,1708416000"; d="scan'208";a="18123404"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 22:46:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,160,1708416000"; d="scan'208";a="47733828"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Mar 2024 22:46:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 22:46:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 27 Mar 2024 22:46:06 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 27 Mar 2024 22:46:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hP55kzQ4BH00bk6RXL9yMFYJ59Or5nR/IfAV/706HknFGZg8V0raNPQirfe1c1tL6FVzrAg+PMCnSunuutFxMwgm+pcf+puEnkkToR/2A9D2+3GdCwuju35roojl4kupU17w1K9+Lw46UOxO8ax+fvOG4tnkAnEKwg6TLvt4Nmb617gpZ9f+Oo/kHjD9PgHVhryHyNBdpYtgZJr0QmN4XvbZ0zABjAUNm+y/eT0UJUUM1luwtfO/33AvohdlNoAouyBPVk82sVpxK6Ie+S9CKk3Z51lGm+eL1r2EELi74/OqOiVWVBenBhoHMxl/5Lj39Exe3O++DzbA17Okk9cHbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V0+zUv90X4Ew/yxfEz+6IO02bmDOBks406Mi5ef1L50=;
 b=axN/CYLEIU+4sLH0d/5AvAX7tw4IYSlDRuUAZ7lCU7IP9j3VpShgGU3ru6tmodtazkySLRN3by4Np9Ey0yNucEdDhWq37lFY8Obnh9EZxTwjZAANXHOJ5EHJ60xRp942IL4pmTWs0Ij5x53BgLlT0YBDLpyG8e0hziThgxBFNKCs+GMfT4PK7AkLR7itm+3geHlU4hvbsnUqW/Bu9UUgxvnFuxNMRZinppLcNndmHzfhGUW+ZqXs7wdt7n6V18Vis79KHqcuNRrQg+JmXBVtRo0zQjqWSgJvpK7E/W7PQ60ku1pr/vgo/G5pRhQIPLZbRU1rbZ1QBIipVNJftPIbrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB7629.namprd11.prod.outlook.com (2603:10b6:8:146::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Thu, 28 Mar
 2024 05:46:03 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 05:46:03 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Topic: [PATCH v3] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Index: AQHaZAnS6gmHAvSuYU6JkEouW05FobETgAYAgAG76nCAAA2DAIAAAqgAgAAEoQCAN4wkAA==
Date: Thu, 28 Mar 2024 05:46:03 +0000
Message-ID: <PH7PR11MB5981CF004EDC09D264C4B6F7F93B2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240220141919.3502674-1-animesh.manna@intel.com>
 <ZdTkUFmBcxcpqTV3@intel.com>
 <PH7PR11MB598164A6F2EC328A7604B4FAF9572@PH7PR11MB5981.namprd11.prod.outlook.com>
 <ZdZkCE64afsH-13o@intel.com> <ZdZmQuJkN0P0JDGp@intel.com>
 <ZdZqJE1-JTK0--zS@intel.com>
In-Reply-To: <ZdZqJE1-JTK0--zS@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB7629:EE_
x-ms-office365-filtering-correlation-id: d331a8b5-fd56-4785-52dd-08dc4eea5b16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ERKUE2dT6XFrCzHpwfY9dQwPoWbyu0hLTZlFgks8kLTszkK4u/Cx7JWxkI0YP0Zn9iA76poVLtv3eq3UZEBgUuIepbwHWDoZOAQQwDeMs5qzIGfOmy4E7UfuhdsbONPRTalLVbOuamy0vWWoqTdFX6jvW5zRWyfxpWtzLu01YmZI81sSFcR51SKyuAI6OaITvffDBHFOi2iJqa5izn5vsBlwAGBCzhfZ7Ab02i43ZLtDgK7ONqlSDS60qdJi5qgjtOlje7rMHwYdcvMOmDOK+iYo/fGHJEQ6e49kV7VQbeRi+8SB2sEqfWAhF2kI8sK+rm99ACXcWsGt5Oy3qYifR99qCSsT4ChaahqBEwlbBSv9munUQ0OZTVnphAvz7H6MrKICVSES/u56h1Ya+ATQDQWCs6NTs0PgFTRjKevePHvMo6eihSLTTM5qRBkZhVzlDQZSAU9LpGfBQveL/Uq3tdGwBu5agKz7ZN104IpuMga/WWKUnskCdJBIzy9hj07H4e20/h+9OoLWHnqGMvGVqIzWgHsAISuVeNSkcGUCpZ1wnZ3tQEhOd9DQ23libEtGfXDkBOXuw8LBjea0FW/tY79NWAjENb2hLvTWcW1kmJ5ceDTGTubF4fslriDfIMCw5vf+WDJeLwN1RB5uYlNlE847PxmoTFQmv1rz3vWkJJA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?1KjBxBdEyTVbAoJTH28kYCnoZh79JFaxxFc7lxxRH3q3R3oSmN2DxGam6n?=
 =?iso-8859-1?Q?+trkuOF0C6YzkvO3DFs34HNjdQ2ZcyaSDre91MOraLWAtIZwuQ29RrUafA?=
 =?iso-8859-1?Q?w0zRL8+Ya6MuX5DdX2GsPOULxPENeO0vQEw0biZB1FipQuNnFIzfzt9sd4?=
 =?iso-8859-1?Q?xk7LKjZ7XaAKhJw2cWRkm4nTq87LcUWFQXty91Pba/PyO8cw68cL/1l5xV?=
 =?iso-8859-1?Q?qzMzkOgXluclu5O0KruDlaeoBHeysfvy+EeYHICEzoDS8hOkMVjzaxJnr1?=
 =?iso-8859-1?Q?NlEn4lYel8vdxN+Jdv2lDOyQp7/20RjQIWPhi8BT+waXqzS4hLJz4R9JTR?=
 =?iso-8859-1?Q?K0YIW/+wjAfzINt3oqhLnh4486jcRij24BNSlKMIYjQ1PUsADpYmXUUH+G?=
 =?iso-8859-1?Q?zKlekXZRO07jWNtQKgrteZmccYSxSADZFiXP/JfMj/UISGfFyBPNPgD3gk?=
 =?iso-8859-1?Q?sPf1ybEbFDcsv66pYAcPjGyieAmWDKz/uQkLxVIK+7GKIfHbG0vNxMjpE2?=
 =?iso-8859-1?Q?gZhpCMrRH1EXgA2+dOGGgBr1Qg9vLJ3NH1gtZ3cOcgYu4QtEnaVOIn3SbT?=
 =?iso-8859-1?Q?+s+5QJmRTYZLjFxOWHBMOY2wVe2f6p5ATjYq2OqbUJKhJLIFTKMkbQFs8B?=
 =?iso-8859-1?Q?Mm7OlSk0JTV5MycLZ70dLyER8nlMpKQBQer/prtqgShEpMjfiCMVIwbhF9?=
 =?iso-8859-1?Q?cVc5S51wNma0WBi12C9wTNMTVpXCBg9Xpjz3FX6JPBE/x1nTHnEh5vp95E?=
 =?iso-8859-1?Q?YzNF+u36dyuib9G+mJSBh9/2HZOjoJNs0vbDB6e2ECftnqykKoCgfyTtHP?=
 =?iso-8859-1?Q?miHOKakJE4UJtOkrXaLGhLndd0Atpw0n5kvg2GdbpcgSfjsBAHeP9TrQLW?=
 =?iso-8859-1?Q?Rfee+hMMn4e2icRei+Uc5tRumQpf6tWBOQZ52ZQXKgWLFYQr5rXHZzH4kH?=
 =?iso-8859-1?Q?jnnJc87Q1A1Ic5lc+xwKL2L/24s7YYMeDNuctuw8iZ2RWRsRmNrR0/t4Q8?=
 =?iso-8859-1?Q?mk11tX42nIcDF8ojByTNC9zhTx5yKeA1KAQqLh5f5MQ8aLyYs5nCoMYrIM?=
 =?iso-8859-1?Q?fUo9tEVbRNY6r/61X47iJCV1sBs69ddy8vRfQDWb1I7gMkXkkHDBw+ol6y?=
 =?iso-8859-1?Q?yfxiGQgne5/H6XE2fvFAcs78OJite7v4rqdPJdP9YiZbjseCzFyZaVQxYw?=
 =?iso-8859-1?Q?Pw/qg6Q9xM1w2Q4DhIE220ErXUi7AQO7+wvFcQLAsSKBJiYe/TWprTxs+f?=
 =?iso-8859-1?Q?EwQt1I67iUf3+YfrkNyhTFJtJS1iSZVm00G8tvMoT5twXDlIvdc6S+LYIi?=
 =?iso-8859-1?Q?NPsvjJokSJpq4qYgTZKBajsSc3ahI/dcFKJcgh7OtUkvPZzF/hm6rrnLBe?=
 =?iso-8859-1?Q?OKguK6GtT806ef1x5jPJppzBpHCgaLnSAXF9D6+4DisMXVfBb/OqWd0bVg?=
 =?iso-8859-1?Q?l2VfKa0CJjh+9Lph+p75mnmEZKJtNSxOsg8bzPBblKjxGeDIje4LT5/ncQ?=
 =?iso-8859-1?Q?wrQLFUkjjqwrHTN9kBZCdXRh0PKVxj2ZFSkgemeQy50rFCwXH55MlUc7zF?=
 =?iso-8859-1?Q?Inb8ETGPWo2I6MgVUNusEks+N+Tkxwl7yn/fdvNdRGkMPXHVM8/SaAPoKl?=
 =?iso-8859-1?Q?pqPgcJKatmkvoMFWJEkXlHx92mQI5t4Dh3?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d331a8b5-fd56-4785-52dd-08dc4eea5b16
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 05:46:03.6779 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cTdL+ixxgNHRqVGWgBEDbFiX7aOJf5R0LmoUQBuChq1BhhZIbHvTaCQ/CNr/7n3A0tMLOTlYgd6slN0YWuzvXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7629
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, February 22, 2024 2:55 AM
> To: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Cc: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; Hogander, Jouni <jouni.hogander@intel.com>;
> Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: Re: [PATCH v3] drm/i915/panelreplay: Panel replay workaround wit=
h
> VRR
>=20
> On Wed, Feb 21, 2024 at 11:08:18PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Wed, Feb 21, 2024 at 03:58:48PM -0500, Rodrigo Vivi wrote:
> > > On Wed, Feb 21, 2024 at 08:19:35PM +0000, Manna, Animesh wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > > > Sent: Tuesday, February 20, 2024 11:12 PM
> > > > > To: Manna, Animesh <animesh.manna@intel.com>
> > > > > Cc: intel-gfx@lists.freedesktop.org;
> > > > > ville.syrjala@linux.intel.com; Hogander, Jouni
> > > > > <jouni.hogander@intel.com>; Murthy, Arun R
> > > > > <arun.r.murthy@intel.com>
> > > > > Subject: Re: [PATCH v3] drm/i915/panelreplay: Panel replay
> > > > > workaround with VRR
> > > > >
> > > > > On Tue, Feb 20, 2024 at 07:49:19PM +0530, Animesh Manna wrote:
> > > > > > Panel Replay VSC SDP not getting sent when VRR is enabled and
> > > > > > W1 and
> > > > > > W2 are 0. So Program Set Context Latency in
> > > > > TRANS_SET_CONTEXT_LATENCY
> > > > > > register to at least a value of 1.
> > > > > >
> > > > > > HSD: 14015406119
> > > > >
> > > > > Unnecessary mark since the wa_name already is a pointer to the HS=
D.
> > > > >
> > > > > >
> > > > > > v1: Initial version.
> > > > > > v2: Update timings stored in adjusted_mode struct. [Ville]
> > > > > > v3: Add WA in compute_config(). [Ville]
> > > > > >
> > > > > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++++
> > > > > >  1 file changed, 12 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > index 217196196e50..eb0fa513cd0f 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > @@ -2948,6 +2948,18 @@ intel_dp_compute_config(struct
> > > > > > intel_encoder
> > > > > *encoder,
> > > > > >  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config,
> conn_state);
> > > > > >  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp,
> > > > > pipe_config,
> > > > > > conn_state);
> > > > > >
> > > > > > +	/*
> > > > > > +	 * WA: HSD-14015406119
> > > > >
> > > > > this is not the right one. You should use the lineage one and
> > > > > then mark the platforms.
> > > > >
> > > > > /* wa_14015401596: xe_lpd, xe_hpd */
> > > > >
> > > > > or perhaps
> > > > >
> > > > > /* wa_14015401596: display versions: 13, 14 */
> > > > >
> > > > > and also add a check for the display version with it.
> > > >
> > > > Sure.
> > > >
> > > > >
> > > > > > +	 * Program Set Context Latency in
> TRANS_SET_CONTEXT_LATENCY
> > > > > register
> > > > > > +	 * to at least a value of 1 when Panel Replay is enabled with
> VRR.
> > > > > > +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> > > > > substracting
> > > > > > +	 * crtc_vdisplay from crtc_vblank_start, so incrementing
> > > > > crtc_vblank_start
> > > > > > +	 * by 1 if both are equal.
> > > > > > +	 */
> > > > > > +	if (pipe_config->vrr.enable && pipe_config-
> >has_panel_replay &&
> > > > > > +	    adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode-
> > > > > >crtc_vdisplay)
> > > > > > +		adjusted_mode->crtc_vblank_start +=3D 1;
> > > > >
> > > > > why to mess with the vblank start instead of going to
> > > > > intel_set_transcoder_timings() and change directly what is
> > > > > getting written to the register when the register gets written?
> > > >
> > > > I have done in previous version of this patch. But as per review
> feedback, added now here.
> > > > https://patchwork.freedesktop.org/series/129632/#rev1
> > > > https://patchwork.freedesktop.org/series/129632/#rev2
> > > >
> > > > >
> > > > > In case the answer is becasue by then we don't have the
> > > > > vrr.enable or something like that, then we should consider move
> > > > > around when we set that register?
> > > >
> > > > This was not acceptable in earlier versions. As per feedback instea=
d of
> atomic-commit need to add in compute-config phase.
> > > >
> > > > >
> > > > > or perhaps create a specific flag? one extra variable, 3 less com=
ment
> lines...
> > > >
> > > > The above comment is not clear to me, can you please elaborate more
> here.
> > >
> > > something like:
> > >
> > > @intel_dp_compute_config()
> > >
> > > +if (pipe_config->vrr.enable && pipe_config->has_panel_replay &&
> > > +	adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode-crtc_vdisplay=
)
> > > +	pipe_config->mode_flags =3D
> > > +I915_MODE_FLAG_MIN_TRANS_CONTEXT_LATENCY_1
> > >
> > > then
> > > @intel_set_transcoder_timings()
> > > +u32 context_latency;
> > >
> > > +if (crtc_state->mode_flags &
> I915_MODE_FLAG_MIN_TRANS_CONTEXT_LATENCY_1)
> > > +   context_latency =3D 1;
> > > +else
> > > +   crtc_vblank_start - crtc_vdisplay;
> > >
> > > -crtc_vblank_start - crtc_vdisplay);
> > > +context_latency);
> > >
> > > Ville, thoughts?
> >
> > I think what we need is a intel_crtc_vblank_delay() or somesuch thing
> > that accounts for all the things (eg. this w/a, dsb execution latency
> > when we start to use dsb for double buffered registers, etc).
> > And it should probably be called from some central place so that it
> > works for all output types. intel_crtc_compute_config() comes to mind,
> > but I guess we need to first ponder whether there are bits of code
> > being executed prior to that that would need to know the actual
> > vblank_start...
>=20
> PSR2 itself might have a chicken vs. egg issue here. Wehether we can enab=
le
> it not depends on the length of the vblank. Whether that means the full
> vblank or the pipe's shrunken vblank I don't know. Someone needs to figur=
e
> that out.

Added a centralized intel_crtc_vblank_delay() in v4 but as this WA is speci=
fic for panel replay which will be supported by DP/EDP
so called from encoder-compute-config() instead of crtc-compute-config.=20

Regards,
Animesh
>=20
> --
> Ville Syrj=E4l=E4
> Intel
