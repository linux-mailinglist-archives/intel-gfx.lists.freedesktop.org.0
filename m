Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7268CC77F81
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 09:45:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB8B10E7F3;
	Fri, 21 Nov 2025 08:45:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="irEnt2pO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAB2610E2BA;
 Fri, 21 Nov 2025 08:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763714705; x=1795250705;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hdE4DsycI8GqAUKndRNIUoX4IfAxf0n0oPmOucjF4Xk=;
 b=irEnt2pOdvF1Md/Wjt6QaXjDJ28ohmnqfeYxmKjRy0YG9uyBqcwuA2yY
 jW1z28UQ0eBGZBUT+xgoPyx1zm9mM7DX+oUEXvwIE9zqLXvvxP36CtGj8
 Wghh4VbS2a+EBM5mkqDpBQk5qLsp6bfreRACqz89UJwsO/h8462vwcogu
 BAw6unobzRTc8NYQnZavPOb59wbhK30/DtyDMd2o2A7CPYIUSq8k/iqSR
 bPymSlQiiTF4gICWE2F3c2kHSUIGhlh0Fj1aR6f9Q3mNBvYwBJ5waOBPD
 HEZAlDVlDBNv+gvIQea6Kekn9HxQqQWI1PWQ1fwfnJHaJ8mKZf9sM0pMT A==;
X-CSE-ConnectionGUID: uzSSB/FpR3Kdy8sOhq4efw==
X-CSE-MsgGUID: GRgwG/l6RkOXYPeJXKoDqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="76485073"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="76485073"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 00:45:04 -0800
X-CSE-ConnectionGUID: BCL8E8cJQVKnlH/54iAH7g==
X-CSE-MsgGUID: qxvdFCetSOax5nlLw5AlsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="192089249"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 00:45:04 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 00:45:03 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 00:45:03 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 00:45:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T5jfB0FfonkuROhduKVxNkcAU3bscjBUr93NIrFoWMyDOaDKXZyeejeo9YNfj9gLy6aGgNIlbh0S8aLU212DkxVqaqcCYk1S/BFQCO4lYgI9Ja3KGfAvovFSsjc5b7D5P2egSFCWB6KDTgXhWFTZmIQkBnbLB02Ue7RKQ4Sw6ipGfHoBH8KGBhPt6hcohziTpGg1tkZJq1WGFqVZSN25uf4dSGDVqKQPOAR7PpD1dvWjtoEC1U2ox3KXF7496Ekwk5D0+2yJo11Lk8GWM72c9L4QCTVjpYX7JnoL72yp8px8d0TJOg3Ox8OcOzR2zjOEXS7D5d3lPrGgTZvxjM/q8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AUrupgeVVZF84Wb1AaekZX7a93q9HQbk3AKrgYDk+bI=;
 b=fhoRbi4wmfXgBCLh3cU3zfzXx6AZS21qbaYYLc2VZyUw/0Arvach/pqSvgihTN2aAq5TSWlCG5iJxo/zc5pt+4Fv/Q9YEtmwzPbBg3uUFjoW+i7qGyS78IDSgIm23pAqybgTLank6WNbCOPqsj1v86TujdFQfkN5YhX0lAKojhF9r0AGsGd9ap9WEs7EJL8aSPpvKfVmGyRuVOij52fu6XF2+8tBNW3UnRKE4AjfxAVgGhNIZu+zYI4Zb0XKbSoKcy+m+awcBtsA9+okfeAsd0II6aHSHa7quz1rbG5yDNDK73GXG8g6Dy0/eNMvcH/9Qbn2+OAcXHNHs1nFvEwZAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH0PR11MB4919.namprd11.prod.outlook.com
 (2603:10b6:510:34::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Fri, 21 Nov
 2025 08:45:01 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 08:45:01 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kahola,
 Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 5/5] drm/i915/cx0: Read out power-down state of both PHY
 lanes for reversed lanes
Thread-Topic: [PATCH 5/5] drm/i915/cx0: Read out power-down state of both PHY
 lanes for reversed lanes
Thread-Index: AQHcWkKKyDzpTeF8h0aK7jB/6GnQl7T8gENggABNlICAAAO/YA==
Date: Fri, 21 Nov 2025 08:45:00 +0000
Message-ID: <DM3PPF208195D8D8319770B33A332CD903BE3D5A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251120172358.1282765-1-imre.deak@intel.com>
 <20251120172358.1282765-5-imre.deak@intel.com>
 <DM3PPF208195D8D7262BD8D92C00DF77FDCE3D5A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <aSAjS5p7ML4BXkGg@ideak-desk>
