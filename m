Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CC393BB4A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 05:37:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC74C10E6EC;
	Thu, 25 Jul 2024 03:37:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TfnF7WyG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94EAA10E3E5;
 Thu, 25 Jul 2024 03:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721878643; x=1753414643;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FMaDvEWUpQjxAn0KsosJSosGSwWSvNSaFEbaIYQbtJI=;
 b=TfnF7WyGxZ+o/S4GFnB/iR93yKhm5CU2TTHiEkZEi+RKXfp3nrD3Tux6
 TDj5Vyf5j9xW5zKED2LQ90H/zH4U9zuWtwymxdJlqfUd5sOmJNKCxoiD5
 ikxeL5seQuo5VY8g0EkrC+kr9kGNauAHUyWSREYJqMuRdk62N4GM9pM0m
 /wPejf4TnBv53ZfWWjX3G6WjIn4LNVtz9fFdjc3aUYxtEuYgpXWXiarLP
 /toJI9ZGHhtc9hrOVm14EC35pcN7g0rSudjzfJebGU45o/Q/p3/L2yzPz
 93QiG8Qz4sg49aOdsH1Fu5OCBuhtuKcMUu4P3SHbK8rMydFGi3KNDkyqD A==;
X-CSE-ConnectionGUID: CIPX8OCsRTupmP7+NIirvQ==
X-CSE-MsgGUID: cOBTsvivTCSr6bhCYoxLog==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19204156"
X-IronPort-AV: E=Sophos;i="6.09,234,1716274800"; d="scan'208";a="19204156"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 20:37:22 -0700
X-CSE-ConnectionGUID: 4k+zPj+RROyIj4csDdRPeg==
X-CSE-MsgGUID: kAYh9376SSK4DEJovoJgWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,234,1716274800"; d="scan'208";a="52717745"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 20:37:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 20:37:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 20:37:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 20:37:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 20:37:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UxaYQMYTLzTnqiMkGlafbpxP8RduPEmR94W2d7/j82wyyMeosKazFKYEW7tFY4YnnAOThAyR7zL4xkVV0Se+3Qg69nBzZKBKAtvulvts0AgW30I0bBla/vRq8E9ByURo3HsF7mMA2TvmGY6d8iNchGXWZo+XM10fv9IoB/II/kikdvwRBNvqbFzeIPo/h9ynVy/fUwAqyaIA9Z/N497/C0kPFq5RpTNYLbX915AipXLhABE+iq7UyjjuJTPr7YvBGtiAvHDqdtGGQYjgQmM+DuNBOu7SYVx9mAPqWDGapH/4/uiyvcjenxTsxJnZ9JeV7E2OLb3hJPdfF0rT/BoRtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QgAl7vKjNwajU7hp4rs8Mv5Z4gxBP1PhoGl174JFjR0=;
 b=UqRZQMbkLQQMxkYxCZmb/HpWTrq0Q4pKxtHx32P11CCrts28W/gpI+jbi0f+WYhAn84yYeM8btclKC5RHRth87YmiuSTyQMI7QA5MGfRXsbNUsj8ADdsdw0hd+fAHUNQ/cJcHgNmOzk7wPHDghZzHDVWhM8Aa8ZcuR9UrlH4pOzmB6X2Uj34IsbQmAi6t4aZO4bFxxIzZpWNJaWgD8FvXTXO3fKb1TZmTP5IdMXe+P/LgOqzQJOk2Bf/S+04YKv1F8whoqK2EpFp7Wq7HC7cX+Dw/AFVJ0ngMIKjNbIH9OvbXCNShqsJuq/wkUNUBYaeynCGmygRYzTd1TYyHeCWTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB6285.namprd11.prod.outlook.com (2603:10b6:8:a8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.29; Thu, 25 Jul
 2024 03:37:16 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Thu, 25 Jul 2024
 03:37:16 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 0/2] Fix null pointer error in HDCP capability check 
