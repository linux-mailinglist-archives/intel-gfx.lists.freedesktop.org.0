Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7526D5813
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 07:40:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A16210E2A4;
	Tue,  4 Apr 2023 05:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E34310E2A4
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 05:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680586815; x=1712122815;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JoM/yPg9IZSL3PH+i/WGUE17WSx4yiJZFFh3jpVx3L0=;
 b=ebih2uDyHvsa4d7ATWU/ttxwoMG0QB+5ee7A+b6rwkh9RQ9E7wLNohz3
 rRIzTAae02SvfYt1oLAUGBPcavunEYXiAIMQbbAWJJmmaAvC9z4KPiKCh
 h3odaHbxsidpOh00fl05Ke4DdtTybKGfMTBIkOOh4omiZk3nL1J0FrR/5
 dyxyBPdAALtaTdLAiGJIONMiZ8njvJlTT1S7f/Knd3RuoYZMNUDusIziV
 z7qoHMFabQJNv/fbj3MelCpxIDHuRYNqv1i/JqzJtSV3CKnuu2Xy1S/Yi
 aRz0nnrKbNSvwyZuao5VwfOK5tN30wNASgQSktX22buniqlWYzotLRbsl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="369906630"
X-IronPort-AV: E=Sophos;i="5.98,316,1673942400"; d="scan'208";a="369906630"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 22:40:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="860470518"
X-IronPort-AV: E=Sophos;i="5.98,316,1673942400"; d="scan'208";a="860470518"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 03 Apr 2023 22:40:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 22:40:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 22:40:11 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 22:40:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MoI25JvSo5kabuKZYspn8CT21ab5BHJbs1/u8/LrNmg58BqinLuKODB8TLM+q+7qjjNKbUADa1h4zrxQ2QZLe2ajS9N1BRKzPLuMPrKw9tHD1EsKH0wtfu5auoBwapcgIllSM2dnphp7+s22vnATp3Nfv1pkDGXg2hBBDpf4LJeFe0Fb2dBLpNLAdfKTUVMhxftn2pb30K85qiTNWQaFME6otVTM0MFkZ5m2MF4/Xh2xBlFecXKeMLfbO/mBeOoGN3oVYxPPP85Di7rlm0KNsJyoSPLpTEPPzdH/rSXr385H2/mO4o03b8afJoKZyeoDYolpfOynb8D9fJYL0LJcvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nZ9VjslJ90M+/07iA9LJ2I7hLRfZ2ry4g12JkxF2tQo=;
 b=foDAVdD00yLqCBIM52KSkFrhcOB6g5V6Ig+s3u5V+TJjD2CImOkZ3VkjDmzWTi4UnCr3lpAZ3LijxVNGlAa8Q+wlX4ZNFb/XhZfVshnSTmNibwI+Qfmmx1tqPSIhaLqg6uiSUqMXGdDNkZGoVlkDfR+0qOY7F3Pq9/xhb7RPNnZ7lEq6X0Zr63eJqCjRvH7YnLlzR82X02idE7H9D1p8eyKb3TjMucFUdYbpswmg1dRMuyy4XvqstnmKGkLU0bUiEHorsgRkHlk1fBPBvYHGRtsqMxcYi1egNMtbtd7css5miYWTRSGLMXoxZ8VadLMGnv59HYiUz/EOVfAv2l/vvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CO1PR11MB5041.namprd11.prod.outlook.com (2603:10b6:303:90::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Tue, 4 Apr
 2023 05:40:09 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993%9]) with mapi id 15.20.6254.033; Tue, 4 Apr 2023
 05:40:09 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Increase AUX timeout for Type-C
