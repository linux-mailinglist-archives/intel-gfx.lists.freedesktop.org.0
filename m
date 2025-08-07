Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2A3B1DB86
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 18:19:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5039F10E898;
	Thu,  7 Aug 2025 16:19:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UiP/XoPJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C098D10E898;
 Thu,  7 Aug 2025 16:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754583553; x=1786119553;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2cbXIw9h1i0qR9pcWUTJ1WwfotTYwkS3t9F9MpQKO+k=;
 b=UiP/XoPJR47MWEA5pZXo2pjcEafDBNd1rttX6R2D2G4vNpMoKwO5hjF5
 Zu2eq1EVpJMmlc9stwhkpkcS5KrPKBeAN/LQBWBEN7c5r7ZURL0l0rOvL
 Qmm3kCigIwtv9JN7fP9LFLxa8Koc4wNHvd0gvLNYA1ffet8+oBn4gjw5W
 HZbtvhd5HwzPM2SlHBNCdv8zayYWwyDhymYT2knJDrZBl+CWxGu8e4nYX
 QI2w4K8BxsuBvyGXqepSGK5axLIrisJtTozHtjPI4tC9457i30ZLIuGQW
 tAbn5SCEE0PPuwJ83lMww/W9GCfpEBG+MUcAvIKBezY9iFvzp2a/bi2GI A==;
X-CSE-ConnectionGUID: Xz0ElkJ1TAy+tl4HhnOpPw==
X-CSE-MsgGUID: m/bWDSgwTyirZh7QlbU7Ug==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="82371087"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="82371087"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 09:19:12 -0700
X-CSE-ConnectionGUID: 7WWm8ZWRQzCVhivOI8qUcA==
X-CSE-MsgGUID: eWxrruGRQ7G8lptzQf4Zvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="165453843"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 09:19:13 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 09:19:11 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 09:19:11 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.46)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 09:19:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I1e1RASuGQqUFSsisHDuVgqAHq1E3d3S1ieC4ZlbNknLjJ5JLWk8SjzptXtUCFLfjVqOkR1ktuiD5IjoB76Y2P+ZUD1MiRy3r7ApV2VlEw3+bn+yTs1jK86+Ytfr7pM0MXkYqXNBV+XAb1Fv7bUtBsoCxjlwomYVLyagrELkgBxj7c55NEUXjV/LnnBzioyk/QL74cMUKtGOC8QfSeandA209m3jACwlfADIxkeHbD0Ajzj8Urlo2oC0gtFqCqt+tALRy+uVPHzdDtdGtGp9JhFKyqTPY8m+YjKBYgb2rNHkmCG8tBg24jHMjdENczo99/cHsyyPVNXiuiSHmZIXeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xZEGQjM/3cCYz19pdHptS6p5k8GbfJ17TghEn+zvGt0=;
 b=E7dcnBooxMj8z8KkEV57xG9DPwW/D32+0mqSeBfdzGEfBB33JIyeUJr5GPdq1dJleBpjDE/5whKyl4LT83B2t8sVnFUnkPaL9MOZKKARHu031z7xhQNCIyQb6RvwcFTkdnIntLZ6Rp1UUqaidy4S2kGC70Xk0qXRi25v+/zf5lZCa0uE6EvQdRAy9v3wgTbYMJhz2i64Pyos/pTmPvsew1cIRc+LmemW6NOHNxjAnjWhJC7WThSppwq9I9720Kx7Brk+QhthegML6uEyHlbfnqE0VJBAajjkCkBuTq++Q+m5d/EXs3r9a6Ix94LP3P2ev6h0/UVsCUjs8PtKhMc9XQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CO1PR11MB4916.namprd11.prod.outlook.com (2603:10b6:303:9c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 16:19:09 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 16:19:09 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 02/12] drm/i915/skl_watermark: Pass linetime as argument
 to latency helpers
Thread-Topic: [PATCH 02/12] drm/i915/skl_watermark: Pass linetime as argument
 to latency helpers
Thread-Index: AQHcB46lFeTiijrkW0+2EKWV2XDa0bRXXqzw
Date: Thu, 7 Aug 2025 16:19:09 +0000
Message-ID: <IA1PR11MB6348515DD353742CD3EDF195B22CA@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
 <20250807111548.1490624-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250807111548.1490624-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CO1PR11MB4916:EE_
