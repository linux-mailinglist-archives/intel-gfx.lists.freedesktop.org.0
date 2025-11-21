Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 274DBC77325
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 04:54:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF31910E7F6;
	Fri, 21 Nov 2025 03:54:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m81bIL9f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB2A310E13F;
 Fri, 21 Nov 2025 03:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763697289; x=1795233289;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U6w9httEkDFBRK2mvLvew5mepEMDzokOpM34Oagj5rA=;
 b=m81bIL9faYKUAASEgqW/suzJWPodhWknnKivNR4M8AWF+H0kFgiuKIan
 o9VqgaDRk0aCUEhbEcwC5UK80bv3s/4UaIrhTe7EP9ucG1L40jxm08Lq2
 heOnrViaNz7g+qZ+SiGBtZm1naE3R1MiFmSMDQQ0iQ8+UssYxqzsIbW7Z
 N/J3miFKxl1YLemNmd1dXiU/M7s81czblJGGldDRYYX95qIcvnB8gUgcB
 PVbfNVhNN+fQfWeG8TKsA+F6edbjcb5PHw4KbjxvlxaHJT89uLDfs6r4N
 6eiCgWzf4KXcc18yp1h517ux/KoYKNGOhAXoYttwH/DhwmBQrN9Pldlpv A==;
X-CSE-ConnectionGUID: 651cjPR9T/+sLhCOFMPo3A==
X-CSE-MsgGUID: ZYc3yEZYRYakuKq6Ui/UHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="64974692"
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="64974692"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 19:54:49 -0800
X-CSE-ConnectionGUID: 4dwo8JinQ+OSaHnhDWHQUA==
X-CSE-MsgGUID: 6rxyg7slR8SaYT2VmpZVTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="195853394"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 19:54:49 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 19:54:49 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 19:54:49 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.5) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 19:54:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ATdrIrIekyfTRZ7L6hFo0tKF0nPtSKMoGKrsFaWQ8pcCvdyCKAQl6ytYy4lDQxFQRe+FyvtcMmR8jk3mXE5fslX5XVuR8pIfIAsTtPxNQkzid3ci5ZF4jxeegm+ElrAuBc6A9P7tsKgKkquYU69E1EFkKP113UzZYErT9eUu+AVvBXoJqvM59IredbD/0/qNBLN5aWXzdFSADoeq+3AynJQK6LKZDI5EhNv0xeTdaMDKMAZOFpTycxIpoAyvBNdjwEDHEyyscJW7QMuW5x6aGqEUvv1iGQIaTDKx33yltp5CjoMSnlUqIDbs7GuXLUVKxcffYF+dtK1gk4+Delt7AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/W68kpPNBQJmSi/sWapALouxkuUqQm/CuP8L+dNmruY=;
 b=OKhbGyVevxU27m6ZEQfDduxJTdSWZYMSuCzEJp+WmFWjmoaAC20RBt250J9BFL3QuN1jJUBViapN2WlCU8F68APs8P2/H1mitavmkYbY/zMHa8w/KuSS8ijVYU4W8hm7Fn0ZGm2gyGVI6NA4hi4mX1TChrI5pcFPGZop1xLRupMZOaBRoDuX6giSraKSqY9izkzDNpi2bVQENoVbQ4BhX1BbXaaM7kTFzgOLJ/QaeccCQ2glxDHspWvTpEHB9mr309DmF+VEVTz1J4aC4xpJZBYp5DAannrmprGP0yF8BefJXIWENP1QbKXb2CIlv1kEOffP8/xXE+NhRI1lMT2k/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB4925.namprd11.prod.outlook.com
 (2603:10b6:a03:2df::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 03:54:46 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 03:54:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 5/5] drm/i915/cx0: Read out power-down state of both PHY
 lanes for reversed lanes
Thread-Topic: [PATCH 5/5] drm/i915/cx0: Read out power-down state of both PHY
 lanes for reversed lanes
Thread-Index: AQHcWkKKyDzpTeF8h0aK7jB/6GnQl7T8gENg
Date: Fri, 21 Nov 2025 03:54:46 +0000
Message-ID: <DM3PPF208195D8D7262BD8D92C00DF77FDCE3D5A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251120172358.1282765-1-imre.deak@intel.com>
 <20251120172358.1282765-5-imre.deak@intel.com>
