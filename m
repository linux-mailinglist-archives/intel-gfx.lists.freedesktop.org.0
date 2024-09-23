Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE54297E648
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 08:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40B3E10E38B;
	Mon, 23 Sep 2024 06:58:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KPvfckyJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA99C10E38B;
 Mon, 23 Sep 2024 06:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727074684; x=1758610684;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yGwE7BE7vK6VXlGUl+B4sA6BBotEDCWxMK+OPomJqjU=;
 b=KPvfckyJz/ZGpWNQ1VtUpkK8TsQihj0VwicU0DQTKNfjsWRj/q/lzRFi
 huAeg8cGWfS3O6DzgriMNCxBTnlk+VGjbW+90ZOEXUHZYS9PhhHo7tfRN
 JlB/+lWFYa7/hQZYjHXvdZnNAZyzR3sdYiEgAJDihjX784hY0xhY975ql
 cdQh5ivGSNMHDX0FdLcFrOIdmNzdM+FxJJKEr6V9Fhxn7bVjRQ/+Vzo/X
 x4QwqqXK+rwyUailgm8B+7ZpjiflxXIyknuYXJExDq83GXLK86+BqBwCD
 d2ym/RZDW+Cb00ozTxQH+oBWnNy7bzs8YgdHyKJe0dGbubYP06V8vnKSZ w==;