In-Reply-To: <aSAjS5p7ML4BXkGg@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH0PR11MB4919:EE_
x-ms-office365-filtering-correlation-id: 5650bd13-9082-4998-27ab-08de28da421b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?r6TyMSfayURTIByChiV2Ub7FTvX+Qry5H4qCpuArLhG8xJBQoPFm7tf2D8vG?=
 =?us-ascii?Q?V9yL1OOHRXwCjmjmvAm04Gv8XxhhygP++jMaN/kRb29xm0z01+Hxf1iwHa53?=
 =?us-ascii?Q?gT/WbIxPE2RXGy0KiSEbw4+j5oOvuUvvASU7RHrAiJLhQIr5ehb0YRWTqPUN?=
 =?us-ascii?Q?eIOi12HgQwGYy8eLKQjK/r40uJPTNhtwZXDCmqFnT3s4cPVcZi/1rOhmOJUN?=
 =?us-ascii?Q?hYt8fBKTbhL1rcrYgjtgcUVTrIkVn3MrAvxte5CPq0TqVD+0y6+I8Eqk3oDz?=
 =?us-ascii?Q?a/Qv1QrgNYaIAtTMZbDrjMFfrWi/ez30wEjnjgsecBAqf6lRioj9je09dFYY?=
 =?us-ascii?Q?8Eo7hBPmTPEbG0mcKMsA5eL8zEO7Pwmkxm9e1rwhkIkz3lnCPp+wv2eVXfUR?=
 =?us-ascii?Q?vMdywb8+u5NgFDrg+rq1lPI11WYfqoDPdcolg6t+vLcGgIF9/rqUTDvKmj8a?=
 =?us-ascii?Q?iv/1KWF6OIfW1slN1mYPlDEkcWRz24n80QMM3ycDCrRFxFVzV7B8t+mhjheX?=
 =?us-ascii?Q?UdrHweCVCbd9NmzzAr4GRWMCTcFhvAxuGwoFJKYs7QxiWt3KbjVozhxQHsYL?=
 =?us-ascii?Q?2pXo0fEkKrM5Xnr9vTi6geCzIJcK7cuRAXCf7HgOs+LQ+JY0BnWD9UNBF3St?=
 =?us-ascii?Q?LY+zBm415gOwplyatQSxMEuf6vyM4z3XsXbUA9QIx1NwhVTrD5HTyErYw0zD?=
 =?us-ascii?Q?UxyBMWcJ99XLtpuPTYDHlJ1Jz31mL1WmfvCEut+OVUdF1fhUaIa60krNm7CH?=
 =?us-ascii?Q?4Fwq9AX8RQGUbP5wZVOO9ogGHy/pR7+1UVkwHAdvFJWL+HZhLKRhTJWqaORb?=
 =?us-ascii?Q?7//E+kaFYJgOy0SKWKpTF8BvcXGKn60WCVz9JWige2AeByXKVn7rdmvd7R1q?=
 =?us-ascii?Q?3XFK/VbtkwyteRGClvoVFuoByyZbmRiaL7/bfjpZ+k6k5Ycm3AreNDsRY1Kd?=
 =?us-ascii?Q?IJaoU7AuvHLkY04l4cAFbj5Jm9ep//UHOQImDRIBrjOLVsxblrb4rR0mSjOR?=
 =?us-ascii?Q?DojdyMf0Goh9+sLV5esJbyAdEr/nkoAJEZ0Sxj/VGJCM2Mj2JbG/ibDWwT1p?=
 =?us-ascii?Q?Vy20EdLfUNwoUZNLxBeGy5XQqk7eDIM2yUlo26nOKqcdhzhIL1HzbXuKVxro?=
 =?us-ascii?Q?rIN5i1ayGS1yIyWWxLnnVs7GKrP0eJKn4Bny9O+w6IspClPFxXIukzHPJ6Kz?=
 =?us-ascii?Q?R0Mp/WcbsRcXFhAdV84/s2eZ7AYqDpB3RNcT0oA+4Q2XuUzfoxDLS6PaYxLC?=
 =?us-ascii?Q?aUWq2GAotYgy38MFV7/iKyG+bJM2ZXL+WCUQULRktARHpKPRtUZ+BOAGjzfx?=
 =?us-ascii?Q?ouBDfDyMzJQX9GzaXsI9P1ff/w35ouQZr0X6tCDtm8tUbOnhBAjPe3zk0e6+?=
 =?us-ascii?Q?QQ6JT7VL+5ao87N1gjP1oIXR8WMwjVupltVZMLTRhQg9ddxVP2VHbo6ZxFTU?=
 =?us-ascii?Q?wnD3p1vbkEH2ZcL5h7THQUScvterc0PGIj/cZMpHOTYnngNsNffijgE6R/4R?=
 =?us-ascii?Q?bk+3+Qo0uWE2g/c1hSiuH63YC0/I3I+ekfkD?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jOzBMqotvvVgomdel73LYwm46WZpDI2t1WQg8uQXY2zULrm6bSHTqyzShFlR?=
 =?us-ascii?Q?wJ+teM/A5ZbCZLHotHG6WO8FRpmGRx6+sshUiJqQrZppc7Tfp6DemQ0/9VZT?=
 =?us-ascii?Q?hHjVlZcuWTEfx65Eux3+DuL6GzkJ6tyOMGnG3L3zxo8sslxcL064izMYB3nE?=
 =?us-ascii?Q?RtLca3aokKYdjVwiv3CE1nLkAwfTz9pVlBm89rG9zrEC3kAwL5h6doyPyQE4?=
 =?us-ascii?Q?kItkAcD87xW/9GVfAGhl6zbEKHYnIklxiIcx+Fo8PpwAF1lKrYHkjnMNql+b?=
 =?us-ascii?Q?9bvEETc01wrWz7wORUm06KqzXLK/2ngpsLzG0KFl+lfvOBhE6u2i2WQjdBn+?=
 =?us-ascii?Q?AnHu6JyXOBWpgDIkIn4iMqGSAo3q86pD9+IMR6aXTQV3R0mz2106DwAOCe3L?=
 =?us-ascii?Q?F2REKEzTeXMzPIp2pNhqG9AAEYDiZLqdnptS0WjrFCC19uQluiZzO1Cy0HXh?=
 =?us-ascii?Q?0iSujgaiXYVXibDrcwgaB7ZKLUszs4CLAO+bL86n+uB/mt9svm/yWnSombxT?=
 =?us-ascii?Q?mN8gxd54wM3ibQDmnDdWmkX9Z/hJnVScvyzXzff6/RwIzpmGuP/DPxWJ0OoP?=
 =?us-ascii?Q?bB3YEws83BGEAcNuBkY6nFwUF5T2KsHfgVssE5ftnF4GgLiziUVF8FKUWDRk?=
 =?us-ascii?Q?vVoIGFmC5HvXHVn7QA0UDzKBXvc5RR08L3lsF/LS6C467s7TjCHdjUe4stOn?=
 =?us-ascii?Q?Db6DGaI7pS7tlnIuNQF8655oRy4D6PooMCF3YUqSGmcVB7VR3uXdNs6XQkpb?=
 =?us-ascii?Q?uR0acRc2RfJncl70n7SE/SBIBtk/4T/L/VKiUxeMn8hM6WKxKDrnRIQG7Vp9?=
 =?us-ascii?Q?h98wmdVyx5K/abmt5DtFi972I+C8JKjCCfDtaeL+JTDOQYfNhHOJo3VHijja?=
 =?us-ascii?Q?VkjZ3iiZV0L3M2dK0Hui6FNqzKVSTzA4LJaTAwlI5dT2CkKCoCIWxrbg4BfC?=
 =?us-ascii?Q?A3Vmf1pjXtqr1nzrJDvpNqvgTH+jlJ2RHgufL8KweGIiud5zBD5cB34OBeQt?=
 =?us-ascii?Q?PptCbmoLYwZPAB2/k6OQbmd9aM2l0EbicmvnyX5ghiqdJoOP45x1yXA9RJKP?=
 =?us-ascii?Q?cZqgjn1MFxRCJP/MkyN5Yht88s5v3bxaIw2fZTtffCaS0YpQESkZ/hqbi/Pg?=
 =?us-ascii?Q?HK21hNx6lWnBOH0H2ev6KAtGjLWC9Dhh/qvovlQfGZ5v5ED9xB0faFr02S+b?=
 =?us-ascii?Q?pt2H4eH3145LtMO2Fb/AROmjIk2op0Dot5LGVke/CpZcu8sgsaL95Rvn9qkJ?=
 =?us-ascii?Q?wvfg31MVb4HKqDYbvN2IzoYIfeyyAdffJDsVxJOxu2l6PFgI67Ob2BKoHEuf?=
 =?us-ascii?Q?FWjyZ+Iq9bTot54cMWFxke67Ve0Pz6t91i7nT4/r0kfoBl1vlawQ0riASBk8?=
 =?us-ascii?Q?469o3+zpLyHecWOdZqu2T/9N+hYgA9/huCRioflkZMbhW7n+yvh9xrBt6fEz?=
 =?us-ascii?Q?fxDj8shGU9qBtKYahSib9tp5JnQoSs9uER3LhooAA0JqgXD9YjIAe91XdMld?=
 =?us-ascii?Q?KrQxoTGk6+LgOFVpZTsJzrylsXIhaWiS3cLTRrdb/WbULapVw3Wa9UiaG+U3?=
 =?us-ascii?Q?E/lkow3j90YcgH/ZRu8FPI1LDqmU/5vjhDiigu38?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5650bd13-9082-4998-27ab-08de28da421b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2025 08:45:01.0222 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /VpWGPhmxcn4zpH15JN+1QDmzqwKF8WeppLU2SZ+kRQQVN5rEghI8d75mOht5Xskit/0d+x/NrHELyQIzY7ffQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4919
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

