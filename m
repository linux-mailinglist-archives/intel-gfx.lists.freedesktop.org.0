Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A394189A3A9
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 19:45:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF57A10E9BA;
	Fri,  5 Apr 2024 17:45:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BAqQA5Cq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4E8910E9BA
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 17:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712339110; x=1743875110;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XzI804RcVt0OP6XRWukQBsyDowJLtxAgheBy0ec+ghQ=;
 b=BAqQA5CqAgKBdJYNwi8DFRTOCYZ2AeByov+3S8Rn+6sivqilzU7eDMRj
 g2L14oxR3raoCmtbBQKoGrw8pr48AcF0nn7pUov/TJ2BvNnwfJBixz32V
 xxkxTskYISJedaZWFAwx86Ow9VvUM41AJxQdqQ71jT03IlVilSOzjKwmt
 dZ2KZLH6Rg6ZLISXZKQUqnjkdQq9bui5Qh56PEYFL8WHqlNDoTUrUXZ5n
 loi38o+Vs804la/7EMsYVomC8ECpk87VEzh2iJrdlmFDvhwbGOegjG0p5
 XY6Lz30LHfZHO+HH2LCFXrA9ojma/RSrnAcJME6ZeDBMOrvPjuPb9FIZa Q==;
X-CSE-ConnectionGUID: ZJX35arGQvOimWstEZ8IIw==
X-CSE-MsgGUID: 5LsytuBcTVyfBtY2Qj7DNg==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="7543461"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7543461"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 10:45:09 -0700
X-CSE-ConnectionGUID: aiKsrRC4Tb2VvvuohN8l/Q==
X-CSE-MsgGUID: DkftCcenQtGvdHThVu6lFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="50191633"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 10:45:08 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 10:45:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 10:45:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 10:45:07 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 10:45:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GkT4SKCDK8f48z2HyaP/ZUN0V3h2iBNPvDTq2sYsxmkv5GRRfqjsIhHpvDOTSbPVTSB/8PzzTz8ls9wPsWbL01kba/ASKnRGSd8diY5ASXoicREb+kim4i+46gpW9rUClGa7UBMYC16EesNRSEUgxTQXU7QauBHbnIHQNLY1L+I5ktOG7/B0K97DoUqFN8K3Y8rYnrsCqupYYyo6DTLDBZH8cHuaS0YPr2NqvHUnrGo9chWHrWTg6gR22puzNAKewCe5GTvDSOh1oAL8w5u3nHrsiRW9mUYFr+JIqIZ7GGtHvcmXUvzwpeHkpJGfcPEVKIx38H+x7dWV4mV03jRKyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rAoFs//womJLxkJ0PWtXRK6hACReywWO5H0H3NGNANM=;
 b=iwlanMXbnq46WnyV7l6czJmKaxCUjebqLBj8WUEAa28pFwIznbbITXvdW/CPVnJ9Xk7HQ5ABo8Nw2XsYg7R6FU5Z/m8F3WmG02CDM41/2hN0Dpn4rW0VYm7qaRuIEN6DaUOgXdPXi0ugCXm3IGLdE3hm8zCeUyeUtIEn71tO1/J0F6oY6JZmQjwyWFPsSPUMmx9xh1GRh7fQssbmbVTYlbAGXCX+LRb4nq5a6kcXj9haQg5jCTPkr/3y2BqkGWkq0dylgIiuytkHgotHEpi7UAd04ZmD89kgWBhPHyrRdQ83UD5mSj3PZPNbuspCA03b7tPbeXTUh3/tHvbQWb74ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Fri, 5 Apr
 2024 17:45:02 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Fri, 5 Apr 2024
 17:45:01 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Kumar, Naveen1" <naveen1.kumar@intel.com>
Subject: RE: [4/7] drm/i915/dp: Fix comments on EDP HDR DPCD registers
Thread-Topic: [4/7] drm/i915/dp: Fix comments on EDP HDR DPCD registers
Thread-Index: AQHah340L6rITwu5DEW8/ySD6SL6OrFZ8rPw
Date: Fri, 5 Apr 2024 17:45:01 +0000
Message-ID: <SN7PR11MB6750BA7EAB9B63F0DFC23A8CE3032@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240404032931.380887-6-suraj.kandpal@intel.com>
 <20240405172449.GA931901@toolbox>
