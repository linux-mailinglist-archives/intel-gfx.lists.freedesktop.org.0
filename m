Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 597F86284EF
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 17:19:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D47E10E0E7;
	Mon, 14 Nov 2022 16:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECB1510E0E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 16:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668442772; x=1699978772;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=deur20Q+GnR1fJPZRaUK/Xt2AwWhs6xBBLIhQ3HZjyw=;
 b=bD2ZItQNjsYy6r9yRJ5MDhbVPBCgosgg6SqfUkA5npFXveg/6eurT12E
 WaKQTNWzawe5bxKrFaZZ2E/vl/Dww5zswA7IbOUOrIYdUGVtbvfZxa2Cv
 ajmEXHul7YX9LMipH4OzVgGBSmF9exnJ1p/vlpFeDygzXlxf6Jy9su7wA
 4CryD9FrAccYhzt1XTrOi0AAXYKln/92Wn0aQQoyQQx6SySyw0xryGvsw
 UoVEkA/aN7zaeqUFkODIwlEvAHyKLYQ0Grjo5ytU9xj2sXd84skrYhFza
 UjsC5EBpQj8gDj5ddQh95JLyaitvkrvwOxOF3xyLH0o7YZDHc4gRsXrJQ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="338800462"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="338800462"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 08:19:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="813312313"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="813312313"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 14 Nov 2022 08:19:30 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 08:19:27 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 08:19:26 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 08:19:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NJukqzLJT9YCdKQY2SdR31ZFC9TNEhg8RfwGo5PfnWNPqWv3d0gywMr7E0zPppvIPRVduLT07DI0lzg029qxNIWoAG/7PbS63n6m+Y71nbUKnYM+TIrcLjtZnoJnSq84lrUJZC4Oj2UtVyPjc/lsjqp0mF5TMR5KqGKGs4WNKmwM1ydzag/Tlw7hjANoyQYZZ1YPGkRbzKagmCbHLrkKrHgsDvmZhzUpW5dYzHCIGpfH+Dg+JBhWOAdi40NTXcoJgZsSi/fvUeljuNJHYt0qatGLQ+mRDbY00or4DkJcmHdty/VHvMOn/HizSBAXFZeUg1qt0Kd0k51L8PRI7MLZ7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/aHD3eHVFTzGoJKYuv6ounyNmcNYbxQ7KsJQOuBWL4I=;
 b=IMhKPur350uI/az5UBayhYQ0M1yXp2pXlz+UmDnGuxff80taC9p3sR5N7yiudDUljc/OEFjT4cisntBBrZwH2EQW9+QefecRjmnVJud+sr+nnRHiJsuD0czf7mzF4sgntN+nGVCSjXUyZwh8EgpRBlXr0Yc4ufvd9H37o1oy3Iqw0UJP5yfrMnpWGOZCTeMz9bDQ9BTOvFuy+Xf7itQeZh8bGTmsUMFxtGuYBU/nPjNoft+By8NM/KzRJyZiZUFm+Wa7zR1cXCTzi7a7l6LP1jxn0UtfaXPCDN3ol1poGACUYfa/I08XWbai2pdlldyLWj6IX34apKah17HvFToEeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by PH7PR11MB7552.namprd11.prod.outlook.com
 (2603:10b6:510:26a::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 16:19:25 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5813.017; Mon, 14 Nov 2022
 16:19:24 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/display: Add missing checks for cdclk crawling
Thread-Index: AQHY9gNj0MW/cuPn9k+0x6LT9TDGKq46Hq+AgAR+lMA=
Date: Mon, 14 Nov 2022 16:19:24 +0000
Message-ID: <CY4PR1101MB21662428699BA8F0F28678FDF8059@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221111192602.257418-1-anusha.srivatsa@intel.com>
 <Y26lAzmc1C4oIMOK@intel.com>
In-Reply-To: <Y26lAzmc1C4oIMOK@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|PH7PR11MB7552:EE_
x-ms-office365-filtering-correlation-id: 4b8a08e4-6a91-4b1c-c271-08dac65bff05
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OUrenXSFFAGIeERuC+y8gF5BXfUmLfHNvChWvYmRo2BSw1EPkZSe+Rm9mebsTjApPMmUv6P6d8bRX9CZtH2ni9V8RAwdaPp6t8388KzqBVm9i+B6gqXuB5do1mmeiAgkbPr7MRiZv2O2JlttC9jxA5VHJwhuig2zVN43g0kd8jQdJtLDXGh0MXQX4HKHcx5bxPqN7Uslc1IaDmIyHtD7Kygqc3BqmvJ/O9CakcfRG4gvsL68TlJ4Zn0g4Pqt+NkbiqrRYoazRMyBMYdPeJOKPg0euGZINhoqMMowYtGGtnc0h+okWQhcRE8Yx4Q3SsGCiAfW/j/9hnGA9ZJz0xAU3BUAaLYpG2FaedJiwhhldwOgZy3TctUOKqqZ4pv4SMas3dC4rbxhGcq1KxG+OsT9jE7/SwXlOhaVpfP2WFNcmYa6qg16uv8A6Dono6Y4ylh+AtezGTSBXHdhG4a5Wj081KydPtPM88nO8yMg6h6gNh2WAlyxNKeU4ArW6cqzB2VbyR/U1IASxw6eAsUXePiP233xSlIoRaPpo2hdae7SZC5dX4d8sPdlEyvVO7kZW+bRS9ogew1dkyPRMSrQQYDSgat+0kd2MekCHZepLj/85OT0U25m6Rd5FI22gn4262EJlTDaNEIa8T7Z+Zzee+PbUvSDweKlT4QhVljU6lZu9FT0IKewcNEN1zLhgKw65nLScWy9K28JEgLolh2cDnlXftW8yHzZjERe+gUNcPvKvgjnhWqfi+Pq0VglVzUNYpekfAmmKaBnAbOsPSo6/Hw5Yw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(396003)(39860400002)(366004)(136003)(451199015)(86362001)(33656002)(2906002)(53546011)(122000001)(66574015)(52536014)(8936002)(478600001)(83380400001)(38070700005)(186003)(82960400001)(38100700002)(316002)(54906003)(6916009)(4326008)(66476007)(55016003)(8676002)(66446008)(6506007)(76116006)(41300700001)(66556008)(9686003)(5660300002)(26005)(71200400001)(7696005)(66946007)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?MNk5JZmlJzMh6jRw/UAfBu40v3ILHephh5BzUrMUBM/BZtNfGGva/BMzQn?=
 =?iso-8859-1?Q?JNKHivyDz91oPF3zU94Hg5TcYU8Rdd1mC13LaODT5j8mLGFhBsTClL3iP6?=
 =?iso-8859-1?Q?fYZxCtbdneOsR7Ry8KhKKVPM3hpaaGIv21zaqmIAvAfZBb1MhLnGDNHr7v?=
 =?iso-8859-1?Q?rfJ79PMTs7ntq6u/qRacQ1LGGtbGHFHwuL4Ndba2nMJ45117dI3cb8HC3J?=
 =?iso-8859-1?Q?RG1sqUocCgWaTHUn+ioSuBlOkt2OnVgj7azzlecOpIgukcqo1jzEj6vh9h?=
 =?iso-8859-1?Q?ZtSrsVHa9EX7jtIc+6rCSn+Eg7wPWb9fT6kxiUp7nBe1Y53n3jaCv06311?=
 =?iso-8859-1?Q?0/1GRlpWVghzTxoC4vR9mn8zV4gqLNpf7M8TX9MV0AW9w0TzOPBFyhCZUS?=
 =?iso-8859-1?Q?3P+IesUYQbHSt2U0QRPV/UADQrW2io4bUmsPpBf9vXDo84nhsFyQBSRhVn?=
 =?iso-8859-1?Q?sSeypc2to0CClzkTZv+HnE8NG0c0mIJ2lu6Sp6nXVDt/UP/35RL8zice0A?=
 =?iso-8859-1?Q?DXb6p4Pz6ywWMuCE6JmpCGWHFKKXikuRPd8Z+iMcL2mdbAFGO2KEmNIiFs?=
 =?iso-8859-1?Q?Aay7x4PPftduLgvMKUvoznTLw80JVk2N0mpnDvNYkfTgGAEEFceRwFPelP?=
 =?iso-8859-1?Q?PQbPWuxxkM+o5/q0e1G07NWL/j05bKoDJG1jsFPEN2Ao57OGcZktXO9jF4?=
 =?iso-8859-1?Q?YuIdVI6rL6f3ACNhd7Tb8vuI/jv5bgSXPV6BGZIly29WMXgmjQvhjB3LCN?=
 =?iso-8859-1?Q?/Gh1HhS3b2o9dtURFsaOL9N4OwdvNHPdUCj53roosjbz1NmtH7C4CDpZWt?=
 =?iso-8859-1?Q?Y++yJ8hgBkrE321VbzinmHsVX/QIIJ7XgrMsT9rKBtewrfN6Abai7aXn7K?=
 =?iso-8859-1?Q?ekCM8OyTMT0TMNgegjn3qBAA+RmF9VyKsrzNYiY/4U9nDdxrbUfW7QRs34?=
 =?iso-8859-1?Q?o7gaJopUL0lP3Zli8Yqa1ujrGRf5SiCoDaTGa0B4vEdRifoYReDdkBLAYZ?=
 =?iso-8859-1?Q?bY3eCY8PXbr7i0XN+brjtL01nVyMx5O//mZZN5F0zPxNMqQJNbuCT8hs3W?=
 =?iso-8859-1?Q?kGJorm9ok4lPPtBsJ5iQkzGredrisJlh+cNDZkfDFsXbqflLCKj1XHralv?=
 =?iso-8859-1?Q?ftlbg3PFeJuv8D1AJJEXOz4CZDZTCNXfobs/bxtr5Q3riRFEOsYDrV86TA?=
 =?iso-8859-1?Q?Yonh0EYtnkfKBeSVh95Er6/RBSh6yf1jW2FoP7DACMfh+B63qozeen1WAe?=
 =?iso-8859-1?Q?gBeVSkgCs5Gg2xFfTKv3coVr/7Ujj4Q07Z1I0aSHD2HHHPijvrtiJiUn7X?=
 =?iso-8859-1?Q?7uMazGhVm5kW/SI84Esk1CWp9Dmujsadq6CBiS9EelOR/hKxdWjGyt3SN3?=
 =?iso-8859-1?Q?uLC61fagtivSbJ2On7DgKi2DXRyen2eaJsG2NLY8tqPCH+g6bvwenghHGh?=
 =?iso-8859-1?Q?O93idxnxJPByRTAZC47rNBz6WyspT/s+x4JnNm262T5Q4SjagX4ecMlOZX?=
 =?iso-8859-1?Q?JQhkxWOGWS1cO1Scnfl4qPfeEsh99qKJEf9VUkK7GhXm8hH8a0+hoSVLPA?=
 =?iso-8859-1?Q?Mv1Hhu0KcdOlpjHNwBeHYwNWbda6YKrr2VHEDyT4aK9AHRY6B0mVyFilT7?=
 =?iso-8859-1?Q?6Syq6ARoJagLwaq/QKSHmcBEbP4vm13tW9dj/q6m9JFHjXwvhbXjQkVw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b8a08e4-6a91-4b1c-c271-08dac65bff05
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2022 16:19:24.9081 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IwbevE79+6QkdAYPIqkynodavF4w4cw3hWPuXUdMUoin45o4GxjAFZep3QGIDRR+ioPE9XDZZEyLp5gr8jf6NHWmAZx3iyngiaeiCc4GP1I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7552
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add missing checks for
 cdclk crawling
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, November 11, 2022 11:40 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Add missing checks for cdclk crawl=
ing
>=20
> On Fri, Nov 11, 2022 at 11:26:02AM -0800, Anusha Srivatsa wrote:
> > cdclk_sanitize() function was written assuming vco was a signed integer=
.
> > vco gets assigned to -1 (essentially ~0) for the case where PLL might
> > be enabled and vco is not a frequency that will ever get used. In such
> > a scenario the right thing to do is disable the PLL and re-enable it
> > again with a valid frequency.
> > However the vco is declared as a unsigned variable.
> > With the above assumption, driver takes crawl path when not needed.
> > Add explicit check to not crawl in the case of an invalid PLL.
> >
> > v2: Move the check from .h to .c (MattR)
> > - Move check to bxt_set_cdclk() instead of
> > intel_modeset_calc_cdclk() which is directly in the path of the
> > sanitize() function (Ville)
> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 13 ++++++++++++-
> >  1 file changed, 12 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 8a9031012d74..2d9b7ba58358 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1716,6 +1716,16 @@ static void dg2_cdclk_squash_program(struct
> drm_i915_private *i915,
> >  	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);  }
> >
> > +static bool cdclk_pll_is_unknown(unsigned int vco) {
> > +	/*
> > +	 * Ensure driver does not take the crawl path for the
> > +	 * case when the vco is set to ~0 in the
> > +	 * sanitize path.
> > +	 */
> > +	return (vco =3D=3D ~0);
>=20
> Pointless parens.
>=20
> > +}
> > +
> >  static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >  			  const struct intel_cdclk_config *cdclk_config,
> >  			  enum pipe pipe)
> > @@ -1748,7 +1758,8 @@ static void bxt_set_cdclk(struct drm_i915_private
> *dev_priv,
> >  		return;
> >  	}
> >
> > -	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco
> > 0 && vco > 0) {
> > +	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco
> > 0 && vco > 0 &&
> > +	    (!cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco))) {
>=20
> More pointless parens
>=20
> With those removed
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Thanks Ville.

> Though I think we should probably add the pll_is_enabled() helper too, ju=
st
> make the code a bit more self explanatory.

At this point the current code should atleast not block the MTL cdclk churn=
 series. But the suggested helper will make the code more explanatory and I=
 can take it up.
Thanks for the feedback!

Anusha
=20
> >  		if (dev_priv->display.cdclk.hw.vco !=3D vco)
> >  			adlp_cdclk_pll_crawl(dev_priv, vco);
> >  	} else if (DISPLAY_VER(dev_priv) >=3D 11)
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