Thread-Index: AQHZZgKslAt3GN9b1UqkMW19dicD7K8ZrWeAgAD17bA=
Date: Tue, 4 Apr 2023 05:40:09 +0000
Message-ID: <SN7PR11MB6750C13D8507C958B8016B1AE3939@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <DM6PR11MB31779731CD8CAF899E4BCC33BA929@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB31779731CD8CAF899E4BCC33BA929@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CO1PR11MB5041:EE_
x-ms-office365-filtering-correlation-id: 74565e7c-729f-4f56-1b0e-08db34cf0d73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lpg0oNiuLAIpSGesRbHYUW7CvjEJdtOF1VDy9cK8CohtecyUwOaUMbwnvGPGV/rZsJy6OFFGIxR7Gq1zK6+5YApSt9DAbAIR//sJ1R/dHs7OfYnX68AO7EmFcci4aUID3j4kBOLbtWEvIi8e8gGFzXOS7l6LFAinWnyUtPRNWyMx0/yskDQjEdMjrf0GSmGXBKrsQIfVhsDfVDVHu8ZCOxDGAgKIFS7yNfZl+d65+OBRD0CGmC6dYrzfc5LtUWIYwRja/ABGp3nVc6M0JcUVC847lFNtuUsEM7hZ+Pczq5kAmsB3kVanxhvqUK3qx3HQ3NSfnPCpinoYNnF8rh2eMHE9+Ck0MexjwMPJpkF68QBwVOnSoe/6r3j50EJuhvaAwk2fZD6athhTcPU882WZegQMKLLflQITKkXzEPBeFRfFAEuCwXKL5ZVeYIiaaq2jqehSec2DepOQXFBXrNkxdzPhXvwQ+ZwOIH5Bxm1fMvuBEXQjcE7xhHz7v8vHEzYCg8T51P64djLiylHIIBgV1CY6n787wy+cdUr4waA5qmI2hVG2Y+hp6FWEYC8wpgn3a+WXh2M94AIuPDLhW/lS7UF/tmj0/jx7ZXvJlYw70yRcLh8nuwCZHDhgnJ1BVyvp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(396003)(136003)(376002)(346002)(451199021)(41300700001)(7696005)(82960400001)(76116006)(186003)(64756008)(66446008)(4326008)(66476007)(66946007)(66556008)(2906002)(8676002)(53546011)(6506007)(86362001)(71200400001)(5660300002)(38070700005)(83380400001)(122000001)(26005)(8936002)(316002)(107886003)(33656002)(38100700002)(52536014)(110136005)(9686003)(478600001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Q4nR1bxREgZivEKrb14cXbL9TDWKpPRkEQC0D3PJTAdV9cVDnm5eH6ZIIAn1?=
 =?us-ascii?Q?Q4FrFz7j9dCBKWRspi+uBjmVZFmTdNQFt5vQCg8axiZQovdga5kw3usvA1jw?=
 =?us-ascii?Q?Mg0WUPV6pZKS0bkkE5HZwSwqhtTo62eb+a+DRaF4Ftu0/sAUT978p4l6r2N5?=
 =?us-ascii?Q?DQEjXslL46s1dajlhZL83m71iBulyutxflaS48gg9GyBdtJ6Vw4HgTvRIEJt?=
 =?us-ascii?Q?PsHA2/+5ojSJ+48yMhx7m/V67TMRthbXrmZgSMvOutGLRlROGchNkhAM8/Zd?=
 =?us-ascii?Q?o8GUKyOOGTMcN4O9J6y5ulKC9kmc4ktCyE3XtSUK7RfsXX03MhhbKoOD+kIZ?=
 =?us-ascii?Q?sjJzZKSUivjDmANO+WOrdKxPsLvaE0UVR4GYVb12gYQOaxp56Klconu0Rop9?=
 =?us-ascii?Q?YXOzusrzYiKWEKR2pbx4LphlrgMgSpQE+XF3hzUMbrTFmN48A6rl4YrSnUpo?=
 =?us-ascii?Q?6H2x9SRdlWIneAWcymJxTqkGYsH2qaIgpHoDXdHIZoOhk/RPUdGhInjkaokm?=
 =?us-ascii?Q?chMQMvI7rfFArw4cSyW+g0SHPJ3drjx/9niOrDQMiRsMsb/WOekF+LQ6xIa9?=
 =?us-ascii?Q?OlYLbVZDO/3oQW4EKvVSe+56fn9PF42IHF7Rny3RZhC877/eRL1+CLl5x5N9?=
 =?us-ascii?Q?njD5ZeF36vzxiyV2TNuzS7r1xhg3kZsxLN18z1JZ/MLxWOKraaEyiDxFIrpc?=
 =?us-ascii?Q?DoEY8o5bh6M4GYpyLmDlS3vMxym/zsSV26kdynXBa58ZMckEWtfHpREmb12j?=
 =?us-ascii?Q?1Lv0rTB4Ubu9zhNDQSfL9NAHLp/rB5tsumJhDJvQrJa4jOMX+ecn/eTLjzb3?=
 =?us-ascii?Q?Qvm8SoG8jyt3PdwnBbaYs0UggjtE2v/8trB95S18NROLuDF3RtbgMEfkWCf9?=
 =?us-ascii?Q?oZHiQahvAC2GPDBgWEcJfZBLpb7FsdFDaK8aiuoMtoMeYQApo86zpjPxN3EK?=
 =?us-ascii?Q?5ivzZ/hW2Rxr4FD21Qzj418ECRM2wnf4tcQCFM0Abozj0SxbcSDyji3LIcJi?=
 =?us-ascii?Q?b1DK0dEoXFylMdBMhB1CIWH4ZsOeYsihIqjiQsB5S8hUj20WTwh9KHGL2hCr?=
 =?us-ascii?Q?0LBjYT2Dg0+3O7SPNT4yjgllGx97SPfB1jRDCOdbYut2Rtx++Kr7S8IMC7Pq?=
 =?us-ascii?Q?+wSpYT5jfm8YKgvm6erPf/aHthReaJwS+Bj+BRRIp/gIoyDxGII4yGEMe5fH?=
 =?us-ascii?Q?f8Nrt4gLqZIdq3UbUBL7nBSwO+HYJcsd17bjuX+pfMzpMHTCAukoBLpKB2su?=
 =?us-ascii?Q?x6bDd/1OGLoZNnziOJRC8UTAOsa6ucXxqRte1wlKBzV3AEVAV2vkxI6ix+4y?=
 =?us-ascii?Q?QwfDY7V/zm81RC9LVMLYnrKYYzTQqiXppaAA+q/lf8gIZhIPdGHYD/RhpVSa?=
 =?us-ascii?Q?BQrEy6CqgmWSxA9TArw+H4KoAzXJFLB5/JdDUHbDceVge7J9LRth8U+1InjJ?=
 =?us-ascii?Q?PHTBJALH1ITadMVsfp3eNcmq5LcYVkg1waJdhTHtugf6XhDm0Q5FIQ6lgx8O?=
 =?us-ascii?Q?fp3l1DubnDAfDYQANi06cjUy8azj2jFVgTYfxAihylAB2YDeFwcOiXJWEezf?=
 =?us-ascii?Q?YZ47Odi0cSj+de8V20LFOdZzUdgYTP4yaBnUi4gG?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74565e7c-729f-4f56-1b0e-08db34cf0d73
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2023 05:40:09.1434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5GQbIolkYpQ67jTGskxmWDVgZhIv0Yws4XicUjRGArgRtEai/DYdvu2Cz4H8klOJC6Xl8/cT1S6akew6KL5iew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5041
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Increase AUX timeout for
 Type-C
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
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Monday, April 3, 2023 8:28 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Sharma, Swati2 <swati2.sharma@intel.com>
> Subject: RE: [PATCH] drm/i915/display: Increase AUX timeout for Type-C
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Monday, April 3, 2023 1:32 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Sharma, Swati2
> > <swati2.sharma@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH] drm/i915/display: Increase AUX timeout for Type-C
> >
> > Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
> > Workaround: Increase the timeout.
> >
> > WA: 14017271110
> > Bspec: 55480
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_power_well.c   | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 62bafcbc7937..357617b9b725 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -252,6 +252,7 @@ static void
> hsw_wait_for_power_well_enable(struct
> > drm_i915_private *dev_priv,
> >  					   bool timeout_expected)
> >  {
> >  	const struct i915_power_well_regs *regs =3D power_well->desc->ops-
> > >regs;
> > +	enum phy phy =3D icl_aux_pw_to_phy(dev_priv, power_well);
> >  	int pw_idx =3D i915_power_well_instance(power_well)->hsw.idx;
> >
> >  	/*
> > @@ -264,6 +265,20 @@ static void
> hsw_wait_for_power_well_enable(struct
> > drm_i915_private *dev_priv,
> >  		return;
> >  	}
> >
> > +	/*
> > +	 * WA: 14017271110
> > +	 * Type-C Phy are taking longer than expected for AUX IO Power
> > Enabling.
> > +	 * Increase timeout to 500ms.
> > +	 */
> > +	if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
> > +		if (intel_de_wait_for_set(dev_priv, regs->driver,
> > +
> > HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
> > +			drm_dbg_kms(&dev_priv->drm, "%s power well
> > enable timeout\n",
> > +				    intel_power_well_name(power_well));
> > +			return;
> > +		}
> > +	}

Hi,
This code block does have a return so it wont go to the next but it does ma=
ke sense to compute
delay and avoid duplication of code.

Regards,
Suraj Kandpal
>=20
> After execution of this on success it will again execute the wait_for() f=
or
> HSW_PWR_WELL_CTL_STATE.
> Instead can a variable 'delay' be added that can be passed to
> intel_de_wait_for_set() and this variable 'delay' can be initialized with
> corresponding value.
>=20
> Thanks and Regards,
> Arun R Murthy
> -------------------
> > +
> >  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
> >  	if (intel_de_wait_for_set(dev_priv, regs->driver,
> >  				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> > --
> > 2.25.1

