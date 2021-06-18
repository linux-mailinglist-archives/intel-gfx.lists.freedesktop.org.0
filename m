Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F813ACBC3
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 15:10:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 191AB6E0FD;
	Fri, 18 Jun 2021 13:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C875F6E0FD
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 13:10:09 +0000 (UTC)
IronPort-SDR: r4lPaEmebTvIie8qxlqcOOQ8wv9Nwg6sVQVJtoTBZpgZueBw7uWdhhAMotavpuWLIIDZyAu7Ra
 pRmU7q7Ax02A==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="186242828"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="186242828"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 06:10:09 -0700
IronPort-SDR: qzQZ5mUeXqVoxF9sI24GnPKyD31YVUSkPa6IqA0wJ7zuuSAFnp5juqvqCcGP/8DsF3SM+2KYav
 NfFI9zbK2JrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="622385146"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 18 Jun 2021 06:10:07 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 18 Jun 2021 06:10:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 18 Jun 2021 06:10:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 18 Jun 2021 06:10:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 18 Jun 2021 06:10:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jFeLKyeM94w0Mh1EfhgJu3WTcdRhlI+R7EKbC3nqMuGin00ROlptbV+oacJ2Ze3eLSb0FGzqKDvmePuQA1xYQaLbdxpal83UGR/ZjAKotMCzDxNydNKag1kSDR80m1GusoqWfvxkdDENlk6Xo98rLY3p+9dlc7sFSoWHC0J8uNMEFyyODL1OGhC2s+0bpBnKpUMoiRjPRQPoHV2nV6P3HcZ/M6gfj9/K3oHWhOFcPHGjcoSLNuSx0LOj4j2YoEmnCJrF/NFo9aF/qCJSyrYnXqYdW3waIu+ecsLkZfWBV9pznUkFLd56qG8GkuXuV3q2MuDxz6yhk8ikP1NV1ADDhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pWWnwQffS5FR3MXItwyRSqqyQzQnX2FXlQ1VlFRR3k8=;
 b=X3tASc4z6FEUXqpkwFE21QPofvGYICTYZqucqMgjmaS1oj7bVnRGUesOPeVhI9TE5xQOjp6w1PT3aXewFmX9m7kyt9UahgZfldwcv5FEht/+y2O5o1i+uGsgQAcRov2STN7ePdKCIIeiOizGDpxTxXdnUIR9t9CJ3PmnFB7G1s6lHxhh+08wIU9+6zpUBf3wS0gUamQjwDlP84FZ/BZx16FQ2VbUAXUGF8gqKvBCgSkCm3CYznRFlcVvWDwZUJphlsk0/2NtP+qnsqoAwCdgKsQyAFJe9PSaA/C3NXtgQCn0amgfmDk2UaUaFxSAuy121xwjcisPRf8V1eaOf4ii4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pWWnwQffS5FR3MXItwyRSqqyQzQnX2FXlQ1VlFRR3k8=;
 b=we7yL5NyfNSolsZ2ByNFWzpN4qNM+Ht6s1ambDvoeeACxdEy2DgGUrpa31iEKTw+Vvw3QGXHTH7zmx1lguj0sUGjGTaa9K2pE2RHkhtGLu6cb8EXyxN/ZZzrsE4WguHa3zy4zvjVzMGHSuU88yjDASH2Law2Wm4aQSk0WyKVjjo=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB2576.namprd11.prod.outlook.com (2603:10b6:805:5b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Fri, 18 Jun
 2021 13:10:05 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948%4]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 13:10:05 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH V3] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