x-ms-office365-filtering-correlation-id: 4e781c4a-9d56-4102-7190-08ddd5ce2392
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?TubnCMDpKqspvMnD7gIy00iO3kfUk2tc1cyxtmuPFUkh66hxluhH+VIGdWef?=
 =?us-ascii?Q?c61GsbvZYNM9UyWja/t+gCnwkZlBd9J4hqlxGWJ0EV3EQEWLJyPkELVAXtUv?=
 =?us-ascii?Q?PN2O8PMJIxClAViqTzMvWoVbCuOrXsx7jLmjaBMyFzB5npk/na0C4lB+7WZV?=
 =?us-ascii?Q?wQnXourRVfRouY/ahWNaI49nfQLL4s8XoL72Zdhih1lNcrWlRUk0KRup4Ykh?=
 =?us-ascii?Q?O1zu0iQl2OiTdsaUYGFt6ZwanPMTtwqcXpjcWjy2Jy8spQfm1G0LeUN2y43z?=
 =?us-ascii?Q?SzizN+pcxRF8Ay8+eoxw8oeTmN1rRoQPbtYgDIHSlfL9TVWnMWyxAZJfDlhj?=
 =?us-ascii?Q?kA5CEXgETqG/aU6n7VokJw48Rfp6HeToi60FBdWG7OE6nxAO0vutJvZLxxEm?=
 =?us-ascii?Q?amS37o6W3LWMv6mJDVBjGXvpUlp5cHw5xKXG5geT9NQnVN1qF1aLFemMvtkb?=
 =?us-ascii?Q?3eC/+4PJUBGxJ9VL9liw4uErxkgRdnwXRbFIuvCEdl8OMkmPTANTfKrpun1t?=
 =?us-ascii?Q?FG/t0YihVms41lsseAcuDxWL+u26atRRWpgSTYh9I/TuSkEY55yAkrQC5vKV?=
 =?us-ascii?Q?K/0FH0vfDTp8/RuILMxN8GJIF8q1tAnm8GflVPq4idWGSfARj8h0IEbWkU1g?=
 =?us-ascii?Q?XcBxOuceL8IzjM/2geKiPWIn1UxpJmdYQoSgAHF8khT2nPPFrpxEn9WGGA0y?=
 =?us-ascii?Q?5XoNC1xan83pBeypLHmTxvW/9tcz8WTsud7s/0eyI0ctu9HMHRdlL3veLj9a?=
 =?us-ascii?Q?8r47Umr83dyjhNIqmB7PqBWvoD788syOFAE5n9T/336VT99tZenXKxlBwWEN?=
 =?us-ascii?Q?QGEJbC3bey7nNAfbADImq2WP4RbprgGW05edPQweJW/NRugJ/BEIxyyRrr5k?=
 =?us-ascii?Q?hZOsgdDgQwsNyPq19GoyWNNoBRncW5xePp4IkhQSgEq21lTlkQHhuRhPHeuT?=
 =?us-ascii?Q?PVPDB6OwU46iB4FIG0ikv9TZwMcp/x9p7paI3M/RpWtIqWQbStpfbGsgkYNH?=
 =?us-ascii?Q?NaZaz94ibOGSXHIvBm+p2Q4ClXjtnBhsrpPv93wZziTv5JbqH3mCHf/HrowO?=
 =?us-ascii?Q?L7vfu7s92HjGxjzFy2WAwNck4GzHMsbKCl2FLPlyXDOxi5/Bht7hL4+oH2pB?=
 =?us-ascii?Q?HPiHzuS6ZwELh2fllrwpnuRbmiKXoRshQfXUY7SKzFSuXzzZe6h24YCJVVA/?=
 =?us-ascii?Q?rMbJ3dPMI3QiU8KVeejyRligGwPrvSM7Dk4VsHs70Dv37cvnj/n8HvgmOdQa?=
 =?us-ascii?Q?NTP8rK0UcjYu3Rp21WACTpR+InS2vQ/bzivnVZLgAiIVlPeLIHCwy3OO75PH?=
 =?us-ascii?Q?pZ4xZPFhvc0MWH2YrVAQVVjNcbziw8ezj581gbcfG2ZBI7w4+FTqakkPVhwC?=
 =?us-ascii?Q?wgP2xREJIDySiwD/b8gUQfKJDM2KLXeLQq+0hRoHjzEZfeTETznFYUvn5bv9?=
 =?us-ascii?Q?KpVMXTBNgdkzVwbirQfs7JYE0lOLwLb3gj4mqoka/+zQJMF25DP1pJkx6i4H?=
 =?us-ascii?Q?me6fb24OmBf52lo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9DBYKGW/2UbVeyJ8ZKVLw5YqPb2pzgunQTHtXlzbPJz8GahnHa4nKuZIXN96?=
 =?us-ascii?Q?u9y/Esna8EaTFAE1EFC3hYVpgniPHP3w/AIHajQFYSDffeHIWz2a/1YWu1wC?=
 =?us-ascii?Q?HtEz4zVbtNJ5xUdbJgnGf56xYhaNQMu8zJC1qtrkcpsaUY/QfNerC7xkWdHZ?=
 =?us-ascii?Q?LqH9hcfOT4iADRIlyDgjQmM7TXSyr+z0imydz4FLijdVdWYF60j+pEJqFXuG?=
 =?us-ascii?Q?C98DEGv/Xz0uqdOk0ZY/bGPxHYrHKm8lm9nVEiUQ+E4VKb6FJzWrTIAz4JjJ?=
 =?us-ascii?Q?chPdVsniG62gqQ0pEEPfS0cX2GKuJV8n+KDQBkKk37K8bGC21dzzLn4kesFv?=
 =?us-ascii?Q?VTzK1KS7NjEuymJEOBUapF/Ak3TIow5jYGoWozloH3ZSJtB98xgn83u2adOq?=
 =?us-ascii?Q?xh+/82YlHc82B374N1G9ZkRC/eJFAh681bdu8WPskqK458eHNM/H2YTD7y/e?=
 =?us-ascii?Q?mOBeYfeyogDIteM2bpKKbd85ObxVj5ymTsWOI6LPLBOHlr9SqvylM7GJ9xKz?=
 =?us-ascii?Q?zCOJU0uhGaHpAaAHUXHN7HAkVm3eisUE2aQMH0RCx8n9KkrwtD+IZ0QP3OF9?=
 =?us-ascii?Q?tttReA1o013qXbFSktEcV4xHMVKb3ZZE1OK88G3yy+ev1QXKz9z9uSL5dxNZ?=
 =?us-ascii?Q?ZQiqQonBHi3iqkTrhF30h2piKwxsTRF9Fkk1LL+FFuMdUMi9Yk+LRcP/grtG?=
 =?us-ascii?Q?1Y654uLkOH9TaLFvNsPZ+dUJQmG3ISJjJzQuq6/x6jJIzGx5dQFDKzEWYFga?=
 =?us-ascii?Q?QvcIOHO6me32rDKjW6fP9FkNh7XCW0PXG7OwVpXjomXrjg9ANavoDsTFqMOO?=
 =?us-ascii?Q?SXJdlVv01r/Z8Rg8cDJlQEOUNrWs/xzg3GcJFkr7osMdj3PPCQUEW0c3dLDr?=
 =?us-ascii?Q?Q7WWYi1xVyeXKoUGDsTUGQcK1bdbSG4OsWUWlHJn2Vp2R4UHyq13Bkdbwoqi?=
 =?us-ascii?Q?oUyuOU2v2v0DhIhE5KCJEd/aAabfE85mSF0y6t36XB078mOGUCMRGI5unn/8?=
 =?us-ascii?Q?QV3cbNqhfk16RDm81q5nJ+ssCDwc4M8msSRLcdvxiInKyQM4CvKHlOKOD/dk?=
 =?us-ascii?Q?f66O4X9KiVG34GuIDrGjQVWAchj63jl8DinJ8Q55pigp7QdKGwdQngZUcTyn?=
 =?us-ascii?Q?rvO2+lksT7fGg3mFJfUMD5rN85D/qnIE9p/I8r3aR166Xklo95o1B2q9WZxP?=
 =?us-ascii?Q?OjqFqcpG5DmiNLeaJqn0Q8xYPY90PSm8dAtC2W1KszEa3y3RPHKSySM/HQA3?=
 =?us-ascii?Q?qYWFkn7f1x3GqaakhJXzVKGtXpoZRYoC3kvC3haYVSL3zOaNpnx/NVilVCcp?=
 =?us-ascii?Q?rNmc9tmAvureFygUxfamF4HbP/3WY6djxeKCdBsMocZv+FfOBtG5W1acRv9O?=
 =?us-ascii?Q?I3H9gIxiEDeHLznA0Nwc/hBpEuGHYDHzadVgMRhvVr1Yb5yNn5w1k5f3jYQX?=
 =?us-ascii?Q?zqouVGd8ZcSZkN3Gf43K10zSXKD8YVmuQZRJfyJAYo6zZYvl+gdbipVQJ4ZX?=
 =?us-ascii?Q?R+Jf8No3mbDL8/bCmvSMqy2kUuZkFUgeLsvdUH150zL+qkkuBTKRWchTlup6?=
 =?us-ascii?Q?0cGPCgKMPT2rvOs9kuVYDlZzNiuoqmQQNIvs1IAT54U8D6obFQYaNuYBaGgh?=
 =?us-ascii?Q?FtPEN4eH950eoFfpCkobpEU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e781c4a-9d56-4102-7190-08ddd5ce2392
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 16:19:09.3028 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I4e+r1BUA54dQahzvnWN9pOv6t0DEyQ2xAvQbHfibr4FqiJDohTtTmLQoFIMBpgs8RPqyOfjINO3N2slXJdk53OnBHks8H4zpfOawrUdjYYVh9Vhq8DgqKK1dp58eQeH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4916
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: 07 August 2025 16:46
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; jani.nikula@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal,
> Ankit K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH 02/12] drm/i915/skl_watermark: Pass linetime as argument =
to
> latency helpers
>=20
> Refactor dsc_prefill_latency and scaler_prefill_latency to take linetime =
as an
> explicit parameter instead of computing it internally.
>=20
> This avoids redundant calculations and simplifies scanline conversion log=
ic in
> skl_is_vblank_too_short().
>=20
> This change also facilitates future extraction of these helpers for use c=
ases
> where latencies are computed for an optimized guardband, based on the
> highest resolution mode, rather than the current mode.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index df586509a742..74ab10a04e83 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2176,13 +2176,11 @@ cdclk_prefill_adjustment(const struct
> intel_crtc_state *crtc_state)  }
>=20
>  static int
> -dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int
> +linetime)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	const struct intel_crtc_scaler_state *scaler_state =3D
>  					&crtc_state->scaler_state;
> -	int linetime =3D DIV_ROUND_UP(1000 * crtc_state-
> >hw.adjusted_mode.htotal,
> -				    crtc_state->hw.adjusted_mode.clock);
>  	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
>  	int chroma_downscaling_factor =3D
>  		crtc_state->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1; @@ -2206,18 +2204,16 @@
> dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
>=20
>  	dsc_prefill_latency *=3D cdclk_prefill_adjustment(crtc_state);
>=20
> -	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
> dsc_prefill_latency);
> +	return dsc_prefill_latency;
>  }
>=20
>  static int
> -scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int
> +linetime)
>  {
>  	const struct intel_crtc_scaler_state *scaler_state =3D
>  					&crtc_state->scaler_state;
>  	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
>  	int scaler_prefill_latency =3D 0;
> -	int linetime =3D DIV_ROUND_UP(1000 * crtc_state-
> >hw.adjusted_mode.htotal,
> -				    crtc_state->hw.adjusted_mode.clock);
>=20
>  	if (!num_scaler_users)
>  		return scaler_prefill_latency;
> @@ -2238,7 +2234,7 @@ scaler_prefill_latency(const struct intel_crtc_stat=
e
> *crtc_state)
>=20
>  	scaler_prefill_latency *=3D cdclk_prefill_adjustment(crtc_state);
>=20
> -	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
> scaler_prefill_latency);
> +	return scaler_prefill_latency;
>  }
>=20
>  static bool
> @@ -2247,11 +2243,13 @@ skl_is_vblank_too_short(const struct
> intel_crtc_state *crtc_state,  {
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
> +	int linetime =3D DIV_ROUND_UP(1000 * adjusted_mode->htotal,
> +				    adjusted_mode->clock);
>=20
>  	return crtc_state->framestart_delay +
>  		intel_usecs_to_scanlines(adjusted_mode, latency) +
> -		scaler_prefill_latency(crtc_state) +
> -		dsc_prefill_latency(crtc_state) +
> +		DIV_ROUND_UP(scaler_prefill_latency(crtc_state, linetime),
> linetime) +
> +		DIV_ROUND_UP(dsc_prefill_latency(crtc_state, linetime),
> linetime) +

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  		wm0_lines >
>  		adjusted_mode->crtc_vtotal - adjusted_mode-
> >crtc_vblank_start;  }
> --
> 2.45.2

