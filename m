Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DC7819E8E
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 12:59:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEBE310E545;
	Wed, 20 Dec 2023 11:59:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65A2310E545
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 11:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703073587; x=1734609587;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LQ08qeUAN7lFiUtFIKIc3PWohsnC23mfE2FHAbEQwOo=;
 b=gO6ZtlejXEvek3QrHdL917EG3oEvwwODyN09krR4cBJ+YSMb0hM2KnV0
 yujS5h75WF7qeiVPX112/cf7dotMZ8YANgpOeUH3uDk+nmsGI32P2v0Hx
 u5QY2wxk/s2+/GGUiOqzjgpvINusfTJqcOTDe6yVz0iCfb1Yy/wRIkcvr
 eKGcC4opUVWXRAZ/nPepgRnhOONYOYyEhsBdkbuV/iMGp96B7GXrAgAmb
 KjwCJHaR77s3ZAEs+5Fg3zosBan8nGSD0qVVPtp0kgjm4OQcIE+YZ9yO9
 lB92Da5dmqFTItPRQqxIhIJLsooEXkgTphj2YAn7kIaigJo7tIz+ehSQu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="398583837"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="398583837"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 03:59:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="24554318"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 03:59:46 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 03:59:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 03:59:45 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 03:59:45 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 03:59:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R5zU5lWuI+wPw2POj2lbmOS9+UYfObozQN7Z838DjrORcZf/D4WA7BuQjVjt2ayKVQCw4Dd5Zt7vneZbIjSfOq17+5sv81j9RevAN0GeEyUaTEj+ZmGxX27bT5fodXpFDr8Rs6QkX8TD203QBWGa4XXEQupWNBaWaXnEwQK5/cbp49p5DRuxadZACRwnfnE90fp537lKLLi5EqjHVL7umqPmUoM41fEq+tvy8bRNGAwD+bmD8c38k0HG9jKGviaxcsAOaCCKRQazNTEMWIkG/1r3X+fDgttuAuYohdilkt+/nTNldNAf5u4DMINsIchfiTn8EYXhBSJ2dYxpONdWTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MavwbrS2nFmnI1A6sx9m4pG/fn2Fw0OZtJRWen2WGHI=;
 b=c0s7VD5CXtQmzh+45+mTa4MRoJDTN/dNI8mGO/GUB9p8VbWEER1OysbNbWOOziVWkA+PEcXtiKtxItOppm0b5w+i0RslvNovkliUdKMOsYvxAaCKlX65XwdOS0dDoL8pPdHWhQYFYBsF1aDIwvwqJM2LNhqozP/PHKfFoittD7ujFdA8Hoa+l7dCBuyjotlACV8wPEn5QVDnTurQmrjMunBTXAjWySbJBELTrigVy11BWmN3PRPNW2xoTPwuAsB0617TBQZAa9xkJkKRcCxpvenFVmSdn2yG2WzQhHLqdNQHeJ4UiMLIUTJdpzNBHonrRpknRXsV/ILwfSXSU1aRPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5456.namprd11.prod.outlook.com (2603:10b6:5:39c::14)
 by SA2PR11MB5001.namprd11.prod.outlook.com (2603:10b6:806:118::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 11:59:14 +0000
Received: from DM4PR11MB5456.namprd11.prod.outlook.com
 ([fe80::91a1:5c31:e587:6579]) by DM4PR11MB5456.namprd11.prod.outlook.com
 ([fe80::91a1:5c31:e587:6579%5]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 11:59:14 +0000
From: "Lin, Shuicheng" <shuicheng.lin@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [PATCH] drm/i915/guc: Add MCR type check for wa registers
Thread-Topic: [PATCH] drm/i915/guc: Add MCR type check for wa registers
Thread-Index: AQHaMagF+0S1fGY2JkyqOqRzJT/rFrCw4/YAgACOeTA=
Date: Wed, 20 Dec 2023 11:59:14 +0000
Message-ID: <DM4PR11MB54560317AE36241A39B650B3EA96A@DM4PR11MB5456.namprd11.prod.outlook.com>
References: <[PATCH]drm/i915/guc:ChangewaregisterstoMCRtype>
 <20231218114644.3799660-1-shuicheng.lin@intel.com>
 <20231219174856.GB2808452@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20231219174856.GB2808452@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5456:EE_|SA2PR11MB5001:EE_
x-ms-office365-filtering-correlation-id: 45549dec-4199-45c8-c8c9-08dc01531601
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Os/I3tZ3m5ERM6qcxelq0yjWbJ8JXOwZXvHQDU1IjoWkhwKLhQFvVc/PH4Gu6h+8641V3ojMP5yYwGbIOW3QLcimQE4uqmCBaQGgpwnRHtoqF2/WaPahJoItjr5R0LJN1/hGXQ0gClCF5WayOY9QiwhARNDsdq/wnyoYfivdFWzwvnHkf0dD4Aci7u9r/05GjFcoAMvlDCHVSpL4YmTbPuphRLgEunGAv0AQfaWeF6htVhw3XaFSLL0P1qlGHcxH758ydgWd+JjMk7Z/I2LV94iIILv2+jX5+dUpiDycwJ0uwplL1YKWohivMXAplF5k2qL+8ZlD/mchferv4LiTIYJUOtOjCoYWmoKevMcwH7YUgXVnL9Xe+X4km9DLNz9dCbvc/U3XqJZeskuA1B3cPDC5136xGedscFOCQhZKL7fhZhkGMs0bIRRb8IOateTebvKvYfP3qVC+4aynZo7I3ADp69TvXmiboMkuD9hhIFDMNYylZDNlIWWdWTYTpoAIA8ydjT/ajkxduocftzohIFHSpxxwKZ/bOAd8QI5zj0b1mFWSjT++cdt+LnCEUGryKo0eW/sCdrUKuy0dxanIHeFbKzVenwvVx5GszzXIZM1QyzVjVogRPY2S4AFrdLJ/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5456.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(376002)(396003)(366004)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(8676002)(4326008)(6862004)(8936002)(2906002)(5660300002)(478600001)(64756008)(6506007)(6636002)(7696005)(9686003)(66946007)(76116006)(66476007)(66446008)(316002)(66556008)(41300700001)(38100700002)(52536014)(122000001)(55016003)(33656002)(86362001)(38070700009)(53546011)(82960400001)(71200400001)(83380400001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xfLXhefAn4Xjn00ysQ2sSPUpcafkMB9z6KPwcdzY4ERRiKUKCSpxcWxIXIaY?=
 =?us-ascii?Q?NWp09I+mMch0OvBxYNzyYC4XuN3W4lW8YLxGa2nc3laZzJFtnmbfYaoV/bBx?=
 =?us-ascii?Q?VZh2rAzS9BvuXTC4ohcVPTfyRVXdq0VETE1HnWGfbqAWR27fYz/XqFZ+Cg15?=
 =?us-ascii?Q?9wWprFUxKCVNfPjP8fOWpyoq99+yjHqCu1YiaOYSVof+9V/gUjIlFiFSaMzc?=
 =?us-ascii?Q?ICwiB318uKZTQGBUGMoZR7seaMnZEatHEL+QAF0XKfTDYUGAwDJ4/pKNF+Rc?=
 =?us-ascii?Q?7Cn1gombX630O3iauGEA5FE91oH03iIyS/bUrJA4wFaVMgGFqdS2UUE1PIV6?=
 =?us-ascii?Q?iybp7BiUL+oxhy2rI/UZ3yBKij+6JyjpgLadEeLDvANfCnI+gywwUWB7XQUM?=
 =?us-ascii?Q?L3emEnnh56Wuy3RmxNui01V1tE7spTY+9H8o1xjjbQ1K3ivIqkTEyEptzEwc?=
 =?us-ascii?Q?QqybibYh+2o8f3SKiDD2c3KmcM8QISVyi2h1z6YnHvKoaYlAa/B3lsKY7AzW?=
 =?us-ascii?Q?prIazVAow8ovvWKTRTsutw1mE0HgO2EdUosseZLXRek/OHL6N8bCCfXUIIq1?=
 =?us-ascii?Q?5JWhooyWVOlUFP52UBpDOTMYhHkjZ6R67Pd25fUgl7k2sxhNfr/85KCRxU3l?=
 =?us-ascii?Q?3RSIrmru2DGeAvNgLGKcZ7u7znG4gDUVktDAaGlf5DXEQjPQHJmY9KOwgc+X?=
 =?us-ascii?Q?DGGWU+UG++nKl42LHusHf3DuJw2oOOgy50Ylc0IUjqzQJrEgM7I77Wkbkvuq?=
 =?us-ascii?Q?2NKaEpsK/YlRAlI8q0NGSd0ezRd52EXoO7Jw/HThp8Sgp0FWxUvXEQN3lwYn?=
 =?us-ascii?Q?MdGxLXmxjnVBEsRapwdY5rC5nWAVOmJ2wseDZDEnvpaC3maS2eXXmvF/5IPw?=
 =?us-ascii?Q?J8tSyaQwYbSot04tuw+6KzYa4002FP31FUvV9sJ9gHwIkd+T14Ei91iHghcX?=
 =?us-ascii?Q?SvaJinGVFhslQQqClQRcfLgaN+8ntkjoNJvoYY5cFN5HK/l21lvUEYK5NotW?=
 =?us-ascii?Q?s1h1Pe/dLkrJ7n4wetWCwE8rEUKsE+TSob7DpW93XlMXoskkKOGfIMKFPkId?=
 =?us-ascii?Q?NL4Rw3/IXloo1cMxVLTyzi2cOR1rai0Myijf5r4zAGmLhxArx3tXi9sK2BaT?=
 =?us-ascii?Q?dl4VPT9HlBKJOyqMg9KEl6kCx9E3qY6hjDl6uDHzKNLWNEPg6smflWABkPM3?=
 =?us-ascii?Q?pCdMbU1k3+YJRU3DS22RMyhGm59gS1XLn4fvN5YujumJKdWYYwB/iab5Ys0A?=
 =?us-ascii?Q?T9aJcT/+hcUdVpjXKqLDi1fSGqAZHONNDvk6S4ale3KbKn5JuTx7dr7rCVvI?=
 =?us-ascii?Q?MIq4fPWOmbVMPbrVZOFlFhIgIDChyUowBqawXjBxifYNjNOZ9C6NUG9FzEIN?=
 =?us-ascii?Q?ol2ONRTk5C5jg98LjIhXhzMr1tTbULebeATblJjK8vYsR/mmPgySxAQRcq2K?=
 =?us-ascii?Q?BMykHrD+vRz/iAg2wvLdRFWvxjdEjBjeMyz56fhXKr/nY8RUBKQm5X1YSb/o?=
 =?us-ascii?Q?h2yKzDpi54B0Xcp1p+jbbypOVEK62iq/ZiWy22bTDy3nkoMWarWz4hIuGEg3?=
 =?us-ascii?Q?SGBZbAw75Nn6Z0e02+484I/sJ8WC5nYj7wcsBNm6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5456.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45549dec-4199-45c8-c8c9-08dc01531601
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 11:59:14.2619 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fVBVqW4crRalUhKcrENpx5a2JfPa72qJZAFZqwygx4rzH2SRQVWvKzum8JUjnVIWkqU6/0ts1fT1oMND96pZ4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5001
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Wednesday, December 20, 2023 1:49 AM
> To: Lin, Shuicheng <shuicheng.lin@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915/guc: Add MCR type check for wa registers
>=20
> On Mon, Dec 18, 2023 at 11:46:44AM +0000, Shuicheng Lin wrote:
> > Some of the wa registers are MCR registers, which have different
> > read/write process with normal MMIO registers.
> > Add function intel_gt_is_mcr_reg to check whether it is mcr register
> > or not.
> >
> > Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_mcr.c     | 27
> ++++++++++++++++++++++
> >  drivers/gpu/drm/i915/gt/intel_gt_mcr.h     |  2 ++
> >  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c |  6 ++++-
> >  3 files changed, 34 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > index e253750a51c5..b3ee9d152dbe 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > @@ -81,6 +81,11 @@ static const struct intel_mmio_range
> dg2_lncf_steering_table[] =3D {
> >  	{},
> >  };
> >
> > +static const struct intel_mmio_range dg2_dss_steering_table[] =3D {
> > +	{ 0x00E400, 0x00E7FF },
> > +	{},
> > +};
>=20
> This is incomplete.  There are a _lot_ more DSS MCR ranges than this.

Yes. I just added the range I need.

>=20
> > +
> >  /*
> >   * We have several types of MCR registers on PVC where steering to (0,=
0)
> >   * will always provide us with a non-terminated value.  We'll stick
> > them @@ -190,6 +195,7 @@ void intel_gt_mcr_init(struct intel_gt *gt)
> >  	} else if (IS_DG2(i915)) {
> >  		gt->steering_table[MSLICE] =3D xehpsdv_mslice_steering_table;
> >  		gt->steering_table[LNCF] =3D dg2_lncf_steering_table;
> > +		gt->steering_table[DSS] =3D dg2_dss_steering_table;
>=20
> Why are you making this change only on DG2?  There are DSS steering range=
s
> that we've been implicitly steering on many platforms.  Switching to expl=
icit
> steering is something that should probably happen on all platforms or no
> platforms.
>=20

Agree.

> >  		/*
> >  		 * No need to hook up the GAM table since it has a dedicated
> >  		 * steering control register on DG2 and can use implicit @@ -
> 715,6
> > +721,27 @@ void intel_gt_mcr_get_nonterminated_steering(struct intel_gt
> *gt,
> >  	*instance =3D gt->default_steering.instanceid;  }
> >
> > +/*
> > + * intel_gt_is_mcr_reg - check whether it is a mcr register or not
> > + * @gt: GT structure
> > + * @reg: the register to check
> > + *
> > + * Returns true if @reg belong to a register range of any steering
> > +type,
> > + * otherwise, return false.
> > + */
> > +bool intel_gt_is_mcr_reg(struct intel_gt *gt, i915_reg_t reg) {
> > +	int type;
> > +	i915_mcr_reg_t mcr_reg =3D {.reg =3D reg.reg};
> > +
> > +	for (type =3D 0; type < NUM_STEERING_TYPES; type++) {
> > +		if (reg_needs_read_steering(gt, mcr_reg, type)) {
> > +			return true;
> > +		}
> > +	}
> > +	return false;
> > +}
>=20
> We don't need this function; see below.
>=20
> > +
> >  /**
> >   * intel_gt_mcr_read_any_fw - reads one instance of an MCR register
> >   * @gt: GT structure
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
> > b/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
> > index 01ac565a56a4..1ac5e6e2814e 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
> > @@ -30,6 +30,8 @@ void intel_gt_mcr_multicast_write_fw(struct intel_gt
> > *gt,
> >  u32 intel_gt_mcr_multicast_rmw(struct intel_gt *gt, i915_mcr_reg_t reg=
,
> >  			       u32 clear, u32 set);
> >
> > +bool intel_gt_is_mcr_reg(struct intel_gt *gt, i915_reg_t reg);
> > +
> >  void intel_gt_mcr_get_nonterminated_steering(struct intel_gt *gt,
> >  					     i915_mcr_reg_t reg,
> >  					     u8 *group, u8 *instance);
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > index 63724e17829a..6c3910c9dce5 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > @@ -377,8 +377,12 @@ static int guc_mmio_regset_init(struct
> temp_regset *regset,
> >  	    CCS_MASK(engine->gt))
> >  		ret |=3D GUC_MMIO_REG_ADD(gt, regset, GEN12_RCU_MODE,
> true);
> >
> > +	/* Check whether there is MCR register or not */
> >  	for (i =3D 0, wa =3D wal->list; i < wal->count; i++, wa++)
> > -		ret |=3D GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa-
> >masked_reg);
> > +		if (intel_gt_is_mcr_reg(gt, wa->reg))
>=20
> The proper condition here would be wa->is_mcr.  Of course that assumes th=
at
> you actually define all of the workarounds appropriately (using the MCR
> variants when appropriate) and also the registers properly (using
> MCR_REG() instead of _MMIO).

Yes. It is better.=20

>=20
> Converting all of the implicit steering over to explicit steering is a lo=
t of invasive
> changes to the code, and I'm not sure it's really worth it at this point.=
  A much
> simpler and equally effective fix for the GuC not steering DSS (and GSLIC=
E)
> ranges properly would be to just add the steering flags inside
> guc_mmio_reg_add() so that it gets added to all registers (both MCR and n=
on-
> MCR).  That's basically what we used to do (and we even still have a comm=
ent
> to that effect inside guc_mcr_reg_add()).  Then guc_mcr_reg_add() can
> become a one-line function to just typecast the register.
>=20
>=20
> Matt

I checked all the registers added by guc_mmio_reg_add(), and confirmed only
some of the WA registers and the EU_PERF_CNTL registers are in the MCR rang=
e.
So I will update patch to change the WA registers and EU_PERF_CNTL register=
s to
MCR type, and keep other registers with MMIO type.
Thanks for your detail explanation.

>=20
> > +			ret |=3D GUC_MCR_REG_ADD(gt, regset, wa->mcr_reg,
> wa->masked_reg);
> > +		else
> > +			ret |=3D GUC_MMIO_REG_ADD(gt, regset, wa->reg, wa-
> >masked_reg);
> >
> >  	/* Be extra paranoid and include all whitelist registers. */
> >  	for (i =3D 0; i < RING_MAX_NONPRIV_SLOTS; i++)
> > --
> > 2.25.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