Thread-Topic: [PATCH 0/2] Fix null pointer error in HDCP capability check 
Thread-Index: AQHa3AMP/9LXuAfNUUmS1LBo+52UhbIGz5Wg
Date: Thu, 25 Jul 2024 03:37:16 +0000
Message-ID: <SN7PR11MB675013B8D153D1408D3BD0DBE3AB2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722064451.3610512-1-suraj.kandpal@intel.com>
In-Reply-To: <20240722064451.3610512-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB6285:EE_
x-ms-office365-filtering-correlation-id: 38509ee3-35c4-4785-3a24-08dcac5b14a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?MvQNLZgVj1T7lFuZFeFvyTBy395G5AI1Ff13yZZk2bxWLQODjszpGd0Nm+in?=
 =?us-ascii?Q?KQMSTkAtjWKuSA/4ARPvvsp8yXQWrb2hagomVOZpxc36XO7Jr8pQMV6mcL4Y?=
 =?us-ascii?Q?n7l2Mb17nFpmymwRjAjzoimNkPFmDWSz7TOHKl1BiUK0/YFip0xeks0/QRmc?=
 =?us-ascii?Q?aJfPfEsz3hasVSP927gqQGFCqe4lQjKQgq5y5o0DL+0A9wJIDlDsvhLiXU69?=
 =?us-ascii?Q?ASk72wTHuJnAe6ZbbRYxifT7gKXMCck3spBWUCg+3of8qn+O0gjjwQ52iaGC?=
 =?us-ascii?Q?R8BL4EZrMc17OgQsHZ1ek524gl7iIbZSjx4cFhx+2Y6p6JHywx8wIoB68XKs?=
 =?us-ascii?Q?kmoRQZjNeRiZcY1KEn6p8H1CTDBTJC++yMrdtuQYBUUBRsc8UIAOuZdBjRok?=
 =?us-ascii?Q?WqDdnoL5ThAsKuPGgG7nqc/59NGI9c9kLOkBcXmOMZ1wjoCpfo5h4s8PxGC1?=
 =?us-ascii?Q?2b0ZFYLGFfo4vASRIps2xS5ncfT283msrIb+Ist7VhXEMpM1gp83OOrAMjOU?=
 =?us-ascii?Q?84jLJNbtXAsxhCkcMdBD7bBY2IuWa+gvApu35zGtjOvMpnLoFYjRZSNBMMRU?=
 =?us-ascii?Q?uhb5gQ7xiuaWwBxZS4vOr05Nj9FB6dWYVXozGhI8FV6GgtOI7B15bbAaPf41?=
 =?us-ascii?Q?y05obSsd6sHHt9/rSGk7riT7wUrPr5McbduBj4JTmkv38jaCT+o/A14bvwGG?=
 =?us-ascii?Q?VXm04UrvFvu97Okh4gUpJajX/vh1GGfARdk37oPgXlg//fo5yfM6X1Eo4hxG?=
 =?us-ascii?Q?osbMjw2vz7EOOcI5yLyqdE7i9LigjfI4lFyulGGSASGR5pncCvWRtVZpeAjR?=
 =?us-ascii?Q?Nc29xVEvF1zcJcPKAyU1CKcxVwet8cncrJAk6oVNPfyU1fYykaj2uhr9KiRi?=
 =?us-ascii?Q?aADbY5RuMluugItPHRLLQZ5rSwLrk9iSOJZlk6xioM8NwFjQ2oro8dhYM46g?=
 =?us-ascii?Q?aS//0wGeMulZixOZvUtBU4uAV4YB2pGjAUxGhdD1MCZvC1GAPxuPbvBGKOge?=
 =?us-ascii?Q?hyduCD79cGPGT/PzcazuQmmYO62t9ZxkTGkBuUP306rzj4w/SdPlWoftu1S3?=
 =?us-ascii?Q?k1pkRl8ytRXBPoVYLCjmRYrk6XsNJoUhkVWY2df3Es97um0cbpkwBy+Q81it?=
 =?us-ascii?Q?1enuiAF/ZxcND9nstLYbcgBw1zLv3rvkh6kNvyL3NGzuTJjEQtby9km/TbCY?=
 =?us-ascii?Q?AabczpJf2g+7bhGBMlMG7Ud8x15r1lD4brMV2RZfhgc8Zq8dBXI5C8woWJaj?=
 =?us-ascii?Q?7oahTX3zHj7OjE6CQQ6Nj2UhFqSsmM9fN3EhDOYE0JcUxTyvVRl1/iACT+oz?=
 =?us-ascii?Q?jecSxC0qrQAJqwjm8XVGD2vqhOxEzvbiY7qDgsLNaL2cwrlwtrkSXNF1UVY7?=
 =?us-ascii?Q?E2X18fgnpWdu6RGDwB5qAKQGDuQz?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Hir9i+RmFZcjq2cAmdBQE9vB7dBf0Vbm5WmarwR+zlu2xbWpem/7UUEz+1xj?=
 =?us-ascii?Q?WRoG+EsxWihMz8Q/Bls6cbz1xSTiis7JS7DtxzJeVuKL7ubWT01m9tOUOOtC?=
 =?us-ascii?Q?38uxHyNqr2zCjQ7bmVI8tmYtF+bS/dD3Qw9UlzrstiHYDHhlACzwyUH+AOAk?=
 =?us-ascii?Q?t8DJeuCW61UnKcFmL2H/v8msJdQpA1xXu5bDdtRGau8BUEa6UeHUKAYoFFsg?=
 =?us-ascii?Q?BOE47rapDir2S9XpuDYnLGCraduJteeXDkeMPh3Z2nnHd5qdtHTHaChbdNzi?=
 =?us-ascii?Q?Sw4pRJUJOFbEoaUTvynjeistwpWGggmw7de7iV9Z7nJBLQ72NfM0QsTRA1wE?=
 =?us-ascii?Q?ZsBcrlUqS9cz8DqqCo8Ev23/zrSnD2uPOIrLINe04z6MTZg10PSG0PRen9IH?=
 =?us-ascii?Q?oyxZXi92rLMCszNjzMsD7vUAyqzOV2N/l76zhFZ53ZBK912vKKISjQSOFUvG?=
 =?us-ascii?Q?JTAYIACXp+f8PNT/Dxnuo8CMn3uRdlpguYzhsiLFB7t/cgujyHC0qDq8g9JI?=
 =?us-ascii?Q?fkktNgkwjBvKvkz7OWmleB5l7/f5F4hsUm5ruZSi7eIMWEMtU6J3wl853HwJ?=
 =?us-ascii?Q?e4a2E5rw8y+ZNLPsr+JX966dQFsQf3W+qENwlIQt5/oJ2GAWX/ZR+yxFz/Ev?=
 =?us-ascii?Q?hLLxmn+PnGJvyaVC1hKPsn9iRVPHUy5J0zhkqnXHLQmzNBOZIhgMI2m3NtRL?=
 =?us-ascii?Q?+lpHTBt/fwI8GhsuBDHFAyu75+m6MKwX5Au5u42w0HzYn8FBAa9ob5DOl+rH?=
 =?us-ascii?Q?FW2bshfeltOsRfAbwe0vQEwunCgXctf5iKkZTvDl2+GEgqY438lnGHs0AQSA?=
 =?us-ascii?Q?BjjYlE6qYEeqYRVeGYOt9+kgE0z9OdGDHoDrk+Hy+ZReTMQ0HDbliDwfMu04?=
 =?us-ascii?Q?r6v5PDKJ5IaaeMf30CRUj/+fk0TI//J4G90mY3eCfsn1HSpAdq9Ynk9T+y26?=
 =?us-ascii?Q?wBTl9dY9t2FRQ6PLE9ctlN/IkBibp3oMvuol3sSmfUQZgaO/ihfsLvAepaCv?=
 =?us-ascii?Q?CU8y1h5uEYV1xub3DpzTm7USEcGKEe9KON2k0hugkp2ZjpCEdmoMF5cyKXyL?=
 =?us-ascii?Q?59u0ywn/apYidmOshiUDe07u/nbXppI13vgmb2T7hHG/YtrBXbZ3eMdFAr6Q?=
 =?us-ascii?Q?3QvOy+0W6/MHfMeO+xldaklG61XHeRcH96+ODTZOJzmXuI7RftYdgf/LftDp?=
 =?us-ascii?Q?0iqxNdUzX6bSdjGN/EyPdD887A3hsMhJv595EeVKAXw4klo6mvvlbT0ohzKf?=
 =?us-ascii?Q?Smly1OnitSTYVwOr7x8Oy+jn7afuZjiVeCmfqzyoJRoG9IfijRtsEFvFHM/y?=
 =?us-ascii?Q?ujG+XX4+eOeTlvOah85DVHnQ6knKBHUK4wxZY73ifltOO3Suf98TUUKdc2y6?=
 =?us-ascii?Q?BXoBiWLpQKE2QEDR7Il/RYwKZx7OtUIBxo/VVciob96/lA9+/M/1gkvqC33l?=
 =?us-ascii?Q?xzqGJcfxkXntw2CVfi6Nxl5zfWKTOgxw4/n22XDeAB/DqSabKxzF5052YpYT?=
 =?us-ascii?Q?RMr82GZZEWI710isEPy9W9qelBAKugYUWisq8+nVmATQWuwOqtPed7xac+vl?=
 =?us-ascii?Q?UAP9ksCbxImZM2IThIK33V7qR3Zp2t+M6jF2yRta?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38509ee3-35c4-4785-3a24-08dcac5b14a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2024 03:37:16.7631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sPoV9x+ruyo6XoOTurZoKQ8FyTA8pyjOxu0uPx1XNC/hVCtJEEQbJhMXy2nX8mJB/EyfrbXXahThm4lvdwuGFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6285
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, July 22, 2024 12:15 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 0/2] Fix null pointer error in HDCP capability check
>=20
> During suspend/resume or plug/unplug scenarios encoder and gsc are not
> initialized. This patch series adds checks to make sure we don't run into=
 a
> null pointer error.
>=20
Thanks for all the reviews Pushing to drm-intel-next CI.IGT failures not re=
lates to this patch series
Regards,
Suraj Kandpal
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> Suraj Kandpal (3):
>   drm/i915/hdcp: Add encoder check in intel_hdcp_get_capability
>   drm/i915/hdcp: Add encoder check in hdcp2_get_capability
>   drm/xe/hdcp: Check GSC structure validity
>=20
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 11 +++++++++--
>  drivers/gpu/drm/i915/display/intel_hdcp.c    |  7 ++++++-
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c     |  8 ++++++--
>  3 files changed, 21 insertions(+), 5 deletions(-)
>=20
> --
> 2.43.2

