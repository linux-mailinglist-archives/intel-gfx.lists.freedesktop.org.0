Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEDFCF6BC1
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 06:08:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3184910E481;
	Tue,  6 Jan 2026 05:08:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nu22YUrx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B677C10E47F;
 Tue,  6 Jan 2026 05:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767676122; x=1799212122;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sNX82J9kC0iun5CfaKOIObGBc5qYlmCN3FTf3b8UQ7k=;
 b=Nu22YUrxYBxQYtlmEewKNmuX9GpubnCosRvvhVgAF7QnFAgVkl1H+nQu
 Q78LTQSAPEXQHR1T3MS+pIqxaE1JLXB30kJxjMlD0LjBNmfz2iBlF2V6l
 Ypr4IGw5EO5fmmqywZ6wAqtHW/1eJOqsjii1NM8dWv43rkP8sCc+hdays
 4H8/p4LTkxBYpQmCW9iDFTNLKVwR0cBdSniLNNCpgZQq6MuP9rMm1OTWt
 +9Y2I0LZbvEDmBUwmiSTVarnSmkgz7h7c/23MtoDFCyvHxvA26n6wSax9
 ZpxdoSsTbKg71xnAHHAOsE6pJ3aGr52PpjYUvisyAUDgzvAPwYyVlEHYg g==;
X-CSE-ConnectionGUID: kh0BNumtRAu72j7RvhrM8A==
X-CSE-MsgGUID: cDmpXI/gQ6K37Opd5dQp/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="79676408"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="79676408"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:08:42 -0800
X-CSE-ConnectionGUID: vLGtcsReQEqGa4l1tncWOw==
X-CSE-MsgGUID: CktpSLSORr6s9zNweBB+aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="202625490"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:08:42 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:08:41 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 21:08:41 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.17) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:08:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D3+Xncx0IJqzYV563kXqONnM+Gz8Wl/Aq6bf9g8FXFcOOCENGaJrrQ74pGqJNx8Pe8vZ6P0tXPxWOMGBfeXIu3+SNaTxIykMPowghJJb0fTRZf9dEkQ+8pOUyBrLFzmp8KxKaOGkRdbG1a7aa2grYsZQMkHop63twFSMefPFR8eFdXPPGyBTR5Yey3ql40W7I7dJM1ryIdzOaOjfPMBdJBCpnGmUY8gJWZ9NqODXdkVc2VIx8EWCTzra1drOKWQUck/1drGIMG0U8IqHUFsF5MBncbWuisd374b9K+nsKLYFLyxhkxc0lF64H9H9R0iSffwCSpdAai21yXLsPF3spg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UObK8u4LFqEa1LQuSUWYiTMiZV5tmm5ArL4qXsn1Jfg=;
 b=N0V36RfDc8jSRpbhU1ezP/+XsHvVjvi0BKkcJwLWLIpwNZH84DG/W/wTWaB2WQcCGStMn/LTUrof5OMBjxB9BV1F1aBkbtmOQQYlW+Fw7ICMozsCmlrxG5Hgw10Dk5lWC/+mMROVVvlqAcqU/72zWn8mGEPmLV+B43KbsqvmyZemq3v0gSPoBsvz3pMFhnyYp6c6ecb0tWEElafr3wMeokfT0E+Dmin2GNgvllhIo6e5b4lqkNfCUYR6IFb0ah9Kt7QzPY7Z1NcS+UxKyk21UEuVrtMV+6ycIDZ0XhCDys6Yt1M+Mocb3KWRSnQJhe3LGaSD+cE1siFm3nFsjBByeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by IA3PR11MB8967.namprd11.prod.outlook.com (2603:10b6:208:574::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 05:08:39 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 05:08:39 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 01/15] drm/i915/c10: Move C10 port clock calculation
