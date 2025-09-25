Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30696B9F7AA
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Sep 2025 15:15:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B136510E914;
	Thu, 25 Sep 2025 13:15:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jugEo75l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F5F210E913;
 Thu, 25 Sep 2025 13:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758806143; x=1790342143;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K4NNxsE7FK/UDPZAW9bhNpkBW/XArFEIUvJn912uOpI=;
 b=jugEo75ldBUFqPVyelWLzahVNv5wHRJbl8MXYe/K+C0l4IDpOb0gz2rB
 nKQELYM8N8rOBklIPlaNro6exQFO0JAlzzkaWKP15SuoPpOZx/LJzxhxw
 c7B2oBsVsNwu2ZyzcgWEnpwTZIBxZ7sjUVYxYpNHeXfNAaOOXrYolNutd
 USasfcoY9g9D7pFLZlvbOMttKvsRnH1+LMor5zChtg1IQjCs1KOs/GPyo
 aToQ1Sjfr3U+E2ktjJa0V1OQv2zX1L4WESrdl0ZPCeijBAvUBPwXeyyII
 43V4TjZ7iRAjVEDfSqrw0ghDI9BfFb1BMYJFlPN+AyKqK4AlxsZdKgghn Q==;
X-CSE-ConnectionGUID: wCPrkcPoTFi2v5PkLp4Nbg==
X-CSE-MsgGUID: c8Bw58Q/SCWf7u4B1W82PA==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="61044621"
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="61044621"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 06:15:43 -0700
X-CSE-ConnectionGUID: F2yQnKG2S1ehJHFtQkS26w==
X-CSE-MsgGUID: zJkJX27PTcGMhWZvuhRzSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="182486845"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 06:15:42 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 06:15:41 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 25 Sep 2025 06:15:41 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.65) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 06:15:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YZgASvRSR4tANVwhtR6j7uCAMQwaG0Kn+Pkg7FHevgu85/CAA2mVqEp3eIAYl+ZUKJnbtirZ/MN7Du19oI4v9jhi6fkBwUWJynMpqgiM1bZooJnrog67tEgjvcwBg6in3uZXR1gx+5yhL8NFbtfft12aqqWvYpBi/eu/R4Rjqx4/y+gDX6LcnxcBX1PF2G/XDwuc3JcQL22fzMyvWS1289x3xIUbO5ymt2pP0HkD4J1q8KIPLH9e/r4vVi9H6z0bmxGMwM+jKd9oShxAwaiHMq47ev5lEuEEpOrniDPwL2zhXJUkW0/331AzRdGEhAuTe8Ukkz/EHqd29ODPIig72A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hSEgGbfyy0L608IeuBoK8TvzWAFeT6MmeWzwR3fbn4w=;
 b=WbGhl6cIn5e9p0rwqeEHSKA9RTjkuW1xc2NjfbbW6JltzxwsVPZBNSB6cYY7SNwhatycsWLffOhZDkJzX5T0AGTHbUN5moRvm4RSGSOdsBt5uzx2uEjUau9vMmn8J+fL/dz9wbm9EZc+1CkoJvjw0bIavEBgbn9W16xHEnRy31Oi3FcNPhBpWBcO2PMLx21KINoyDAXvbHzhfFt4N1V/HYRqUL4V890cY/Ekqq6PGVDbcia92TH2uWZS4MzSipPNJp/kWA8WVOJI4CRxN7vpq50m90JZnwCByoT4zDT9bq7LrdnmOW4QTv+51oBgzrz6a9Ahxm8juMiDoHxmqC2D2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by DS7PR11MB6062.namprd11.prod.outlook.com (2603:10b6:8:75::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.21; Thu, 25 Sep
 2025 13:15:33 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%3]) with mapi id 15.20.9115.020; Thu, 25 Sep 2025
 13:15:33 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "Joshi, Kunal1" <kunal1.joshi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: RE: [PATCH] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Thread-Topic: [PATCH] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Thread-Index: AQHcLTqFiF8PL23MhEScAgGZgGzEmLSj4cBg