In-Reply-To: <20240405172449.GA931901@toolbox>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB7540:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6YgWVf1jYBlzZnDr4Fpw5O9pa7zaKlXd5tLB9ebL0AO6Wg8att79rw5lxRyBw+Y+GqWgd9IktTA4UkC+BGGPSww1rtBy9SBIK2I4K9ZIWEOUCGcaTBqvSdI34RgH0asspyIRnDJXQ5H0D2ZCzQrZQz/2GXlc6biNqXFxhckNFr2y7mzzcqEK7AGpgO20swfb34ht3A2GtK4DXyO7bBOZSg2h9S9N+wAoJSyoSqSemi4xECMf4CuyYibNWDIdRrHCmWKHBjsYai1Rlai+AxMN4n95PpkbmkA+uZ1xNbA79jC0JFZ+alguZqx0pUXpGdSAkd7xtMr0VJY62qz8uwo6dmP+OuF50N4CGqhPniNxX0EI+P90ZZDAIi96W8BLd4Ct0WNz8CHlHXrurPAP83VDSm0P97BwURdd/WHHAa4mHYTl+njHjICYu2+Oym1HWzV2mWoJSMQU5zZT/mGkGPsVHR4bYgzrVWMLvw1A9EYV7J+FhQm3pL4J541pWsBVcNQeIFFk4OvfW2PDN53YG9i6vJV+aiJ1PGNxrdsLricW8pOqeKuPge6IxWS+yfUDBhw79YWferdARzrdPY0Yh5RNOjQmm9NFE3mHBXHxun5QvUon9IXGpB2XQ2bPIDr6A+9d3GrmuI0GExy4J/GCKn2bx2D5nGMa/qU/QtBJzGxBSsE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g6MFZwtipdtJ7nDdT3ZWc6iA4LEztOqaCsmzBWB62Rea1nN9Gd1l3ci9gv8H?=
 =?us-ascii?Q?yp4GjRsz6tcVuxrEos1tAZJEw5I1GpwWB6luIIRNvorOwAULkM4InhWPXEnf?=
 =?us-ascii?Q?Y67XBLxcrWGT0IZ8UdDiqgI0i3QnMeohxGZt9hgJHbOFXsYc+xy4C6bTzWZo?=
 =?us-ascii?Q?d0REwO9JoC3fMEphHw5jCuMWwK4UXCYDTnmfMP49kYBJFm3QbB9EncoxzR5f?=
 =?us-ascii?Q?AdiO+wJqNV4yMPTE3IRrhpGBbR3MxeAv5ihLClsEZZTuH/JH3oEhmj9nr/JY?=
 =?us-ascii?Q?L0yxVUaiYx9EqwSw55peCIiMQwKWUNdlE6L96wCYmBUMsPslhpk7gYGKFLEw?=
 =?us-ascii?Q?5dFx98VELWM3njeG9npq2PGi6rUMcRzXGx7YO3neG6H3+4cgTZYwbsb63upt?=
 =?us-ascii?Q?aVsGcV6ejRCSAyTMjkuf0qz9mLGNXVZbaFh9BmhteGBK40C4T04Bny+aZO0p?=
 =?us-ascii?Q?TsTwg0jV4hAive7Cv81JHX3wREtwh4ONDJStIpEAWHJHZhK81rYMfvFsmvzl?=
 =?us-ascii?Q?fbTI+sCOwFkcmnheyNjzRgeJYSA73n8zpwBm1Gt/jycZxqf1gx+utqRkZJTP?=
 =?us-ascii?Q?/mY2BbaqcGLTOLxAO388W1T7MLwUepGwGFU5moxW26piDWIsZxgTpEKRS8LV?=
 =?us-ascii?Q?IwvrsS4rr9vhWgi7RAo/zomHicW2CQmqVVlIyONWPebsb6HFcr0G1u7B6khe?=
 =?us-ascii?Q?bOTaABCi4XtBpMO8wVLQafmg6vDzGyk4kSucoRdMeZHJGUlBdXgYZD/0y+lj?=
 =?us-ascii?Q?MNKmNih4zMJmHo1gjv8U1x6IcWOs8UrRiw9dCPLRLu/auhSAsOMy5CcSXVj+?=
 =?us-ascii?Q?VfPq8+7BveKemdPK31E1vutny9fFmTmouDXplKk8E6n8JRQKmeldIaZOhpN+?=
 =?us-ascii?Q?3tvuySu0iu1AUnVLnwvnFOyFgYJSrRHMY+iJ2A+YTfvXHnCv02Dr3wc7ZnlE?=
 =?us-ascii?Q?Z70pWC9sabR3R5lnways+z7kl8EcoH2jC6FcT/8G8MnqyflrmGgQf425oaoT?=
 =?us-ascii?Q?R00EJmwGbvvJenYKWCL6g1r3M6m9uBhGhrrP4GVCct31fenyPFGZyla2A7d0?=
 =?us-ascii?Q?2AKK8ltJplG92PKIy1BeJxl5rLLhQTE3xiOp9SXxTDlGCgu2C4qCKyvE4OQh?=
 =?us-ascii?Q?ADJSst9m89GlQZ6VCAUNQUa6bxNy48dfXum+PKbsgya/FLuDEcFIRbWNbBcC?=
 =?us-ascii?Q?J3BtIU+nzKZJfJhC8doBifqdgqgLsZE+qlsUrqzu88PYN5nyNEp/0DLAC1kt?=
 =?us-ascii?Q?ajh3VeFajMylo7R1GabxB7iCvmJmwiLY37DnhXI/a9SxjCgefXlOrI9d46og?=
 =?us-ascii?Q?zgpzKcqFUJjsseig0PR4yEcXwdcILrtAzaV00vVN9AzgqxjkC4fSK6t7tMwL?=
 =?us-ascii?Q?06s9k1NYrPqAamV+xklcmWEyah5v2LscbvOc1VtgX5eR7nYNti4T/a1JDOZa?=
 =?us-ascii?Q?o0bxOZLmECltv9jbBxC99OJ1rr8VDCmlXYzOIu2Y6x9NwHyUJh/Buu5ZvnUQ?=
 =?us-ascii?Q?fNgG4JbxUpgBcBXBtNWWF6t3Eef4/WA3zSWSe0bX14OUs3Xo4oMk/HDvC+uV?=
 =?us-ascii?Q?D9nWgWgkehHqzJ59Fj2SxYCilKkEl2c0eApQpscs?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77b97367-e7e0-4b38-344e-08dc55981ebd
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2024 17:45:01.8735 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rzDbBJIoW8IvakKJMMolTs80zz4lk+P6J8RRYtQ/0a51A3oDlOAi2U0ob20lNSEo+UYkKn7peUl0F2bSSx/DGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7540
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
> From: Sebastian Wick <sebastian.wick@redhat.com>
> Sent: Friday, April 5, 2024 10:55 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> Murthy, Arun R <arun.r.murthy@intel.com>; Syrjala, Ville
> <ville.syrjala@intel.com>; Kumar, Naveen1 <naveen1.kumar@intel.com>
> Subject: Re: [4/7] drm/i915/dp: Fix comments on EDP HDR DPCD registers
>=20
> On Thu, Apr 04, 2024 at 08:59:28AM +0530, Suraj Kandpal wrote:
> > Change comments from Pre-TGL+ to Pre-ICL as mentioned in specs
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index 3d9723714c96..2d50a4734823 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -69,14 +69,14 @@
> >  #define INTEL_EDP_HDR_GETSET_CTRL_PARAMS                              =
 0x344