In-Reply-To: <20251120172358.1282765-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB4925:EE_
x-ms-office365-filtering-correlation-id: 67e78605-9a78-4e6f-5cfc-08de28b1b661
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?kViiNd30JedQqPQ7jAuJrixRk8Z+9I8henKp/0XOkD0M93C2KbE7t/JvCrMO?=
 =?us-ascii?Q?hharUk5NdvOwo3V8v0tkIJI+a8p+VqP1YIUY4SFkFl9oPvj0Fs3GL3gswjhc?=
 =?us-ascii?Q?X4Qr+ssA3I1xOQ6b6VYOw8KBnTYuG2hfLJJt1t5/8SNMFvNfdb3TQb/4uWNK?=
 =?us-ascii?Q?YA7tWFXy9fu/M4lzPIiIKkBdBKPEMcSA6Z3ef55kgJFoscuLWN16XKgyYcRx?=
 =?us-ascii?Q?cY3en/OT7FJuRFCjZ2tgptqUE5Yu9bWrMsnFUqeBpLynS8fnPIpqhV5vR8eZ?=
 =?us-ascii?Q?sy7bjifoA9lRAr3P9KNPF7EDYq0H9ooYIeNrjppEY2rPZ+yZOWVkKKsL0bHf?=
 =?us-ascii?Q?rU3kDJ8AS3z4vrhm/w/9JeYR3m4eaoOLIYGxZMTT1eDZu2o1ng6NGGmcTzCy?=
 =?us-ascii?Q?TEYth4iRuCLU72Vm87EWo3gBweyZuMzsK08FFmap9530QAolKXnJtUhiI5te?=
 =?us-ascii?Q?G5DU6FdcfscfHtIy4OzZXrWmDJ0xH0cYtKX0RStDlijNoepuPpNb2+eotqav?=
 =?us-ascii?Q?fdogF5mQ7drHPYhOs7NJWoUiK/ZNEJrIDxqmyP0LAXJeT29j05TymwIFLQpu?=
 =?us-ascii?Q?v+UqWtS26sibNTFFyKp0tRnUDOXyilHvsk40Tpfl+Jt8fuBo4OQ+yxG1IH0H?=
 =?us-ascii?Q?OdSt5oJTxUk2ZsncjVlrlTe6xPSVfVYjr5kABZKB4Lt5zx6I/NdllK6sFdGx?=
 =?us-ascii?Q?U/NTD0O6mEeNbaJp3n5TqHZQrXZxi4QGQGwXs+VE+H/cpYNy/9v3im/OfGu2?=
 =?us-ascii?Q?LKkH2yDtpnBJi3LhznCSklvhVxqmPtqawDn5LrV09DNLhpSpz2PC1/jpk9Nk?=
 =?us-ascii?Q?5HK+4UcBpLkrDqEJP+352n+qUFO+iTBF+GwAu0mglIjI9e4R9SQ+2i6S/P0n?=
 =?us-ascii?Q?JWWzD+telWchjHQiQnKJV1jkGR4fpGUpBKQ5vqgJIoycroJjO6anneq71Jin?=
 =?us-ascii?Q?XqCzhjwdfhywFvB+O+/42SUrQoVODVOsnpJL2RW6UCvFmmXAXSFpW/eheqqi?=
 =?us-ascii?Q?/nhHfJOBgvPAB2cJgLkRxYXxPpVtw6hzy+l5dfUnbFmO1pgdXF/i56UA6SJp?=
 =?us-ascii?Q?Pnw1vJ1jOdMtJD3wE4Lct7OLRXTwsbAao/hrxPka8Xf/NyZ4ooq0lwQ4tr5W?=
 =?us-ascii?Q?cSIIY2m0rxXYUSZwYbg7E7wr6FgNcNi2/1NgZZwZYeqsd8RnPfSqCpwFnSmL?=
 =?us-ascii?Q?JQwD5C8u3i3UzZyE8alApj5cz9MGEEsXw67PF9CGfh/CZZuteRULzDdR27th?=
 =?us-ascii?Q?i2BjARqWX1nCMv6dvBvdAw+umqTXFUnRME4QPc6mGKBAguLIiRZnmxo1HRqt?=
 =?us-ascii?Q?QBX/BNBbZkzlhUX3b4pTzXXloR4tAa2r7sJnWe1+oBcRtfzmqHoZ0wYnDNtk?=
 =?us-ascii?Q?4vT7at7yA3MGVOA+ItXXfJdaTHnNWnYPKVpVbmeLHHA/nhO24/nljnfwEpaD?=
 =?us-ascii?Q?BdVv6jZqeqs4/svfvvgN/E4YIxd51hwmgPu+FwLGbEmWVqWUT4mwbHLxL79h?=
 =?us-ascii?Q?UufEJ47OtDgfhLbkoyofs1uGsbsWxHvEqQpq?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+xTTjy6dpbocnZ54P4MvrmZux/wqDubuhvqLJ47ISwNjH2gl4E0euSVDGGO2?=
 =?us-ascii?Q?pqz7rjIzAdSNVPCsr0adCd7okKpvN9UK5ty9NUfZraRi+sqSAdN2wjgrlYLI?=
 =?us-ascii?Q?HKdKhMIo6aSXuwqcPrA8yKhyqsorh8Z7lfUR0rKSOEg2cyvcDSgb8YCrrj+P?=
 =?us-ascii?Q?dmJGbMkQHIK3Pvi++inlUZ8aQLoIKRFgbKQNdaO2Apa+YF+wmKf/uA8oNYGA?=
 =?us-ascii?Q?jKZKBEWVCA3ZvYRtbIpcRUiQDyfhEjhaI4GvhLnDnS7qK5zuI48YPEfbxtMR?=
 =?us-ascii?Q?oavNr9Z4G8JngE0Q4CcEQcuSkhjMPL+2iFx6RAVkpEQHimjN2yvdn7ae402w?=
 =?us-ascii?Q?b2N0/mNHt11Y0CxdB2BK3NwOJBhuoJprJHYpBC97QFGFaALHawxmywDUvIh8?=
 =?us-ascii?Q?CUdWfgxrr+vU6IaLqmZRPNWAf67yc0rwbPD/VZ/Fl/sHE4sgcTbzYgIgFyGQ?=
 =?us-ascii?Q?Pjw+DKBneYs3RwC+PIWDm3ngAT4KrxijsXekxixNr1udKL4DDRtwMjV9iyQ7?=
 =?us-ascii?Q?hbBwJQW6WTsmU2x2OBI43YDToJtJ6mnBmw+jUCjOT4AS9KDWR1X9VBaHmkGt?=
 =?us-ascii?Q?aEeA9ebN7+SPPx+eJBBYaNK5QQmyK/JRsvuhP8BRhNynFYhY70whZOb4qHbG?=
 =?us-ascii?Q?tdfF3Pa8+/dJU6ZyC3ZiiLTGVW5s9IqssJ8GKeBHfOYYji8O6BIkehu3OyuO?=
 =?us-ascii?Q?FcUmIWnTVCRkhFOAGDtVIhY/rK/PcG4BNQswCnmqRQTxTRZtd+eDM+smERZt?=
 =?us-ascii?Q?ktbeSW3kuMhZhfZMvj6la0WxdgLp9X4uactu3XysxmpSr9e6T1n7dgueJ1/f?=
 =?us-ascii?Q?jlOKgWciZakYxpbd1DSTtJ+TaisF/W64pAZ2VPGlbgrejM5I2Ma1CFoOqCkf?=
 =?us-ascii?Q?sH/JbtGZ8jFZQhgvyjheVYZF28N2f40BUVB2zJdtcpJZu92ws2sqTKGsJuYg?=
 =?us-ascii?Q?TQGMVC2EBl9z9qxA3EoY+6J08AV7AHjgT109U7mKYoqAOxgntKP8wrjInZqT?=
 =?us-ascii?Q?+HnB6jK4MB46+X1xtCI9sjnV/efrGQgcEDsFhkGFFhkGdRwRE5bGudIeDnuU?=
 =?us-ascii?Q?/RNptWbbCd1w+Ya+Z88WwFFkLlAkyJ2odTLyFIvtPc9WCav5yLcAlz1xR0Je?=
 =?us-ascii?Q?nKSgyoEKDf/uAIR/UrJq8MZd1u7NpRtdsm8/zJxCYzKY/i1S5FFSzr5u8GWx?=
 =?us-ascii?Q?OItBtx50LnMnz0+qIhQARp/OdkmyZyIUOYFScXKqWnc7//haXxaiiULEpWVQ?=
 =?us-ascii?Q?/fQa8RqgiEFqJqlKrZZnVeWDPh90+xD99/OwySTAa9fVpkYMoGkYf528shsn?=
 =?us-ascii?Q?Nk8e7wDVJoB4iit5oAIe9Pne+O1x1biiJuiidL30op49rxGCEVgsqXt9Xl6S?=
 =?us-ascii?Q?bU6vCHQFECBaBIoL/vER4f50Yh2/pElwo6U3dqqmTPRkzeC47rxMlrKR6dHz?=
 =?us-ascii?Q?lYNzyE02ARkO+/3A9zWh/tkgm8O23KOz4Z8dPD+YAUMb9+qphzggBLZIsUXE?=
 =?us-ascii?Q?NqML+SGigZufKWPMJQj/SfKnkQunyFKaUudQ1PIws6+E3VHPxcgDGfWgiHkp?=
 =?us-ascii?Q?jzkV7sct2f3y/myAEv97/9wf5tjCwVdx12btUgoQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67e78605-9a78-4e6f-5cfc-08de28b1b661
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2025 03:54:46.7227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2oiq6R3zQOtzwByA+oyGNvfhJpBJN+bmNKTPhOv8ssdRfq61lt2vPR4fj02hIEbEgU1QFH6P4uTvwq8dk4aaiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4925
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

