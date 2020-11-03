Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AE02A4B93
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 17:32:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53F876ECD8;
	Tue,  3 Nov 2020 16:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C76096ECD8
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 16:32:07 +0000 (UTC)
IronPort-SDR: UKlLggFtFa1NAh1kiUcgaV2k+ROhT/2qOhdCfpSxpvxk8Pm2Dte0gZHC1ceGc3TN223GNZH/5U
 3eA5piUX63MA==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="233250744"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="233250744"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 08:32:07 -0800
IronPort-SDR: bUOhLW1oo+OHpxjdxaXPSe3qeQX4fEDjbvpNS+9sQ3i2VvOAzNkzAOzPw/+F6hnSNmI6GDQgvc
 +KTahI383bvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="353389718"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 03 Nov 2020 08:32:06 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Nov 2020 08:32:06 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Nov 2020 08:32:06 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 3 Nov 2020 08:32:06 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 3 Nov 2020 08:32:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IKCoWYXh2GS1walBfm+YRvW/invIp93pWQVVAbkxFoD+913lxDjlZQQx+Ye1Ev8oUqYSkWkiS2xRPBDf+hNig8kSSHUg7w+d7iX0pDofRw8gM2+yGQpSXGHQ1lTRAJz/vJCxBWZBKG/0waOFDXns1XwzwbUiRV0AytaGrH2KYC0uMFSZ22SNU544xmlxisC389XRCJnefoOZPrnBtEN18ckqyUY57kTI+BkpIqKycMauv56taNFHMwiGS3aUAItHN1kMwjYpF50beNZj1oEwoqsY368syqWuCvPH4Trbo+/5i0O++CcmzYTXz4S8rDXfGu8LqbQXO3kwirPjgxD5Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0HiG2+ABupYOz1QZX5R/9DumY6+e0NaRmwKaqevgiEY=;
 b=U0xY5MT0vzv5IjfN8br8PEGhvoRAHTK+z56CIiuoAWYE0PSDSfi4QsdjFEOZoCtkFkkfz+TYsL3UrDS47zwk+g8jgYeAhoymzKS/LhgWSJDqNUtWXtfxavy2mbWOiiuOB8jb62HffOEy0w2nlJYXYKjoJxG2mgbOcLG6G74HNPw3x8Vm0UUhU+jhDpyh/AENzlQf86kB7MtWpbzoR9kxEPb/EjKcjzOZ8UVaJseYQ5c8lXEzbaxmQuAEaOUOKqC5qEAKyo8IahyClpSq30Rxvwhm/JjtEBI3aiYY45sZU2SpZ/6UxhcKQxbrY0oAL8PSHxtl8WW3R+g4doXI6Vb1HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0HiG2+ABupYOz1QZX5R/9DumY6+e0NaRmwKaqevgiEY=;
 b=xzyeacUlwvDs2MUCX/+U7sk3hyyK1dQ3ddv9eiRpR/VMNiM3g27YG+vIGQYaJ21/FYcA9LVfwp1nl4L4V2wDCuxgdwoHcOXVuorJjkPejj35ALD3d8IYwXYdRxdM9oh6034hYzq2CQtXlI7d2kazAAfOk7xPzGDYtvUJYnKGU+g=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB3424.namprd11.prod.outlook.com (2603:10b6:805:d2::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.27; Tue, 3 Nov
 2020 16:31:58 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::791d:58e0:ec0d:9d59]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::791d:58e0:ec0d:9d59%3]) with mapi id 15.20.3499.029; Tue, 3 Nov 2020
 16:31:58 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH V2] drm/i915/ehl: Implement W/A 22010492432