X-CSE-ConnectionGUID: IK8hT8ooSqaD+xCvAKQYAg==
X-CSE-MsgGUID: EXJLA/B6RSqcgExzidtUBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="28902607"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="28902607"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 23:58:03 -0700
X-CSE-ConnectionGUID: AIkIs8deRMSygYaAS5YTDg==
X-CSE-MsgGUID: Ya62SpELR4y88o8RFgVT5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="75736612"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 23:58:03 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 23:58:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 23:58:03 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 23:58:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ufwqwrx9rUTYh37c4HJ15WVmDar/R641qSPQVbCtd34e0OrcgUnh1Wdc2e9LIG5WDkeDK4RQ6WOVMU9kuVqR9m7ONlLRjIgbDDHLes1+1LwhiN1pVjVW7JbAPSCymMMZcEVsjekJ0k+lVglJsyy8koOAtivrzuANJOEmlgN22TT8ahT389M6l8xJEn2SO9x6yOdud8rMMCX6dYASJZYLf6kh10pJHDSCvm9VQ+dps6w/9hE5AS0iOVVBppNUA+MV8rUIgpzM5I6BHbCGaUECbf+/0M/OEr8jfuDwdLBxjO4brUPnSPQuxaE3VLngZVTBuwdYoXh49saI67moNKhy8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Mp1UDo4IePl7H0+c8SRxr3vW6R7OJkVFUqYsx0Z3ZU=;
 b=fQDPfUPZybZCan1Ze7yYUNk/PXDlPbjEWMXBbDkHWL1fmWzwUoLMJhXepvlfO3Yt0jkqU3+tLoyNIKAiDaqZZrsBy3XncfoMAD4Pr4aiLlT4f6KJ3137dXIodbJ02qe9VhvNDUNci6iNSbmsKXr7P/9clI4cXVt/sl7zr9AKgj4ahxq2vAs64lrtKmVhwu7h00sHTb/aQq1Lc0k2QMNXQdUw4qmZF+fcN5HQU304on8qWKL3TY/5BKxlaf+wt5rnjT2uoPA09D74k4XaBkcTWx5gijkfgVAXh1h0TcDaFSFdQy8YGGFjRfCAn+sug1Mq4ocTUipkSnpoC1RB1ygGHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB8154.namprd11.prod.outlook.com (2603:10b6:610:15f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 06:58:00 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 06:58:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>, "Murthy,
 Arun R" <arun.r.murthy@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 3/3] drm/i915/dp: Include the time taken by AUX Tx for
 timeout
Thread-Topic: [PATCH 3/3] drm/i915/dp: Include the time taken by AUX Tx for
 timeout
Thread-Index: AQHbBNLe4t583jRXlkuFO26AOPNL87Jk+ErAgAAChoCAAAcKsA==
Date: Mon, 23 Sep 2024 06:58:00 +0000
Message-ID: <SN7PR11MB675000016C47842E4EC8DD89E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-4-arun.r.murthy@intel.com>
 <SN7PR11MB6750FF1460FA59B579B93954E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <CH0PR11MB550828F237C40440851BA923C26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB550828F237C40440851BA923C26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB8154:EE_
x-ms-office365-filtering-correlation-id: 08c593bf-dd40-4ff8-9b5e-08dcdb9d103d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Ot3GQg1T+n01mwIf9cEAdnK/vQF1wUfTku1+dplMyUcSbx953jPT7IFC2cj1?=
 =?us-ascii?Q?vp4zCeOI1oRn7J7Y6+150eHIs8PfEkUaxGf+Q7g0RkAsEGAtWmKJYUxEqQBt?=
 =?us-ascii?Q?YmnmkPnHHtqc5dYq81aVEy1nnHOl7xtyi2dOWloab8gOsCwpxCfFCTZFSovS?=
 =?us-ascii?Q?I30NyP7NWwjDQmNY46i4Y2ZEkAjAGH6dF5DNGPX3pMXnGKpSxk637c+KqVcg?=
 =?us-ascii?Q?84ete/DoPasCoDyYMy47x9Z26nyWhv5nYrw5wrwv5Hdk8oIPguUVJ/jI7TAa?=
 =?us-ascii?Q?FYKko3Iw4bNCh+0G2RzJRsL3QiFQQSeP2Izcbm9wDarBXGo110vG3OxCwtq9?=
 =?us-ascii?Q?NnVq9CU/U42wU8sASH2YZgMGaW1BJKknc4lAMrRiTJ5Uvq6r3C0uw1bFh62C?=
 =?us-ascii?Q?vppLiSIEMS7ijNLYk1q3lCTf9dKhnayuVJ9hXHH55sX6dQpJvpCp9nLe7E9m?=
 =?us-ascii?Q?fzlbkSA1Lu2s0Oe/BqxoBjL0o92h9YEgAFfBXaNF5DSYP28v3qUyluc0qNEi?=
 =?us-ascii?Q?KR9lLEAspEL6ubPCuNZNF3AqNNRV7z1J8l2++spC3CKvBhdt0FWovLzP7xBY?=
 =?us-ascii?Q?+xkId0AZCLsN9Px7dzsqhg2BFHKQk8MzHNRhK9P2Tu0h8vcD3xXL5N2HYzZ9?=
 =?us-ascii?Q?2NkBMqJKDmLxphpIeiwXNgFQ8W6DGJJb/wQVZtMAlBe9Ex05KhQ6Al1sRO5L?=
 =?us-ascii?Q?GU14L0HY1gFMRfK4nkOZud6/LZ0Hcgl22XJ9+SkQ9d2OO1b0DS73iSgwYZdZ?=
 =?us-ascii?Q?ubed95uYXoFZjuh+tfvYj4OQYM29O3BfDCVYLpmZn0rbDNovFzv/Zv6zjaEM?=
 =?us-ascii?Q?6Gg5Kb5Ipqo1UrpZVy40w2khG8f8uJU8E7H4SRsouGeSHoLTMtaeH2pz8Elu?=
 =?us-ascii?Q?/VWgiDdh9arf1jLv4PrjpK2XZD4jnWD2ukdhjlmsjt4s8Z4flnOD6IF5hb2L?=
 =?us-ascii?Q?ehcxKhUat1BCXV57IN7Ng6MRnrHN3C9kEJHNfVepe0L2Z2LOlqx1+grH0hq5?=
 =?us-ascii?Q?fPrtYK5xF/LN4UqauNSFSAupUgqdjpZgMsai+m7HG7mVSwkj5iU2aqLLlHzX?=
 =?us-ascii?Q?NlYogmEWAnPZRMi+3gr4zdr4xp8PL2unYvk3J336xKgliALrgCf91aFzoWeX?=
 =?us-ascii?Q?eXO2LnuCjzhZVsAYtro6XpqflknlzmHJ0QTDo8iFtziy0TFRNzc33vhoi03P?=
 =?us-ascii?Q?LUAm+TydgBVEGPwJjjIasyUl0NRMHlAAO6LPSnTq9bjGw8QmkBru4DmTntsk?=
 =?us-ascii?Q?mL87XPVmc6D9JanEnqXf1NHN5EYgSmlN+7v8TJskPUrt1us2UXZSVFzHoBus?=
 =?us-ascii?Q?0YsoTid9UZi9+hFitBx8+MwMD8xDskRhJ03SY8e3Gt0RlxWkGEkUXr8juBd7?=
 =?us-ascii?Q?69IBYnwembkPASuvfTqq8mosH3tnxD4LH5dEjUj5EmtGOyq6Zg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ajlGzjvmwZA85SB3VAa4wX5gbspFB9bA4NHSZZrCsLp29qFai/l1P1yj5p7A?=
 =?us-ascii?Q?DmbwlT4zMMOZCYLB4QsIpQk3PVHca3DP+k7SiLGrxV5Cfd89vRNjg7tAnG28?=
 =?us-ascii?Q?9TeaWAydn/4G5Dos4fMIX8bKuSKrQhS8RjQHs9V3jccfiGFmsxL3gZLsjfxt?=
 =?us-ascii?Q?DGgZpaRMHpco/ClvVUrrwbbCyn39bJo2EJzz3VWEcDF2pdNlxbM3bRJSgGMy?=
 =?us-ascii?Q?JbeIGH9ns/cBQ8fgPI9s36juPbE3QTZaGtjcM5OaE7dL4msLdz5L3Buu2VjK?=
 =?us-ascii?Q?bPbXxlrIPpj4Tmw0FgtdClxKClBvAkbhh9yCCSlu+K8q7VF4/ArqGpPu/XEb?=
 =?us-ascii?Q?t6bpxd7q9MmDaFKJAnrsUJ/WdbQQPbHo/bZhP565qLfR1chqm4EMukUSVFZm?=
 =?us-ascii?Q?aAod/7HogvFviZpHvpx3j5zlMh3L+H0AOQVpnFgy8QhTiPpRAqM9kWtU1UtJ?=
 =?us-ascii?Q?f+YvsD7vgKu07ADPiSqaOf+CZ1xa/XC0hSlJJAK+5sxA7KMVEpI5arjSOrQE?=
 =?us-ascii?Q?swBbOIdAtNhOvm/7eztNa21zARwa2RHvLWsat49P8Ch/eqNGFrlUKuQ9fjjl?=
 =?us-ascii?Q?X1yiyIuDikuzq5+WaJuSd86T+3cR3PyJvqSKiZ/onwZ3HR/0gwHDmpV3c4Iy?=
 =?us-ascii?Q?FsqaC1S/GbOl5PxGSvzVjpYTfVW9qOxdyXTK2PANEXuJVRQJv9DN1JAybCzb?=
 =?us-ascii?Q?yZppYhgRM9f6reEQKGDHd9sKynAtUQ3Z61DFuHUJyAHAS3yJKeNQ9R9kDv6x?=
 =?us-ascii?Q?bIfRl5Ta+wLxer04lYunARbVNB7mVJCkfEoLcMJJAfh0SCtRio3uLAympQwC?=
 =?us-ascii?Q?z7MrDmhX8hnJOP0TvbpPIzwXN51tHi+kzSSNJC2o4dmqA4FlBGRB7PgOIC+9?=
 =?us-ascii?Q?l/l+toY95cGfOnKpqiKacfYdxx0AK82BdDN/poFOIZCtdhWwLaJSbjyfjgze?=
 =?us-ascii?Q?8qPEjKMgvkt8mI1+sspbEKvYrQ1sXn8gkMvk+eNZEE9V9T2biB/qaToMzKe9?=
 =?us-ascii?Q?SDxgwmWSE6gu9hKFIHYED9hiN9Hf68IBF955oe90c4/UpvBZUe3JYPF/oGw2?=
 =?us-ascii?Q?3t/QOe7VcFEn39hWiut/Nf8Xv3AoRpvvm8ZJnfICxW5Q16wpMsORTxYAjZn+?=
 =?us-ascii?Q?jVnlCsrEgWrYWBEhI5cJzURw5HBnx4eNFWqbDD+uh3/azvHKz9Ae3OuLwhEN?=
 =?us-ascii?Q?cIiBFEdLGs0skif0jlCB5Su92911qCQPjBiYmx0/UdCN3zwYtJIeF8vHwd44?=
 =?us-ascii?Q?/k3CrqpHcVL55l9TLp1ljlmRwD724bqMqX/axx8fm6h52DkS30S/+Cqy0uYA?=
 =?us-ascii?Q?ZFlvU8ss+ZeZ1KxR6qPNVMr5DIoY/xgXT0Wmkoc1fWnHdCMfJ4RQFGL7r0dM?=
 =?us-ascii?Q?blF8Hgay6nnf020WWZhghK3KP25mgKA6FhBtYboaK5vzUPLSw+CqKghggf8s?=
 =?us-ascii?Q?oeYK2q98EYBD+kGVPpgoEeG+OH5ysvwRDyUVb0Jm5zFzgA3cpBA4+ucnZVyi?=
 =?us-ascii?Q?p6Y88LE7LvYBdWpLoBNvSSvx8Tjs1i59Ymott+29RQ+gzkV28ujInz9PPfVC?=
 =?us-ascii?Q?Sg7H+MXqcyQDDQ2b1Tds4uDj9l5hMQjiwhZlM3RR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08c593bf-dd40-4ff8-9b5e-08dcdb9d103d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2024 06:58:00.7988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lV1S9TIywFuKFY90h8px84vFcP0ZjRLV9cMctzK3oUqkrBWO/1HUq9r1j6ISGOXsTUyph9BUcZQOHWTxp8Xcvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8154
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
> From: Srikanth V, NagaVenkata <nagavenkata.srikanth.v@intel.com>
> Sent: Monday, September 23, 2024 12:02 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; intel-xe@lists.freedesktop.org; intel-
> gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: RE: [PATCH 3/3] drm/i915/dp: Include the time taken by AUX Tx fo=
r
> timeout
>=20
>=20
> > > -----Original Message-----
> > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > > Arun R Murthy
> > > Sent: Thursday, September 12, 2024 10:36 AM
> > > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > > Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Srikanth V,
> > > NagaVenkata <nagavenkata.srikanth.v@intel.com>
> > > Subject: [PATCH 3/3] drm/i915/dp: Include the time taken by AUX Tx
> > > for timeout
> > >
> > > As per DP spec the timeout for LANE_CHANNEL_EQ_DONE is 400ms. But
> > > this
> >
> > Adding where in DP spec example dp2.1 section x.x is a good idea
> >
> Please refer to section 3.5.2.16.1 128b/132b DP LANEx_CHANNEL_EQ_DONE
> Sequnce and Figure3-51: 128b/132b DP EQ Time Budget Illustration of
> DP2.1a spec.
>=20
> > > timeout value is exclusively for the Aux RD Interval and excludes
> > > the time consumed for the AUX Tx (i.e reading/writing FFE presets).
> > > Add another 50ms for these AUX Tx to the 400ms timeout.
> >
> > Is this something we came up with by trial and error or is this also a
> > part of spec
> >
> It's not by trail and erros. Timeout value of 450ms is part of DP.

Ahh okay I see it,
After adding the dp spec reference in the commit message this patch
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> > Regards,
> > Suraj Kandpal
> > >
> > > Signed-off-by: Srikanth V NagaVenkata
> > > <nagavenkata.srikanth.v@intel.com>
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > index ca179bed46ad..b6573934c6dd 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > @@ -1414,7 +1414,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> > > *intel_dp,
> > >  	}
> > >
> > >  	/* Time budget for the LANEx_EQ_DONE Sequence */
> > > -	deadline =3D jiffies + msecs_to_jiffies_timeout(400);
> > > +	deadline =3D jiffies + msecs_to_jiffies_timeout(450);
> > >
> > >  	for (try =3D 0; try < max_tries; try++) {
> > >  		fsleep(delay_us);
> > > --
> > > 2.25.1