Thread-Index: AQHXZDjW/ZJkRhdOKEOTY5Xr2IxdsasZty6AgAAGbtA=
Date: Fri, 18 Jun 2021 13:10:05 +0000
Message-ID: <SN6PR11MB3421D46468DC1115AA10797FDF0D9@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210618114606.865705-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YMyVZ72/W60XSc4V@intel.com>
In-Reply-To: <YMyVZ72/W60XSc4V@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.250.145.116]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e4dd45e3-1811-4c25-fd77-08d9325a63e0
x-ms-traffictypediagnostic: SN6PR11MB2576:
x-microsoft-antispam-prvs: <SN6PR11MB2576392EDCBC352007E98B65DF0D9@SN6PR11MB2576.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Kv07hQqfkM+sAG4VxKM8Kc6PQCZ/evjW6TQQrXMwdU0mDjr6WO8Ds1HUY7DJtGUfiagtqOS+DWZiybl1HGF+BbWy7WsXQWKaqosOwxMHasyRfeyoWnC2QrH0tc9+Gkpv3ZhQgYWszNzDJP6f3bHLhs9TopnR8zQcV6lIFdCj8aHtQDJejMLjIKPtgXfN18jGQiUxbiM4h5NNROptyzODXvbxwoHZAGLia3Cgh+H6pzrLLudb+qXuAVotjFh3VItejC3yBbBAtXdeQpNVFQqYPTx/b7DcVL9CeTxgAhaM/BXkYJ9cRo9Rcdk+4gL7k502c6pBSVNyEGgnpvIrXCORE2AIRe0fP/oxSz/O5MazoPeCXFGi1Z9C5N0dkqbjpdpEii5gmG4y4PUX4uImjW3ccPCDfcRiswu6ql9Ujbl44LNu7UNU7OryvWO9xR0Pm9C2nS0ru2OhbI3K0HWYZN6Uxs1Usj/40Qm/ybr8k3dv8L1aCK1MCvdIpDwjSbZqm5uYDpdvSCt97RaYG306e2UgpdqHhtbuTf4RfscfdIp4C4IlKW5BWuSTt3tlVBJ3xBWFrtWhbQFhWrnUlXTgyYIsB4DPZ8H+7tLg9rSLIbqpo9i19LJkv+sY3vtTbSalFnu2y6zqgT+XuC5FjNBZrmPW2w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(366004)(136003)(396003)(39860400002)(4326008)(6506007)(66446008)(66476007)(26005)(66556008)(64756008)(53546011)(122000001)(33656002)(83380400001)(7696005)(66946007)(86362001)(478600001)(76116006)(38100700002)(71200400001)(316002)(5660300002)(186003)(966005)(8936002)(55016002)(2906002)(8676002)(9686003)(6916009)(66574015)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?TaNg/rUhk0P8yFSG9u8o5b1EwzJmf4EwLBRWuGJR6KoFQxtHHg+naPy5Uu?=
 =?iso-8859-1?Q?mP+mMhniOEhcuqAd+xy/hFl1O8PUjc1e0Cj4kNs9nSZW8NTy6nCOYjb0oL?=
 =?iso-8859-1?Q?EZd8Na51kFnffHUXI91j0V+itqHPaTCYwasAf3zwoPOhvarPE9eEaDUl8T?=
 =?iso-8859-1?Q?/3OUyuozECJpi9ypbpb2YDjakxD8/ceBSbwMX7O2rEOA1q08CS8Hgc3Glp?=
 =?iso-8859-1?Q?P2w2H2t73RnMq110XzIhtGrpsRH5kaoVvmxIgcRjGVZnOfYNCMgrv6Dn/g?=
 =?iso-8859-1?Q?fk4WvkpIxbCzpoPhjS0CzBC4hTIqK/ovZMPHdfJTyKOQWKAU34jzQnlxyC?=
 =?iso-8859-1?Q?N9LUWrSrqXXxqRQSr19SDWQfAkbKxuveb3u6D9s2p1qATTvd6Fob9Gq+K9?=
 =?iso-8859-1?Q?j5ayUh3RQZdQ5YsPzivRZla8k6sYwvh/NL0FW+Phf4MLaqdPtFCl7s1n7z?=
 =?iso-8859-1?Q?VJssMzDJsmueYFRaPJvcZwje0rEhYoydqn7N6Ahs/1qWsEJHvEoBrTQ8Ov?=
 =?iso-8859-1?Q?7k+L5r/14hTxYPJSAOR3VFM5CKYgw0a86PyMpHSmPW+yZfneIbcezWmhun?=
 =?iso-8859-1?Q?JMk0NE0f9K5lKXjdJP7N+tWW6caYn8FD1pEkBy1FzMa0WZ8r0LC1XQOl7o?=
 =?iso-8859-1?Q?wcklnmotkW+IMuJ1qAe7AZQPzf0E6GYtgGb6P20vWHpTQz38IbWnZbPPYz?=
 =?iso-8859-1?Q?Piq9l3bNnbdvLwjMOOhas9e6vlSjGS37CWZ/rlskZDjI/TqZVeyYSGn888?=
 =?iso-8859-1?Q?D17IeDHbc2tO2AYMjRc8GSmSGjzbRG5I20aKwsgjVpL6mvWtyPlLtJ+MVN?=
 =?iso-8859-1?Q?X3MMZY9St7PwEC//NNJzXQf3ZLSR7VQHC6Gjz8TR1sJiDfN1x2lcQUZ5rN?=
 =?iso-8859-1?Q?0NY61ja8P/iNSFsFBtUoSjL3177Xfk/D125+mpBHZfd3homZEIzYv5v+yd?=
 =?iso-8859-1?Q?yeEuI3tIbsQIrRU1fDJYeqbplL2NWkSW2WWrnnW8rzG2xM99VhrglANyIG?=
 =?iso-8859-1?Q?xs1j2NUpABeyBCDeYvs2dWbO0+h4+uv8fGlBACi4IoTVyZi6t6ho2OGgbW?=
 =?iso-8859-1?Q?k9vs8fnKPML13qvni2GV3M5+erTbD45QsVbzReYsAac6cdI8VAy6HRdVcV?=
 =?iso-8859-1?Q?gM0E2OmPPlO4S0Xc7uXwlArV9T73yvTw4fQceDK9MlFZJ/5rGx7AQhhjVD?=
 =?iso-8859-1?Q?sQVQdXoTbX59qoHNm8sZc7CJb25PuPx121r112sPBa+toVp5kCjShgH2Rm?=
 =?iso-8859-1?Q?E6vXpPnZQzz2PzZMj6vG4Di4kyoiVy75+NNMqbMfAzyptPW58DG5TShUZ5?=
 =?iso-8859-1?Q?TYgCzqZFDaW+VEx6EYjObiUjFczLmUaWfVJOV0/21VHpHE1pxjNLDc2noD?=
 =?iso-8859-1?Q?AbGf4IloGH?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4dd45e3-1811-4c25-fd77-08d9325a63e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2021 13:10:05.2981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iMA9jDzIXKq8P7K69GcDZqTqZM/Pl0Uxgfy/IdDhKnh9zBlm8PWSIpIMrfGwEmpjS6/vuWUNkRAagftE/lbbVvdO1m4s1daKYozQfFCtYbbsHqJlEnXHUQ4OaozjwIu3G2Q1SkI01m7Y56AgTeN7Aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2576
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: 18 June 2021 18:15
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/gen11: Disable cursor clock
> gating in HDR mode
> =

