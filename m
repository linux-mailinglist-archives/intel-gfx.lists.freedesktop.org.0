Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C93B1D67D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 13:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79C8010E485;
	Thu,  7 Aug 2025 11:19:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Akdpo+Cd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A61A010E485
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 11:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754565549; x=1786101549;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AS5BTi+0mhUph7WSUhCIovq8e1o31ctcplwmhvS0I14=;
 b=Akdpo+CdvGjfzMaPZ35zOWumw4of8FVu6Y2owqaPAv5JLtl1/lAq+008
 2wKR2mA3nRqOVjkGWOIwEQjSfPaJncxghssJRl+bPKjYjoTNnvGasAQCM
 pKVgWtFizuFmQBXGYXb2QDlVE4KRioude++Vg5GULZFYg3y5dKdKPMS/d
 2FT7b4VQmdbU9HisU+MxIjvX8bez74aZUUpEVoNfKZGEj8GNqh4II5Yli
 DjCWxj20Roqzub6dibOGH8gcJHqQkJvhN5Dy8EecGfjwEuAyF0DCGaFLH
 DuMrldk48n71u+Mc1t35CKKWejTJdfgODZnVsbstz9aV/R8bjPg8gNGTC Q==;
X-CSE-ConnectionGUID: cUdivOr5SPqVR2OXx/2mog==
X-CSE-MsgGUID: S/Qtw2xQQS6OOfXF69V6/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67164639"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="67164639"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:19:09 -0700
X-CSE-ConnectionGUID: 23TB10GOQfCTDRWfmzHO4A==
X-CSE-MsgGUID: 7oYR5mQiQxygkk7dhR40ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164935281"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:19:09 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 04:19:08 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 04:19:08 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.75)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 04:19:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ltygJ+Joai9P+C15Pqjg+GjY8OTXy92kvfLVdpIlAYq6n5GIyGMD/UramDhOY7nRdKjZWFrqA2oMg4bj4tupeaRKpejnaBL5gZaAiLDTjClInqYuENSKoJsOsH6Q0EG52bnUMNyJszmXDhgkVOg7yheiDJ0oN7yofR70EvHnhNySV9kjHozSQYc/+ucH2mWVEevYfGyyiSew2IzE2QBFdy3M7sGQjfLo3CNcvor0+56lMbEBhO5cFuxlqB2L2NgTgk32QRdVTFBY0OZfLaNy8TlZrASYyCI0hXahj0Ag2Ruivdgsh3cLKuNuaA1je/9JaRpZY1Fndj8Glf7p5cMe4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LQPbaAEPDKMsHeOVy9zc8nar6yb9VjyhFFXG9dtUYas=;
 b=MJhciUddg1uQghovKnj8thv7BXXsrDANPu8FD1gTCWXQgD47BsiHQSpSHAj3EFhSTdh1DTzOKVjqhikUH4ZDFUfCyl3L8AEJhtjji/x2h4OTmNi+HzBBk4YobRNYIcMPaw1r5ZjAA9O7TzJMA+vx7XWDEwDps88/Cwjx6DBKwatFXBFJWGslY0L7hpVvDFb2d9dn5xeF73rPyxPHequc//er7HBaO8yGtYhSspF7W1PzfIUMuOH6+VgRgdxQs5Hjlqu7pjyhEn1trbCaro4xqeU9hN+53lVjfJ/e9PgIDk3DO15YW2g22Y04wE0S4TSEdCVvZ05AWQx7gewAJWM5mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by BY1PR11MB8080.namprd11.prod.outlook.com
 (2603:10b6:a03:528::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 11:19:05 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f%7]) with mapi id 15.20.9009.016; Thu, 7 Aug 2025
 11:19:05 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/scaler: Fix condition for WA_14011503117
Thread-Topic: [PATCH] drm/i915/scaler: Fix condition for WA_14011503117
Thread-Index: AQHcB4u7ykJG/FdJnEenyiBR5jkuvrRXCjvQ
Date: Thu, 7 Aug 2025 11:19:05 +0000
Message-ID: <DM3PPF208195D8D6BC63CB6514C17E38212E32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250806101930.2969802-1>
 <20250807110353.3170959-1-nemesa.garg@intel.com>
