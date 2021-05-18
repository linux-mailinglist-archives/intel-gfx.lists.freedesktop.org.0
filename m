Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA063870B2
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 06:32:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 043CD6E041;
	Tue, 18 May 2021 04:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2730D6E041
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 04:32:04 +0000 (UTC)
IronPort-SDR: K5teiFJcRsnyFHWujBQuOvqf897hgspOgJt03tLjR3NlB1mfTAoM0u1hwbfRFIdLeEhDQwbzsE
 4z+4mDRJUycw==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="221674861"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="221674861"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 21:32:04 -0700
IronPort-SDR: X4A0XE1AjV8mIkX5qUKObUDg2BjfS00FnIvhrOKUebq1LBNiEgi1lVZ3Dwn8eNEOHfjzMWTDOA
 6jWCQ7Lzx0jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="473268254"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 17 May 2021 21:32:04 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 21:32:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 17 May 2021 21:32:03 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 17 May 2021 21:32:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EkY5Mkm4quyAGzczJrYmfucoBfsAY1TzFtIE+bca/VUQUFuzytijkqKskHVuKKLEcKuLPonqw5IsOjgAE7tuETBMnoQyq86L4808caUBcxZZtUEX42tPL6jP9r1JOLjEbMuzZlYztK1WmkfwgZx+o6aEDBCaJ1hNAUhWkltKrIehU0JNIYBDH2tnTs4EKBncEm0/ApsgxiZvQDZagYlgDdG4H+dKJ7RpG9WVpnveK0M8Q7NjSoRe6X8nUnFawtYWie8sLo5QnlvAB+CzXdf/4D2z3XJ8P9CPzk5b+Qj1bA0ROzEV7ybzLz6+W2WdyyGE0TSS1bgDmhKBZi3Xd8YdZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=su7o2ZTgtumnoNb56bW5lqKUNbYumqV4rCHKOGhKVPo=;
 b=FYyfMLaEHKVvbjQG5mdVn1IDhDdK236yoFc2QwkSqW7DacAqz2vGSYJPcK5GBk7p150j0OpXe91Oxyn+n2+eVaPiZVPjMvmsncpKSnXPGtOqwC5BWfDDPirvMDYKkZSc1XjMb8WSOo9cLK8UQRGf5jJyzOKutRtnnAHcJPoU7CwzW7EzhQlBOlt2TKtfvL+Ie/JiCBF7HeLiJqY54fuPooTKlfBNMIe6R7mSXszXc0z6Up1c77QApZgGU0G1A6JAKb9FHnMlANIDT+BKuhRg7u/9CskXHCbcOS7zoYFYH7002LD87+gqDBSIEgvyZBy+cgpskYPngI/tBQM0Oiqt7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=su7o2ZTgtumnoNb56bW5lqKUNbYumqV4rCHKOGhKVPo=;
 b=EU4vwmKg2qFW8adgbGxDGiwohqeJVNSZMNl4qBLdbx8NBWRPkkvJtzfBQB0f8HB9ZPeaSbqL6VsuCwcx96/sPZCmDZEfJhunx0ryfqmENVlitEhIPIvhlKFag2ACLJJhCSM5tDOXhEsS4RUJq866YpsJTzzVN/+/8Q4VTs7WTLg=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB3247.namprd11.prod.outlook.com (2603:10b6:805:c2::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Tue, 18 May
 2021 04:32:00 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948%4]) with mapi id 15.20.4129.031; Tue, 18 May 2021
 04:32:00 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Pandey, 
 Hariom" <hariom.pandey@intel.com>
