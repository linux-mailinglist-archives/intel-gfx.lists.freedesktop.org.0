Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 709D0755B93
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 08:25:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D24B710E1E1;
	Mon, 17 Jul 2023 06:25:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A08B10E1EB
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 06:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689575146; x=1721111146;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WO6lAbm8a+qx5XKLLxoNHZIer8BRLIsXNEmiOJQ41TY=;
 b=YmbMBBQstGER7cOJMHR0+iWLofFwZfg0CKMSfGb63njioPEYYo/FJiTR
 3XXUw9dTYnBq7IVVQz3lARBHKWKZ6hyD9jVFxTZmsDZfuwM3ILL+0o/ed
 zPSVy0mz/Z0pVyrGB/PMob/YOtl2AoX8gjrISQwz9nnw7YMfJAYaXvJEu
 nTS0e39VVEtyJHGE0Lmw0Xy2yepJzC0Yv/P5nW80nSycbmKaITTuwIL6B
 7LRsv+q1aWaPqmmUN+JqBCJepfzW77iwM3egtlouIPS4lblAJItNLR59J
 UatbElfIdzsgqJHASmyqy1/O3xyDKX8j85yphWkMtAquLZsx5TAs9hzOH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="429614630"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="429614630"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2023 23:25:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="723090701"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="723090701"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 16 Jul 2023 23:25:39 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 16 Jul 2023 23:25:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 16 Jul 2023 23:25:39 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 16 Jul 2023 23:25:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F4uMe9aXdxhuYvzEO4ejMXt2CKxo9d0TJ+prDCID0XidKU+f6QQ7snis2PnQyA7jRAlD2yL5K+TbOfY4FF+WVcJloiDXkeZwG2N6ArgMaP72foNLeMXYOlNE6Lxj4abAsaUiLg+ohB35Iec3Iufb7HJLSe0NZdWbCcPqjGdBjR5/0vSJj0qg7xkP8NeT+RZZd8kZQPxEM3N18BHTHRZACHEYaKO+ml5efLbBBZsnmGvPdxHVFjSLNqmEwME4O5M82ZutXUTX73vG+YK2a5PpRwlzMEHiJd9QAul16KKyLhlofxelgdZkC5KdebM5tj0kxkubJPRKanA5zXvKL0CesA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sap/FUqMjj7v4yVE9A+WfoG+g3NkFx/WnIPMV0FK6HI=;
 b=bu1X7JwZ49ElrrOauO+XCIv88UgKejRdTzFdMb4ZRBQ1atES+oeBbkEsFR8utqAw9z5KsKgeV1J7IMsBTFw59l6scs4weoD6+APKk2Vy1UTZNfCB82Ms2c7rlHevtj/nP1W6sCBEuZpvkRI1T5E84JVjFQ5VHEx/8pqmrMLUCqohESNaXwp7Y10qFwFGsTU0o6nJuHX7dOvQeg5XEvQwF/6UkLFJENsLnZBExDF7sHBo16Y9uqj6hS5d1gFbVwne5kaUxwpZA0yv2yS6QWH5atu2/bo5doyUnjoNlmepktb6pnc7ifJo8OmRK5CvsKHnmALpYlJEmNVVoyJcDRgB9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ0PR11MB4912.namprd11.prod.outlook.com (2603:10b6:a03:2ae::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.28; Mon, 17 Jul
 2023 06:25:36 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6%4]) with mapi id 15.20.6544.024; Mon, 17 Jul 2023
 06:25:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to 250us
Thread-Index: AQHZthqWW40xYqIPukijkzRffbcArK+9gmGAgAAAN0A=
Date: Mon, 17 Jul 2023 06:25:36 +0000
Message-ID: <SN7PR11MB67500BAC15AEC92162F1D66FE33BA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230714061339.2897609-1-suraj.kandpal@intel.com>
 <DM4PR11MB6360E5965E2A1D0A671BF90FF43BA@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360E5965E2A1D0A671BF90FF43BA@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ0PR11MB4912:EE_