Date: Thu, 25 Sep 2025 13:15:33 +0000
Message-ID: <IA1PR11MB6467D2916BEDAC41E9993181E31FA@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20250924100308.346808-1-vinod.govindapillai@intel.com>
In-Reply-To: <20250924100308.346808-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|DS7PR11MB6062:EE_
x-ms-office365-filtering-correlation-id: 84248cc1-9249-4995-ecb8-08ddfc359bc8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?rrcCkuhh/Eieb4OXLenVq8Dpy82mHmp3C90ke9uki2RbZ3bAM5956W+csdi4?=
 =?us-ascii?Q?Nd+MK4wYmT2b7T9h4XBUOKAKa2Tk32TNcAxBCnev30hmIyrcraFuaS0r77kE?=
 =?us-ascii?Q?BXFue5cz6hl35wyRMhhDxMsF/4I3MoeF/5dRzNlkrg5aWxNDV0/Vgj2JUwHi?=
 =?us-ascii?Q?m+RjHCn4Bl9PmdU4Gc+7AGmJWUPQ/bStsPM17TLHjXSrbDKMCaFhhuD7K0UU?=
 =?us-ascii?Q?Rfqo3DSSFdGt4yoOcn8c3RxSAAv+9G6wKv4lxedTdpwKLbs9PtdROMDj1MT9?=
 =?us-ascii?Q?MCCA+Fm77nfxHmAPnpX5jz5kmjugwrBRlMewBQZ5l9aBLh8J8AK12s//yczi?=
 =?us-ascii?Q?Q6b1v1vdTyViAXrm4ExDTt/YsXsHRO7ddNjMgvKjld3euAdIxnY6bE/cTXm/?=
 =?us-ascii?Q?z9Aw4HOmuH7HgANhliAlvcyXiasdbHUPz7v7BicD19LpjV2TqSHn4JVbh8DB?=
 =?us-ascii?Q?8KXSrLC0fTGqJ16yDJBRdRQB3h7MQ1ACE6+/0eP9kpRVfhDPzJf96yDUcnP6?=
 =?us-ascii?Q?jzfOWr5Sp9MAqwb7kgYIEWWs7fLXMzK+lkWsNCmr3vjgtulGbl8qJfc4e491?=
 =?us-ascii?Q?aZagALZxYhd4MR5aOQGtJPKVy6z2lOvsXIJnmE1g44THD3kt/aLIXGFXa8oQ?=
 =?us-ascii?Q?W+MX3Zro/NryB8/3/jG4OaZ7ITcO2E2minG7kuIIZVJHqSgqkEkEPSF7fXJF?=
 =?us-ascii?Q?78JB4Suni3vTaeZn2y2RTKmN8/tjId+kzV7O7Ci9wrhVlTV80iPXoHcHOPOc?=
 =?us-ascii?Q?3xzZL2qBBoY2em2o6lP1iwZdybJ2Ilis2atywYboJo46i+d649byy+bTHRrw?=
 =?us-ascii?Q?xNHRcr9t4Uu7cxvEBgimUYnkQf996Rt3CjxbFpISZiavzNEbO2oEnUhHCrGc?=
 =?us-ascii?Q?PClv298QdcrUYJRia/a4KSnKUZ9NZpUHukuGIz58X6G1rwFtzTSw1ElCUeWW?=
 =?us-ascii?Q?R5c4lW6eso2x3URGaeOvKpmQFDjONLNuyQjioDbTo2uSCJDi9wQQfSFPjbPJ?=
 =?us-ascii?Q?khAEv3ANAgFxF/OnnNsf5NhU3QzojWhQFdpIHV15JUqHVxgr1Gw+EyviFOWl?=
 =?us-ascii?Q?8mmso2Jkr4ZNeljhhHlTqtL1/D0sUq+Ui2EZ16ruplN9P4UdLNJwUna2r7fL?=
 =?us-ascii?Q?pgopNUc+Uxcz65LXcBiwZ8nUZAzjyzeQhlbJY7t100oEojaFg5vDiPuu28bL?=
 =?us-ascii?Q?0uzwZbIHYNBQMR4L/hS7iAeAbbgM1SiuOANeM6VFl1gT+LmfXj+BV8wXak2r?=
 =?us-ascii?Q?7HnAjkV82Ruu58YC1Kup8ryckS1RLGnWhmT01uROvsOuLCPs1qGJUn7wPex5?=
 =?us-ascii?Q?ckInK1GgIN31zyptiilfS5D0YMS/GmT0rNEXlYEA7maKY/72K+wFwJrTd5s9?=
 =?us-ascii?Q?7ohjWVjHgOwnvTSs4KAebD93UNjP9E8z3L0GLH76tra5EFzIaCnD1Ocus/+E?=
 =?us-ascii?Q?WoRo3UyqKLBtVvgmhi1mx9ZIOuWrimsL4Nj95xtkX2kTfM5nZaP42Tjyqa19?=
 =?us-ascii?Q?Q8HsUx/+cTCn9zs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?otLPh5Tbpa18PzO2JX+F5HQrHZX8dOWd5+nwrX6Xirb1GrqpZsPpmLBq1BZN?=
 =?us-ascii?Q?ylh3IHC76Z/dm83ymc0/aE4NHTq+7Qc7+qxAdtLJuzZrJ82whA281HhTrKqa?=
 =?us-ascii?Q?foBCS7wEl7QoOVPIT52PwWXskAA6emc6b01erXh6yJKsj8EYkFWiAgvnWVm6?=
 =?us-ascii?Q?2Ly55BiGuVW25QUxuzjMd1/JdLghvl7dUrMRL2JGDjCfsD64RKUp76B9SGVC?=
 =?us-ascii?Q?6gks4h1lSOV43If1qOAv+267LQPRGjAurTUfdoyfLpmbdRdRMs2pX4jHRstR?=
 =?us-ascii?Q?DHISlVYFUzgZXZwSu7ph0fWCzvGTsEouUnZSJmLfz2S0esYfCQHcJ9qnsc1U?=
 =?us-ascii?Q?lE0GYHLGb5y1oDFGvndGDCG5d8P0nFC+jdk2DhxEupMQBIfsvLkS9qqYLZqx?=
 =?us-ascii?Q?gixZ6OJRlctWiIUDi4VpKVqY6kNa0Jjwlko2S4IQa8oXHH3QdWf4qfmD/Ixm?=
 =?us-ascii?Q?5n7mKfluQC4+9Q8Zlu5CrbEdyuWc3esNBqYkj9M6cc9VBmvQmjz7GOHQoHwc?=
 =?us-ascii?Q?o+s2WK+soqo91i+ckG1gGtmrCmz0FQ+gPzhlQXYxVpCYBilL1ipbqnC6A4gw?=
 =?us-ascii?Q?oU+CfW7b13xtp5dQejxXAMKVwWerD97kZvOCEunsGZ2CB3uEdnVEehbVRIBG?=
 =?us-ascii?Q?1QTWvl4ZgdB7c8Jh/Ubmak4en78YyaicMkjuGGSiHMdJdgP2MkXYitc+OSmr?=
 =?us-ascii?Q?N2XFA7bLJNRo97k1nN9m4EyrNpW0iMN79/JEEyWLEsE1IqRaHLeiwdxojoOn?=
 =?us-ascii?Q?PNV7NZkkDNXgPBx5X2XupiUp38An1HUKQB+WDlMinuo2K+ujs9GtWdXiBrLz?=
 =?us-ascii?Q?N0zEwhIMoFF9O0cBUEIC+XJg75zWlxL/dgE/UOF1eCjVN7Pugsn5cXBGtZix?=
 =?us-ascii?Q?bK9d6O41yQji+/TLUqdG3E66Zu19hoBzAOahTxJxOXgbVpM5w/x2LL+7/wUA?=
 =?us-ascii?Q?nOtHGMLQ/5ZX/KL5L7ssyyLI+TCrKH/JjGvIoj/cZ4eX0KuWxUS0axYSivsj?=
 =?us-ascii?Q?TgPOCDjc8FjjopR74NWhcqyvGyRnoNcz1w9uPlpoDBDh04jFeJQpZMZ6vSLI?=
 =?us-ascii?Q?LhQucx5vmC6Ley+8RIzHAxzFw//HPTCXBVkw6K3VPhXGmTWFP3H6TvXDgfox?=
 =?us-ascii?Q?1MxUApHxNlwzwvlwI4fZ+gbH8oGtz7VB8UByWvg+fvkyYCLApoMADdwTlZDv?=
 =?us-ascii?Q?RlPlaVMz0nQBSCOlIH+uZ6HtakCsEF+/pKfr89ocxlCk/Qlzbp2lKLVdWF7H?=
 =?us-ascii?Q?oxa6KR7X+2+dnJJ+Amkm9AvMTEcbWWwfE+o1VaCnB+Iz+odJbbwHb60TIyJ5?=
 =?us-ascii?Q?fLsCj0rRmIVmgggC/xjJKlrVOFvwtuCLgAZK1VbJ5kDbMCcxXORPibd4hSwV?=
 =?us-ascii?Q?rBNIhmt1E900EuOMyRpM0lGTtHtjumIydQQ0TkbQH51B2N7DjiydaR18q4hq?=
 =?us-ascii?Q?y38/BpBivZmMgtfDkJ1U00RbID8uRXyrgBWmafkAOKky3+U8bBF3QEpX10x9?=
 =?us-ascii?Q?wuk4EqwUezIE5B2EA5Z3U+Kf7ctyBUPAmcyyY8d6AIv9QZv5exg11bxzAoTi?=
 =?us-ascii?Q?hp5C/bQY71E1rlULPFA164jO6PjMbj3kzywCkMHrn00BrD9dBMMgjvQN+WFw?=
 =?us-ascii?Q?X8x9ivtW5LXh2gZmzGK4QJQpE/CRf6FFKDcyUFB69Eyr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84248cc1-9249-4995-ecb8-08ddfc359bc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2025 13:15:33.3195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4PWG/qjaeC9oXioFLvZJMX6W4zqg7OR/KXUdvWIE7bnNIXyTpZyJuTxb9Md++BzcsTkqoOQzFuv5m+ff0ntv+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6062
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vi=
nod
> Govindapillai
> Sent: Wednesday, September 24, 2025 3:33 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Hogander, Jouni
> <jouni.hogander@intel.com>; Joshi, Kunal1 <kunal1.joshi@intel.com>;
> Saarinen, Jani <jani.saarinen@intel.com>
> Subject: [PATCH] drm/i915/fbc: update the impacted platforms in
> wa_22014263786
>=20
> wa_22014263786 is not applicable to the BMG and hence exclude it from the
> wa.
>=20
> Bspec: 74212, 66624
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 0d380c825791..2938ee4b64d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -934,7 +934,8 @@ static void intel_fbc_program_workarounds(struct
> intel_fbc *fbc)
>  			     0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>=20
>  	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
> -	if (DISPLAY_VER(display) >=3D 11 && !display->platform.dg2)
> +	if (DISPLAY_VER(display) >=3D 11 && !display->platform.dg2 &&
> +	    !display->platform.battlemage)
>  		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>  			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
>=20
From wa it seems that it is limited to display 14.

Thanks and Regards,
Nemesa
> --
> 2.43.0

