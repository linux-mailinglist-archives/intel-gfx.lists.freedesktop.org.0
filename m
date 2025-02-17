Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE64A37D1D
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 09:25:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8303910E398;
	Mon, 17 Feb 2025 08:25:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ESRrisEA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 038AA10E398;
 Mon, 17 Feb 2025 08:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739780706; x=1771316706;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5c2yRCrH+uWCZfV3YnxdzlXW5TY6sCQUZ2WTVQlIqYo=;
 b=ESRrisEAXY+iA4hvF4G2Bvmg1SaAdLIM0zSxTfsDg6rm+h+mA3mvn5GT
 iznzfkKr+IJbt4fwTjLqzuV5GhhKz80TAvQfOV1bHMuu8HjXc2QrNd5sT
 hP4G06VFCNuj5xEgCAgUb0Ssi8gUQ1O9Fn5n19CyEkMcLfBZrGp5suVHp
 RMefWjY64tVorb8QLWdmqUsOUcowloHhbACXCtgnWGlrheiEvI03aoOPF
 OR9PiqNlZ+KLJyU1kR14ANR2BMdNskZPkj4cUaNP3FkZBOl6w/tV93VNe
 Eg7b39lc1+6026sSjAvM1FoA+KTbru6lbxjvrV51fsdMSb09bsnSi6C+u Q==;
