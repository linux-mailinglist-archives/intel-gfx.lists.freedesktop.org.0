Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07ADE3ACB5E
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 14:52:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FB906EA05;
	Fri, 18 Jun 2021 12:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A3446E0DA
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 12:52:23 +0000 (UTC)
IronPort-SDR: CEXnJx4dJy7rLMRrNAlRU56hvLxRAb2v3BpET8dXMnAAzNqzIJYpJ0ebBXMT36fM7w8X0H1wGw
 83xsUhJgfCuQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="206366262"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="206366262"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 05:52:23 -0700
IronPort-SDR: novss09VmkZH4AYXp+1S1ekE8T3g5BtC/IBLnqo8iBxlLv0xbFgTDnu2hntVfN9wIxZjetpQjc
 6SAInkldN6UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="489054564"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 18 Jun 2021 05:52:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 18 Jun 2021 05:52:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 18 Jun 2021 05:52:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 18 Jun 2021 05:52:21 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 18 Jun 2021 05:52:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BnP69fvj3OVxngf4pJrKNioBMziWIOXnESUIB81eJrm7VroMcD2OiNHVoHK9WTS041+UZlndmFgGJcKYkax9befUWl3aotO9n21vPIwEkgmcsSOfZ21uPdza7Fzsf1ES4J5ljQJAB6KoiW3Dh+ZiMtq6yT3YM9CYaNE1+vYtHb50hoK04VGfMOPKfv3jvqaPmVkSLLsoOzVBCGwBGC2treJ4TvYpMcGPfymQKqfZ2oOqJiTlHO7MlTQrCi+s+MvBTPxVrBiZhDoZtR8nIs/x/4d29bSS++xHJC/knF8xfgZzDDEFbzBQaldBmQKfSa0LgFiWUsq5d6sH7GuwAu6oHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Tq+F2pIFpy4RSrP7mIzyOlhRaN28C6AMsOwM5+OOR0=;
 b=Ax2S+V47QPhFrkKzlUq6nbUJF73pPVhwLnkCoVIewr+/J4YG3ercoNyPE7ksmaAjrkMAkGLVRcf32GZZc3bwBxjorDGPZoA1ZuCMUTUaiBpjPstWNO16PmheMXBpjZYS/hR+duY8XJFah4765+N85SbLY9otSno2wgbuQxvvSbZSi+AK4fSUqdPeDT2Yx1cGviv3noWw7J0uzAVCC4vUVhAwEclvpWbRw7rUK3mGrTvmbAj8tdJox3K07i1PzBdXWGMQxiuczpjgI98lrjccm5NvIlNf0AlHEyqHcBrfYb6Eaf9TMHjfSw2f0lmjgoDkjeF4ks3+Lj3WpQlLat3/Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Tq+F2pIFpy4RSrP7mIzyOlhRaN28C6AMsOwM5+OOR0=;
 b=zdwrNRvNy4qJjF/Sr9cmqY/EjwjvZXJmbH4+pk5+OMMAgff+zQRSECGiUOyGq0C9/mkQfS4LiqjdQv1mRfCCH9A3xHItSWTw+DVArCyPXxEbwBlxKV1E+0mpdHqXVib9rt7SbJTA5e3VKkGnN8cbjFX1wU2y84IipOUwIbLu7Wg=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB5113.namprd11.prod.outlook.com (2603:10b6:806:113::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Fri, 18 Jun
 2021 12:52:18 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948%4]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 12:52:18 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH V3] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
