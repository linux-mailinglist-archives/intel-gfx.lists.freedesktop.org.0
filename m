Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 322CE762B5F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 08:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1398F10E418;
	Wed, 26 Jul 2023 06:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E2EC10E418
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 06:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690352778; x=1721888778;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5i4vVmVzpXjIFgwm7/aR4CcepdLIvr2+1800Fg5f3I4=;
 b=aLR4BXrjI6CzgjPqVuRyn+dZxOM02f7VSzQ14TORLiXpVm40cT4a3+er
 Mrl3JKxN9Qyz7snkqWM91KISDguF5JSVoG30czuOahyiUKnyGMOfYdxup
 mJ/4Cb9ZDIYvMS8IsKIUp9Rbc85O/OBaPNpdPf5O7548qiTqzc/2YdgFC
 4N0ZaT9w33l8JeqVAZV8xXdFzP2j6VIjj94gp3SbNRl1ngjleCThuV+CC
 z79zZL9ATqjkuSG+t5cnKLr/2BXgxTBoBrpTKPa3bmqI/PzWrwvM1A7AO
 BMySYME61WTqut8e1DM4/UFFsn/BM5FDjyqi2rgnkJREnrf5CeiLLqgZR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="434189007"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="434189007"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 23:26:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="816541391"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="816541391"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jul 2023 23:26:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 23:26:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 23:26:08 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 23:26:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=COlqbPfpMR/5m2kizxRZ9cBaDja+ztlVyjuWmaCged2rA76rliDy7C/zKMT9UzVh1DX3jp1ENYQNQLqJbNJXDPQy5HBpAJvDxusRc1/MW7F+Tgc46NxLSF/aFTWzeqXsO9KbnIFmhnl92yN6XVTXwi02v7h7Ooy7WxSuVFI2MTeDd6LJimQU9n5Vnhiq3piYsd7u85XExRpWih8DMFn/XhpNhsoOGFgYE3NyQHGLTX8I4RZBwV58oGfhlGInSiR+aCJ0Wd19GpYr0IuWekkAXP5wKcD9R9AlIm7v1eVk5ebtqg3swN6T0VhQf1vQfAP+cSPUUIboW0J7anJg68JTrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8gyZjGrGKW2PbotTCiCJQABoWV8eDMPzk7EbO2ubd70=;
 b=I+lqo4S/cmOrzjMhJnGy6o3c1Z+ZbJMT5owjl2Zjfw35T5kyNd2672B5wfR01JpaeB8l6XZ91HG+Gs+ms32LjWa3n6JvTTEa3blJ146pB2toq1/6Hwdn+nfRwhuzPFImKyn7QZ/BxA+YICSjjsn1VYkbIgMu/clQYMqzvz4AHTmBQoxIhvn4icA1bEh3cZfPqVJ8RkgQhHz02hZl3+xT2KVNti/VB5/8+MhhZHJ+J7jfRFJHylqwvi4p2s6Fqin3FiNcaWgPhs00UZuKk0rh3MY9Npab+Qf526kergJ3JAuar1aqpihtyA17ETBNudxSIjZs3Jpy4vPlgk2phIbKsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH0PR11MB5473.namprd11.prod.outlook.com (2603:10b6:610:d4::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6609.33; Wed, 26 Jul 2023 06:26:06 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::306f:ccd1:2620:a9d7]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::306f:ccd1:2620:a9d7%7]) with mapi id 15.20.6609.032; Wed, 26 Jul 2023
 06:26:06 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to 250us
Thread-Index: AQHZthqWtp8s7mUqE06m+OTqfa839K+9tL+AgATDJ2CACS/XwA==
Date: Wed, 26 Jul 2023 06:26:06 +0000
Message-ID: <DM4PR11MB636085F393E29ADA61DD3FE4F400A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230714061339.2897609-1-suraj.kandpal@intel.com>
 <20230717092425.2971227-1-suraj.kandpal@intel.com>
 <DM4PR11MB6360E332807BD0121B4A4777F43EA@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360E332807BD0121B4A4777F43EA@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH0PR11MB5473:EE_
