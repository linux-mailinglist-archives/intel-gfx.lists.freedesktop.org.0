Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6861D30B765
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 06:52:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE6C06E8BE;
	Tue,  2 Feb 2021 05:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02E7E6E8BE
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 05:52:31 +0000 (UTC)
IronPort-SDR: lXZsnAHeXno+MoGTL3lkRafIO7h3N/txknklzLTSYr4uuJ8/TvBPh0Cng3l+WRdX+3+Ta73+fX
 gYNq+67EJQfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="180026080"
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="180026080"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 21:52:31 -0800
IronPort-SDR: eT0YvUWkZbYCWBDGaiUSCbOxZ9TR83gwlVLK/YY7mfwMKxq0FE7EsEggT5mTbdN9Xj1AswfNCq
 tD0037lusn2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="370369050"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 01 Feb 2021 21:52:31 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 1 Feb 2021 21:52:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 1 Feb 2021 21:52:30 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 1 Feb 2021 21:52:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S0TuafAkcNtj+mz+Hp/Nh394X1D4usOuSmqeUaQ3yI/l5tHIlcfcJZyILA1BMvwx5gD8d5t3tI7mdgXCNOt1t8k27vV07k/c8zqZQyoFetZnyzbiikG/pGb0fcd1HtzptUpzRuYS4tWDMg1hKywfaeE7asFozvls8uthXXxW8mReRCCAzbIOaTKaxbrqnVOob4WaQdEltLznEOOlvnBBRLqbDxI7RuMem5rVukfKurPG3si7lXLQtW5Vrj5KLyBnni1vYbugj3m01sLoQi1VWc84wk7pWFvmSk0o4vbhN0q4xqry+ZJJqSqMgPHkQ6KCYuGM/Ejz/IaG4Alhu/B6vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xfT1Wa/U/aDXac/f0yScMNlRRU0niBKLWXIoujpoEE8=;
 b=RqDwtvRQvfhJOyAprZ5FG8G7Jq6dMMcCq/hDE0BjmTq+fG5BVhp1DDEeKwVxoyxxV2Z4TR4NrjB27E4jlMJ9EfL5EmHJk1u5QxkuQxiDOUPhBeEo5HJ8a5GNamKWsWF0rqJg4dV46cVvPKq12sRq0bsOmlTM+7hLUflDmW5SJt1CTfWg2nrvvxT3n4TQqzwrn4M4y910bgwZMJEvfCE8I1PH9dk3ipBhhDUyFKWBmEkwvr/7iJc9w4fOShx2PN/ingwRrt1Bobw9h5WtJd9ex7LqsaT65Own0r+AmO9X07ZtVJJSAJB96bugdRfMLuOnoWJ97nvgAs7luCrA0p2q9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xfT1Wa/U/aDXac/f0yScMNlRRU0niBKLWXIoujpoEE8=;
 b=eqOnmh5xRDgKq4OWOmsUal++gRfVUSnkBoEZ4UeC9TkhEHC7C4D2nXNuidEd1wJjTBGOdIL/s+x7ZHgOAIoInX2v5XNlBKNxKCDoqgYkR8bAC1gv5WQ8pZ4/6VjznTHwWQxYIvRjVHOQy7ZICtjpwI0d0ZBSidrni/2x1jqfeQM=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB5211.namprd11.prod.outlook.com (2603:10b6:806:fb::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.19; Tue, 2 Feb
 2021 05:52:28 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::858b:c175:afcf:1672]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::858b:c175:afcf:1672%6]) with mapi id 15.20.3805.028; Tue, 2 Feb 2021
 05:52:28 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
 suspend/resume
