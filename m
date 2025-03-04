Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C13A4DE24
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 13:41:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4487F10E5B4;
	Tue,  4 Mar 2025 12:41:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AvQ/1AgJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D5BF10E32C;
 Tue,  4 Mar 2025 12:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741092104; x=1772628104;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2jD124tJ2GN36jkO8hu5tsaxWhZhm8NS6diruY5BsBw=;
 b=AvQ/1AgJucHUDW3MrrbPZx5bhPupdiSWxRyqlP2CdDkApGREq83JWXzF
 kwHNrcnq4lv6Y57qGPNv37HlnXr0FoI/ndVGSYl2lYxHu+pIMAJdOSZB/
 dizS/sDXiXnpl5HK6CixbW5z6gHVy9enOlkWn8sCB4V8Z3pEoNp1u/Jtb
 FephPCoQNM8acr9J1+z501EaUVpOqGJGOrb1OZ7SngztIDkHxyMhomTqw
 oKl7LTYd2EyxY1BW2BpjsKRrQRTYY9Z+rBhxCm3h4RTo4kbAs6sC+ZyuU
 gvQvJfnjokgdvP1hxXp7cvB5tE16YT6amzteANhd7AkFc+YAsLJlgNIdV A==;
X-CSE-ConnectionGUID: D7cFE0IoSyeUdpQ62pkzcg==
X-CSE-MsgGUID: HfzYgPSZS6uwK6sxAw39JQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="52213503"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="52213503"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 04:41:13 -0800
X-CSE-ConnectionGUID: x8sdg7A+SOG7NeyWtWZ/1g==
X-CSE-MsgGUID: Uj4DZE6yQ8+2GpN3t5gnfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118877322"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 04:41:12 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 04:41:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 04:41:11 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 04:40:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CYa/zC7TV56WS0O2Eo01PlmN4ubNXCZyhgmwEsGiqqRBAVzlOKzL4xt2K+PfZKmfDJRXL+ycw4eif4Vq/v7RXtziAWsVcA9TJtMZ0jLr0oIDS1wPYQKfmVC3HpYyB10/BS7ZsiYrk/siXfQJ4ItBCdCTjOnM6yJJW4D1xGis4BzcOW+hRYqC9kTqqcyArVL9kSWSa4R3vrFyGSJTYQ/QtRKFHnr4Cdsn/ilxL4irUPxgjBVqTnHAVAdfdU6NjJt99G9/6wDsT9XRZyEhkthRTl/9coiR1fXuV7T2fv65i0DilBadp+ArZCnIdns76Uke5PtiKZtaazVHyMIRR1nq9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rl8tu+VTQ+KZTN+Og+mFNrFaq9jRG582VA/pq3lsW+Y=;
 b=E/8x9PSf40QCLDwNplJU/+RbELextPugMXBtWhB0SzMvPcyOLRD5cgaTZj6p1rMlAuuA9U0riv8k9umQYxyZipml13vRtZ1O76yefZBgJIdab3S4MDSM969zIRTlmW64D1cyPzGTHonqPur78Gbwisdg8VU3ypHp6P9RKJtTyU/mdS3AWDNpU/y4JDFQcVbVy7t3nQce0xGVccgLykou4/MVi2ZyoAZeryrPwCp8B/NnTTgYPUklB7PdCkLMkUolc6TPs1iYJWecn6W1VvuY7v9J0u0fAXcmd5wOdsfnLQsQQLK4fJi3CvmyqdJQN/H5mzak0yShyoaGLuDjkXfwzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by BY1PR11MB8005.namprd11.prod.outlook.com (2603:10b6:a03:523::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.26; Tue, 4 Mar
 2025 12:40:54 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%6]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 12:40:54 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 2/5] drm/i915/display: convert some intel_display.[ch]
 functions to struct intel_display
Thread-Topic: [PATCH 2/5] drm/i915/display: convert some intel_display.[ch]
 functions to struct intel_display
Thread-Index: AQHbjPAddS1CQd3B7UCDA0sLRP+CrrNi6ypw
Date: Tue, 4 Mar 2025 12:40:54 +0000
Message-ID: <IA1PR11MB6467BD194E06E3F93D6301A9E3C82@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <cover.1741084010.git.jani.nikula@intel.com>
 <ee8b108420763cbf47ee77fa35b782a7293f9cfe.1741084010.git.jani.nikula@intel.com>