x-ms-office365-filtering-correlation-id: ed17d359-a740-4958-8990-08db8da13190
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HkNJeWLlQgNzDZ/pY3+SQeDLJQLurenAnlOmCx2Qg+/sMZYxG4Q4oq+J4TeLsuE+NwwlCIciER0LjmrTdeJxyeA0b7QvFgvn6IOW5SSWhvwl4IFwogjGC14ycOdm0Y0HMeQvUSVWUYru9OY+RKzHXp8+zRqjMk3HKQF0oFToWeMUmq71N1eToanEHRYLnf7NmDD5M6k6VcnhjEwXmZ0P/uv7XFOIoZmWXIHyrnuGv1pLJROv/2mX9NXLLTAS+TVTKtUyDPC0lY8/9MN6mPRtK7l5tVMO6NeOHxtUfwpQ96LfuptAU1YKa+brjRD9QXjToy2T9pEac79nsDhn1LJcwxe0H8CEhY/rmk+iCWHKmUJg98v7E3n+3lblrAVuyqdxVme5tVurvdgZpfwF/1svexOUNTdITkqGm7ioUiXpu03hdeCouFeTixDI0yOahVyr5z7aEdo5aV6LKl4d1OawoA9Aun6nMfk66D+f3z1gDadI4dnVa3bzT6l0yOgE004kfIVhSL80r2xYo3YEQ36qKBXPGVz8R1mmXDRkOSqC1vlVMu+SVuRv2tLNW5Fh6KukApGc/YYgC4ubcuzGVeDSgRidKrs4bfpC+VzTB7Axh0M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(136003)(366004)(396003)(376002)(451199021)(8676002)(8936002)(52536014)(5660300002)(41300700001)(316002)(2906002)(66946007)(66446008)(64756008)(76116006)(66476007)(66556008)(7696005)(9686003)(26005)(71200400001)(53546011)(478600001)(110136005)(186003)(6506007)(82960400001)(86362001)(55016003)(83380400001)(38100700002)(38070700005)(33656002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hu1NttdBm4KUbVwi+gZ3rw32VJtEIZ4038eAMUfS28bKM2vtAAwTnqClbQYn?=
 =?us-ascii?Q?LiopgmNlUA9F1I8dsMM+xjZGBBoqjsCBZ0ZDnx3DwedZyK6bebIllhSXctOm?=
 =?us-ascii?Q?WPHxM2U0glEb2qXXIfHUX9VZcsF7vp7OxzUYKvffj2xrgQIA2yaiVJmWC6zB?=
 =?us-ascii?Q?g5TWBAs+O+HxAZWp1/8RqaL+WYSYd4L5yqLEBaUl9phJazl4v3lIMzl8yTwm?=
 =?us-ascii?Q?hNjkOOWVPregyAONBzGNlK0UXknyMjBHVXRFazhbwddFGapmJHwWsLSpe9UE?=
 =?us-ascii?Q?Hp/s6a8Y0tUwWJMzQfYs0mAPyJL+qMlyU7gX0B8LPdoYYk+LZ9CbLAHgCOOZ?=
 =?us-ascii?Q?/rUc5Vp2E+FwZ3Y/oBXyAranV0hC+HhdHqF82bK92ULW9dYM1OrRNVkPXhi/?=
 =?us-ascii?Q?SuTjyEwX/3zb4/aK/5seTGUf4W81+2zhWi8Qoz240nfRLviZeH6MlJLS79fj?=
 =?us-ascii?Q?eg0XlyBYJALYoV8a0kOOMxTb4cY5OkdOFyvwHSd9dYQWbybBpJ8nsRwO2rF7?=
 =?us-ascii?Q?ymMBOJoE8Vk+8yjjeFUkzBDrvOeYJyQjoxnG4ZYsIk8q5/aNKPmmcc7+jux6?=
 =?us-ascii?Q?iKv5GYwvQEEccMizZ7y6fQZqterZ6zPys/IsMirHnGsZLjRn6KFQpWuvsZfm?=
 =?us-ascii?Q?2BjY/wdmYNfCG7fH4vCCx4S2KLgmXIOsidKWPS7bSQ6T26RHMOsphvLQgXAt?=
 =?us-ascii?Q?PyJBuyTa9vRgAVAR3EbYyMK3al2zYTsCm7ZV5AwzqQCsjR5giIZFiOWjWg7+?=
 =?us-ascii?Q?SM/kO3VCALkgzW7apjkatYe1XlYmGf7AEwnxXTmptCCy2KLivrz5SgDetlHc?=
 =?us-ascii?Q?mcU2Gn0AChW8KqTUSM/Rg1X74/dBT0p6xycpFQdI6RxS0PWMHCzWZ1oNbv9o?=
 =?us-ascii?Q?ZTt3pGktY4m1t3xmu5gzoIGG3tsKydVhooRGfTSCAxZGwN0dHHRGzgbJ+xAN?=
 =?us-ascii?Q?ZQ+Fv0oiVzEHU1VjBYk9FnZd5pTzRd8H8zMJaVSlRoAeNcuPGZVh7beNu2gf?=
 =?us-ascii?Q?De73GbzTdYa4F+C2e++gHmhQPBGKwmomk0Msx+wUblPyn4slPNNUfTwqtjSx?=
 =?us-ascii?Q?rZvHpGO+C33FMCdCPi4+9BoZ+A9fzw216xA8R0hkPCcs4buMx8KxPwdhk4zm?=
 =?us-ascii?Q?QVQm7Xkavs3BRuaSHITuB64aXKgperO7MN3pE5tOYULcPPnHAjsqxLdJyCBr?=
 =?us-ascii?Q?t/kwOAALlhClp0Ib2pV1EKFKoz9iEAR1sVKVSCVllEvti2kWgWOBbIPIh6Tg?=
 =?us-ascii?Q?/35OLpRV0P4BBjOcCA4GycEIoscnxljeKIgoMuokT8yxRB88GUF6NrwXsh1B?=
 =?us-ascii?Q?Jmv3pfU03g+5XseqFdEkLs1caFUc2HIpROP5bwp0pno5ZJ4uUztm97ZWd/Ma?=
 =?us-ascii?Q?VOF+1ISP8LYnf/mTdzcAROHIz3dFf8Xi12l4JkLWAttmFtR+jMhqIH8/tNYq?=
 =?us-ascii?Q?LLaXH4B/Tw6iZlrTNIWVrNas3kCzuqBz17SuZFfmEcfNCC5CMXqJNEsdXSGS?=
 =?us-ascii?Q?/AMOPi7Y5OQp7ectlTKMXTLZsvychCN3+hqJ6oAmb7ZkEeRgaDUwmnHL0AQS?=
 =?us-ascii?Q?f/xOiP9AVRz6CeJeVm5Ya0kDPUsGH4x2dstSDULG?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed17d359-a740-4958-8990-08db8da13190
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2023 06:26:06.3812 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9g39s/DCR8ummaEopLBhHbDA1+o8MWR7ALMcurbLI+1TzDNZcGOaNT/0nMlA1BZrGH3etmsaMGuTh+Puk6sJrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5473
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Sh=
ankar,
> Uma
> Sent: Thursday, July 20, 2023 3:41 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to =
250us
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Monday, July 17, 2023 2:54 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>; Ville Syrjala <ville.syrjala@linux.intel.com>
> > Subject: [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to 250us
> >
> > On TGP, the RTC (always running) was reduced from 3MHz to 32KHz.
> > As a result of this change, when HPD active going low pulse or HPD IRQ
> > is presented and the refclk (19.2MHz) is not toggling already
> > toggling, there is a 60 to 90us synchronization delay which
> > effectively reduces the duration of the IRQ pulse to less than the prog=
rammed
> 500us filter value and the hot plug interrupt is NOT registered.
> > Solution was to Reduce SHPD_FILTER to 250us for ADL and above.
> > This solution was derived when the below patch was floated.
> > [1]https://patchwork.freedesktop.org/patch/532187
> > and after some internal discussion Ville's suggestion made sense.
>=20
> Looks Good to me. Just add also a Suggested-By tag mentioning Ville.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Pushed to drm-intel-next. Thanks for the change.

Regards,
Uma Shankar

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
> >  	enabled_irqs =3D intel_hpd_enabled_irqs(i915, i915->display.hotplug.p=
ch_hpd);
> >  	hotplug_irqs =3D intel_hpd_hotplug_irqs(i915,
> > i915->display.hotplug.pch_hpd);
> >
> > -	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
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