Thread-Index: AQHW9JWuFxjFhGQU6EiSmsLbqEBQmqo8G3IAgAhKAjA=
Date: Tue, 2 Feb 2021 05:52:28 +0000
Message-ID: <SN6PR11MB3421882AC3045B652D2CBDC4DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210127100830.162292-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YBH0FJolpTwO+BJG@intel.com>
In-Reply-To: <YBH0FJolpTwO+BJG@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.250.137.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 02612f0d-2800-4ce7-b4b7-08d8c73eb946
x-ms-traffictypediagnostic: SA2PR11MB5211:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB5211C1E1F29DA1F77E70C7B2DFB59@SA2PR11MB5211.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:16;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QTxDi3bL6Dx//ko1eNiEu1fRHiIrqqdjgWmmDoZL/CtcMSakcrpIAtg11JYgs3GaYgLm7BfJSpSvk/l0N2Or6Oz/3niBXJCJPwsjlxPhq+nHppzRSRsOyuZnVopn5QQVcDMJe/fEdR41+kTYKJymghBoNb907ZJkdotbn5DxTfh5+qdSXlBPfT+UvG3r2Y3aYu2y2LHGiTYrrNetF2O4cZpx+x7iwrKEbmr21jbXm823Rhd/ghLfstdY0C2twExIbPwkstKjyKqC1tR9pf1O+cB+gbbwoPmwWJnkf01wSJZ0vssfAox5BCKpH5dBmulevk8t0u7oEH7D7J4Eph9vuL1cKYb/8K4fTZ0lCphhLUdtPLeqDy9j49V8gvApFqM1aZCr7s2A/6twslPWoW5SDr336yMCWo+FHOoZCOd/X/1zXdBIDF0VyhDqGu/65EFoZI8q1PiIY69DT7qpJUt6XNOFvmibTuugjs9104pQhI26U76TJEwg55aj7PD5CAcOTFtT9u9ZM8Y+FBbD4Ze0xG+txQkfZQ8kdqfceasm8Ye7U7iWVKpA/qF7An+u06VJ/+5AXlliZRUMmU7fUQGSo4uRUP8C75Jo15i/7zKm69Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(396003)(346002)(376002)(39860400002)(53546011)(316002)(66476007)(2906002)(66446008)(9686003)(83380400001)(6506007)(52536014)(64756008)(5660300002)(66556008)(66946007)(186003)(86362001)(4326008)(966005)(71200400001)(54906003)(7696005)(8936002)(478600001)(55016002)(76116006)(15650500001)(6916009)(26005)(33656002)(66574015)(8676002)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?UlXX/XnEx7m4Bjb/LOtbPmlVi210mJgjGFoCg78G5SRpLAz4WyXFPUdBYy?=
 =?iso-8859-1?Q?XhFm3x2UXLOAjiSEPZG8y42TdTWGbeqQ13+dGC9y3IG8r2cV3f8qP/TYXQ?=
 =?iso-8859-1?Q?6EWdc2jUFu+qvPlj1kjbLalqevJJt5biny14KY72tItMLi7+Th/h5wTIZ6?=
 =?iso-8859-1?Q?J4rp2a0g7uowPbw++V7vVhhj5AHv5Akt4ffZSaVHUgZ1eW9EgCl+5pZZZW?=
 =?iso-8859-1?Q?bAWrsXEBdDIACxqmRkMorOxgGck6fksGL3umo8+9E7KoJexjKgEcTfcTYY?=
 =?iso-8859-1?Q?AL8pvUc4eVaUgQLDN7igEzgyvd2e9lERSMwoA7xdHAsezRG3pLZ5byCgJq?=
 =?iso-8859-1?Q?N73AJ/MffeWbYaPjVWz3y4t2Ah6VuwCobatklDVwY30EcEuoY0Zf5QQUNP?=
 =?iso-8859-1?Q?UKredoLPctl6AxdP1/YDgAzciDREKr72vsua68fWovR4ihAMA3M13rsaAs?=
 =?iso-8859-1?Q?J9HCi4hT+DD8PgE4zydrzrwEjdysRg7hlJI391uHHx0fPa3pbF+8WRpwnx?=
 =?iso-8859-1?Q?/+bZCk0A1CzaCaQI/fbEtooAm2CRvqlA/X8ZiMU9RS0Ba3tiebLmx5N5sL?=
 =?iso-8859-1?Q?CH3mXHvSd6cuxPz5aLbCDCsOyVGX+fxlO3lyqbebgiF/YGFZQP6nJYf4MV?=
 =?iso-8859-1?Q?2PdlOKw94+tR00hgswJlY3FLwLhvoU85PL16RMAFW2ZpQI+YRHUgOywR1M?=
 =?iso-8859-1?Q?mp6Tih3bAj0Dj3PvvLlpIzOHCWFAqkSEJNM839nG/2w0jnjrWyReRjYjBf?=
 =?iso-8859-1?Q?yop8zc3e7FV7hgZaTmiXTsp7KqSjJ2a25fycftSmZ36TSmzXDavPYA6dqZ?=
 =?iso-8859-1?Q?nxA1oKIGgxQ7+vKA4lN/bxrxRltNgSpQDOmDyI4MmSnmLWFtTPMQN6iL4I?=
 =?iso-8859-1?Q?7DvUeOcFiNbqtMYn+sJXALvWo9i+mL5ntvAK/sIGiTc1W+BT3mGPIWZfIx?=
 =?iso-8859-1?Q?wx0GoTCbuR9bAjxlYZPIMkOkquBy4YKDAhIqu882jqMscDQVR+glmDoyo0?=
 =?iso-8859-1?Q?Wlsy5S0jcFJD9AlIf+EQuP0pNDJqETvNNdm7l03uzmyO67Y1qcpTBzMlSu?=
 =?iso-8859-1?Q?VRxLqDqGvU9VrAnXSDJLD/iZtqv8A7c/Bm/Ri8KvUEuS?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02612f0d-2800-4ce7-b4b7-08d8c73eb946
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2021 05:52:28.2424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CHOCMt466LZ/caC64Zl4JaIWJpQbdSC5eh3anwEl3M9gv8FtoOP2EySAM2VvMJi4dCHfOHlMZarNNCc3UDEhWB7lAWQ1UIiqnqmxPz+yNwkUu1cKQzhH9v+ERlFb2A4KI/kwHPQ6mSprNCGyfmrTcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5211
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
 suspend/resume
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandey, Hariom" <hariom.pandey@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: 28 January 2021 04:46
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Pandey, Hariom
> <hariom.pandey@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
> suspend/resume
> =