> Subject: Re: [PATCH 5/5] drm/i915/cx0: Read out power-down state of both
> PHY lanes for reversed lanes
>=20
> On Fri, Nov 21, 2025 at 05:54:46AM +0200, Suraj Kandpal wrote:
> > > Subject: [PATCH 5/5] drm/i915/cx0: Read out power-down state of both
> > > PHY lanes for reversed lanes
> > >
> > > For a port used with lane reversal enabled the first two TX lanes
> > > will be enabled in PHY lane#1 instead of PHY lane#0. At the moment
> > > the HW readout will read out the power-down state for these two TX la=
nes
> from PHY lane#0 incorrectly.
> > > The display HW lane reversal feature (vs. the similar TCSS lane
> > > swap) is only used for TypeC legacy mode and for non-TypeC PHYs.
> > > Since in both of these cases the display owns both PHY lanes, both
> > > of these PHY lanes' state can be read out. Do that to fix cases when
> > > lane reversal is used with 1 or 2 active TX lanes.
> > >
> > > While at it add an assert to the PLL enable function about the above
> > > assumption on when lane reversal can be used.
> > >
> > > Cc: Mika Kahola <mika.kahola@intel.com>
> > > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > > Fixes: 230d4c748113 ("drm/i915/cx0: Track the Cx0 PHY enabled lane
> > > count in the PLL state")
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 24
> > > ++++++++++++++++++--
> > >  1 file changed, 22 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > index 0d524735dcf95..27be2a490297f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > @@ -2197,17 +2197,30 @@ static int readout_enabled_lane_count(struct
> intel_encoder *encoder)  {
> > >  	struct intel_display *display =3D to_intel_display(encoder);
> > >  	u8 enabled_tx_lane_count =3D 0;
> > > -	int max_tx_lane_count;
> > > +	int max_tx_lane_count =3D 4;
> > > +	bool lane_reversal;
> > >  	int tx_lane;
> > >
> > > +	lane_reversal =3D intel_de_read(display, XELPDP_PORT_BUF_CTL1(displ=
ay,
> encoder->port)) &
> > > +			XELPDP_PORT_REVERSAL;
> > > +
> >
> > Can't we just do
> > struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder); bool
> > lane_reversal =3D dig_port->lane_reversal;
> >
> > or are there limitations with that now?
>=20
> The HW/SW state verification should check what was programmed to the HW
> (comparing the HW state to the SW state), so the readout here shouldn't u=
se
> any SW state. Also the PLL code should be independent, not rely on anythi=
ng in
> intel_encoder (except for port which is used to read out the PLL/PHY regi=
sters).

Ohkay got it.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> > Regards.
> > Suraj Kandpal