Thread-Topic: [Intel-gfx] [PATCH V2] drm/i915/jsl: Add W/A 1409054076 for JSL
Thread-Index: AQHXR/ROmCFKCj+5sEaYzyEZKn2MTKrnvbGAgADuOGA=
Date: Tue, 18 May 2021 04:32:00 +0000
Message-ID: <SN6PR11MB3421B41BA6F3225EC4C9FF92DF2C9@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210513122352.176643-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87tun1fny2.fsf@intel.com>
In-Reply-To: <87tun1fny2.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.249.234.107]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 142aa25f-7c61-4069-b06d-08d919b5e0e5
x-ms-traffictypediagnostic: SN6PR11MB3247:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3247DFE50B50A69B0E902B4CDF2C9@SN6PR11MB3247.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VRE2xU07826aeyyanKOGf/XXfZh0OQwEdL2RmAERZ2ARk0kTvvXfRwSjzoRg8MhDhP7wTjInFg0MJYCOeyCurPTskhaBJH5BMUN2jh+31dqOa0Pp5zRhmj7avreSkrlMq9yUQ8e26hIhDtwNpBoWCfKrelNnHFptv03bhTKEE7G2eHSWyoIXJPrPzG5OjUKmLLXxt2htA/MXeISJsmG5YDYF6OLbWygVaP1NL3dEvoM/+aV8fMrxPDFBWch4I+waU0EzRvXWdn41QKCrxE8CkLJnvBktjGHR8+oLlx3aN8AOJk5tACOgIWkPk+0BFB9mdSLS+v/mT7xvscsjX3gy4oShj3P3cowTLd6DWVee1B7J0V+e2clbLEOOUicWkEBpvJUAf1gRNXyxH74PblwY7Hwmj1hU4TpAJpC7yYrJwKlEolByWw5TxGyWJVsplSno3oYUGInZyIv6Qq0OsvAvBjYperyADVo+NcUjE49PkHsCocuHjLOJNZh0sb8KYXxxe3uqkXNYLjLJ38SP8n8HjWwmWOrniTibK5nUFlQ685180Rkvi2PCEu9y/oPoaaMNkkhsKIgRP12im8KHlCJBYTG6KzVZAScarTZ/ETHAFlM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(396003)(136003)(346002)(39860400002)(55016002)(33656002)(9686003)(83380400001)(6636002)(66946007)(66556008)(64756008)(66446008)(66476007)(8936002)(8676002)(38100700002)(7696005)(76116006)(110136005)(186003)(478600001)(52536014)(2906002)(6506007)(316002)(53546011)(122000001)(86362001)(26005)(5660300002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?Rwkv7YCgkR14E5u47uVebpMXRmXx0HpJN0SuNV1Uayk07heTK7x1p81tpBWx?=
 =?us-ascii?Q?6hcFIHF0TWK3HoJJq9hm9xIwFgBVtE3dhYk+DqLD1/rMmB5mulNScnH33HSI?=
 =?us-ascii?Q?7L1b3z5hD8Y3/b3I2C0ODHRWNNKNv8DGr7rSyBwbJmvnnLVRjYL5JtMPDP2c?=
 =?us-ascii?Q?Nl4yjmHh4+tq+6ilkkJl0jqY8Nh62sE23b+YzAz3hJaYGoA85Y6yi5dAmIRD?=
 =?us-ascii?Q?/W7Z0JNi4XAOqHAEZ2IIy8SdIRiWgwr4fSEwkeVHnDallNOaRoRfGP7/fmaM?=
 =?us-ascii?Q?WjFntY+WEbDu0lVbcxldile3CydyoU3PcP9fTgI+yPG9bJJ00n5k4B3/4CRC?=
 =?us-ascii?Q?/oJuBhveUIGl0L1HSyyEtQpe5zw0GxyWcJLWIlOODXpH16tkLXqg15Jvw6fp?=
 =?us-ascii?Q?QcrFICxBfErVlq91z9UmHWxayZKZgwucy+er4t2BB6RtKuz+ln24hO+r5snh?=
 =?us-ascii?Q?YJOQtQ+8K5ubvuW0QHi2Xu+IkbwYQmQvZv7eCApyvI/6FFlIuRNx221CunPc?=
 =?us-ascii?Q?josqeKCjldE7wpK3AV0ND3zus5M2133g6umvTkUc7hE1GV2W2saBZmo86OTi?=
 =?us-ascii?Q?kGuua/8Nlk6Ew697Un5++BRL1TSj5yUYYz7UBAWvSsQSwjbxzj7CqTtc3lxV?=
 =?us-ascii?Q?U5BpIZ5jl/VYrVDbHBcUg33FIR79jXUCih6T84h1FOmlhg+huUivXj9QWBuf?=
 =?us-ascii?Q?zJR9qGDCsAVCmFuzFx95xX33pqVZ7XziA/EWujlu9YY389nHhwUL3VyBSfcK?=
 =?us-ascii?Q?OtXPrQ66VqL2lYHnpgU5u1nffJEh0nnW8obNGlPEn/mx98x/f7WJnR3IlCli?=
 =?us-ascii?Q?kwdkfstiP3Wlm0/RoRhE/DRe32gTzwQ3SMfYapG7dVf1yJYvIBdDUubYYkMd?=
 =?us-ascii?Q?nlOE6lQSY8BybJxKvyZPKMchLY4iveYkziIyq0XI6AFJnpIv+vW30xVuDdAA?=
 =?us-ascii?Q?cQ+1sUzk5G5nkdrtCrLTl4wqgDM7rCSZI8SdptsMllgkwe4elTXz7/dzYc/w?=
 =?us-ascii?Q?IdMEvrUf0lmLNDR3IeA3QaJ96yBFCLtWmwFWnOcmiTfGnxcsOCn2+I4i8ctb?=
 =?us-ascii?Q?+Yx1myKECo4BCDHtlQzoCN6yW0SeYcH+Nr3WWD0D+7L9FeFhYmlCMOnuyUmm?=
 =?us-ascii?Q?T+Kz64XSdHIT/82My8S7//d8d+EV76Bdi91AkPiUmofdQyQHnl+R/N27TTKl?=
 =?us-ascii?Q?H2PuOPBkeHlB73iy2GPtWa3itcMhY33OS+zJUO2yez3v2Qgj6NmHwzvT8G1U?=
 =?us-ascii?Q?ijapbSV5Ek9f+XVWzxhnjKEWJCZElfDUyFFq/aBitKu1Ataaq+FJ/g3sI9nW?=
 =?us-ascii?Q?9FO2yC9ZOyULNFVjTV55ghlE?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 142aa25f-7c61-4069-b06d-08d919b5e0e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2021 04:32:00.1460 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ruGz1KKDO5/NO3vDR54VMMxhRo3QNA0gsxAZ0sKEDlOS4GfSQcZokQUo0ofXAlh6gHC9MgfiCLKn75F988nls6qpjdQmKMls4xqwBn37a7pCBaiSPpLOkqDMhpGr9Sf3LsHxWpZrYbOyH1yMESz1uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3247
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/jsl: Add W/A 1409054076 for JSL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks for review. Responses inline.

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 17 May 2021 19:43
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
> gfx@lists.freedesktop.org; Pandey, Hariom <hariom.pandey@intel.com>
> Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/jsl: Add W/A 1409054076 for JSL
> 
> On Thu, 13 May 2021, Tejas Upadhyay
> <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
> > When pipe A is disabled and MIPI DSI is enabled on pipe B, the AMT
> > KVMR feature will incorrectly see pipe A as enabled.
> > Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave it set
> > while DSI is enabled on pipe B. No impact to setting it all the time.
> >
> > Changes since V1:
> > 	- ./dim checkpatch errors addressed
> >
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c | 38
> ++++++++++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h        |  1 +
> >  2 files changed, 39 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index ce544e20f35c..e5a6660861e8 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -40,6 +40,8 @@
> >  #include "skl_scaler.h"
> >  #include "skl_universal_plane.h"
> >
> > +static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
> > +				   enum pipe *pipe);
> >  static int header_credits_available(struct drm_i915_private *dev_priv,
> >  				    enum transcoder dsi_trans)
> >  {
> > @@ -1036,9 +1038,26 @@ static void gen11_dsi_enable_transcoder(struct
> intel_encoder *encoder)
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >  	enum port port;
> > +	enum pipe pipe;
> >  	enum transcoder dsi_trans;
> >  	u32 tmp;
> >
> > +	/*
> > +	 * WA 1409054076:JSL
> > +	 * When pipe A is disabled and MIPI DSI is enabled on pipe B,
> > +	 * the AMT KVMR feature will incorrectly see pipe A as enabled.
> > +	 * Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
> > +	 * it set while DSI is enabled on pipe B
> > +	 */
> > +	gen11_dsi_get_hw_state(encoder, &pipe);
> 
> That function is only for reading the state for taking over hardware state at
> probe and hardware/software state verification after modeset.
> 
> It reads the state that is being set later in this function, so it's never going to
> be correct here! Also, we try not to do stuff based on the hardware state, but
> rather the software state.

Okay I will correct that.

> 
> > +	if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE) &&
> > +	    pipe == PIPE_B &&
> > +	    dev_priv->active_pipes != BIT(PIPE_A) &&
> > +	    !(intel_de_read(dev_priv, CHICKEN_PAR1_1) &
> > +			    IGNORE_KVMR_PIPE_A)) {
> > +		intel_de_write(dev_priv, CHICKEN_PAR1_1,
> > +			       intel_de_read(dev_priv, CHICKEN_PAR1_1) |
> IGNORE_KVMR_PIPE_A);
> > +	}
> 
> As far as I understand the explanation, we can set this regardless of whether
> pipe A is disabled or not, and we can just set it based on where DSI is
> enabled.
> 
> It should probably also be IS_JSL_EHL().