x-ms-office365-filtering-correlation-id: b3924fb9-bbb6-4eea-829e-08db868ea228
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dDwkvc1MA6V97j+9pNsnqWSK2B0PpXHAZckCqXuuVC8dEwCQ/Kqcml4oTJl+qEXNSE66ajELKQgLK+Hb+qMpcnyF8qBrZB7RR6tEeTSF8KL9SQwY7WtPGXShNlLMt46IVDqBFyajkT5byF+jnjtUvxsshMWLYPc9p/h+1bqvAmFSxa3RHk+mXEjl4U3FSnROzALVRpuLaIMPKzHXBMEirhTMdhCMaMCGs6OatMmMFa5+RZN0QMPhOjaPxJ5AMONCdRUU4FNUr/TXbSIQqQrCDB9ESXdZS8VPtJgDaDPWirYTeDk5SU2y/mGFB2IQ67WB8lnyjribraAyPBJSS4c/L3X6+yO+bx+Z/xsYzg31IjCsZKKL8ED2/RxJti+iSXAL/oGBerqRTggNaB79xs51YYdD1STVueY2YyeFekoGnxf3gihH1e2vj+6GyDjqxghZceVn+blxgOxdFMSn/+IyX7i2lIdXzt/PwT87TmsjG2xw0ej51WHcXhj3tfWllu6sVxuTchXRt6zvqmFRlOoRXZcMZv5CxazqaqBqIBwWuQHmyZNEcNENGgghCVnmEAAKcSZMQRU45vQqQW7QXdyQlI6XAU+m6CAvepR1aa/vvzA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(376002)(366004)(39860400002)(346002)(451199021)(55016003)(122000001)(110136005)(82960400001)(7696005)(478600001)(41300700001)(5660300002)(71200400001)(52536014)(8676002)(316002)(66946007)(8936002)(64756008)(66476007)(4326008)(76116006)(66446008)(66556008)(38100700002)(186003)(83380400001)(9686003)(26005)(6506007)(53546011)(86362001)(33656002)(38070700005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JPHgR7CHaqocGpmmrBCpkFj17rp9PxSokngvNrByLN0v/LJ/imwtWSWGenXT?=
 =?us-ascii?Q?1MCefGfknKZlaheK7NtmL6SSKmAwminfUam0oDLBmK9tEnVrHV5ctDSTswCy?=
 =?us-ascii?Q?5wbRPmm9kE6tUCJv6h0DVp9GK10HJcdpS8MKJ0Z6wiLhzJubt5DWEbclNU/A?=
 =?us-ascii?Q?ELwv60DMpEQTz602tlUvt1yC4t3mIPTgP/pMtuS2VPGYea6WYyz8pGbg+h2R?=
 =?us-ascii?Q?LF2MFKajjdmp0K2lD0rQF/8Lg+VQlW/kLdbxFjD3Ix4Zpuo5MGyA9g47vuDP?=
 =?us-ascii?Q?Og+fjd4IQgmOegg6Iv4ikaPDQQSSy/U5HM6Bg5kTAP8EZ2IQsgu3OH7GdMRT?=
 =?us-ascii?Q?/497hpVFlPolPfprk+xKLgPfwnor2VFP8jUwWdR+lBJ72AY010tm4PnjuD8R?=
 =?us-ascii?Q?/M4j8eqxHnFCLwkxhRQjAvWKHNfgN2jgst5Njmgt4caVVg4wxFtZ5f4FvaBt?=
 =?us-ascii?Q?INNj+TZwbilI/+D4wKqGzBghfkWhmhHluvB3LEDzdtbotSs4eoF6RiLmpAys?=
 =?us-ascii?Q?Mp8UHLI3xl5hPfVX8vPPVCUaXuivmC7D8wSInKPskM/J2tfHKCId5PgoyhBA?=
 =?us-ascii?Q?rt5WDtRlFqdbLAJsTCwr5b/S1ur2dmYDm/NqaX380r9dLIBm2VtyiJ32DeWr?=
 =?us-ascii?Q?kxxr0uj3zibrcSngFlehgpdVTVWWnSH9F+8SJhQp3MGnCtRQhtrLdBfP1Z94?=
 =?us-ascii?Q?iq+VXXL2+3Y96AEugQScEEy3uwhhMWmdu3PZLfA/phFtJJFj5yPreFvtV7Uk?=
 =?us-ascii?Q?g+l6jG/c7rEy6SpvDVOXyx1VqTOCdxLdvIY2p5g7gHqhbJtCp0RzdUlqAUYN?=
 =?us-ascii?Q?kD5Itp+WrrIqlQYbE8Vb81ERFkZ8m/DQjszj3lsxm29971B6OyNyjR0ZNtOV?=
 =?us-ascii?Q?VpKNNocxc3yJCUaoHKjzC8LihzHhDSovFSDRfpcila2N0DGNEuhP+6ZNT03U?=
 =?us-ascii?Q?fGHVFdTsDhSuaSh2IRnBaKVBWds19GIsp0ExfihwU0JUuBmAzs6Avk2N+Zrn?=
 =?us-ascii?Q?wdzRR9beX8U/FA06lY20SfKYTEUu2h/UJMZU1ftdtfccfDrfo60yyJnovkAh?=
 =?us-ascii?Q?FPR70VYVioe/OURF/r/55fRHS/c5WC9KuvX2yQ6AVf77DEx+fo5jNtmYo1AI?=
 =?us-ascii?Q?BxXJa9MpDhbL8/HDICsKQtWMNY5CSwah0rIkGEUDcdU0hdm1DlLrfo1Lz7bU?=
 =?us-ascii?Q?SoEUQ7oOeS1NVQUb7obHsCJIRSbZvLculAG9Jxkf7jNEJ30lwWCy2l+fPTz3?=
 =?us-ascii?Q?H6jeQjTSZsNHhu6qEvJeyAMYzLCPqSBELwVEQyZKT4TCHu+oUCVIwo0H87ed?=
 =?us-ascii?Q?7XX9nxFJrX9a48VEabiPj9fiyVfgcN5BulCs7ihld+Dzkg7o2A+bsZ/7rXh6?=
 =?us-ascii?Q?Ds3FsoAwBtb+RJDZr75yu9YDMRyT1WLX+sIB6cjLpP8IPwtQVHukbh5hcJjm?=
 =?us-ascii?Q?LJt92tgN1pM7u/V3eql9HP5SbQn4GNmXNDCkLs+FAJRcMGY8RBhe/wMR2jA6?=
 =?us-ascii?Q?fe25o1m0UmCxh41aHvJTf0m4yxqvStZy/gWjBQ8wdVf8zbXh2BIctHQNkua1?=
 =?us-ascii?Q?4sIRLpAVwJya4W+wgLwS4IsC6SjG5SY4y2WXtjQq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3924fb9-bbb6-4eea-829e-08db868ea228
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2023 06:25:36.6749 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qi+urQ6dI9MM9T+IQyRg8aIBW0G92NxEx69TXJ9H84pc4xAogGOYRwdx/p6ZOkrGR8xk2/zx0TijJTghBNLVKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4912
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to
 250us
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
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: Monday, July 17, 2023 11:54 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Subject: RE: [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to 250us
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Friday, July 14, 2023 11:44 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>; Ville Syrjala <ville.syrjala@linux.intel.com>
> > Subject: [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to 250us
> >
> > Reduce SHPD_FILTER to 250us for ADL and above. This solution was
> > derived when the below patch was floated.
> > [1]https://patchwork.freedesktop.org/patch/532187
> > and after some internal discussion Ville's suggestion made sense.
>=20
> You can give the exact reasoning why this change is required.
> Be specific on the issue and the fix.

Sure will update the commit message

Regards,
Suraj Kandpal
>=20
> Regards,
> Uma Shankar
>=20
> > Bspec: 68970
> >
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 4 +++-
> >  drivers/gpu/drm/i915/i915_reg.h                  | 1 +
> >  2 files changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > index f95fa793fabb..95a7ea94f417 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > @@ -842,6 +842,8 @@ static void icp_hpd_irq_setup(struct
> > drm_i915_private
> > *dev_priv)
> >
> >  	if (INTEL_PCH_TYPE(dev_priv) <=3D PCH_TGP)
> >  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT,
> > SHPD_FILTER_CNT_500_ADJ);
> > +	else
> > +		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT,
> > +SHPD_FILTER_CNT_250);
> >
> >  	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
> >
> > @@ -1049,7 +1051,7 @@ static void mtp_hpd_irq_setup(struct
> > drm_i915_private
> > *i915)
> >  	enabled_irqs =3D intel_hpd_enabled_irqs(i915, i915-
> >display.hotplug.pch_hpd);
> >  	hotplug_irqs =3D intel_hpd_hotplug_irqs(i915,
> > i915->display.hotplug.pch_hpd);
> >
> > -	intel_de_write(i915, SHPD_FILTER_CNT,
> SHPD_FILTER_CNT_500_ADJ);
> > +	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
> >
> >  	mtp_hpd_invert(i915);
> >  	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs); diff
> > --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index dcf64e32cd54..aefad14ab27a
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4939,6 +4939,7 @@
> >
> >  #define SHPD_FILTER_CNT				_MMIO(0xc4038)
> >  #define   SHPD_FILTER_CNT_500_ADJ		0x001D9
> > +#define   SHPD_FILTER_CNT_250			0x000F8
> >
> >  #define _PCH_DPLL_A              0xc6014
> >  #define _PCH_DPLL_B              0xc6018
> > --
> > 2.25.1

