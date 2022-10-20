Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B5B60690F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 21:43:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 146DE10F248;
	Thu, 20 Oct 2022 19:43:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D337610E451
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 19:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666295023; x=1697831023;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PsHl2g7rV4WqAYhPBm/zcJKlvI1XMKGL16Mhv5JpfnQ=;
 b=ICMHWhmQbpGf6LgP1YOnX7UR3BXfpalsbBy8ncd0b1L0fmJBRi9wpahx
 8MHVTQ+XRKsoDOdxKIU929e2jQXaNa+GzSS2DBbVsY+/7z4uWYf+NOz57
 QKpdlG6Bhd6OpQljz4kw3RLvIaUldR2I7tKtHoVuh3NdMsThvXEtrT9iv
 75pgLAg3gLrSJnKu/gU47dKe12RPqlJuBQD83hkJbeCriiMPu07TyxSK5
 JpW/mzmnTPlLAYWAxZ25ubDZK5HuZCBOflRJW11WaO5Fu3vDqq5gyPDij
 d63X1SKtILZNux98UioZ5rVezUo/pFp1YpbMQ12s1cmWv7nPgbNV54ZhF g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="393123534"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="393123534"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 12:43:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="693206831"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="693206831"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 20 Oct 2022 12:43:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 12:43:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 12:43:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 12:43:42 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 12:43:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ejcI1L0fkH109cvFmfykSsKhe1ZRgb8h7nnZ2TvvGVqrpHPDKm2lLWrTtW8pdr/9ukGC51K2PRwOxSY9e3sW2GsZFg460v8Weom+ygp4qkAHn0PvX+1LNOnrXnrw45t9dhZZZ6vq+8OXqTVoRp1w9rYW5A8jK3IFJuv5L1Lz6idP/Ghqq8HSd8fhSzU3HFyZ8T0HDcKHUSOgm+2xD7s6gBWB0zX+fMuducvtBHaO/z/vgolwT5S/XaL7FjSKDCN/y8paHL0r7gPd49yP/Y1g9lZ2LgX+HkCr00JgO4olmzY4aLQMNKHUgAM5M955G8QDEDBEAVUUk1iFu2QJc5EXFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+elBgwOQpJ5WZGAjWi8zroiXSVkGkN47g7S5Sc9HvuE=;
 b=kYmgK6wvSvzNSgrX2s5RCDOkpZzL33fq35DUhsIDX2jw7XHfRhlvIFYdNxx0U7AKwq5DkgwYrulagsHYauyRS1XFRzVUI/Npe0mRRTMvIoA4VbYYngHAQutts+wM7DA3YFBavgUCpWkeiqZq/cLIwyFrGzuLJ2YPoj1g4wQF+dAkj/7usfXVsvK56QZa5j0KIz8bVVg3vbNT9lD0tP+ccH1xQ28oNzBOPNu5h7t1++rr14vAJOqUnHINsF6bKBuyPevGferafvRGlG6plnukVSffM9HpZOhTTDEWIJOt52Y9wJuDsppMxFi/VWEFn0sm7uBtt2BTH/5f3Q/oxxpofA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by SA2PR11MB4842.namprd11.prod.outlook.com
 (2603:10b6:806:f8::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Thu, 20 Oct
 2022 19:43:36 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5723.033; Thu, 20 Oct 2022
 19:43:36 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
Thread-Index: AQHY31wUKux4VuHBuE28TqNJNdWBya4XZYUAgAAJGQCAAEqD0A==
Date: Thu, 20 Oct 2022 19:43:36 +0000
Message-ID: <CY4PR1101MB21661AD739327074D31094CFF82A9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221013233223.103381-1-anusha.srivatsa@intel.com>
 <Y1FePEl7ySsHWxBg@bala-ubuntu> <Y1Fl3l3/0Xieq9iG@intel.com>
In-Reply-To: <Y1Fl3l3/0Xieq9iG@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|SA2PR11MB4842:EE_
x-ms-office365-filtering-correlation-id: 4dea8d64-275a-4f7e-c663-08dab2d3610d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b/VFRTd2KQkWjWgRmL8sZXhnBA2cB2zCp9v5LAxJC12qi8+Az5Ls/1vrQ9ENUytCGA/yaDPviX3A+sOG+pzLJEMoqKAIIGlQgO1DJDUFS8ycx5HKAlx+T1g9xyuj51NMKIzjyySjAV9EJ1c6ZWXuzQUgcinb0gREhUD+c6sXxAv1M/pkmB9oEnDgH+FTVu/7+3q7hlSize7o1MmTOZOXnthQw6JAmUwovcFzyU4VcNXelxvqDx0Y99HYdGSZtGSY5pM+8DkeQEkwYlnUlhEPX+I+Nah/2z0u8OUaE7c/cDHX/+M5Gm95kns1Kt4W8hzjGdie2Rhr8qBK1DIZe6/J7Gc4iTvRX/69Ym3ZqCyQxncyuQMUfUplgDPAhmx8oMueRE/w+rWC19vUkC6h1KELTZ22YPDWqQgH9MGGM5/v7Z63J+ph0TVPvncJ1W20nriJWvMX+cCnuMK5a+/OyJwpC1WeJ8CbTCxFX2jdM3vgpFYz6QLZFlD2MJpMRt1fjkxzQVGZwBb/kjlUNEDifZBg1Jk4sdRPGOBmc9qnKiyKrsbyumSCt9z54hbfOQQOaYowAytk5Iil8FPeIXMHDtzfDHFlzNeqVoOa8KVQXDDEa6wCj3PLPt+5ICLNe3V4QF3LuW1KY0dWS+ceMIlIs0TlzwOektrdXf64B3dcxulEnsSac8kN9CIwdMI5YypxHJrzyjEj0YNh1ugExiqevBUNin8yQaqgn+bi5W4K7ILazEX6YKusm5ethvomGKChE3za5Q7NbNer9PW03ROmXqT81v1zvXB5PlRiDhU/N8RDN1c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(396003)(376002)(136003)(366004)(451199015)(66476007)(8936002)(2906002)(5660300002)(66446008)(41300700001)(66556008)(30864003)(38100700002)(52536014)(122000001)(33656002)(86362001)(7696005)(26005)(8676002)(53546011)(9686003)(82960400001)(4326008)(6506007)(64756008)(38070700005)(6636002)(110136005)(186003)(71200400001)(478600001)(76116006)(55016003)(66946007)(66574015)(316002)(83380400001)(17423001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?zqJVML2hqFvCP7EiwZ7OJBNo7blvuv0RkUsnv4sqLFYSX3+1aACuyGNDk7?=
 =?iso-8859-1?Q?mRS0UMSN3+RrIGRWT226deI+p9HqRLIQU7/kOgi9bE2LP3gS4sO5EFraPS?=
 =?iso-8859-1?Q?YqQnXeLzYR1ChVJ8MvXoV6IuwVckJAWfKssJEoLFra9qS1AVbiJQcE+Kcf?=
 =?iso-8859-1?Q?hg2KmW0Ax0XnFe5eYskuUE4/tWvCMbMd4bhX8m/OoagUqynIugQdtYS00p?=
 =?iso-8859-1?Q?sQpQ9sBpkmnwpzfDOoAtvc8aWEn0kti0WsCtu+gf6dvI1pZUtz5ObZeTko?=
 =?iso-8859-1?Q?062VRQFqipGuJINnfJrWvDGs72Bp8rEr+PjgOokclg5KUc4mnXKPuNZMcS?=
 =?iso-8859-1?Q?wpQ5ze/vsny4YytZzrwd8fEEXNM5nP2AHpirHu4T1W8e85ikNwIEB9aq5w?=
 =?iso-8859-1?Q?M1ktcNh8JrMQl6Q/QFSgMvShZSIUxY7TfBsfWALh2qZAHnfWVonMuCEuZU?=
 =?iso-8859-1?Q?uyZm/lqwNEk/FV8h9m9ykeK+DsYDBEohCF+57TkpZTGTaV4v6ZKROdc+uo?=
 =?iso-8859-1?Q?6mTLW9Rlcro+9RzZkjKexxeMyojGm3v7b75Ga75+720Y6Xs/DipgkwdJ31?=
 =?iso-8859-1?Q?cUEysdammzh1yTOtIxC/yP0kb1iZP0dk4xhZI8uI0wZ1B12Mw/3oy/8Bjv?=
 =?iso-8859-1?Q?YzLyFSCfY8ffz7+BvMpbGtu0ddtkAjVbaubRgi8K1nV/mBe6JoceV9IGvX?=
 =?iso-8859-1?Q?zI7arQrtfLnjnXTEq/74g5UHYllK5xHnex7VUzKkXf0NTzJV3dK8948Iav?=
 =?iso-8859-1?Q?AT2ll22tgLoCO+PQBnFGv1pbCSZaDtTIx/+GPLamiv55F1KlzR0ztYBtLd?=
 =?iso-8859-1?Q?oepzE23NmoRs0EuyqbEAJP6EZEAFHme76DJFxJOYT4ZE/xaimQZbHXcv5Y?=
 =?iso-8859-1?Q?rIafPQI/o+Sp4DpV0r/rnXbupD45/q7O5IJHKe74/SbVy0J0BWoJcvEFQU?=
 =?iso-8859-1?Q?LqyVmRdEj59u6TIudlCGcsVlSrG4LWhZkSRotPIu+rijO/zeGmbE6hFsTV?=
 =?iso-8859-1?Q?xDwNprxbP256eA18jsP3NhXMBHh3BI1bZ+5DF/GUw1viOvdWQ4R7aDsq9H?=
 =?iso-8859-1?Q?2BxEMLSLrLVXYWYSgd6jAE6e9udsBkwf0EyPf0/+6kao4NSFxSfZUEX7Og?=
 =?iso-8859-1?Q?pbJuUblAyxdf9UvuC0z/MFPjWnatbGtY4bKIBBvOsaH4dQYQWSGDtH5Eq6?=
 =?iso-8859-1?Q?4G7+49Csso2vJ1HpVPCXlcwfvYtaUBvR293wSFpZzXtfwkg7HGwlFu4mQM?=
 =?iso-8859-1?Q?AlLy+xFtgYFPkttg001PBHEZWR0+qQ76Dv2LamHgBWFA/a0uioRP78csq6?=
 =?iso-8859-1?Q?DOc4zX0qUd9IeorvkkRHlZ2cRH2LPKlV+no3r/icgLdIVjy86CKhb4CtpS?=
 =?iso-8859-1?Q?ulBif7vjbO8zpGpLPNfzpRaukiomh69WRHoJXlb4sK1qEvR1+VXAhDHwMt?=
 =?iso-8859-1?Q?C5sI2yN5O5jsv95hmR9h2yzZ2WhedfkDUxnKaHQIj4gMLnMkrBicVT3rYk?=
 =?iso-8859-1?Q?sj+grtSzGn48g6YT26w019InGRlHD3x7B87Zpr0JT/IDfyzJDGrtUJnag4?=
 =?iso-8859-1?Q?lNApKnlyT3GAdSo2sojtCJe+b4r04sYVJP/3qDx3lIuHkm4oDzMQscHCN3?=
 =?iso-8859-1?Q?p2slRitTMEq+WIxkVINCXHta2MLHaYx+dpnzlwi6DLTQCG2DnFcAOifA?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dea8d64-275a-4f7e-c663-08dab2d3610d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2022 19:43:36.2326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kiG+cKdcXcrtiYaTO+5MdIxowz9GuaRkJ43QbdR4Y1XY1PCR/FEeITrtqdwXctTYdUk7K2HABFLEe3KINk0tD3NIqbHzlkJTkTLnxuLh2GQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
> Sent: Thursday, October 20, 2022 8:15 AM
> To: Vivekanandan, Balasubramani
> <balasubramani.vivekanandan@intel.com>
> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
> squash when changing cdclk
>=20
> On Thu, Oct 20, 2022 at 08:12:04PM +0530, Balasubramani Vivekanandan
> wrote:
> > On 13.10.2022 16:32, Anusha Srivatsa wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > For MTL, changing cdclk from between certain frequencies has both
> > > squash and crawl. Use the current cdclk config and the new(desired)
> > > cdclk config to construtc a mid cdclk config.
> > > Set the cdclk twice:
> > > - Current cdclk -> mid cdclk
> > > - mid cdclk -> desired cdclk
> > >
> > > v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk change
> > > via modeset for platforms that support squash_crawl sequences(Ville)
> > >
> > > v3: Add checks for:
> > > - scenario where only slow clock is used and cdclk is actually 0
> > > (bringing up display).
> > > - PLLs are on before looking up the waveform.
> > > - Squash and crawl capability checks.(Ville)
> > >
> > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > Please add the Bspec number.
> >
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 157
> > > +++++++++++++++++----
> > >  1 file changed, 128 insertions(+), 29 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > index ad401357ab66..430b4cb0a8ab 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > @@ -1675,7 +1675,7 @@ static u32 cdclk_squash_waveform(struct
> drm_i915_private *dev_priv,
> > >  	const struct intel_cdclk_vals *table =3D dev_priv->display.cdclk.ta=
ble;
> > >  	int i;
> > >
> > > -	if (cdclk =3D=3D dev_priv->display.cdclk.hw.bypass)
> > > +	if (cdclk =3D=3D dev_priv->display.cdclk.hw.bypass || cdclk =3D=3D =
0)
> > >  		return 0;
> > >
> > >  	for (i =3D 0; table[i].refclk; i++)
> > > @@ -1689,37 +1689,72 @@ static u32 cdclk_squash_waveform(struct
> drm_i915_private *dev_priv,
> > >  	return 0xffff;
> > >  }
> > >
> > > -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > -			  const struct intel_cdclk_config *cdclk_config,
> > > -			  enum pipe pipe)
> > > +static int cdclk_squash_divider(u16 waveform) {
> > > +	return hweight16(waveform ?: 0xffff); }
> > > +
> > > +static bool cdclk_crawl_and_squash(struct drm_i915_private *i915,
> > > +				   const struct intel_cdclk_config
> *old_cdclk_config,
> > > +				   const struct intel_cdclk_config
> *new_cdclk_config,
> > > +				   struct intel_cdclk_config *mid_cdclk_config)
> {
> >
> > I was thinking of asking to rename this function to a more descriptive
> > one, but then I myself was not able to come up with one.
> > For a fresh eyes, it is difficult to make out what this function is
> > actually doing.  Can you please add a summary as a comment above this
> > function pointing out what is mid_cdclk and whats the meaning of its
> > return value.
> >
> > > +	u16 old_waveform =3D cdclk_squash_waveform(i915, old_cdclk_config-
> >cdclk);
> > > +	u16 new_waveform =3D cdclk_squash_waveform(i915,
> new_cdclk_config->cdclk);
> > > +	u16 mid_waveform;
> > > +	int size =3D 16;
> > > +	int div =3D 2;
> > > +
> > > +	/* Return if both Squash and Crawl are not present */
> > > +	if (!HAS_CDCLK_CRAWL(i915) || !has_cdclk_squasher(i915))
> > > +		return false;
> >
> > Can cdclk_squasher feature availability be also made a part of
> > device_info structure like cdclk_crawl and create a macro similar to
> > HAS_CDCLK_CRAWL?
> > Like Ville said it looks bit weird. Also we would avoid adding
> > platform checks inside has_cdclk_squasher() function like it is done
> > now in your second patch.
> >
> > > +
> > > +	/* Return if Squash only or Crawl only is the desired action */
> > > +	if (old_cdclk_config->vco <=3D 0 || new_cdclk_config->vco <=3D 0 ||
> > > +	    old_cdclk_config->vco =3D=3D new_cdclk_config->vco ||
> > > +	    old_waveform =3D=3D new_waveform)
> > > +		return false;
> > > +
> > > +	*mid_cdclk_config =3D *new_cdclk_config;
> > > +
> > > +	/* If moving to a higher cdclk(squash) the mid cdclk config
> > > +	 * should have the new (squash) waveform.
> > > +	 * If moving to a lower cdclk (crawl) the mid cdclk config
> > > +	 * should have the new vco.
> > > +	 */
> > > +
> > > +	if (cdclk_squash_divider(new_waveform) >
> cdclk_squash_divider(old_waveform)) {
> > > +		mid_cdclk_config->vco =3D old_cdclk_config->vco;
> > > +		mid_waveform =3D new_waveform;
> > > +	} else {
> > > +		mid_cdclk_config->vco =3D new_cdclk_config->vco;
> > > +		mid_waveform =3D old_waveform;
> > > +	}
> > > +
> > > +	mid_cdclk_config->cdclk =3D
> DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> > > +						    mid_cdclk_config->vco, size
> * div);
> > > +
> > > +	/* make sure the mid clock came out sane */
> > > +
> > > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> > > +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> > > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> > > +		    i915->display.cdclk.max_cdclk_freq);
> > > +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915,
> mid_cdclk_config->cdclk) !=3D
> > > +		    mid_waveform);
> > > +
> > > +	return true;
> > > +}
> > > +
> > > +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > +			   const struct intel_cdclk_config *cdclk_config,
> > > +			   enum pipe pipe)
> > >  {
> > >  	int cdclk =3D cdclk_config->cdclk;
> > >  	int vco =3D cdclk_config->vco;
> > >  	u32 val;
> > >  	u16 waveform;
> > >  	int clock;
> > > -	int ret;
> > > -
> > > -	/* Inform power controller of upcoming frequency change. */
> > > -	if (DISPLAY_VER(dev_priv) >=3D 11)
> > > -		ret =3D skl_pcode_request(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > > -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > > -					SKL_CDCLK_READY_FOR_CHANGE,
> > > -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > > -	else
> > > -		/*
> > > -		 * BSpec requires us to wait up to 150usec, but that leads to
> > > -		 * timeouts; the 2ms used here is based on experiment.
> > > -		 */
> > > -		ret =3D snb_pcode_write_timeout(&dev_priv->uncore,
> > > -
> HSW_PCODE_DE_WRITE_FREQ_REQ,
> > > -					      0x80000000, 150, 2);
> > > -	if (ret) {
> > > -		drm_err(&dev_priv->drm,
> > > -			"Failed to inform PCU about cdclk change (err %d,
> freq %d)\n",
> > > -			ret, cdclk);
> > > -		return;
> > > -	}
> > >
> > >  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco
> > 0 && vco > 0) {
> > >  		if (dev_priv->display.cdclk.hw.vco !=3D vco) @@ -1772,6
> +1807,44 @@
> > > static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > >
> > >  	if (pipe !=3D INVALID_PIPE)
> > >
> 	intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv,
> > > pipe));
> > > +}
> > > +
> > > +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > +			  const struct intel_cdclk_config *cdclk_config,
> > > +			  enum pipe pipe)
> > > +{
> >
> > bxt_set_cdclk() is now bloated as it is reused for new platforms with
> > new features resulting in too many condition checks. I see it is now
> > time to switch to a new set_cdclk() function. I would prefer a new
> > function for platforms starting from which supports squash/crawl
> > feature and add this new crawl_and_squash feature implementation to
> > the same function. But definitely I dislike using bxt_set_cdclk for MTL=
.
>=20
> bxt vs. icl split might make sense since there are a bunch of if-else alo=
ng
> those lines. Beyond that it all we'd achieve is code duplication I think.
>=20
> Well, we might be able to avoid some code duplication if we managed to
> chunk the different parts of bxt_set_cdclk() into lower level subfunction=
s,
> and just cobble together higher level variants (crawl+squash,just crawl,j=
ust
> squash, neither). But basically all of those are just subsets of the
> crawl+squash version, hence the duplication.

I agree.

> Another approach I was musing about was to add vfuncs for lower level
> operations (pll enable, pll disable, etc.) to get rid of the if-else stuf=
f. But
> dunno if enough of the platforms would fit that model to make it sensible=
.

I will have to explore this myself.

> >
> > > +	struct intel_cdclk_config mid_cdclk_config;
> > > +	int cdclk =3D cdclk_config->cdclk;
> > > +	int ret;
> > > +
> > > +	/* Inform power controller of upcoming frequency change. */
> > > +	if (DISPLAY_VER(dev_priv) >=3D 11)
> > > +		ret =3D skl_pcode_request(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > > +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > > +					SKL_CDCLK_READY_FOR_CHANGE,
> > > +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > > +	else
> > > +		/*
> > > +		 * BSpec requires us to wait up to 150usec, but that leads to
> > > +		 * timeouts; the 2ms used here is based on experiment.
> > > +		 */
> > > +		ret =3D snb_pcode_write_timeout(&dev_priv->uncore,
> > > +
> HSW_PCODE_DE_WRITE_FREQ_REQ,
> > > +					      0x80000000, 150, 2);
> > > +	if (ret) {
> > > +		drm_err(&dev_priv->drm,
> > > +			"Failed to inform PCU about cdclk change (err %d,
> freq %d)\n",
> > > +			ret, cdclk);
> > > +		return;
> > > +	}
> > > +
> > > +	if (cdclk_crawl_and_squash(dev_priv, &dev_priv->display.cdclk.hw,
> > > +				   cdclk_config, &mid_cdclk_config)) {
> > > +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> > > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > > +	} else {
> > > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > > +	}
> > >
> > >  	if (DISPLAY_VER(dev_priv) >=3D 11) {
> > >  		ret =3D snb_pcode_write(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > > @@ -1944,6 +2017,27 @@ void intel_cdclk_uninit_hw(struct
> drm_i915_private *i915)
> > >  		skl_cdclk_uninit_hw(i915);
> > >  }
> > >
> > > +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private
> *i915,
> > > +					     const struct intel_cdclk_config *a,
> > > +					     const struct intel_cdclk_config *b) {
> > > +	u16 old_waveform;
> > > +	u16 new_waveform;
> > > +
> > > +	if (a->vco =3D=3D 0 || b->vco =3D=3D 0)
> > > +		return false;
> > > +
> > > +	if (HAS_CDCLK_CRAWL(i915) && has_cdclk_squasher(i915)) {
> > > +		old_waveform =3D cdclk_squash_waveform(i915, a->cdclk);
> > > +		new_waveform =3D cdclk_squash_waveform(i915, b->cdclk);
> > > +	} else {
> > > +		return false;
> > > +	}
> > > +
> > > +	return a->vco !=3D b->vco &&
> > > +	       old_waveform !=3D new_waveform; }
> > > +
> > >  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> > >  				  const struct intel_cdclk_config *a,
> > >  				  const struct intel_cdclk_config *b) @@ -
> 2750,9 +2844,14 @@
> > > int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
> > >  			pipe =3D INVALID_PIPE;
> > >  	}
> > >
> > > -	if (intel_cdclk_can_squash(dev_priv,
> > > -				   &old_cdclk_state->actual,
> > > -				   &new_cdclk_state->actual)) {
> > > +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> > > +					     &old_cdclk_state->actual,
> > > +					     &new_cdclk_state->actual)) {
> > > +		drm_dbg_kms(&dev_priv->drm,
> > > +			    "Can change cdclk via crawler and squasher\n");
> > > +	} else if (intel_cdclk_can_squash(dev_priv,
> > > +					&old_cdclk_state->actual,
> > > +					&new_cdclk_state->actual)) {
> >
> > In the bxt_set_cdclk(), we perform crawl_and_squash only if neither
> > crawl and squash alone can't accomplish cdclk change. So move the
> > intel_cdclk_can_crawl_and_squash() check to after the checks for crawl
> > and squash individually.
> > This would just make sure the logs reflect how actually the cdclk is
> > changed.
>=20
> The current order seems fine to me. intel_cdclk_can_crawl_and_squash()
> shouldn't say yes unless both crawl and squash are needed.
 Agreed here.

Anusha
> >
> > Regards,
> > Bala
> >
> > >  		drm_dbg_kms(&dev_priv->drm,
> > >  			    "Can change cdclk via squasher\n");
> > >  	} else if (intel_cdclk_can_crawl(dev_priv,
> > > --
> > > 2.25.1
> > >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