Will it not affect if pipe A is enabled and we set intel_de_rmw(dev_priv, CHICKEN_PAR1_1, 0, IGNORE_KVMR_PIPE_A);. What I could understand is we only set this bit when pipe A is disable and we have MIPI DSI enable on pipe B. Correct me again If I am getting it wrong.

Also Bspec says clearly workaround is for JSL only. Should I consider EHL also in this?

> 
> With pipe from new_crtc_state:
> 
> 	if (IS_JSL_EHL(dev_priv) && pipe == PIPE_B)
>         	intel_de_rmw(dev_priv, CHICKEN_PAR1_1, 0,
> IGNORE_KVMR_PIPE_A);
> 
> To disable, with pipe from old_crtc_state:
> 
> 	if (IS_JSL_EHL(dev_priv) && pipe == PIPE_B)
>         	intel_de_rmw(dev_priv, CHICKEN_PAR1_1, IGNORE_KVMR_PIPE_A,
> 0);
> 
> At the right locations.

Ok I will take this into consideration.

> 
> >  	for_each_dsi_port(port, intel_dsi->ports) {
> >  		dsi_trans = dsi_port_to_transcoder(port);
> >  		tmp = intel_de_read(dev_priv, PIPECONF(dsi_trans)); @@ -
> 1245,6
> > +1264,7 @@ static void gen11_dsi_enable(struct intel_atomic_state
> > *state,
> >
> >  	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
> >
> > +
> >  	/* step6d: enable dsi transcoder */
> >  	gen11_dsi_enable_transcoder(encoder);
> >
> > @@ -1260,9 +1280,27 @@ static void gen11_dsi_disable_transcoder(struct
> intel_encoder *encoder)
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >  	enum port port;
> > +	enum pipe pipe;
> >  	enum transcoder dsi_trans;
> >  	u32 tmp;
> >
> > +	/*
> > +	 * WA 1409054076:JSL
> > +	 * When pipe A is disabled and MIPI DSI is enabled on pipe B,
> > +	 * the AMT KVMR feature will incorrectly see pipe A as enabled.
> > +	 * Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
> > +	 * it set while DSI is enabled on pipe B
> > +	 */
> > +	gen11_dsi_get_hw_state(encoder, &pipe);
> > +	if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE) &&
> > +	    pipe == PIPE_B &&
> > +	    dev_priv->active_pipes != BIT(PIPE_A) &&
> > +	    (intel_de_read(dev_priv, CHICKEN_PAR1_1) &
> > +			   IGNORE_KVMR_PIPE_A)) {
> > +		intel_de_write(dev_priv, CHICKEN_PAR1_1,
> > +			       intel_de_read(dev_priv, CHICKEN_PAR1_1) &
> > +						!IGNORE_KVMR_PIPE_A);
> > +	}
> >  	for_each_dsi_port(port, intel_dsi->ports) {
> >  		dsi_trans = dsi_port_to_transcoder(port);
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 871d839dfcb8..8b67cd14ff7e
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -8039,6 +8039,7 @@ enum {
> >  # define CHICKEN3_DGMG_DONE_FIX_DISABLE		(1 << 2)
> >
> >  #define CHICKEN_PAR1_1			_MMIO(0x42080)
> > +#define  IGNORE_KVMR_PIPE_A		BIT(23)
> 
> REG_BIT(), not BIT(). Please read the big comment near the top of the file.
> Please observe the REG_BIT() on the very next line.

Sorry to say but there is no uniformity in term of which macro to use. Some places I have got review earlier to add BIT() and I can see at some places not BIT() used nor REG_BIT(). I will correct for this matter 
to use REG_BIT().

Thanks,
Tejas
> 
> >  #define  KBL_ARB_FILL_SPARE_22		REG_BIT(22)
> >  #define  DIS_RAM_BYPASS_PSR2_MAN_TRACK	(1 << 16)
> >  #define  SKL_DE_COMPRESSED_HASH_MODE	(1 << 15)
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