> >  # define INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE
> BIT(0)
> >  # define INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE
> BIT(1)
> > -# define INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE
> BIT(2) /* Pre-TGL+ */
> > +# define INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE
> BIT(2) /* Pre-ICL */
>=20
> Technically that's also true for 2084_DECODE_ENABLE and
> 2020_GAMUT_ENABLE. Maybe just drop the comment? What is enabled
> when should become clear from the code.

Sure will drop the comments altogether.

Regards,
Suraj Kandpal
>=20
> >  # define INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE
> BIT(3)
> >  # define INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE
> BIT(4)
> >  # define INTEL_EDP_HDR_TCON_SRGB_TO_PANEL_GAMUT_ENABLE
> BIT(5)
> >  /* Bit 6 is reserved */
> >  # define INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX
> 	      BIT(7)
> >
> > -#define INTEL_EDP_HDR_CONTENT_LUMINANCE                               =
 0x346
> /* Pre-TGL+ */
> > +#define INTEL_EDP_HDR_CONTENT_LUMINANCE                               =
 0x346
> /* Pre-ICL */
> >  #define INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE
> 0x34A
> >  #define INTEL_EDP_SDR_LUMINANCE_LEVEL                                 =
 0x352
> >  #define INTEL_EDP_BRIGHTNESS_NITS_LSB                                 =
 0x354