X-CSE-ConnectionGUID: s9y2wmF9QByydLa1WaX2yA==
X-CSE-MsgGUID: QmpHVU7WTYmcGX+fgRJW4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="50669830"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="50669830"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 00:25:05 -0800
X-CSE-ConnectionGUID: qSb2GMHqRk6Sflry9qG19w==
X-CSE-MsgGUID: TGQlITzzQy6M5x07UqRQyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="114571737"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Feb 2025 00:25:05 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 17 Feb 2025 00:25:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 17 Feb 2025 00:25:04 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 17 Feb 2025 00:25:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HpLEThS15UhuY2pow777Lev64QFMB1c4Hedytx8AcURKv/UgCJtjvgkMPE/FdpT18uKNaqk8sVpYtUigzbg/ppkes90nZri4Vuh06oCHvF4i9CJCA+g94Uld0FRrJm8sHnlz5YJGRlqWdKAjqoPu/OFEX6R0LKcj28IPbplxqbdreCwvhZnP8SXUaQ7Du04y8HC516tng2TjZswaghnWZ7hASkNSlbPmWhOZwdIiUoCKAg+qtRg2AKtZnJK0IbFx/UyLuylg8PzqsfAJe0448qHm0o27obcnmWKsXIwILTclfsagDS9en8VZIqpXhcfPq3t2OsVcX9cjASFnubJwdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v6PfaNCiFTSY504+yowrCpTJJEvOvNbAbZV2jNrzIEQ=;
 b=Xr6QygV4g4+RjLOalBY2Gk072uJXBgmQkTwAwZJtghBM9yY6OhBvRlKLbFGDhunhDHLmgLrXUQqhfT65g184wpBsAeYNHmnEGFTcGdGlFxrf+rz5kNab6gg/0XGFxBNMueMxSnGB/x/GXNiR74p7MTN/YppqE6sV7KPQv6POn42uduY3wYOWm5G471qQJO54ZFeyPLMuUxLxnkK7Chn4bFQqfymIzw2UQZYfaWcsQ4+SXthZouTS9Zly69/oaFnVpiGN83YTzZqZPgX19eGRxqOy5/ptAFbKxweiNnpMWJPXFmmv3le7y2JOBYYdSPE3OihX9fw3VcwxKa3asGgkeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CH3PR11MB7723.namprd11.prod.outlook.com (2603:10b6:610:127::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.18; Mon, 17 Feb
 2025 08:24:59 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8445.017; Mon, 17 Feb 2025
 08:24:59 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>
CC: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: RE: Regression on linux-next (next-20250210)
Thread-Topic: Regression on linux-next (next-20250210)
Thread-Index: Adt/w6jEykrzTRy2T0i5mvGBU6SHFwA64tgAABmBwJA=
Date: Mon, 17 Feb 2025 08:24:59 +0000
Message-ID: <SJ1PR11MB612943E187D762AA1DE41F93B9FB2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129D6C5644D4A6C858A4F04B9F92@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <Z7JG2BAR0taUWHAU@smile.fi.intel.com>
In-Reply-To: <Z7JG2BAR0taUWHAU@smile.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CH3PR11MB7723:EE_
x-ms-office365-filtering-correlation-id: b87b7915-19cd-4b72-fb80-08dd4f2c9196
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007|13003099007; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?2rcfGQywFbjOTrmLKlpokZHWzIbEZ5n2+qnLQCFCkIWgYybdJ57SqdxHY2?=
 =?iso-8859-1?Q?i+ljw4Mv+T2teApqvNhK3X7akK1GLCX9SiNKtGgEhFYjfjIYId1lvlutXA?=
 =?iso-8859-1?Q?QwJvW5fIasDvDtPtATgsMTpEfFdvB4n9tGliiRfm52njhz79uHTCysPUuf?=
 =?iso-8859-1?Q?4q0RR/MkZE7sh3fYK/povBkiQBjD9OLwOr0kw/t2bsGUFMBSMH1nhPi3W1?=
 =?iso-8859-1?Q?7htEXxL0YtI1/BCboPc5KDxHbkBb2ItmYqU/08XEQa+Z1ip7CS/dj+wtgo?=
 =?iso-8859-1?Q?cf7snx1YDIkdZCA8SSJ9CMAaTO5HbRKcwIAQEffP8/mFQRNHxCInYm+2Xs?=
 =?iso-8859-1?Q?/onPJJTh4kNXK+bMpjxVfszTWd3Ah+P9iC6XQhLJpwrY9GbX0TCCcIv24z?=
 =?iso-8859-1?Q?Jlwi0wka5/J6sX4k8gTC0bQU2L6rDfIpEbf0bEvtdrZnPtWmnZmVbEK/ga?=
 =?iso-8859-1?Q?41Yh9bZrEqRY03VWyrVsm6MAh6i52tOYQeEMUpihLL2CFbINtjKr5Jbhk6?=
 =?iso-8859-1?Q?on0JBBsSL0+y49VoZoxdjMnYws8bhGd+WA9WDEV3zatzivysUTM7p8BsrL?=
 =?iso-8859-1?Q?k7ml1ZKBZVg/aQu70Uw89esn7M8YmnSl6dfbNr9mqUKaAH06eGsztX9H0H?=
 =?iso-8859-1?Q?YGHoMiH18+Bz+SwcQRwKc0Ai3I++kuG7yDP8hh3PxlP38l2lYjm4pVpinZ?=
 =?iso-8859-1?Q?NZ33sax2qzpsgjkFIirCkBStRnO8UqO85Mu9/DTBkrWTqFsnuGB5g8epl/?=
 =?iso-8859-1?Q?LBo/u37ICw/lVIeJVgOxv2m9tSulZJ3/IRXZjx6/3NMslIieEseZ2VA0CN?=
 =?iso-8859-1?Q?ICuVkIBGatHwoKCysnLENNCG8ec9TQFVeXzGRtxU3R71i8/JIOoLrVoR+W?=
 =?iso-8859-1?Q?pvjLjRYuqG7MDHgkja9XeacPx+EhXxpSngqrici/Su4KuY2TC2DQQ5EmlP?=
 =?iso-8859-1?Q?6vbBBzoDj7IsQdyO892k9c40wvs2jz9x+KkzxS6liAa2bD51JjXnr8aaLM?=
 =?iso-8859-1?Q?4LXK1/EARIbDXyBi6xwZ4SWAVsjva13RlysGgRx6wuFCACP2fYO3wxz7Sa?=
 =?iso-8859-1?Q?wfbSAp/1PI2McbfB1Ph/rvn1U1cUXRJ0y7E0sqtLad+NqZ5qVAgMVmjowi?=
 =?iso-8859-1?Q?uFfx3R+mqsXucXagxKCWWjRkdFADTKjQcoWiXMTBDuZ2hnraeUF/7p3Vqz?=
 =?iso-8859-1?Q?Zn62dq0rTUVAbZdh3CE26lzoJgLMj767JHzYBW2/+OHoZaFq8UZy9D+lQ3?=
 =?iso-8859-1?Q?EpCtMTv1BRv2sviWCPC78cnhZNUiYgXV12EENSA3bl/BdKIPLapUD8Z4nI?=
 =?iso-8859-1?Q?bBmvXilQpFg3SlQTaaJlNotsyLmId6mrJnkS7R497IJCOhYspUvkx/1Fwo?=
 =?iso-8859-1?Q?hu8yvq97Uj9pOBej0hFi2NkBroBMfJCTZ6pGGad2VBpkEsn377++koUPUu?=
 =?iso-8859-1?Q?wNx31Z7IkrhRvgqea0WArpgLok4NniCzcEdi4A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007)(13003099007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Efd0wjF7pCSeGWM11FNeuJyywMOIot3WghjpzzniL6SVy/tdRRdWvIGsyW?=
 =?iso-8859-1?Q?rTLFH4Q8RsYniw2es6/a8BAy+nSWhRWKZa/Pbp5Q1b6o/c8zmwLW4FgxYA?=
 =?iso-8859-1?Q?SuVUKnlFTC7NUoDj582IepWZ55ToIx6HFT++aLboto4kuyYH5UfFgWJ5ys?=
 =?iso-8859-1?Q?8STdYsbOy/3jw7kRVlAkSWO5fPclIQ06GPcxT/MNXYp615NXYvSW3vI44h?=
 =?iso-8859-1?Q?ooZA316sqevyAUD0wdoFPfjt/F1IKKBZHIfc7JDjyrG1LMGkG1I9FH0ZpI?=
 =?iso-8859-1?Q?Lj+mhMy6T/Lq066QRW0qTKuf3u6+3SNnJin81NfgkJiwLpRcUS1q41mJHo?=
 =?iso-8859-1?Q?LANrxXMn/GSFr8YbxTUslHkA4U2Vh6jwptgLEdc1s18zADCR2CIEagJ9Jc?=
 =?iso-8859-1?Q?psVipXDvLEJEoavoqenYoexuYbb1qaGA16uC9/fr7hxunXmwbLoAqoDeMs?=
 =?iso-8859-1?Q?c4RIMXb2OBEe4ywpEWgvDcbFCG5gzNoUX6zZAuTSRdOp3VMotFCKPKOPK1?=
 =?iso-8859-1?Q?CvULnX2faIUPK2vQC8m4ZYGv9TOwdq20HhI8/BvRQ5CbC2tR6v7kmfesgy?=
 =?iso-8859-1?Q?NFXibniW0xIsp2bnG6RWlNCVZihzXObZktg0Joui8bFM9CFOJFj0Pn5gPG?=
 =?iso-8859-1?Q?igkS3IZZxt7B+cPJIFfNu/wm8dCcP0MOLjr/IgKkWuKv9nfxgPPk1vJr0i?=
 =?iso-8859-1?Q?4wpr8oz4wSvdWxTKtdNB5lJna448+paHB6W/igP0L8vn4NV60hkESTTSlh?=
 =?iso-8859-1?Q?8fiOCZPpbcJDQxgCf7hyxDVEzqMuArzlhTvsNw+qEN+hLqUIXwyWN6wepG?=
 =?iso-8859-1?Q?SERe4fL1uBCo8OHAR47gZk4dpjTSbku3FczLxr8dys/A7YSSnoaI/jrObZ?=
 =?iso-8859-1?Q?A2rlSzwNyOVLg5CZqXCo50/pFKBPHNfNNwQT2ztayJga6otb0JkMQbxiTE?=
 =?iso-8859-1?Q?dO0H+cyjOIkywZfntHIrjxCBGzY1P+z/W9f6QiifpZplnUhGRBDVwEocZ1?=
 =?iso-8859-1?Q?O2AVRBcvdNvf4v+m7j4UyT5e7zZLEgNFG00L1gQMxXoZVirKoJpLv81Son?=
 =?iso-8859-1?Q?W7H+dnQXIJ9URZuBso1QYozht+qtXFBQdQZGll7sCtDtoaKKhuw9WYqSLM?=
 =?iso-8859-1?Q?JWTFoNYn4wqtLQ+AgiVY826sPhikLAY5AjC6Cfl8e6Lr5ql4OFNUBN+PhH?=
 =?iso-8859-1?Q?E0RpZuedexYKMCAfW5yLdq5a8XiKyK6SLryubojFZiyeWc7ntNp7nPpuqg?=
 =?iso-8859-1?Q?HxTDWeGGrTM8qOLqRSwBBbnMIGBkKewnTsHJPbAQnOhVNfI8HBo4s1dQps?=
 =?iso-8859-1?Q?w6YlL4SPWUJkQQglZuz97O5Q7SpalMW0uHCMe8fbECqgmMWmdq6+0LIhuc?=
 =?iso-8859-1?Q?MvkDrqRazFqOwu4lfEi8+I9pSTvLhNcncwmsOAxcwZjs96LfAp9Mg+rmXF?=
 =?iso-8859-1?Q?Ht83ykYuNH7VV/ugQnDswJKrl9I9EjwchQlA7O+HGSn5ph/zXlGva7Y1gt?=
 =?iso-8859-1?Q?8b/hnjRG+v/tfz1UTc+YQ0I1PgnTZmnVOVM/lsxDxoqU1fgT2XNz8HqTOb?=
 =?iso-8859-1?Q?y2aX0+65QG5vScEndmQd/j528mQ4XmutKJRyOeATqhv3ag6Jg7d3gnNXIu?=
 =?iso-8859-1?Q?01mpXFeL9e+vxIxrFh7zJVitAfTfyf83i+3VIQiA/oV3q5ETGBmKwK5A?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b87b7915-19cd-4b72-fb80-08dd4f2c9196
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2025 08:24:59.5912 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sClUOO0KS0topSTOEIGr1EraI7jJ8Wwd+oKpy2Nm1r2+u9BR7j5Pj5p0tJ1knKWDo2lMlFb4Gvs3QOhNzcZgFFkHIkmZmfFuFAk7mwHLneE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7723
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: andriy.shevchenko@linux.intel.com
> <andriy.shevchenko@linux.intel.com>
> Sent: Monday, February 17, 2025 1:43 AM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: linux-serial@vger.kernel.org; intel-gfx@lists.freedesktop.org; intel-
> xe@lists.freedesktop.org; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>
> Subject: Re: Regression on linux-next (next-20250210)
>=20
>=20
> The fix landed upstream, will be in next Linux Next.
>=20
> c213375e3283 ("serial: 8250_dw: Call dw8250_quirks() conditionally")

Thank you for the response. We will wait for it to land in linux-next.

Regards

Chaitanya

>=20
>=20
> On Sat, Feb 15, 2025 at 04:16:58PM +0000, Borah, Chaitanya Kumar wrote:
> > Hello Andy,
> >
> > Hope you are doing well. I am Chaitanya from the linux graphics team in
> Intel.
> >
> > This mail is regarding a regression we are seeing in our CI runs[1] on =
linux-
> next repository.
> >
> > Since the version next-20250210 [2], many machines in our CI are unable=
 to
> boot.
> >
> > Unfortunately, we have  not been able to collect any logs (even from ps=
tore).
> >
> > However after bisecting the tree, the following patch [3] seems to be t=
he first
> "bad"
> > commit
> >
> > ``````````````````````````````````````````````````````````````````````
> > ```````````````````````````````````
> > commit bfd3d4a40f3905ec70b17dbfa9b78764e59e4b4f
> > Author: Andy Shevchenko mailto:andriy.shevchenko@linux.intel.com
> > Date:=A0=A0 Mon Feb 3 14:14:56 2025 +0200
> >
> > =A0=A0=A0 serial: 8250_dw: Drop unneeded NULL checks in dw8250_quirks()
> >
> > =A0=A0=A0 Since platform data is being provided for all supported hardw=
are,
> > =A0=A0=A0 no need to NULL check for it. Drop unneeded checks.
> >
> > ``````````````````````````````````````````````````````````````````````
> > ```````````````````````````````````
> >
> > We also verified that if we revert the patch the issue is not seen.
> >
> > Could you please check why the patch causes this regression and provide=
 a
> fix if necessary?
> >
> > Thank you.
> >
> > Regards
> >
> > Chaitanya
> >
> > [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> > [2]
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/co
> > mmit/?h=3Dnext-20250210 [3]
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/co
> > mmit/?h=3Dnext-
> 20250210&id=3Dbfd3d4a40f3905ec70b17dbfa9b78764e59e4b4f
> >
> >
>=20
> --
> With Best Regards,
> Andy Shevchenko
>=20