Thread-Index: AQHWsfgGX3oIlnLt2k6ZU5Hxw9VbFam2lvGA
Date: Tue, 3 Nov 2020 16:31:58 +0000
Message-ID: <SN6PR11MB3421F9D19E654913226FCE67DF110@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20201103134651.165527-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20201103154251.GC3990501@ideak-desk.fi.intel.com>
In-Reply-To: <20201103154251.GC3990501@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.85.10.191]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0652a31c-397f-4b34-5143-08d88015fc16
x-ms-traffictypediagnostic: SN6PR11MB3424:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB34249F39B123027EBA00C1FADF110@SN6PR11MB3424.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0OuOrHA7h8exoHJJ3lZl8ajNQUiC/SKztuGRh6yP0Rt6XB8ChOB7rucFUqClqXOGvggAgPeWy6i+xA8PBOxvIWO3T2W4AlSgTxhBQtB7j9Owlq3KAgu6rzNluNBXEO4kXXVAi2fIIMajyeCsN694ANRUJ05Q0aYd8Bdk3ZLV/5ZYxCiHfcb2zvWv6KzBX8sjjgjpBO6roGj1OFCb4swYLDXnnZ2PtzbgVPJ7Ul72+fct7s2kUOJnQh88ehVbch26kdoW0yeOOUn+FLXfjVehmbO8Oe8CvZHuVCdv1uriN6zq0fydgrKjxemFWYa9yEpqShu1t/WxGahSn00GboJ+2Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(396003)(366004)(39860400002)(346002)(5660300002)(6636002)(8936002)(66556008)(52536014)(76116006)(6506007)(86362001)(8676002)(66446008)(64756008)(53546011)(66946007)(2906002)(26005)(478600001)(186003)(71200400001)(7696005)(66476007)(4326008)(6862004)(55016002)(107886003)(33656002)(9686003)(54906003)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: DYaSqOQVe3Qa1bF+6BR6rf+2V2RMsg1CmpEluC+eX+0A0lXvd/PEt8mvUhbZ1uhLaUU7Cp0VyaIbvS/YVLq7Qx0SFd6R+sW8sxeagHrBSXRxBP7DEkBbMlca21CqB5sLgWgHV0Q5aNpi0U3mZpW/5gjfcjZFHzbeGe1ftznb0Ffd8rPYzovglKOEq6QvvqQZRfYarPDJxrtienm2t4cBf0T1oil3xpUQydcdkKgq6xYDbA9uzMrqUq3y12Fmi6AQHB4KERbHG7MsUoaYBCJQLzV+TPB8HX7MWmU5t+MFDnrb0gWBRhnqsy6fMavVDsWm7kEeX+aExLC86aoe7YpvYD+PpQe1YFfiAV+YgBktSfF+9tpByrVSMC/Zypx4cqJiZf57vJMAPA3bQ8KAMeb8TT33va5mh7Eao19FMbEZJVsBxlAqX5dj3dzhcFSKEbj03oppDFYYew4WD9YkY+c5uxbO9xQw/5NMUadcjdEkz7gJ180/5jZf7PamLS3oWxpMjWsB39oKYIoWth3cpYsJd7drbCK9LBqUHsTQ7rWk3SedOdJHgAyYO7ya0CPL79Awa0kOaursoliJMVtB5/rRMi2H3FRKCXkYzEBSO+dPY6a8FoDVRXE4ilJ2pDsA6wgYkshHESdp9HFuUlYZIZ7guw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0652a31c-397f-4b34-5143-08d88015fc16
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2020 16:31:58.4285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iQ2jBN1ws4GMEjGwKMQ9KH6xUBovG/pdEwiGirliWIPhJ63WOoBiwNbkoeux3rEYh5PO8bD9cndCNYlWfsXjl9teINfFy8h0sXiXZaVNuGEtezeszQnI6kT+TYO4ESvfeAb0VoxWmGY6OXjC9AABhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3424
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/ehl: Implement W/A 22010492432
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Imre Deak <imre.deak@intel.com>
> Sent: 03 November 2020 21:13
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Pandey, Hariom
> <hariom.pandey@intel.com>
> Subject: Re: [PATCH V2] drm/i915/ehl: Implement W/A 22010492432
> 
> On Tue, Nov 03, 2020 at 07:16:51PM +0530, Tejas Upadhyay wrote:
> > As per W/A implemented for TGL to program half of the nominal DCO
> > divider fraction value which is also applicable on EHL.
> >
> > Changes since V1:
> > 	- ehl_ used as to keep earliest platform prefix
> > 	- WA required B0 stepping onwards
> >
> > Cc: Deak Imre <imre.deak@intel.com>
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 ++++++++-----
> >  drivers/gpu/drm/i915/i915_drv.h               |  1 +
> >  2 files changed, 9 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index eaef7a2d041f..cb6ebf627c04 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -2636,13 +2636,16 @@ static bool cnl_ddi_hdmi_pll_dividers(struct
> > intel_crtc_state *crtc_state)  }
> >
> >  /*
> > - * Display WA #22010492432: tgl
> > + * Display WA #22010492432: ehl, tgl
> >   * Program half of the nominal DCO divider fraction value.
> >   */
> >  static bool
> > -tgl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
> > +ehl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
> >  {
> > -	return IS_TIGERLAKE(i915) && i915->dpll.ref_clks.nssc == 38400;
> > +	return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
> > +		IS_JSL_EHL_REVID(i915, EHL_REVID_B0, EHL_REVID_B0)) ||
> 
> Imo, better to add a definition for IS_ELKHARTLAKE() and IS_EHL_REVID().
> 
It has been already discussed in previous EHL/JSL PCI id split patch (between Matt Roper/Ville/Me) that we will not keep IS_ELKHARTLAKE() and IS_EHL_REVID() instead we will replace with IS_PLATFORM(i915, INTEL_ELKHARTLAKE) and IS_JSL_EHL_REVID .

