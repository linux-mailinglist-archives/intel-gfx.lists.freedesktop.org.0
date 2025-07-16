Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FC4B06E5E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 09:00:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59CE10E261;
	Wed, 16 Jul 2025 07:00:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NwLcmaBm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA96210E261;
 Wed, 16 Jul 2025 07:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752649202; x=1784185202;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FLpUBsCztTt5yjxTVend3Re2txfohpVIUsRqu1g1aAM=;
 b=NwLcmaBmfcGqn/A7/fvEizMyVQ7nhv5zhx0XWxwjtaz1Q0F1fvXwVC7f
 OuhoYE0WKXsXC/CD3N9l/vwXvMA/o6LVRiNX0haPvkNzp7kyE51dcxJDr
 /WQhpXi+XpcHpXgSijd2XB8pTzw4YFRvp2f6dzgJzeGZxRgp7WqYirfUN
 ZLrEqpvfp7to6ACzJUWo1mvG2jmsjrf7iM4x0CE72oZQyEc8NFvNCNP5h
 yf2MfCbgtFx6ujuvfrF4GFjV8TKN2tzBGcDI/mRX/wMa/M1vfU9As1O/E
 MZwspTesLZL9gsOVuJrgIDbteSykLj44qUiBLqhj3fNYSbHqoY1TDvj7p w==;
X-CSE-ConnectionGUID: QoQ7JMTVTtqgC+p1TYesPw==
X-CSE-MsgGUID: cdpCiaxXQseD4iQjQgkHEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="77416009"
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="77416009"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 00:00:01 -0700
X-CSE-ConnectionGUID: Ul+ejkPpRJOwXT+O7s+8iQ==
X-CSE-MsgGUID: fXDPPkEeS4WNy9hiqZoVyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="194569079"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 00:00:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 00:00:01 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 00:00:01 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.44)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 00:00:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ruU6j6Gsvch1HA3WtKsG3DG0fbRQNMKZGtFV57nKc0+gxP2a1vV4Cm/BjiptAMVzyPk+Y1L3iEHNDJ5hOSPdInEJiMu+rOgRbLyWxugka+sIZ0compXfk33MDgaTygKeRUz9I+DH55iwGGdWFMFGP9La2/JUEZjwUwyrfEzmcy8qss26ogVwZ2sJPCxEvpaSgHc7wvJYbyTa9/jRl8tv5kE0/Zdwr0v5N2qZ7lWPTHr12qgExp8vVjmtDLywRKz3tt3G4f9svIjEHPrVjjd9n18eP9Q/ziXtbCAFtkwjuDzth91jI3XMfEtMxsccJrcwHWSCqlagwEn81uCQMqOYQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kJY/qg/KsNFNZkHvScyKr9b28rknAV6eSyyk1cyY780=;
 b=tiCexVAd14/uFfPuTrhui2HiMO4RZCxy0MXPx0Cf22daa0uSaIxG+T/g3FoF505TKvCOi0f5ttlQ0ABh99oPLjnCl71LBDq0FSR3DojActASFcUpEDkNZd2CwEn5z2KUm2Qr5g8rXQmrtzF+hy51UVrx13TJKR+Z4OKk4icqTN+VXuFgzfv2YljXnqCBsacCOT/FX8Trr+kJpMLS7+FE9ZSenQT/Le179ox6yqsA9uxxBwQOgtkzyTpr8dHeV31MxZaBWQxg7rBTpHu+0ha0BKyh5en6OLbByDecYVxyFC2VwlVt4bonY8+7WVDWriNwItwQ63qDdvK4HUfM6e6CGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MN0PR11MB6111.namprd11.prod.outlook.com (2603:10b6:208:3cd::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.35; Wed, 16 Jul
 2025 06:59:58 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.8901.033; Wed, 16 Jul 2025
 06:59:58 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 1/4] drm/i915/vrr: Use vrr.sync_start for getting vtotal
Thread-Topic: [PATCH 1/4] drm/i915/vrr: Use vrr.sync_start for getting vtotal
Thread-Index: AQHb7vnL9GBfjeOYvE+TCjx8qd6TarQ0Xzug
Date: Wed, 16 Jul 2025 06:59:58 +0000
Message-ID: <IA1PR11MB6348EFFFE106847001B1C61BB256A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250707043321.97343-1-ankit.k.nautiyal@intel.com>
 <20250707043321.97343-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250707043321.97343-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MN0PR11MB6111:EE_