In-Reply-To: <20250807110353.3170959-1-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|BY1PR11MB8080:EE_
x-ms-office365-filtering-correlation-id: c1a07d54-11c3-48cf-f04a-08ddd5a4388f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?WNFsQUWT2gw5jT+OsZxFjOJ/Pu45/YUDmBropZBNsuimCblusLJuuy1c05iN?=
 =?us-ascii?Q?9MpCaZ6v9Nl0ovKgC7mHwX3a5Oawj+FEd0Uk+HQ9SKU6D1SvAcd7HBADchAf?=
 =?us-ascii?Q?y11H48hmmE1MBmi36ptUsaxf76l7ff2nPTVjeiV9LABLidmTsZBbypJw+GXc?=
 =?us-ascii?Q?qw8C9tFmXvod6P+K/oa1bYuEswCQ+G8E8d/C0Rx05eGoOmElDL3mrFBOUSkc?=
 =?us-ascii?Q?qva9+7E0a2xiR+2dDRugFpNTmy+svX/iXp3H/OtFwBq7374GlzWBnAmVTv3Z?=
 =?us-ascii?Q?IDAmq1KFKlvbgTEwZaAz1msldK6RHuj0ZlDHf6rSB8eWngVK3ayJos+nNvyo?=
 =?us-ascii?Q?w/BSBiQC/LjMvTf5GVjJ2DUqR/tsxKPmAdv8PiTx4xB54yhH1Omva1o7Y9T/?=
 =?us-ascii?Q?hYNPop2bN7XN2zFOLFxaIXMLSKpZjDuTx4ce/LyNKLOSFg2/t+cizs7fjmUE?=
 =?us-ascii?Q?wLkER1vPCn/krdDVD+uTuOs+fc4sDszXUSweS/J4WP3fgYhIuH+gFYmLq4mr?=
 =?us-ascii?Q?DoXmCPDSwEBw3lJ5e4pyQGHm5IyhVLLtqFPYMP8SwODfdwV7FgOjA2EPy/5j?=
 =?us-ascii?Q?CrFeR5bNvJOIsgKcch9Ea6UmFcOiUm6ev15nZilSAXMa/tQcXJ6eY6BQ8z7K?=
 =?us-ascii?Q?AoEWuzhAroBXJUMkEkP/Unt5PGMu6LnRjWGV/1Qx9Zq3H61hRHkHQqqdKect?=
 =?us-ascii?Q?I1FbBzgooh4AlUMY7lc3wQ4fZu52a+8E6b31QRWsP5JbWnxcqJMD4xv5KGH9?=
 =?us-ascii?Q?oMhB0cL3dGqGBuMqPRPvft8/mU2BRjBWMPDdvSfodHMAAG76JIlcOiEPGBqU?=
 =?us-ascii?Q?RUESTTRaszuuNUfLFil993GfyaAyZxu2SK32WGDHR7TNikxfxFKZKwJ0YbOl?=
 =?us-ascii?Q?dkAltK6TB73oTwZ2vnUfVIwlLlmEZMIoAPnssyPp2tEO33xPq7/l3qLINN5M?=
 =?us-ascii?Q?9ouI/vQC6SrUklJG6Be+X9LoswfS6ofyoStdJWgsamG361UF6SRUOh8O1mwj?=
 =?us-ascii?Q?Jl9Jut0WMM4blVCrbGF+BC5FnK8pcvoJOWYz18bocsu0+oVLOdvWwPRpRXEM?=
 =?us-ascii?Q?4LcHGpobSMJBmRpigyf8yhdbKJkLJ6H16cq16U2PNHJmcgGIQLGr2Wn6YkOu?=
 =?us-ascii?Q?UvkigezZeZ4XpsVmGrQrsr9n+ZpQoTF0vfsL0Z10sw/KUcrgsxGRbF/HbEup?=
 =?us-ascii?Q?xYoXkIcJq9LpxbT62/VdyZtE/G2DXv2gd7tjE5ZqbGsLqKtS3SDSBYsub3mw?=
 =?us-ascii?Q?fVWK9YaaZp22YpO6C3D4ANfW5ASeodgVxEGbmjPEw7vq8/967JoymH2TwSoC?=
 =?us-ascii?Q?0TY9Ud6kBD6yk0GAe1n2cDm5+GAv91uwqXGTbDwII9ccx8hRlpP/x3X86ZVT?=
 =?us-ascii?Q?yrKYRZpBm7iRPbvVR3LDjvduF1Rd0Nh9zCZq1j6brJIEe3Ua69K646mAFTzC?=
 =?us-ascii?Q?PMHVt19E64Z4UaDXTmNxr1kx/bmBQGBXfWsZ0E//tjuQHBWg/gyyGg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+l6mkeQNSO6aUwTPqyjGEP86787kN4giTf96KVuj64qfuNUo5IXpnZWRhtnd?=
 =?us-ascii?Q?hUiSROpxmrjl6SlZPZRejdf5eO1Rfhlcr3TnruXLCWksmYsgTOWDECCkvv5m?=
 =?us-ascii?Q?NuVwib2TmR7njAwZZ/MGvsNiF2PVo0wK6vkgpv6BfRlQjJXZgaF8c44YMbK7?=
 =?us-ascii?Q?X0JabG6i299zc//eyelpbHTEHNVD2nH89ZdUFPGmtZImGrAW9OWzCXtfrjFn?=
 =?us-ascii?Q?+baYNBCF9mIPBMRwUb3plshmDaSXhBkQaZCGvizG6329TuFlqM/kah+Sw4Kn?=
 =?us-ascii?Q?bCL2u+S7cujBkcTvtIhHSCk+A3gjBzFkNDMfqB+cf6e58Y98duDzbEblUgCs?=
 =?us-ascii?Q?VMpB+X+gTtsfllWJWmLmBOt3hnW+TQnuuu3/OaHUMQNmVh1MI9wbU61ZXg8H?=
 =?us-ascii?Q?2xBx24BELrKGd2nZ2Mt+T+DJ5Dpg9qEmQxy1BF+tsXtrs8WlKoYBqPayjWSa?=
 =?us-ascii?Q?b62XosCjHxW1BAlFsG3v1yR57PaCNpYnpGIdPG9OokH2J8WF0ARvyQZYWqeI?=
 =?us-ascii?Q?7+DqIeiioloKzrjhKqUSCZYHcG45ne2rZdRtNuGp8lDC3EwSk1yCvsQ/b9mm?=
 =?us-ascii?Q?wGwuP/2z4hrJN+PYK0u/KWckgWe9UmV1D02sjzuAZJCxzHnL16b7LRIVU5iP?=
 =?us-ascii?Q?7VZTMchSflpyliIt4ldvXXmAzJWaFdSiMAiftm5vDDYI2uvxJKn6wplpihvh?=
 =?us-ascii?Q?v0yaFptr7FNov/6P4nm1PPwYCp/0a/YUwB+OGZ1sYEHJLhmS06NgBT3vZac7?=
 =?us-ascii?Q?T9NTWqjB6HQ7yByDyKAncBnJ9jgTMU8iVmVPFdxegnbhEB6W+BmMiSZAJ14U?=
 =?us-ascii?Q?6wfYTpBviYv2hka56d/zBNi6srdm55U2dBcapfTq+5WLrPqej0cuW7Hzeumw?=
 =?us-ascii?Q?h8OKLJ/ehDDMIBN7tT9xP6KCnje/eGVi+svcHcqsG/Ybx+aKWLdoGLCJCmlX?=
 =?us-ascii?Q?CZKTcL3FqKeNf1Um0ot9LRJAD6LbHoEKevpUcRmesNq9fEkwb3UcwhJEJQKj?=
 =?us-ascii?Q?yQefEAtxZiU/Oo3mVZoeFEyYxyxWMgQzvgbbSemilbb+SrMBI/JHTmHo28PL?=
 =?us-ascii?Q?cbX1nExkh1GsiX9BwmlkeRGKvnsFxn/RekBzplJbguVwe8+C1EIf8X8y/kb4?=
 =?us-ascii?Q?QP5B/lKMe2cV7AhEV9Skx7r6Y0lo/5t2ETfV31/MxB4s2hl1YNJBobyMjTRB?=
 =?us-ascii?Q?0iP0OSWoycdZVs5pXM4EsDwi7bfyDWXcmhPT8aDVMRUf2N8RRtVWQc5svBR6?=
 =?us-ascii?Q?v53+TCVFWIKUcOeWHtqT15lCsBVDPvVWdXcRIIquW6dOLO081KGH2FOxwPg4?=
 =?us-ascii?Q?rIwpLV+uKRdSdpA4HSUcxtwaz0a9biYlzAOUEIPfxbjmOQIbbTYS/LReQxFn?=
 =?us-ascii?Q?8c1cUg2XyBBJlJCIFOAQCCARoAjTdC/OqMayyXqpr0HkpNFRt/Y/OqJcd5Sw?=
 =?us-ascii?Q?vszTN41nK+TMzGzLwYrU1EdCeq9URl3LJBO5P4/SI6tw8qwbGMZSUsMS+pgt?=
 =?us-ascii?Q?WvscZFtrCAdGY/zcfNjhAawtSWFPU6llL8OlSHyojrGZVWHJNHY/N4S/xsq1?=
 =?us-ascii?Q?+LwluslkfcEk0afWZYaCV4BTl0+wy+5Qv1VFcFcC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1a07d54-11c3-48cf-f04a-08ddd5a4388f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 11:19:05.6501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gj8UQ9OzSwncCpNOz7zHGPT8ePLOCbRV5JSWsigoid3KYzjE5lMBi6OL15Y7Wt96eNfdgGt6MzD0Jo7C2NKCIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8080
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

> Subject: [PATCH] drm/i915/scaler: Fix condition for WA_14011503117
>=20
> Add a check statement to check the scaler_id, if less than 0 then return.

The description should tell is why is does this need to be fixed, Also you =
are not adding a check statement rather modifying it.
So something like "scaler_state can never being null making the current con=
dition for null check being useless. Remove that and while at it
Change the scaler_id to check if its less than 0"

Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> v2: Add scaler_id check [Jani]
> v3: Modify commit message[Suraj]
>=20
> Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> b/drivers/gpu/drm/i915/display/skl_scaler.c
> index cd7ebbeb9508..c6cccf170ff1 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -960,7 +960,7 @@ void adl_scaler_ecc_unmask(const struct
> intel_crtc_state *crtc_state)
>  	const struct intel_crtc_scaler_state *scaler_state =3D
>  		&crtc_state->scaler_state;
>=20
> -	if (!scaler_state && scaler_state->scaler_id =3D=3D -1)
> +	if (scaler_state->scaler_id < 0)
>  		return;
>=20
>  	intel_de_write_fw(display,
> --
> 2.25.1