> It also applies after B0, so it'd be
> 		IS_EHL_REVID(EHL_REVID_B0, REVID_FOREVER);
B0 is latest revision. So current logic should be fine.
> 
> > +		IS_TIGERLAKE(i915)) &&
> > +		i915->dpll.ref_clks.nssc == 38400;
> >  }
> >
> >  static int __cnl_ddi_wrpll_get_freq(struct drm_i915_private
> > *dev_priv, @@ -2696,7 +2699,7 @@ static int
> __cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
> >  	dco_fraction = (pll_state->cfgcr0 &
> DPLL_CFGCR0_DCO_FRACTION_MASK) >>
> >  		       DPLL_CFGCR0_DCO_FRACTION_SHIFT;
> >
> > -	if (tgl_combo_pll_div_frac_wa_needed(dev_priv))
> > +	if (ehl_combo_pll_div_frac_wa_needed(dev_priv))
> >  		dco_fraction *= 2;
> >
> >  	dco_freq += (dco_fraction * ref_clock) / 0x8000; @@ -3086,7 +3089,7
> > @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
> >
> >  	memset(pll_state, 0, sizeof(*pll_state));
> >
> > -	if (tgl_combo_pll_div_frac_wa_needed(i915))
> > +	if (ehl_combo_pll_div_frac_wa_needed(i915))
> >  		dco_fraction = DIV_ROUND_CLOSEST(dco_fraction, 2);
> >
> >  	pll_state->cfgcr0 = DPLL_CFGCR0_DCO_FRACTION(dco_fraction) | diff
> > --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index d548e10e1600..8bf59b57efc9
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1560,6 +1560,7 @@ extern const struct i915_rev_steppings
> kbl_revids[];
> >  	(IS_ICELAKE(p) && IS_REVID(p, since, until))
> >
> >  #define EHL_REVID_A0            0x0
> > +#define EHL_REVID_B0            0x2
> 
> Where are the steppings specified for EHL? At least on the BSpec/29153 page
> I see EHL/B0 being 1.
> 
> >
> >  #define IS_JSL_EHL_REVID(p, since, until) \
> >  	(IS_JSL_EHL(p) && IS_REVID(p, since, until))
> > --
> > 2.28.0
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