Thread-Topic: [PATCH v2 01/15] drm/i915/c10: Move C10 port clock calculation
Thread-Index: AQHcb2nnV698/EXnlEaQCqVf5ODmULVEtgYw
Date: Tue, 6 Jan 2026 05:08:39 +0000
Message-ID: <IA3PR11MB8937A8D7D495C82BDA2EAAF5E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-2-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-2-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|IA3PR11MB8967:EE_
x-ms-office365-filtering-correlation-id: 33aa29d4-1696-4c19-263c-08de4ce1a798
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?uac7Du7tvFMC/eIb6flHROhcAhWzYQtx+sxlfpIC/7A100Vf6MIeeu3cRoRe?=
 =?us-ascii?Q?s7gd9TqOyF0blyAFi5TH4rylJ4hR+S1w9wfM8hc6b40NJ4LDDfTVLsKZhS4/?=
 =?us-ascii?Q?R2w6jHbo/P2mByfGfFukF1OX6COSyAyKGVre5YmFBhSHLJlfcmKlY3eslJDi?=
 =?us-ascii?Q?tQ6eDVpaJs3Bsztqca5Fe+95uLZTf2AX65KlwbrB1LFjTTX1wxw6vPAIT3Q4?=
 =?us-ascii?Q?pY1Da9V1Sh5/9dqxcuopr1BqW5T36Zg5vClFU4nCjjo+MZXFN9qMxt5rgsUj?=
 =?us-ascii?Q?yUPADrBzx583a/7kYp/xFF9VSPzfaekI5s+9nTVGEngRBdclfx2xBqqYt5VY?=
 =?us-ascii?Q?TNQfjcZLwG5/oefyXsKfqluJh8tc60ZguxRTCDvFTGglD4pKqDoiZpLDHG4j?=
 =?us-ascii?Q?lUwSepM9EL5Dj9WBYfkv6AQartc27W+VIW0VCic1po8wlymbA1xf8PudcyLz?=
 =?us-ascii?Q?Odxlvyo5Z/5hJ11R11bMNi7u6iyoU1rDZgbBoBdssWEaj+P8Hp0E3nqBbqH1?=
 =?us-ascii?Q?Y437+zJBN94R23JhDRdvU8LGaOJZEev7SbGgBTCI6I54dMaRbNfPC1R/CXmz?=
 =?us-ascii?Q?IQIaxbQUopoYW0zKpgLyWORfLvG4KKZhP9i6SU54wgqguqXNJbE759LHFQto?=
 =?us-ascii?Q?CuffIp3W8Q4L35dseYePO1S8mgcF0me+J1sj4q7C4/C73r4vQ9ndv/LauNBy?=
 =?us-ascii?Q?16yDcYJWn2/wq2FqiQV30yGwyuqjrSWwQuxkhQVSvDDNJUW00pgNv5FCIUs4?=
 =?us-ascii?Q?/LtK019n0xL9es4XwhmmeK4vXSHgdpVQVTeM1YibxinA+Gwn1wPb+7kw6swy?=
 =?us-ascii?Q?9JWTfzyKj7sMUUC0e27OrftvBCXD2bQtncw9uJj2qLCQbVsRQlQAcefKgN67?=
 =?us-ascii?Q?8seDRUV43yaqdrw1ws5/PmAVCrEsRPPBeFAlPq6yJB2/bot2VVqilI0lCXLp?=
 =?us-ascii?Q?JqsjuV0L2x7quk8QZzXL1F/skUgd2xKs/a5KU/qLgy/22VgThdqLuhBKnw5K?=
 =?us-ascii?Q?xcmQ9ThsUFGBDkEBYdzPAIhwa9EgV193KZJTzTBEgGMKwaDpjoa9OoxI6JQF?=
 =?us-ascii?Q?952qG3OZIEYTdnrvP7hg1WWgrEBYJSzUGwOt574MgVxrlme8BGu5RJG6kTQV?=
 =?us-ascii?Q?lauvcpR25LkeCeQvzzpuwPxfX5TLb+PIka4LGF/Whsga/ycsY4DPWGmlp7RP?=
 =?us-ascii?Q?X859PDDzl35kHrnr6+O9wTkbOM9iVjstnu9tWZbCL0lT7jugfysGKMZobUL5?=
 =?us-ascii?Q?G+DIl3ll2UU8kRveFpPUA69/UEDeupGWTp49DVUoj7ik1pQApSfJAH2OtXrQ?=
 =?us-ascii?Q?vG+iQlP2UC7+8cvRDVNCgDwQk0d32QV74Bi1uvwoJo72wit/4gF+Y+7QmMWt?=
 =?us-ascii?Q?hODyyNLRl66+KuafA4v7U88hDXG0qT44dZgkbE/b3hnSr/7XKVZYWuSi2yEu?=
 =?us-ascii?Q?srAxyXWkp5kGpPtUHn/eSxSIVmo0y2bn8svAEUI10ScuH/uaO6eUDmBppbUj?=
 =?us-ascii?Q?WHvkRq4sGKpcVOq3X0yS25EdPL20mcEEBLqx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qiTd5x/QvQncwjUeAK35ul9pXCB7teJJvILtUiTycFIaYaxZwSxBbWYs7xMZ?=
 =?us-ascii?Q?ryI95/RUnBHCxcfHF2wTgON+5V8PpD2G1HvhxFCk7K+rflNWzaLY8jKudFKe?=
 =?us-ascii?Q?4YzZN9KRif6C72CRjguMKyJ43GarxuTG3KJkuRNXyb5vg9Wx/tgQJGiyC+Sq?=
 =?us-ascii?Q?8CinwosevYHXuaoYQ33/hTA9T2+E0XflYPo68Eoy6ReHHl+kYH/uOWn/xhaf?=
 =?us-ascii?Q?jAG8O0kTxCYdny6OODFL0l8wwDWkZXDqYPzzpRH8Sfx8m7h3yD2CvDc7+8cK?=
 =?us-ascii?Q?c3FjCZC/IEaZa0WDa7qJKXCT+c4Ly53cMVc9pVA/debA28fpB0GnmnDUkDew?=
 =?us-ascii?Q?AghnaOwzZvV4q9u5XoSCgHXykU08GIuU8Sc/IlkEMIBYEJaITUsz0PPg2Szx?=
 =?us-ascii?Q?XPlpfQ53WrEAWNwg3iZpUrwG4pHITMy8r5wCRLqLrtVihXOObu58nVPk1CNr?=
 =?us-ascii?Q?8vNjIlt7P3vWzd7QoqtW/BkYnIXpwQOUOafERBedpaBawz6DGRx6cSbDs+rH?=
 =?us-ascii?Q?tXf+jjniDcfKK8kKmBrbb2VyfgmlKj+7tRezczDIHlhvR6hyl6oy8gjvFV9V?=
 =?us-ascii?Q?PntaPdr39eock63co1w7wG1vecxy4y2DkDckQdYtTjo6OnY1ZNLg84lNnnJz?=
 =?us-ascii?Q?cMsEpjV1l/gbYWlkLeyxq4EfkwHTayC4e74h4st0x4Hv9BMIWAlbp9mxvjKc?=
 =?us-ascii?Q?6FfuzB2i4Y3YNXNpKxAmArzo6WAuJ8pXs9IQ0dZiMCESX4Dg//s8ntG8c6u+?=
 =?us-ascii?Q?kv0SH95Cvl05SCqEL4pw0JjQYy+eDpzIqK6f/cXr2/ZuTOuMy/5GlGBT4Eq/?=
 =?us-ascii?Q?UocPrV2x7yS3Ou4EtlbByajqtqTf8rNpswLfirpZCzXz80JSmJTr8B+kE04B?=
 =?us-ascii?Q?bP3aiL5T8d1MSyxHOPQf9Hpi+9fuc9HOGs5ptlM1gX1Loa/i4bYKtWdzSmFN?=
 =?us-ascii?Q?fPSwVhEhZ1cGeD5hi2JPzA+q58jvVju9qUjL4E7r/A8QJ0jnhK2TL9kJkhJe?=
 =?us-ascii?Q?g1hGQAfOmT8KuykD3ZSWhCuABj5fvp31CjeYrZyc4i5hMFBko7ftWF3Oz6o6?=
 =?us-ascii?Q?eH8cOYLxrDnLt+Wm+ravzii0ozvvYfl2DfmDnRf2X7CSwuY3NGe/Y1lNRPjW?=
 =?us-ascii?Q?vf1BrJaLuhGIuXvoSPxLXbb+fZQKUUFor8Htv0ezYUXc+34kdVKlVUeIZv1t?=
 =?us-ascii?Q?AHiavBnQwoBHGO1v2jtmlNVupmDnd8vXSTLeFZMD3YhN1PZbF6yllaUa5y85?=
 =?us-ascii?Q?lxo28FQGEmcgRkxBc4oL4OPTQtlVATSQi6VOhwJqzHtCU/l9mlrimqLA/ecm?=
 =?us-ascii?Q?ObSsrACtUMQYEUdqvmYhlx7bvBTUaYWq2Ml//nqNPZfRBwZJ/RMQbDmnj6G1?=
 =?us-ascii?Q?5dVBRKUnSctHsDszysxVPgnsyRglRah/wx5BOyb3BT5dPcIQbEcf5Fz/7OBy?=
 =?us-ascii?Q?8g06DTFRqInf1LzVkStM+YjMGj9+lemn9yMPA2gCr1DcZar6i3T/57NylGTp?=
 =?us-ascii?Q?vnW6KNTLLfiB6N8UJ5tg+xhBHPtgAGR+ZILW4uBmG5JkXqTvunVJNQ23pJih?=
 =?us-ascii?Q?lx2uTKuIEU0wTqUiGAKFG4YErJXRPqifAymz8hCF8gznRimYhTUGWuOEgMON?=
 =?us-ascii?Q?h/UI69BYAfks2u7F4MwNjJfSSlu+wv9nNLqav9zpHlynjQDUvkLhNJiQJLcD?=
 =?us-ascii?Q?4qhJnAjVRU6oEIoIBcKA5n+yiEkl21cDJsdg1ttKJKtuJ0pxFxPqk6E+TCW+?=
 =?us-ascii?Q?3MlTNJf1aw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33aa29d4-1696-4c19-263c-08de4ce1a798
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 05:08:39.6166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L0s99j7xuI/zGapYDw0y00joHka7kQI3Otd3NSd0yH0Xu4wQeoVgnS7VsF8rnTWKOLPbc8gp+7E8LZ3MGd0sDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8967
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