Thread-Index: AQHXZDjW/ZJkRhdOKEOTY5Xr2IxdsasZty6AgAAA4WA=
Date: Fri, 18 Jun 2021 12:52:18 +0000
Message-ID: <SN6PR11MB3421244FA06CC10A5B9CB4FFDF0D9@SN6PR11MB3421.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 6e07e589-40dd-4986-8f79-08d93257e7c0
x-ms-traffictypediagnostic: SA2PR11MB5113:
x-microsoft-antispam-prvs: <SA2PR11MB5113D41487DE35890DB875A2DF0D9@SA2PR11MB5113.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oh3AodsynDQoPPFBXDSmgvAKoRlpBFnB3mAiS/PyGOzcbL2hJEiSzUpdJurp8MMRU6DuG+z5AJaIv+zjmKPGmEZwislABPIailgPfNQ1DOpj8Bjwxqdho5nHo2/Z+5q7QYmehzx/Cl0J6E5DOmwPuHjdfXyPJBJ0yJe35TCfUU1F0GIcVvGum/n6ono+OMAEyg1o1GxNjdx3jVxYhmqVTnAWZiiW7IU9Pwq+mJfZyBLNpY1copy7F7zACemtrFAy5DkW8DiIPigIhR0wjvv7snQDtWYXD9dFbG+XL20/7ng1am54abpHJ36jPqHOW0j9JZ3+0U/0hDJ7yN0R46dWaw+o6PY3uEDj9Y6/QnOHps/buonxHL/P2uvqGITVylkoADZwRkYsmrHEzUuoq6QLOr3gojdWkRxRYOjqbf00E1DVdydm2iUyMfymerrVt20H8OMBSdNJNR1IA8Xia4GELUcvijQwoq5DzkPgn5LJksSEbjpDPthxkCSOIDCNVHz6QmwF4CRGZAwmNxtnYGtlFV6z+KJay+aSDyqvQfVnhQm/0sO5Oo+Zo7TyK6pabrDAqqNVgzvk33ZOQYjoT0Ou6Nt4AlMPn7pybcZw6k1tsTyxSfzqoJ840QjwCQMpt/YT2tWTfGBNP4IMWxTj6rPbwA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(136003)(366004)(346002)(376002)(2906002)(38100700002)(66946007)(122000001)(8936002)(83380400001)(71200400001)(478600001)(76116006)(55016002)(6506007)(66476007)(316002)(86362001)(64756008)(4326008)(186003)(66446008)(66556008)(966005)(52536014)(33656002)(8676002)(9686003)(5660300002)(26005)(53546011)(66574015)(7696005)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?KiBoB3aX8uZQcEN9ZPoZJoZkonEBRyAKhGegvuiAKj5m9K/TP5oWB+0uid?=
 =?iso-8859-1?Q?rRtwvMpsOCSsC+MgZx91yS+4Sqa7j8aBQj0nW9ScjXi/tT8nDcmnJzVWAy?=
 =?iso-8859-1?Q?XS0iw/rhINw5EAVBmFuesrP6QotZdrfgOAbH6g0g3RbdGag1DeV2YGF4k3?=
 =?iso-8859-1?Q?XmxXg/o1yAaSbhs5FgujHAWWW7gf3+AtpOhwkp3aA/Ag/uEgpvyRMfECZA?=
 =?iso-8859-1?Q?Ya4OhGTasDLHg9JgJ2h2VPgLIqFbhhPJX+VnHWSMwgld1MCBdj61QOYMHW?=
 =?iso-8859-1?Q?OROf9L33N9hrhmENfrz4kupGV1y/MdrjGUbOZSWS0d9I938mJpq++e1SrZ?=
 =?iso-8859-1?Q?09n0Y22WjRo5NTsNHEJtkaRT7X5PAeL134rmblQgaT8s+P6Mqu7wW2xyao?=
 =?iso-8859-1?Q?s6O14blAun2WLmf7W0HBdNuMoqoe25NhPkfmOz8hrgAz8rIDLe4Igl2pa3?=
 =?iso-8859-1?Q?2KeQiEjuwZULJF5qER3t0pm+Mu0XpaX/+yvmPPZd4dPZ/c26MXxv76caxn?=
 =?iso-8859-1?Q?xXR4MDPBTucj4EjTNREEPQANMfEG5BkKsYf1UvZPgz5EWXTElNRHVLTzbI?=
 =?iso-8859-1?Q?xD24AuPR4T93KsJ/Z0yiquhusWLNzUeB6DWNVD4Y5uJ6nugPQAedUL8Opl?=
 =?iso-8859-1?Q?XsYx+RAKiEHtP5tnRgz6IApiPBcPhS2w9bUDr2X+IhPcofErUXe6Zrw/rO?=
 =?iso-8859-1?Q?m+wUdaiIzK9Y/R7Glzrp47odZq0HKj5m+V/dWBtCz0d7a6TGjbpzWF1Zmy?=
 =?iso-8859-1?Q?tPyUGAdTEwbs2o6hsdqlZZhfYV2hs3YHmp6LzUWioOxrI1qjHGW3jdQ1K1?=
 =?iso-8859-1?Q?sZbiEbYZiwIqNsy04eOPrO2Kug4JfRDuRLWu+LRi+aDIDiZkGX9NXCgLfR?=
 =?iso-8859-1?Q?HtCr0aCz0Kr1D0VRdDhdMu+qPDB7OTUolUszmoZ5rbeG6fEzWa74TM71eg?=
 =?iso-8859-1?Q?9zeH3H8fZo7hMiyCkk+Kzp8NFXiDmvUFAD+Ysmf6M4/AJvzTyuVA6XDSlq?=
 =?iso-8859-1?Q?kZNTob3VqoiuU+dDgKspAdzf9+iq2cxfebF8fu2NZFBB6y44qlf7yZMThb?=
 =?iso-8859-1?Q?X0+HcqyyVYpOOPTS8AIlEenETFWmen8i9qs8GPxtt1uQdo+bsrDrfk8LoU?=
 =?iso-8859-1?Q?seSnL8GNsdOSHsd+z3c2WwOznBY9VHBlIBQSqoUvQEkucrbGxxrX6XUtYF?=
 =?iso-8859-1?Q?IG5i75OwLIPJ5IRtKY94jA+fYD9uzR54MXi/HuoekMNWdA770FYiQH8W1/?=
 =?iso-8859-1?Q?kTd7U0e0vhMLgdpZyPCLSKNLWRV2lhW5ULWOtuDoivmcYT1W0c/XcCoXBn?=
 =?iso-8859-1?Q?LZ/O6H37nj1Fol+incaqrR8pz9PZY7+yk5l7+PK9+L+L6m3iWnsct5dacn?=
 =?iso-8859-1?Q?U6o4fD0BWY?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e07e589-40dd-4986-8f79-08d93257e7c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2021 12:52:18.0346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J4QftO/53phm2tgRPqpeXrro5MG7rPzqas5e4FInZrik9smUSyVvFoHTNIdvGu0sAhTflMxdba0Tn+Lgf3+64BI/i3Lnn+Da5c31UqOhw0GBT6yAAm9c1eyPOcRMSDPsHEfc7/QoGYDqrfKlzpT4Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5113
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

Sure. I will try that. Would you suggest best way to test this? I was testi=
ng using playing HDR video on HDR monitor with WA implemented.

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

As per Jose's review in last version, I have removed W/A disable change. Pl=
ease see below :

" Like the idea of only enable the WA when a HDR plane is enabled but =

there is some problems:
- never disable the wa
- not checking if a cursor plane is also active
- calling it in the post and pre plane update, I think only the pre is =

needed
- checking the old state, no need to do optimizations like that for =

just one MMIO write"

Thanks,
Tejas
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