> Subject: [PATCH 5/5] drm/i915/cx0: Read out power-down state of both PHY
> lanes for reversed lanes
>=20
> For a port used with lane reversal enabled the first two TX lanes will be=
 enabled
> in PHY lane#1 instead of PHY lane#0. At the moment the HW readout will re=
ad
> out the power-down state for these two TX lanes from PHY lane#0 incorrect=
ly.
> The display HW lane reversal feature (vs. the similar TCSS lane swap) is =
only
> used for TypeC legacy mode and for non-TypeC PHYs. Since in both of these
> cases the display owns both PHY lanes, both of these PHY lanes' state can=
 be
> read out. Do that to fix cases when lane reversal is used with 1 or 2 act=
ive TX
> lanes.
>=20
> While at it add an assert to the PLL enable function about the above
> assumption on when lane reversal can be used.
>=20
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Fixes: 230d4c748113 ("drm/i915/cx0: Track the Cx0 PHY enabled lane count =
in
> the PLL state")
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 24 ++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 0d524735dcf95..27be2a490297f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2197,17 +2197,30 @@ static int readout_enabled_lane_count(struct
> intel_encoder *encoder)  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	u8 enabled_tx_lane_count =3D 0;
> -	int max_tx_lane_count;
> +	int max_tx_lane_count =3D 4;
> +	bool lane_reversal;
>  	int tx_lane;
>=20
> +	lane_reversal =3D intel_de_read(display, XELPDP_PORT_BUF_CTL1(display,
> encoder->port)) &
> +			XELPDP_PORT_REVERSAL;
> +

Can't we just do=20
struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
bool lane_reversal =3D dig_port->lane_reversal;

or are there limitations with that now?

Regards.
Suraj Kandpal

>  	/*
>  	 * TODO: also check inactive TX lanes in all PHY lanes owned by the
>  	 * display. For now checking only those PHY lane(s) which are owned
>  	 * based on the active TX lane count (i.e.
>  	 *   1,2 active TX lanes -> PHY lane#0
>  	 *   3,4 active TX lanes -> PHY lane#0 and PHY lane#1).
> +	 *
> +	 * In case of lane reversal for 1, 2 active TX lanes, only PHY
> +	 * lane#1 is used. This is only possible in TypeC legacy mode or if
> +	 * the port is connected to a non-TC PHY. In both of these cases both
> +	 * PHY lane#0 and #1 are owned by display, so check all 4 TX lanes in
> +	 * both PHY lanes in those cases.
>  	 */
> -	max_tx_lane_count =3D DDI_PORT_WIDTH_GET(intel_de_read(display,
> DDI_BUF_CTL(encoder->port)));
> +	if (!lane_reversal)
> +		max_tx_lane_count =3D
> DDI_PORT_WIDTH_GET(intel_de_read(display,
> +
> DDI_BUF_CTL(encoder->port)));
> +
>  	if (!drm_WARN_ON(display->drm, max_tx_lane_count =3D=3D 0))
>  		max_tx_lane_count =3D round_up(max_tx_lane_count, 2);
>=20
> @@ -3214,6 +3227,13 @@ static void intel_cx0pll_enable(struct intel_encod=
er
> *encoder,
>  					  INTEL_CX0_LANE0;
>  	intel_wakeref_t wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>=20
> +	/*
> +	 * Lane reversal is never used in DP-alt mode, in that case the
> +	 * corresponding lane swapping (based on the TypeC cable flip state
> +	 * for instance) is handled automatically by the HW via a TCSS mux.
> +	 */
> +	drm_WARN_ON(display->drm, lane_reversal &&
> +intel_tc_port_in_dp_alt_mode(dig_port));
> +
>  	/*
>  	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
>  	 * clock muxes, gating and SSC
> --
> 2.49.1