> On Fri, Jun 18, 2021 at 05:16:06PM +0530, Tejas Upadhyay wrote:
> > Display underrun in HDR mode when cursor is enabled.
> > RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h.
> > As per W/A 1604331009, Disable cursor clock gating in HDR mode.
> >
> > Bspec : 33451
> >
> > Changes since V2:
> >         - Made it general gen11 WA
> >         - Removed WA needed check
> >         - Added cursor plane active check
> >         - Once WA enable, software will not disable Changes since V1:
> >         - Modified way CLKGATE_DIS_PSL bit 28 was modified
> >
> > Cc: Souza Jose <jose.souza@intel.com>
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 15 +++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h              |  5 +++++
> >  2 files changed, 20 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 6be1b31af07b..99b33455b945 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -383,6 +383,18 @@ icl_wa_scalerclkgating(struct drm_i915_private
> *dev_priv, enum pipe pipe,
> >  		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) &
> > ~DPFR_GATING_DIS);  }
> >
> > +/* Wa_1604331009:icl,jsl,ehl */
> > +static void
> > +icl_wa_cursorclkgating(struct drm_i915_private *dev_priv, enum pipe
> > +pipe,
> =

> Pointless function arguments since they can be derived from the crtc stat=
e.
> =

> > +		       const struct intel_crtc_state *crtc_state) {
> > +	if (crtc_state->active_planes & icl_hdr_plane_mask() &&
> =

> That doesn't mean HDR mode will be enabled. I would suggest extracting the
> HDR mode stuff from bdw_set_pipemisc() into a small helper. Or
> alternatively we could stick that into the crtc state even.

Are you saying PIPEMISC_HDR_MODE_PRECISION in intel_de_read(dev_priv, PIPEM=
ISC(crtc->pipe), val) is right place to extract HDR mode stuff?

Thanks,
Tejas
> =

> > +	    crtc_state->active_planes & BIT(PLANE_CURSOR) &&
> =

> > +	    IS_GEN(dev_priv, 11))
> > +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
> > +			     CURSOR_GATING_DIS, CURSOR_GATING_DIS); }
> =

> Where does it get turned back on?
> =

> > +
> >  static bool
> >  is_trans_port_sync_slave(const struct intel_crtc_state *crtc_state)
> > { @@ -2939,6 +2951,9 @@ static void intel_pre_plane_update(struct
> > intel_atomic_state *state,
> >  	    needs_scalerclk_wa(new_crtc_state))
> >  		icl_wa_scalerclkgating(dev_priv, pipe, true);
> >
> > +	/* Wa_1604331009:icl,jsl,ehl */
> > +	icl_wa_cursorclkgating(dev_priv, pipe, new_crtc_state);
> > +
> >  	/*
> >  	 * Vblank time updates from the shadow to live plane control register
> >  	 * are blocked if the memory self-refresh mode is active at that
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 955027799d1d..bbdd8429297d
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4235,6 +4235,11 @@ enum {
> >  #define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
> >  #define   CGPSF_CLKGATE_DIS		(1 << 3)
> >
> > +/*
> > + * GEN11 clock gating regs
> > + */
> > +#define   CURSOR_GATING_DIS            BIT(28)
> > +
> >  /*
> >   * Display engine regs
> >   */
> > --
> > 2.31.1
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