> Subject: [PATCH v2 01/15] drm/i915/c10: Move C10 port clock calculation
>=20
> Prepare removal of .clock member from pll state structures by moving
> intel_c10pll_calc_port_clock() function.
>=20
> No functional changes.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 54 ++++++++++----------
>  1 file changed, 27 insertions(+), 27 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f6d69627154e..5fb39c114078 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2103,6 +2103,33 @@ static bool cx0pll_state_is_dp(const struct
> intel_cx0pll_state *pll_state)
>  	return c20pll_state_is_dp(&pll_state->c20);
>  }
>=20
> +static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
> +					const struct intel_c10pll_state
> *pll_state) {
> +	unsigned int frac_quot =3D 0, frac_rem =3D 0, frac_den =3D 1;
> +	unsigned int multiplier, tx_clk_div, hdmi_div, refclk =3D 38400;
> +	int tmpclk =3D 0;
> +
> +	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
> +		frac_quot =3D pll_state->pll[12] << 8 | pll_state->pll[11];
> +		frac_rem =3D  pll_state->pll[14] << 8 | pll_state->pll[13];
> +		frac_den =3D  pll_state->pll[10] << 8 | pll_state->pll[9];
> +	}
> +
> +	multiplier =3D (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK,
> pll_state->pll[3]) << 8 |
> +		      pll_state->pll[2]) / 2 + 16;
> +
> +	tx_clk_div =3D REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK,
> pll_state->pll[15]);
> +	hdmi_div =3D REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state-
> >pll[15]);
> +
> +	tmpclk =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier
> << 16) + frac_quot) +
> +				     DIV_ROUND_CLOSEST(refclk * frac_rem,
> frac_den),
> +				     10 << (tx_clk_div + 16));
> +	tmpclk *=3D (hdmi_div ? 2 : 1);
> +
> +	return tmpclk;
> +}
> +
>  /*
>   * TODO: Convert the following to align with intel_c20pll_find_table() a=
nd
>   * intel_c20pll_calc_state_from_table().
> @@ -2166,33 +2193,6 @@ static int intel_c10pll_calc_state(const struct
> intel_crtc_state *crtc_state,
>  	return 0;
>  }
>=20
> -static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
> -					const struct intel_c10pll_state
> *pll_state)
> -{
> -	unsigned int frac_quot =3D 0, frac_rem =3D 0, frac_den =3D 1;
> -	unsigned int multiplier, tx_clk_div, hdmi_div, refclk =3D 38400;
> -	int tmpclk =3D 0;
> -
> -	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
> -		frac_quot =3D pll_state->pll[12] << 8 | pll_state->pll[11];
> -		frac_rem =3D  pll_state->pll[14] << 8 | pll_state->pll[13];
> -		frac_den =3D  pll_state->pll[10] << 8 | pll_state->pll[9];
> -	}
> -
> -	multiplier =3D (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK,
> pll_state->pll[3]) << 8 |
> -		      pll_state->pll[2]) / 2 + 16;
> -
> -	tx_clk_div =3D REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK,
> pll_state->pll[15]);
> -	hdmi_div =3D REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state-
> >pll[15]);
> -
> -	tmpclk =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier
> << 16) + frac_quot) +
> -				     DIV_ROUND_CLOSEST(refclk * frac_rem,
> frac_den),
> -				     10 << (tx_clk_div + 16));
> -	tmpclk *=3D (hdmi_div ? 2 : 1);
> -
> -	return tmpclk;
> -}
> -
>  static int readout_enabled_lane_count(struct intel_encoder *encoder)  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> --
> 2.34.1