x-ms-office365-filtering-correlation-id: 63215a1f-4f42-4454-3b32-08ddc436607c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Hhx3NFBV6EH0HwgNxc3L18x/t0BNb8TdCNavs2lFrNsniyFz2LIBr7ji9WaJ?=
 =?us-ascii?Q?eFrJwm/dmLER4iDA/EcybpAsgGUGq3A+e0ea3lL1Um9aLHiqP4jeI5b1UjuH?=
 =?us-ascii?Q?or+jgsl9kWg9GJyJqhbBZo8QYtGpOz3tEDeqaegum8cw76jw5i73uy2rI1qT?=
 =?us-ascii?Q?7xR4/HXjJz/+8hABoZ3/IbNm1j8rPkvZDzCyHRFNlyGE7ETG+ZpSBD25fSet?=
 =?us-ascii?Q?cGqpCho4RLyNUdm8Q1lTNEDNPpChZ3g9sj9BPm1CxixtpfPBmt/bSLtUZxFF?=
 =?us-ascii?Q?/ulug4/uqmsAtlNiGKVvB61yQSrhjGjnxv7mTG1e9/vwYST8VgWOJnXXic3B?=
 =?us-ascii?Q?hCriXe7O0xlG7bCzmITAXXa070SKT3QPmqfPcYWFsqyHUlj5MzQTdGCU5+w2?=
 =?us-ascii?Q?u5jDBsAUBrhTVd2oQw5HscytosjWcQwrbyxtMWKPSDC6FFahVsMwkChNS/R6?=
 =?us-ascii?Q?enxC/keXgIZrUuz3qwk5+d/MFRRBUy+OmXjFts8ztaIU5coXB8/li8q7ka0D?=
 =?us-ascii?Q?8RbAUp6hMVyyEA+YsRGF+ZRWxcAVm2TYP3c6ZJjMQrBgmYbu8OQgCpU2gydU?=
 =?us-ascii?Q?yQjiJG0d3kjpy5eUPVPIi1wX0S/5i7Y0owLbjtcn6lEkD/h+wT4vF8GmrOC3?=
 =?us-ascii?Q?JtkgO7NnkPcBnM85i8WPC4P6ak9UAyFl7HKTI3dqDZ5Ol72ckocB6TlmFXzG?=
 =?us-ascii?Q?qWyF6ZV0EQheRQ8qXEqZmMRzLyBuGX6ruTZyTdIHWT3lk9Fqaqxm8cspvopS?=
 =?us-ascii?Q?g+dPFv45l5peGtpUVzCCy3HA181Oq0/INAfl7zqOyXlaDT9YjDipLeI3X7Tm?=
 =?us-ascii?Q?I+hcmtgTRLbMliCW3Hm2t/9E3t0Lkw9hfsuNNyQnr1GS9AeKgS6BE8SXdhMR?=
 =?us-ascii?Q?Mk9tC8/vMkqI0x23M9DjZHeoxSi+Exrj1cqVy3sBecwNGC9EPcGUgjyzpp3C?=
 =?us-ascii?Q?DcS6+Qjxw0Rg5C54e0q1DmjyrFwLc8d97gGiqIIJB/W3POVjAnaksHeR4QOl?=
 =?us-ascii?Q?ngQmTZnC2bvFXcaIX3gtnxhGI5sSFPOXH1WJh/3CD7GqsdaIKWBfb5cirAiv?=
 =?us-ascii?Q?J15ZY+56FB8dbonnII7ikaQC/D4g5IwEJta3JzpGf1+YoaKjCIbZsPh7R6kO?=
 =?us-ascii?Q?2u6DA15It5fuMpFAU9LjdNRUgXS3mfjEQocqCF/FHifxJGon/FTdpy3H8Aj8?=
 =?us-ascii?Q?ZYNe7Lct7g4CBKqmozhNuNVIMX8G+Fu7QhB+P24UQQ0rCM6MXZ2DFvv0kNrS?=
 =?us-ascii?Q?p0asw5hviqdBtlMuiw/9gew8MggM5V1ZeMUy0UyUuR8P7gZxGzLjFWfg2JcZ?=
 =?us-ascii?Q?45fdGZQdrN4Wk7B8KiaxxRjFh6pb+X9n34vUqaSP6n09jswWrfpURHhiK+Gp?=
 =?us-ascii?Q?C6e7VzQHsBm4Xc4rnVw2reccPhcSXJnRcIzJz6x2Cq6fpYbDx7QIoH24QkgG?=
 =?us-ascii?Q?5dIZf5quzl3w2BLjh+BuDfFz/kiD/3c7UXLRMAqDDlxNwd5vSjBpaA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UnHAVst4Ty2hloyEvh5jJjJ8LobNQ4wAIujzXOb6k7w60xh7hM7PrhP+XMJR?=
 =?us-ascii?Q?eaRpc++a2iOx41rPk59hXZGUTwjQKBpcGELEKuIKqeA6XPcJpDo4KOi3CZcj?=
 =?us-ascii?Q?OkRKLVUtKKtAMYjU70ka4vaVREQvmxVpc8YtsPBVpwYWoTQhSiR9uFC72lLA?=
 =?us-ascii?Q?nmYMbivAUtVIsczwBumnn5ILjCWASTPoD9GCj8WOim19m1nFyWrHmBXU8Tfs?=
 =?us-ascii?Q?BB7vQyUXNerZz2wn+1p/Ot+2HJ7I8kxZTTtsOx7jlailJ7EQYo3X0SUW1FEo?=
 =?us-ascii?Q?3fmDTh6x6askQsHEtTvzY/LxH+M7ymrs5cR+rpnK8iXLONjw4lnEoLXPf3mW?=
 =?us-ascii?Q?If+ATMROt0RZvLDRkH9pGuOP43h0eie7kSiAQzoU0qluGn3DPNF8ROG3onwv?=
 =?us-ascii?Q?+zOvzPll8dDDzLBgpVQxYmrwd28r7qP9LW/yzPNc30CmcLxd4KxcaaP3GX8s?=
 =?us-ascii?Q?fgmYVQgt7sGry5b+1Nij7NNMi7C55LJ6OnMijlV6117lnrV2qS3EgVlBnilf?=
 =?us-ascii?Q?uT/t4DYmvcD+q9WkC9C2MVBf3jRkc7ZDDikybDUkf+Dd916C2rIoZx5e51jD?=
 =?us-ascii?Q?MRymGVITWoZhTVodnC4whFpcXrYolN7rOeZglQAGA381JLVJgfpauEivN3ms?=
 =?us-ascii?Q?9kyw09eLp8MbcNlsNVilf0P6+UqUunfvVOpfAxdSq1iEheNruI0uQXF/xSuA?=
 =?us-ascii?Q?+Wajol6dl4v/HcU4PqKbBD22NUt+Gd4UxajsWjEi7cJFZGyI7aXPP7EqoMjd?=
 =?us-ascii?Q?Bh1p0LhFzQKlLpqo77zk0nPYUyDWHIGsktqj2ihC/DTZlCt/O9iYXVunMsV9?=
 =?us-ascii?Q?yZzAXxTLnSfhIiW7eqtElRqwM9OsCLHoGkXnvIrBKWJH2jOl01svwFF7PQts?=
 =?us-ascii?Q?KikJ6qPbMjrzIFW88hvCgfV/akyOCsjzRUoMDnO9B98Cz8/gVa8tr2Ns21Wk?=
 =?us-ascii?Q?kq0kFM/vKuXhGNFPkAxDKeXHwe9WG9OTnflaK6z2nta/9QapsBrveUr5KFM9?=
 =?us-ascii?Q?fTE8CUtpdj++CwWv/J8IZKWHr6GOtTh1CWou0mO7URYZ6iqfsFCJ2Od9lqif?=
 =?us-ascii?Q?jeOcxb7/tlJsx0MlQZQGSkZF/Vm14s2SFqHNbsY4P1vb9Crr6HMCe4tVkkvq?=
 =?us-ascii?Q?H/hg0h0y8WoZGT5/0AE3BUCIDaUvGN3X6sw8pN72M67uSAYI3YrJeNOiKdSY?=
 =?us-ascii?Q?EtS1hoqEV4GrqHr/4fVBbTqVjfP1l9RBdJzpQfpe5kdZ8UozAcrkB34wvY53?=
 =?us-ascii?Q?Aa6IAHV+LDLHQo35yNmG7bRXX2533XCeYyVV4FN7CaIgZvbCnhNyHPaiZcRP?=
 =?us-ascii?Q?LdK3msVDgni8JWIbokuYX+2qvS9YgOM4k6b0lxpyCwViyoYbKBXc2s4/qC8p?=
 =?us-ascii?Q?3enezcc+myAoJRal5UG6I0RuchzHNleW+ZIImBWwD4Cm7oLR9d6yyFlzVt/g?=
 =?us-ascii?Q?tmuCAjl2ecV/wl+Nj7JqlmpKRl5RqJ8oBec3Ye6m2uaOmOS1Q2AKl0MCruRf?=
 =?us-ascii?Q?fyzdnxZEAxw9lDVMboPL1KsJM3EGI7X8js4Q8ePuAoxUefv3Q0i4p5WwO7BI?=
 =?us-ascii?Q?JVpApelpm8tzoB2FRd/jQNWHoD+syeUlbu9LbnV1+dzzMPI4GxVQtTKuVJDm?=
 =?us-ascii?Q?1FFYaln4dUJAhgQA4BQFG0I=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63215a1f-4f42-4454-3b32-08ddc436607c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2025 06:59:58.2217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rt72MiO3gAdSEE+7qaBSpNJXfG+FdnN7TIdZoM8DPqHjtuC19rDww2KR0aEiPupLTVqlazdy2tsEdiZcYP4ciOjlUqVpm/L4T6ldU2eYbZcChm/qSpUIIq5aSHOdvEdS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6111
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: 07 July 2025 11:33
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Nautiyal, Ankit K <ankit.k.nautiyal@in=
tel.com>
> Subject: [PATCH 1/4] drm/i915/vrr: Use vrr.sync_start for getting vtotal
>=20
> Currently, in intel_vrr_get_config() crtc_vtotal is computed from vrr.vmi=
n
> vtotal, since the VTOTAL.Vtotal bits are deprecated.
> Since vmin is currently set to crtc_vtotal, this gives us the vtotal.
> However, as we move to optimized guardband, vmin will be modified to set =
to
> the minimum Vtotal for highest refresh rate supported.
>=20
> Instead of depending on vmin, compute vtotal from crtc_vsync_start and
> vrr.vsync_start. This works since vrr.vsync_start is measured from the en=
d of
> vblank, and crtc_vsync_start is measured from start of the scanline. Toge=
ther
> their sum is equal to the crtc_vtotal.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3eed37f271b0..46a85720411f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -735,17 +735,6 @@ void intel_vrr_get_config(struct intel_crtc_state
> *crtc_state)
>  						     TRANS_VRR_VMAX(display,
> cpu_transcoder)) + 1;
>  		crtc_state->vrr.vmin =3D intel_de_read(display,
>  						     TRANS_VRR_VMIN(display,
> cpu_transcoder)) + 1;
> -
> -		/*
> -		 * For platforms that always use VRR Timing Generator, the
> VTOTAL.Vtotal
> -		 * bits are not filled. Since for these platforms TRAN_VMIN is
> always
> -		 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal
> for
> -		 * adjusted_mode.
> -		 */
> -		if (intel_vrr_always_use_vrr_tg(display))
> -			crtc_state->hw.adjusted_mode.crtc_vtotal =3D
> -				intel_vrr_vmin_vtotal(crtc_state);
> -
>  		if (HAS_AS_SDP(display)) {
>  			trans_vrr_vsync =3D
>  				intel_de_read(display,
> @@ -755,6 +744,16 @@ void intel_vrr_get_config(struct intel_crtc_state
> *crtc_state)
>  			crtc_state->vrr.vsync_end =3D
>  				REG_FIELD_GET(VRR_VSYNC_END_MASK,
> trans_vrr_vsync);
>  		}
> +		/*
> +		 * For platforms that always use VRR Timing Generator, the
> VTOTAL.Vtotal
> +		 * bits are not filled. Since vrr.vsync_start is computed as:
> +		 * crtc_vtotal - crtc_vsync_start, we can derive vtotal from
> +		 * vrr.vsync_start and crtc_vsync_start.
> +		 */
> +		if (intel_vrr_always_use_vrr_tg(display))
> +			crtc_state->hw.adjusted_mode.crtc_vtotal =3D
> +				crtc_state-
> >hw.adjusted_mode.crtc_vsync_start +
> +				crtc_state->vrr.vsync_start;

On the perspective where we don't want to rely on vmin_vtotal and to find a=
lternate way to calculate the crtc_vtotal, Change LGTM.
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  	}
>=20
>  	vrr_enable =3D trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> --
> 2.45.2