> On Wed, Jan 27, 2021 at 03:38:30PM +0530, Tejas Upadhyay wrote:
> > For Legacy S3 suspend/resume GEN9 BC needs to enable and setup TGP
> > PCH.
> >
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_irq.c | 36
> > ++++++++++++++++++++++++---------
> >  1 file changed, 27 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c
> > b/drivers/gpu/drm/i915/i915_irq.c index a31980f69120..6dcefc3e24ac
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -3026,8 +3026,20 @@ static void gen8_irq_reset(struct
> drm_i915_private *dev_priv)
> >  	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
> >  	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> >
> > -	if (HAS_PCH_SPLIT(dev_priv))
> > +	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> > +		GEN3_IRQ_RESET(uncore, SDE);
> > +	else if (HAS_PCH_SPLIT(dev_priv))
> >  		ibx_irq_reset(dev_priv);
> > +
> > +	/* Wa_14010685332:cnp/cmp,tgp,adp */
> > +	if (INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_CNP ||
> > +	    (INTEL_PCH_TYPE(dev_priv) >=3D PCH_TGP &&
> > +	    INTEL_PCH_TYPE(dev_priv) < PCH_DG1)) {
> > +		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> > +				 SBCLK_RUN_REFCLK_DIS,
> SBCLK_RUN_REFCLK_DIS);
> > +		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> > +				 SBCLK_RUN_REFCLK_DIS, 0);
> > +	}
> =

> Time to refactor instead of copypasta.
Do you expect below? :

If ((INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_TGP) {
	intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
				 SBCLK_RUN_REFCLK_DIS,
SBCLK_RUN_REFCLK_DIS);
		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
				 SBCLK_RUN_REFCLK_DIS, 0);
}
> =

> >  }
> >
> >  static void gen11_display_irq_reset(struct drm_i915_private
> > *dev_priv) @@ -3442,6 +3454,9 @@ static void spt_hpd_irq_setup(struct
> drm_i915_private *dev_priv)
> >  	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
> >
> >  	spt_hpd_detection_setup(dev_priv);
> > +
> > +	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> > +		icp_hpd_irq_setup(dev_priv);
> >  }
> >
> >  static u32 ilk_hotplug_enables(struct drm_i915_private *i915, @@
> > -3729,9 +3744,19 @@ static void gen8_de_irq_postinstall(struct
> drm_i915_private *dev_priv)
> >  	}
> >  }
> >
> > +static void icp_irq_postinstall(struct drm_i915_private *dev_priv) {
> > +	struct intel_uncore *uncore =3D &dev_priv->uncore;
> > +	u32 mask =3D SDE_GMBUS_ICP;
> > +
> > +	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff); }
> > +
> >  static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
> > {
> > -	if (HAS_PCH_SPLIT(dev_priv))
> > +	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> > +		icp_irq_postinstall(dev_priv);
> > +	else if (HAS_PCH_SPLIT(dev_priv))
> >  		ibx_irq_postinstall(dev_priv);
> >
> >  	gen8_gt_irq_postinstall(&dev_priv->gt);
> > @@ -3740,13 +3765,6 @@ static void gen8_irq_postinstall(struct
> drm_i915_private *dev_priv)
> >  	gen8_master_intr_enable(dev_priv->uncore.regs);
> >  }
> >
> > -static void icp_irq_postinstall(struct drm_i915_private *dev_priv) -{
> > -	struct intel_uncore *uncore =3D &dev_priv->uncore;
> > -	u32 mask =3D SDE_GMBUS_ICP;
> > -
> > -	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
> > -}
> >
> >  static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
> > {
> > --
> > 2.30.0
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