In-Reply-To: <ee8b108420763cbf47ee77fa35b782a7293f9cfe.1741084010.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|BY1PR11MB8005:EE_
x-ms-office365-filtering-correlation-id: 0462e524-5bcf-41ae-8fdd-08dd5b19ce22
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?KeWEkYDNX0RO+yf1+ypwqf1SIXUoZw81FkBWCdtpDkBH+pMafrE63uuGtqwp?=
 =?us-ascii?Q?k84JWTJhRiL5j6kqu+eI0YUHQJY9dfCp6HqXkixTqm7YUmQhgAzzMFqlrsux?=
 =?us-ascii?Q?vWfS3LtGeVV/OGdXtXxnknF3FynItpuFT6JhyOG0359vZjtWOjocmIlv5dS7?=
 =?us-ascii?Q?p4FKkXlTzuKvlR1X2HN3WsGIc5QoJX7MuefLb1qA63FZKnWKkbPf6puR/M1r?=
 =?us-ascii?Q?0kfWqEjPr0kjEkaeEYeJWa2/idsYq8ZeMZWNkgfKP0L7tQhoeMkg5SfwMeuR?=
 =?us-ascii?Q?Qj6ABwh60VCSzE2MLMPwYuudfV+G05Wqf8IVSb2MD3DA1NADDvNRBK7C7ARi?=
 =?us-ascii?Q?qh66pqIIPtGHtAv+tBgGJ/2CHb1hn2DgPgXj7LdVNwUgNdVbxu+STSdxyL4g?=
 =?us-ascii?Q?3dohu8ZUek2K8evuRLp0yDpQMste4lWeDUiP0iB3wVwGIkZO1cRXq0nblecn?=
 =?us-ascii?Q?GmPnB/+P1RZ6YilpDoYviQoUt+Gv0NEduwgpmhOOJhJBz5rCU+L7vpeq/cD0?=
 =?us-ascii?Q?t9duCQbO865GhDgMt6ySmjvymqPwi5oRL0GBdpee/N83FT2R8FWqC1Corq82?=
 =?us-ascii?Q?5g+g7tGkdXoeMmaQZSWYIUOUwU3ZkeBqMTpGhCuY6MGbvXWp1je/M8fyXp5B?=
 =?us-ascii?Q?kVnxrzzC5BInAWqMI9HXolFCJQ6G0ODvHQXupfyW+0vaGMNRNbJvaEGGE40t?=
 =?us-ascii?Q?JKMWRoNnqiuNzvuDcfO/Xvf1w5Y3KY4skSnV4GJr99vE1B2fkkRl3izsBB38?=
 =?us-ascii?Q?yyGJSTSH78FASVr6uyeVjJu06C9esdULNyaY+ld8b3x06gPFix8iOmMKcEyP?=
 =?us-ascii?Q?MXOV+nzKLItyrHZ5TNmbNIYYc0yh9gUrL8bxFSdcKwtsvL03Lu8xf/NkwSKh?=
 =?us-ascii?Q?yda2JRfzOUTXQyMawqO13/Z8RkP7uTaTpUwTMciA0FKNvzd+AVV7Zh+e0Bef?=
 =?us-ascii?Q?kSlRkUs/CecaxBzfs/k9IRhTgKipdJK/wxSIVdt5rXr2BvLQqSSMSLyE1UJU?=
 =?us-ascii?Q?cwfDpr3E7qpCLKqeLiQSTohJ+/eRnhzDrFzH0CHfrMPoq4PewsqbFUBlhVnu?=
 =?us-ascii?Q?Y508TAVXf8FoidQr71X4bMJ5F0wSM4JGCDxhpK/cceVOReP06U29ByJKNDQ+?=
 =?us-ascii?Q?sPP+rEJVODZcMiqgtcoOf15tD1Q5NRTswZaMBfdn5WC1ZRhlqZhprbU6Bui2?=
 =?us-ascii?Q?ckkxxt+OeuKMBEXGMydYM82TZzMGMN1UplBtjWAmuogwDp1Rxvri0AMn9/5b?=
 =?us-ascii?Q?ezvnbmb4B6rddsUAeiP3T+VX65ObOuWkFQQDVO+ZPtluLciIbfgTVUzyJGFN?=
 =?us-ascii?Q?YLR72n36PvXUsHN1/RGxVO7OKNeb9MwePjNpgVs2sCgKzGLrZXwO5qYVjbOs?=
 =?us-ascii?Q?u5Y3OZBmFCunPHAHGxfZZcZX7i4dl86bM0sv1vQdfVZdclyO3+bPnGXZLeoo?=
 =?us-ascii?Q?cDn/a4Z+YZuEouWF5WqFpgDqD/SzZGnn?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aM2UQgbsxtENed3zN37cWUVeNt/Uc2BjQxYNW1vcTP3JfGGDjnr7WsKVD8Zq?=
 =?us-ascii?Q?E6opyAuOOa2zCpRCuMKqJVCh5j/U0Pr1W6rZ58ER25EpZA4RULW9usVvRC63?=
 =?us-ascii?Q?bx/86xMscj8iAGG/FBf9Zj9+UL+bZDlIE5Uogta2DuJwA4k4aUM6doMYxp8x?=
 =?us-ascii?Q?BmGCmPM5wd1zMSQaV9egoPFQiFBgTmUUiwS6gtN9A7p0lnibSTaqSfPyBqPS?=
 =?us-ascii?Q?xbT4As/exV0QBHx+jdt28ZE1FbJ4fvAtOcx+cCLN1nfxr+ggmqzgFH3mvhoH?=
 =?us-ascii?Q?3flX2N5lw8zllS69z11nSC5JyR+XKseL9uMekYOEtKOADl1g+Ml8rilm0U6Y?=
 =?us-ascii?Q?JuRpF08nVo2QnZEUltBheF/jkJivDYDhpDDBabmbZxaC5uFAb8W3ePkE8sKF?=
 =?us-ascii?Q?itgMLqIfoEQVvV0ccpKpmPA/s2TkBDhpCXnxk17vBjMISZYtYemujIDJ/+pE?=
 =?us-ascii?Q?ovp9igOlXOrG6yvzF30omEM4VRI4FIaH0z+Olpf5Zcup9DkZYzwj0sapo7iw?=
 =?us-ascii?Q?WWKVw4YtdnZlYXBLDZnX+XtJBUrmqhU2JhKcUPaly/VJOgc1oumm6HAe4Csq?=
 =?us-ascii?Q?UC5rQHUeYLVlaHBoBkApO2oc2qlMz9WIuM7SI71CM/SJYmmYeTe6lCN8h/RI?=
 =?us-ascii?Q?ggQj4xkN0LsxQi0IgeGJGQ6oAHVpY4sORO/9RniWWHluWEJotYlNU+UbaMSt?=
 =?us-ascii?Q?D26kVBHlQtYcHzOJsxwsUPSlAHkxd46BFrLcNVltHoUuyKrHRP+wQyl9JZX/?=
 =?us-ascii?Q?J2t4otPIlM52ZNG0x9voGTHiTBQ748xTYk9dJtaFynMKySTp0wAsncDFAYq/?=
 =?us-ascii?Q?LBmDIXyQ8/CmkYsmECXhMQ7fnlUEHEoMDht+q9gjXIIHLUUBrfuo5IMsPT6y?=
 =?us-ascii?Q?QzrC+JjLjwyOsyirE2vweiJjrKPCZbU8WmNw7V6Hm7F6ZhRTZ/KwkwxSkzMh?=
 =?us-ascii?Q?K2k7jlnQec8sn78PSC1+E4G2H369X21EfVEZJzFn+5ZCfm/qFOTZzPgoKAcM?=
 =?us-ascii?Q?iSHz5n5JeK97HWp2EAGWIvWTEHLlhWs8ktiRh4K4+chpria62X8hX1XxtPSI?=
 =?us-ascii?Q?A550oRcuWHISx8+k76LRjVPpKC+JUdHMNy7nPmd4sTPkPFQYmK+1CFjKrHX5?=
 =?us-ascii?Q?iO2vNDqHofl4ZRUOBSm8PMFBZQ3Qz0EBD05R5M1WZ3uY2WJmgxhIBeQl+Emx?=
 =?us-ascii?Q?UizmNi6GLHSbSJhx1sZVfvC8xp5Mw5I3618KHzsrFG24iUS5/jUI+eO9Xn/Y?=
 =?us-ascii?Q?SINX4KGr5JjIFHgE8BSzMLe8gO8WqlXX+mAsSKEGdrPSk30fioYHA+M7mkP8?=
 =?us-ascii?Q?HvXSeIfZ/jgh266bAXbmaUq8Th6nLNuPV8GjOLOCoenTufQOOcnLhMwaPLma?=
 =?us-ascii?Q?LWcFVD7YzlZjN0FfQEtXVVtfEzAqkMY+9Sz0BfJTz/YSGA3MJ2B7Ii2hPRkW?=
 =?us-ascii?Q?w2ERvH03XSIy08UKSFo+7nCe7Iqz+U86yQtsY3Pb1JgmJbI2yLzftGYSEW/1?=
 =?us-ascii?Q?XRhJWV62KB1EvwdiJF12yBCnLmEZBA379Xi8Obej2sumq1IaW81l2/qmLsYk?=
 =?us-ascii?Q?0CzWNc+n84W8cXO2YWprSFIe+guhWY5Rv5jvSerc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0462e524-5bcf-41ae-8fdd-08dd5b19ce22
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 12:40:54.6585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Va7urCjlwYzaEWOFu1PSpY493jGt/LYOC6xBjv8bqba+Whoi0g3KakDV3PCxVk89A9UPvKSqj4PQf4jsfxxwyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8005
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Tuesday, March 4, 2025 3:58 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 2/5] drm/i915/display: convert some intel_display.[ch]
> functions to struct intel_display
>=20
> Going forward, struct intel_display is the main display device data point=
er. The
> intel_display.[ch] files are too big to convert in one go. Convert the in=
terface
> towards intel_display_driver.c to struct intel_display.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 161 +++++++++---------
> drivers/gpu/drm/i915/display/intel_display.h  |  11 +-
>  .../drm/i915/display/intel_display_driver.c   |  10 +-
>  3 files changed, 94 insertions(+), 88 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 9d4f2dacbbce..debf9826fd2f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -182,16 +182,17 @@ int vlv_get_cck_clock_hpll(struct drm_i915_private
> *dev_priv,
>  	return hpll;
>  }
>=20
> -void intel_update_czclk(struct drm_i915_private *dev_priv)
> +void intel_update_czclk(struct intel_display *display)
>  {
> -	if (!(IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)))
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +
> +	if (!display->platform.valleyview && !display->platform.cherryview)
>  		return;
>=20
>  	dev_priv->czclk_freq =3D vlv_get_cck_clock_hpll(dev_priv, "czclk",
>=20
> CCK_CZ_CLOCK_CONTROL);
>=20
> -	drm_dbg(&dev_priv->drm, "CZ clock rate: %d kHz\n",
> -		dev_priv->czclk_freq);
> +	drm_dbg_kms(display->drm, "CZ clock rate: %d kHz\n",
> +dev_priv->czclk_freq);
>  }
>=20
>  static bool is_hdr_mode(const struct intel_crtc_state *crtc_state) @@ -2=
547,8
> +2548,10 @@ intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
>  		    0x80000);
>  }
>=20
> -void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
> +void intel_panel_sanitize_ssc(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +
>  	/*
>  	 * There may be no VBT; and if the BIOS enabled SSC we can
>  	 * just keep using it to avoid unnecessary flicker.  Whereas if the @@ =
-
> 2556,16 +2559,16 @@ void intel_panel_sanitize_ssc(struct drm_i915_private
> *dev_priv)
>  	 * indicates as much.
>  	 */
>  	if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)) {
> -		bool bios_lvds_use_ssc =3D intel_de_read(dev_priv,
> +		bool bios_lvds_use_ssc =3D intel_de_read(display,
>  						       PCH_DREF_CONTROL) &
>  			DREF_SSC1_ENABLE;
>=20
> -		if (dev_priv->display.vbt.lvds_use_ssc !=3D bios_lvds_use_ssc) {
> -			drm_dbg_kms(&dev_priv->drm,
> +		if (display->vbt.lvds_use_ssc !=3D bios_lvds_use_ssc) {
> +			drm_dbg_kms(display->drm,
>  				    "SSC %s by BIOS, overriding VBT which says
> %s\n",
>  				    str_enabled_disabled(bios_lvds_use_ssc),
> -				    str_enabled_disabled(dev_priv-
> >display.vbt.lvds_use_ssc));
> -			dev_priv->display.vbt.lvds_use_ssc =3D
> bios_lvds_use_ssc;
> +				    str_enabled_disabled(display-
> >vbt.lvds_use_ssc));
> +			display->vbt.lvds_use_ssc =3D bios_lvds_use_ssc;
>  		}
>  	}
>  }
> @@ -7635,37 +7638,39 @@ static u32 intel_encoder_possible_crtcs(struct
> intel_encoder *encoder)
>  	return possible_crtcs;
>  }
>=20
> -static bool ilk_has_edp_a(struct drm_i915_private *dev_priv)
> +static bool ilk_has_edp_a(struct intel_display *display)
>  {
> -	if (!IS_MOBILE(dev_priv))
> +	if (!display->platform.mobile)
>  		return false;
>=20
> -	if ((intel_de_read(dev_priv, DP_A) & DP_DETECTED) =3D=3D 0)
> +	if ((intel_de_read(display, DP_A) & DP_DETECTED) =3D=3D 0)
>  		return false;
>=20
> -	if (IS_IRONLAKE(dev_priv) && (intel_de_read(dev_priv, FUSE_STRAP)
> & ILK_eDP_A_DISABLE))
> +	if (display->platform.ironlake && (intel_de_read(display, FUSE_STRAP)
> +& ILK_eDP_A_DISABLE))
>  		return false;
>=20
>  	return true;
>  }
>=20
> -static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
> +static bool intel_ddi_crt_present(struct intel_display *display)
>  {
> -	if (DISPLAY_VER(dev_priv) >=3D 9)
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +
> +	if (DISPLAY_VER(display) >=3D 9)
>  		return false;
>=20
> -	if (IS_HASWELL_ULT(dev_priv) || IS_BROADWELL_ULT(dev_priv))
> +	if (display->platform.haswell_ult || display->platform.broadwell_ult)
>  		return false;
>=20
>  	if (HAS_PCH_LPT_H(dev_priv) &&
> -	    intel_de_read(dev_priv, SFUSE_STRAP) &
> SFUSE_STRAP_CRT_DISABLED)
> +	    intel_de_read(display, SFUSE_STRAP) &
> SFUSE_STRAP_CRT_DISABLED)
>  		return false;
>=20
>  	/* DDI E can't be used if DDI A requires 4 lanes */
> -	if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) &
> DDI_A_4_LANES)
> +	if (intel_de_read(display, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
>  		return false;
>=20
> -	if (!dev_priv->display.vbt.int_crt_support)
> +	if (!display->vbt.int_crt_support)
>  		return false;
>=20
>  	return true;
> @@ -7677,24 +7682,24 @@ bool assert_port_valid(struct intel_display
> *display, enum port port)
>  			 "Platform does not support port %c\n",
> port_name(port));  }
>=20
> -void intel_setup_outputs(struct drm_i915_private *dev_priv)
> +void intel_setup_outputs(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_encoder *encoder;
>  	bool dpd_is_edp =3D false;
>=20
>  	intel_pps_unlock_regs_wa(display);
>=20
> -	if (!HAS_DISPLAY(dev_priv))
> +	if (!HAS_DISPLAY(display))
>  		return;
>=20
> -	if (HAS_DDI(dev_priv)) {
> -		if (intel_ddi_crt_present(dev_priv))
> +	if (HAS_DDI(display)) {
> +		if (intel_ddi_crt_present(display))
>  			intel_crt_init(display);
>=20
>  		intel_bios_for_each_encoder(display, intel_ddi_init);
>=20
> -		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> +		if (display->platform.geminilake || display->platform.broxton)
>  			vlv_dsi_init(dev_priv);
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		int found;
> @@ -7709,33 +7714,33 @@ void intel_setup_outputs(struct
> drm_i915_private *dev_priv)
>=20
>  		dpd_is_edp =3D intel_dp_is_port_edp(display, PORT_D);
>=20
> -		if (ilk_has_edp_a(dev_priv))
> +		if (ilk_has_edp_a(display))
>  			g4x_dp_init(display, DP_A, PORT_A);
>=20
> -		if (intel_de_read(dev_priv, PCH_HDMIB) & SDVO_DETECTED)
> {
> +		if (intel_de_read(display, PCH_HDMIB) & SDVO_DETECTED) {
>  			/* PCH SDVOB multiplex with HDMIB */
>  			found =3D intel_sdvo_init(display, PCH_SDVOB,
> PORT_B);
>  			if (!found)
>  				g4x_hdmi_init(display, PCH_HDMIB, PORT_B);
> -			if (!found && (intel_de_read(dev_priv, PCH_DP_B) &
> DP_DETECTED))
> +			if (!found && (intel_de_read(display, PCH_DP_B) &
> DP_DETECTED))
>  				g4x_dp_init(display, PCH_DP_B, PORT_B);
>  		}
>=20
> -		if (intel_de_read(dev_priv, PCH_HDMIC) & SDVO_DETECTED)
> +		if (intel_de_read(display, PCH_HDMIC) & SDVO_DETECTED)
>  			g4x_hdmi_init(display, PCH_HDMIC, PORT_C);
>=20
> -		if (!dpd_is_edp && intel_de_read(dev_priv, PCH_HDMID) &
> SDVO_DETECTED)
> +		if (!dpd_is_edp && intel_de_read(display, PCH_HDMID) &
> SDVO_DETECTED)
>  			g4x_hdmi_init(display, PCH_HDMID, PORT_D);
>=20
> -		if (intel_de_read(dev_priv, PCH_DP_C) & DP_DETECTED)
> +		if (intel_de_read(display, PCH_DP_C) & DP_DETECTED)
>  			g4x_dp_init(display, PCH_DP_C, PORT_C);
>=20
> -		if (intel_de_read(dev_priv, PCH_DP_D) & DP_DETECTED)
> +		if (intel_de_read(display, PCH_DP_D) & DP_DETECTED)
>  			g4x_dp_init(display, PCH_DP_D, PORT_D);
> -	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> +	} else if (display->platform.valleyview ||
> +display->platform.cherryview) {
>  		bool has_edp, has_port;
>=20
> -		if (IS_VALLEYVIEW(dev_priv) && dev_priv-
> >display.vbt.int_crt_support)
> +		if (display->platform.valleyview && display-
> >vbt.int_crt_support)
>  			intel_crt_init(display);
>=20
>  		/*
> @@ -7755,87 +7760,87 @@ void intel_setup_outputs(struct
> drm_i915_private *dev_priv)
>  		 */
>  		has_edp =3D intel_dp_is_port_edp(display, PORT_B);
>  		has_port =3D intel_bios_is_port_present(display, PORT_B);
> -		if (intel_de_read(dev_priv, VLV_DP_B) & DP_DETECTED ||
> has_port)
> +		if (intel_de_read(display, VLV_DP_B) & DP_DETECTED ||
> has_port)
>  			has_edp &=3D g4x_dp_init(display, VLV_DP_B, PORT_B);
> -		if ((intel_de_read(dev_priv, VLV_HDMIB) & SDVO_DETECTED
> || has_port) && !has_edp)
> +		if ((intel_de_read(display, VLV_HDMIB) & SDVO_DETECTED ||
> has_port)
> +&& !has_edp)
>  			g4x_hdmi_init(display, VLV_HDMIB, PORT_B);
>=20
>  		has_edp =3D intel_dp_is_port_edp(display, PORT_C);
>  		has_port =3D intel_bios_is_port_present(display, PORT_C);
> -		if (intel_de_read(dev_priv, VLV_DP_C) & DP_DETECTED ||
> has_port)
> +		if (intel_de_read(display, VLV_DP_C) & DP_DETECTED ||
> has_port)
>  			has_edp &=3D g4x_dp_init(display, VLV_DP_C, PORT_C);
> -		if ((intel_de_read(dev_priv, VLV_HDMIC) & SDVO_DETECTED
> || has_port) && !has_edp)
> +		if ((intel_de_read(display, VLV_HDMIC) & SDVO_DETECTED ||
> has_port)
> +&& !has_edp)
>  			g4x_hdmi_init(display, VLV_HDMIC, PORT_C);
>=20
> -		if (IS_CHERRYVIEW(dev_priv)) {
> +		if (display->platform.cherryview) {
>  			/*
>  			 * eDP not supported on port D,
>  			 * so no need to worry about it
>  			 */
>  			has_port =3D intel_bios_is_port_present(display,
> PORT_D);
> -			if (intel_de_read(dev_priv, CHV_DP_D) &
> DP_DETECTED || has_port)
> +			if (intel_de_read(display, CHV_DP_D) & DP_DETECTED
> || has_port)
>  				g4x_dp_init(display, CHV_DP_D, PORT_D);
> -			if (intel_de_read(dev_priv, CHV_HDMID) &
> SDVO_DETECTED || has_port)
> +			if (intel_de_read(display, CHV_HDMID) &
> SDVO_DETECTED || has_port)
>  				g4x_hdmi_init(display, CHV_HDMID,
> PORT_D);
>  		}
>=20
>  		vlv_dsi_init(dev_priv);
> -	} else if (IS_PINEVIEW(dev_priv)) {
> +	} else if (display->platform.pineview) {
>  		intel_lvds_init(dev_priv);
>  		intel_crt_init(display);
> -	} else if (IS_DISPLAY_VER(dev_priv, 3, 4)) {
> +	} else if (IS_DISPLAY_VER(display, 3, 4)) {
>  		bool found =3D false;
>=20
> -		if (IS_MOBILE(dev_priv))
> +		if (display->platform.mobile)
>  			intel_lvds_init(dev_priv);
>=20
>  		intel_crt_init(display);
>=20
> -		if (intel_de_read(dev_priv, GEN3_SDVOB) & SDVO_DETECTED)
> {
> -			drm_dbg_kms(&dev_priv->drm, "probing SDVOB\n");
> +		if (intel_de_read(display, GEN3_SDVOB) & SDVO_DETECTED) {
> +			drm_dbg_kms(display->drm, "probing SDVOB\n");
>  			found =3D intel_sdvo_init(display, GEN3_SDVOB,
> PORT_B);
> -			if (!found && IS_G4X(dev_priv)) {
> -				drm_dbg_kms(&dev_priv->drm,
> +			if (!found && display->platform.g4x) {
> +				drm_dbg_kms(display->drm,
>  					    "probing HDMI on SDVOB\n");
>  				g4x_hdmi_init(display, GEN4_HDMIB,
> PORT_B);
>  			}
>=20
> -			if (!found && IS_G4X(dev_priv))
> +			if (!found && display->platform.g4x)
>  				g4x_dp_init(display, DP_B, PORT_B);
>  		}
>=20
>  		/* Before G4X SDVOC doesn't have its own detect register */
>=20
> -		if (intel_de_read(dev_priv, GEN3_SDVOB) & SDVO_DETECTED)
> {
> -			drm_dbg_kms(&dev_priv->drm, "probing SDVOC\n");
> +		if (intel_de_read(display, GEN3_SDVOB) & SDVO_DETECTED) {
> +			drm_dbg_kms(display->drm, "probing SDVOC\n");
>  			found =3D intel_sdvo_init(display, GEN3_SDVOC,
> PORT_C);
>  		}
>=20
> -		if (!found && (intel_de_read(dev_priv, GEN3_SDVOC) &
> SDVO_DETECTED)) {
> +		if (!found && (intel_de_read(display, GEN3_SDVOC) &
> SDVO_DETECTED)) {
>=20
> -			if (IS_G4X(dev_priv)) {
> -				drm_dbg_kms(&dev_priv->drm,
> +			if (display->platform.g4x) {
> +				drm_dbg_kms(display->drm,
>  					    "probing HDMI on SDVOC\n");
>  				g4x_hdmi_init(display, GEN4_HDMIC,
> PORT_C);
>  			}
> -			if (IS_G4X(dev_priv))
> +			if (display->platform.g4x)
>  				g4x_dp_init(display, DP_C, PORT_C);
>  		}
>=20
> -		if (IS_G4X(dev_priv) && (intel_de_read(dev_priv, DP_D) &
> DP_DETECTED))
> +		if (display->platform.g4x && (intel_de_read(display, DP_D) &
> +DP_DETECTED))
>  			g4x_dp_init(display, DP_D, PORT_D);
>=20
> -		if (SUPPORTS_TV(dev_priv))
> +		if (SUPPORTS_TV(display))
>  			intel_tv_init(display);
> -	} else if (DISPLAY_VER(dev_priv) =3D=3D 2) {
> -		if (IS_I85X(dev_priv))
> +	} else if (DISPLAY_VER(display) =3D=3D 2) {
> +		if (display->platform.i85x)
>  			intel_lvds_init(dev_priv);
>=20
>  		intel_crt_init(display);
>  		intel_dvo_init(dev_priv);
>  	}
>=20
> -	for_each_intel_encoder(&dev_priv->drm, encoder) {
> +	for_each_intel_encoder(display->drm, encoder) {
>  		encoder->base.possible_crtcs =3D
>  			intel_encoder_possible_crtcs(encoder);
>  		encoder->base.possible_clones =3D
> @@ -7844,7 +7849,7 @@ void intel_setup_outputs(struct drm_i915_private
> *dev_priv)
>=20
>  	intel_init_pch_refclk(dev_priv);
>=20
> -	drm_helper_move_panel_connectors_to_head(&dev_priv->drm);
> +	drm_helper_move_panel_connectors_to_head(display->drm);
>  }
>=20
>  static int max_dotclock(struct drm_i915_private *i915) @@ -8061,32
> +8066,34 @@ static const struct intel_display_funcs i9xx_display_funcs =
=3D {
>=20
>  /**
>   * intel_init_display_hooks - initialize the display modesetting hooks
> - * @dev_priv: device private
> + * @display: display device private
>   */
> -void intel_init_display_hooks(struct drm_i915_private *dev_priv)
> +void intel_init_display_hooks(struct intel_display *display)
>  {
> -	if (DISPLAY_VER(dev_priv) >=3D 9) {
> -		dev_priv->display.funcs.display =3D &skl_display_funcs;
> -	} else if (HAS_DDI(dev_priv)) {
> -		dev_priv->display.funcs.display =3D &ddi_display_funcs;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +
> +	if (DISPLAY_VER(display) >=3D 9) {
> +		display->funcs.display =3D &skl_display_funcs;
> +	} else if (HAS_DDI(display)) {
> +		display->funcs.display =3D &ddi_display_funcs;
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
> -		dev_priv->display.funcs.display =3D &pch_split_display_funcs;
> -	} else if (IS_CHERRYVIEW(dev_priv) ||
> -		   IS_VALLEYVIEW(dev_priv)) {
> -		dev_priv->display.funcs.display =3D &vlv_display_funcs;
> +		display->funcs.display =3D &pch_split_display_funcs;
> +	} else if (display->platform.cherryview ||
> +		   display->platform.valleyview) {
> +		display->funcs.display =3D &vlv_display_funcs;
>  	} else {
> -		dev_priv->display.funcs.display =3D &i9xx_display_funcs;
> +		display->funcs.display =3D &i9xx_display_funcs;
>  	}
>  }
>=20
> -int intel_initial_commit(struct drm_device *dev)
> +int intel_initial_commit(struct intel_display *display)
>  {
>  	struct drm_atomic_state *state =3D NULL;
>  	struct drm_modeset_acquire_ctx ctx;
>  	struct intel_crtc *crtc;
>  	int ret =3D 0;
>=20
> -	state =3D drm_atomic_state_alloc(dev);
> +	state =3D drm_atomic_state_alloc(display->drm);
>  	if (!state)
>  		return -ENOMEM;
>=20
> @@ -8096,7 +8103,7 @@ int intel_initial_commit(struct drm_device *dev)
>  	to_intel_atomic_state(state)->internal =3D true;
>=20
>  retry:
> -	for_each_intel_crtc(dev, crtc) {
> +	for_each_intel_crtc(display->drm, crtc) {
>  		struct intel_crtc_state *crtc_state =3D
>  			intel_atomic_get_crtc_state(state, crtc);
>=20
> @@ -8120,7 +8127,7 @@ int intel_initial_commit(struct drm_device *dev)
>  			 */
>  			crtc_state->uapi.color_mgmt_changed =3D true;
>=20
> -			for_each_intel_encoder_mask(dev, encoder,
> +			for_each_intel_encoder_mask(display->drm, encoder,
>  						    crtc_state-
> >uapi.encoder_mask) {
>  				if (encoder->initial_fastset_check &&
>  				    !encoder->initial_fastset_check(encoder,
> crtc_state)) { diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 45d70d3e1041..83a820b72a6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -457,7 +457,6 @@ int vlv_get_cck_clock(struct drm_i915_private
> *dev_priv,
>  		      const char *name, u32 reg, int ref_freq);  int
> vlv_get_cck_clock_hpll(struct drm_i915_private *dev_priv,
>  			   const char *name, u32 reg);
> -void intel_init_display_hooks(struct drm_i915_private *dev_priv);  bool
> intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv);  void
> intel_encoder_destroy(struct drm_encoder *encoder);  struct
> drm_display_mode * @@ -541,11 +540,11 @@ void
> intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
>  					  struct intel_power_domain_mask
> *domains);
>=20
>  /* interface for intel_display_driver.c */ -void intel_setup_outputs(str=
uct
> drm_i915_private *i915); -int intel_initial_commit(struct drm_device *dev=
); -
> void intel_panel_sanitize_ssc(struct drm_i915_private *i915); -void
> intel_update_czclk(struct drm_i915_private *i915); -void
> intel_atomic_helper_free_state_worker(struct work_struct *work);
> +void intel_init_display_hooks(struct intel_display *display); void
> +intel_setup_outputs(struct intel_display *display); int
> +intel_initial_commit(struct intel_display *display); void
> +intel_panel_sanitize_ssc(struct intel_display *display); void
> +intel_update_czclk(struct intel_display *display);
>  enum drm_mode_status intel_mode_valid(struct drm_device *dev,
>  				      const struct drm_display_mode *mode);
> int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state
> *_state, diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
> b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 68d0753659e8..31740a677dd8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -199,7 +199,7 @@ void intel_display_driver_early_probe(struct
> intel_display *display)
>  	intel_init_cdclk_hooks(display);
>  	intel_audio_hooks_init(display);
>  	intel_dpll_init_clock_hook(i915);
> -	intel_init_display_hooks(i915);
> +	intel_init_display_hooks(display);
>  	intel_fdi_init_hook(display);
>  	intel_dmc_wl_init(display);
>  }
> @@ -431,7 +431,7 @@ int intel_display_driver_probe_nogem(struct
> intel_display *display)
>=20
>  	intel_wm_init(i915);
>=20
> -	intel_panel_sanitize_ssc(i915);
> +	intel_panel_sanitize_ssc(display);
>=20
>  	intel_pps_setup(display);
>=20
> @@ -451,7 +451,7 @@ int intel_display_driver_probe_nogem(struct
> intel_display *display)
>  	intel_shared_dpll_init(display);
>  	intel_fdi_pll_freq_update(display);
>=20
> -	intel_update_czclk(i915);
> +	intel_update_czclk(display);
>  	intel_display_driver_init_hw(display);
>  	intel_dpll_update_ref_clks(display);
>=20
> @@ -462,7 +462,7 @@ int intel_display_driver_probe_nogem(struct
> intel_display *display)
>=20
>  	/* Just disable it once at startup */
>  	intel_vga_disable(display);
> -	intel_setup_outputs(i915);
> +	intel_setup_outputs(display);
>=20
>  	ret =3D intel_dp_tunnel_mgr_init(display);
>  	if (ret)
> @@ -517,7 +517,7 @@ int intel_display_driver_probe(struct intel_display
> *display)
>  	 * are already calculated and there is no assert_plane warnings
>  	 * during bootup.
>  	 */
> -	ret =3D intel_initial_commit(display->drm);
> +	ret =3D intel_initial_commit(display);
>  	if (ret)
>  		drm_dbg_kms(display->drm, "Initial modeset failed, %d\n",
> ret);
>=20
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> --
> 2.39.5

