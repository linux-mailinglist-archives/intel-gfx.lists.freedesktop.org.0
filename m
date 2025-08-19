Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BF4B2BD21
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 11:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F076E10E13C;
	Tue, 19 Aug 2025 09:23:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j5iNWKwg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 543AD10E13C;
 Tue, 19 Aug 2025 09:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755595437; x=1787131437;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IcgjgBEaNyIF3D6NGCZgYZV5TIJv5Pru6UfMWjnmpXc=;
 b=j5iNWKwgqFqtVtggv9VwO83fpd0ZfqSLIa06jP2roq39+W90rGOvu5Ri
 PowP6f+EoF45ov3vr6kTZmhtBclLrmDe0v6+qbmVoZo7iHzdsOXWoCmrV
 nu2ou5I7oG6HdnkZ/bUWqlNt74Hje3QbzumG6+IRPxjRdF1j7wRs3xo9e
 yPtWMqA8X+M4Cg/qXdldhg2Z5ypkSlT+FEp159cdynF85942AlfxWm84/
 fHmGj98CZeaj6UZORQnFq1xLMbQlWuDDowhcloU+wsxfV09WE2COz+jFh
 LtC4aA/KEOZLWKjYzFArwqvfQTRN8y7U4bbZS+IkLCVm+k5Oh8Ls2fHO+ A==;
X-CSE-ConnectionGUID: wv1HEx9cQ/+2Vi/X4BPg3Q==
X-CSE-MsgGUID: F6oxSWzqR+GhdwvPZmFCcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="75405455"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="75405455"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 02:23:57 -0700
X-CSE-ConnectionGUID: btISOpMgTPCt4mveECFpgg==
X-CSE-MsgGUID: yhpfovuGSjSuiNWOxJ4/sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="198822876"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 02:23:57 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 02:23:56 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 02:23:56 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.75)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 02:23:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rq8SaI8m3iry99c2LzAIT8YxTTHqlqJkxYbB2mCeC2jO3CxwUjsEq+Gw2a2T88A4QuY+YsgUq0oo4ic/5Hh51nK8BoedEyG+Pf+CqY13qbIBDFwSe6VFi+bDn78gc3LpJ2VyjhdlLkCOT/QfF2gSlOmbGy3hkz0UTeoz/HoJR/LMqm9378ywrYOOp1wZwbFB0Tk7Ruk+hYexwPgKlJQvomk/bCUX32U2ImwuTgYPpCDT+pu7jeg1yyO3PBSXGvTjQRtWmN0El4+jndGF6Fxi2/5gLQPwe7Jt7p/qn0StH/wY5jYivXAnK+zjEIN9XzQR8sL/+NnvC9fvKyIYBPGuWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N7K6hGegvjgElEgxHo4hSRJNOUDessHmtyr5tIEaIeM=;
 b=TKptsySL8eb0KEaniGNvsiVFgQSbbHdHQXGnv7jdGXHTflkuzeFfZhptJVdR5/Knugk4l3g87rASbCdhDlcEQ8hR9vZInJoGj2mA99RxQZrhrNA4lFcMp8GM6EtLxkNMdEfjnvyTOvYntFUtAnxS4sFH03B97SBbB17A1Q128d/pgoTC7czlHUwFC85udlrTRApUYyZE+Im5NMkchrx9nfyKNbp+Q8fwls3dWhS9Y7rxOXj8kZd1PNSLCqLRMVAM30JjHPLJVOuwjVZIFtIzpt7Pl9uge9km0W0jNn+gH9zWzs9kqgUut3FB9Atshw7b+OpfyYJ3B56i0Q7JaZChDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CH3PR11MB7250.namprd11.prod.outlook.com (2603:10b6:610:149::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.18; Tue, 19 Aug
 2025 09:23:53 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9031.023; Tue, 19 Aug 2025
 09:23:53 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 10/12] drm/i915/vrr: Use static guardband to support
 seamless LRR switching
Thread-Topic: [PATCH 10/12] drm/i915/vrr: Use static guardband to support
 seamless LRR switching
Thread-Index: AQHcEBVE8WTIAgtk0UWwLpQqpi8eZ7RpgkQQ
Date: Tue, 19 Aug 2025 09:23:52 +0000
Message-ID: <IA1PR11MB63489E9B79449DF8B0E223F6B230A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250818073128.2319762-1-ankit.k.nautiyal@intel.com>
 <20250818073128.2319762-11-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250818073128.2319762-11-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CH3PR11MB7250:EE_
x-ms-office365-filtering-correlation-id: 228731c1-275f-44a5-ca81-08dddf021d48
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?cB+vOIz7R0ArQwlJL3aYeJzLRMFybQUIdfHNWkfUnYuOfUxY9jg8HRKT7/ke?=
 =?us-ascii?Q?ww4Sa0113xr2wZ40u88qLaEhJGvReLYORkO34BWEsT4OoJBTCpBf2EEap8JN?=
 =?us-ascii?Q?m8nfYC56vcI3eY3TFUhNxv/QXcGnzAyxDlqW5kx8lJ7toIf59qpS22KYx3FL?=
 =?us-ascii?Q?pMkyZ3/VvMSg2kVGsuTEpFwO9eNEdmUASMKkUvsKCwSV93I6Pp7WHr2Zz8M0?=
 =?us-ascii?Q?yHLGY2LbktDlWnqHycTTQpmCw0P3wJQGtksvUQSALK2E3YJr5uDmAhyw0/Zw?=
 =?us-ascii?Q?PxYHZ1czvFK/e/Nxxa68TzNEowWmmFgr7nQwNHZoDH3eT2T9pdy4EBlZWdIA?=
 =?us-ascii?Q?L4oXzX9S+iNuTxxsmAhiIm7kE5ozmFmccABCBQ1wa0FIV3egbf6Q6ViySvp+?=
 =?us-ascii?Q?pZ2K7BeWIEOXP9hOfwq8a6i/QIKNJO0KJIfMtx2Ghms9oSjdP/1q4D7EVbSx?=
 =?us-ascii?Q?9q3o+f9NsXW0xQIv/ym9Ll18V/OcZNCj3vMy+dOxAuD3Zj3/WGX7O4CYPj2N?=
 =?us-ascii?Q?GOklBvRI2XSer1ZoIOf/qTg/YwiKVouihYcj/dt8fT4amaennM39aoOK+T4D?=
 =?us-ascii?Q?XjrO9ZZAD5IXNttf3WeF6bOTb2rZG2iTAtaL91LSIHTJAuvFwgGoqYDPd7ec?=
 =?us-ascii?Q?+PmIYFSHTO1PbmNtq4/F4A/2H8V3EzRVtAQ6nrpbd7K7RC7UDuzrBUJGU7pg?=
 =?us-ascii?Q?sA9VLhLv7+8/yX5B2uIbfXDtYA59uEd8A9P0m+olp/h9IWVxpj6chbY9vtBz?=
 =?us-ascii?Q?mn2mGiqpPph/2E/qv+BF6qD+lEhljbFXLMgkbB5YKnpZfVJSRiA9qbssKu04?=
 =?us-ascii?Q?q8LXrSUgo05Oxv4q/+kTW9jHRIPz4lyHje4cxWrg/XBYCd00P0rriUujiRy/?=
 =?us-ascii?Q?Gup7o1i+LGTqVJ6vjskmel/R4FKsF5EkURZIYUfmKg7cyngIDUkQmRKACDoV?=
 =?us-ascii?Q?WukLwukkVyxNGRNZSfgITkKx2+kMHsEtE0ettM6yRWA5GhwxalVIzw2OJsZY?=
 =?us-ascii?Q?yQP7Cphx9yxQdBUSBLe2pSYo4HUdEidaffL0SxyFUPVBSduXkaWJogzUa/1j?=
 =?us-ascii?Q?tAT7JAhC+/qy0kTXVIVr4vQXpMr4GvFlRDTv0kN21iagVgo9dgURzTmZC/2h?=
 =?us-ascii?Q?H9qyoXuyBwl6M7yhgG53TzttXf/rBYwF18PdTsD877r+eUoSyIUbC8309JOP?=
 =?us-ascii?Q?18Z1ZVX9bDethNFHURWkOSLFyjmEZcoio8nQHpcfJwZvjzEM117gLBzb9wNe?=
 =?us-ascii?Q?7rruDdxpQKMazAN1+hBL784BUJ+CkCZ/0VsePrqhhA0ZB9va5Y4NAw7Z3y2P?=
 =?us-ascii?Q?pMNB7RMxVC92qQQh6LmNEfY7Zn9VAmNtKpElqCLSSB13IA/o9H0d2Lz/kdl3?=
 =?us-ascii?Q?U59DUVp2WvTDV47Er7j7/BX4oPTi366XiBk7tQyVS0aL4DyYtQ1N7kV8Bxgu?=
 =?us-ascii?Q?cKkVjrBdcqbkGsFsFF3JxZYHpqpRMMJDe5yE/fjssguOITdoLJB0370pJrHU?=
 =?us-ascii?Q?aUQLDZ0aS1RVWfI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YyHv9luD7tp7iXsIP1+9Iv91lNGCRSWlyf4jzNPy/dfOd2TnJS2PpM/r618V?=
 =?us-ascii?Q?4DHXzm+w/Ncwxw2cIzwXoF06QtnfcwRpAMjL2QT22DVu3PTdvVrAff3HM3vH?=
 =?us-ascii?Q?rnidxoBPifX93fGD40w12c3PI4NHkJ+cAcRteY58pRG+Jz7ZaDV/O5C5dtNx?=
 =?us-ascii?Q?k/KGdG2HNCMHtDK+Uw9ISm49cPJVcjhJBGJOYo7rOI9ZkjQFTs5SUohHSCCm?=
 =?us-ascii?Q?u7UBDvmlL2ImPi6/E19LNt1c2n+UAzRbBaGookcho6IYXAiACGhPLd420zGD?=
 =?us-ascii?Q?OZt9GMIKXjm0s30KBk/GpjYszLHdxZpuzoX3l0kBrV9vKMH4oJcdwCDJmNL3?=
 =?us-ascii?Q?ViWLdHdtWXWJiXt5gPEYgNw4ONDy3s1F5rw//cF+lVNKwn2Gwf/vXH58fnsF?=
 =?us-ascii?Q?QAs6VzQiJTBLfZyFFbfC6kPbgpdujeR+TdCv0HnRXVkF8HdhltdBm0KWSSj8?=
 =?us-ascii?Q?ZpjP9+dJjaHsztNYD/9ekTkNSF46XnMg5uBfT1wVhYawy9+PYKQS8VogJBzS?=
 =?us-ascii?Q?4fI7FThzIEkik+8rDxu2B7ULUuBOXSt6EyC1XKpngGxjK2ZxBE9tmoDDS8zx?=
 =?us-ascii?Q?9+Y5bygVMuW9aSkVjhUrRZoVcv/+udAs69np02tIGWJMt48EIByBGSiztDbp?=
 =?us-ascii?Q?6SDrIy60D/pkwpvLHol9k6hf2xWID3JHojPMJwY5hYRDaa/ZJ5CO68twv84p?=
 =?us-ascii?Q?FGFdyOEOOHg+g3n7NnangOL41SLTz3NP/eLKjenhzXN6f0P/uMRWBMVNwie9?=
 =?us-ascii?Q?dvscY6TmgWkkYL3/tdqr4kfGVHCfz0GE7Qq24tjJa/SyXAtrGEN/ufUOe109?=
 =?us-ascii?Q?JDEEAxuH5HrUSOFaY3BOMaPfdxwNRuiX+BPko0WF+WSSOwiKyYjJ45eGnUAI?=
 =?us-ascii?Q?irYwFZQ/AtKePypDIovLx4lsZHn1BT91yx5tJFhJKRteI7AnwiYU3u/GXXcR?=
 =?us-ascii?Q?K9Tt8hufIe6N5K99FArxUSDShh37o+dQ7x9b0bLtUHYZm3P0nhxhQz2XOpii?=
 =?us-ascii?Q?RnN7QSOx8a2Z3HYyrUotJNGPdq+EvA63u2OhDghBjjDFWdhRhxaAZFqDPU4H?=
 =?us-ascii?Q?VoKmZCR6hBYhnRYYxFeRp3SN5+yTJj2EkXyjNWofzKmRB4UvcZ5gKoMY9qpp?=
 =?us-ascii?Q?RHyNAJb3ofnYw7v8dP1+Ld38VH8R/tFbOi0d/hbDBnm0DLZb/Nh70UnOzEXY?=
 =?us-ascii?Q?1aKHGkqj+NUHIZeUMt4gOFDwxCwMDuaBAgktzVb0GqfTT34wZJmkqP7UMs4P?=
 =?us-ascii?Q?JL8jgdwODX2hDrasg6WBGCbPwoprz0qB3bfi7EeLhtZrUWOE9YZ5ONnal3ZV?=
 =?us-ascii?Q?xsokG3gaSezwdTInmxH3UcfCoVC0DlXIXC3ZhJm/5m5VKSxSvTgNvdna4muB?=
 =?us-ascii?Q?Pg+0OGUraqQstKoTMHVmE/eqcJPkujfGHr99c5cAsQLqfZaZqCSQjY8L5yZB?=
 =?us-ascii?Q?NF+8dRrdP/gqzFy8U6biRKzz0CR/bAaFGIJNLtBDTGU6IViKF4i6PK96Bgjo?=
 =?us-ascii?Q?l/6lid1c2BAa9l6CMm6fD8SaQp6GPIWjdv38CcaHYuGsjmWEfmGqy6fBqJ+c?=
 =?us-ascii?Q?n8Xz/d2BHGRT8fZAndI/G0/eg2AGRgEiuCA8FzUi3YQmtbgjJEBov3/aC8JT?=
 =?us-ascii?Q?Gpkw18OSF5gUlj0yb7iyShD8ev7ge/wcnq2uQdxdIwNBHV4ANb7/h5ac1HPS?=
 =?us-ascii?Q?g9RBCmxPslYFFmclUMMcrAC3TT8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 228731c1-275f-44a5-ca81-08dddf021d48
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2025 09:23:53.0081 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eLEuHDtV6XXFUMRb6F17RIxIy2oCIMr7KQWQXebwwIXU2fwg60SMYnN/7+khvivYdsApbZIb8KigpjeAJcUHzd6lZ1fPdohji0QQ1teWSGwWjzRH+hTQYeBghxx3PXPF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7250
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
> Sent: 18 August 2025 13:01
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Nautiyal, Ankit K <ankit.k.nautiyal@in=
tel.com>
> Subject: [PATCH 10/12] drm/i915/vrr: Use static guardband to support seam=
less
> LRR switching
>=20
> In the current VRR implementation, vrr.vmin and vrr.guardband are set suc=
h that
> they do not need to change when switching from fixed refresh rate to vari=
able
> refresh rate. Specifically, vrr.guardband is always set to match the vbla=
nk length.
> This approach works for most cases, but not for LRR, where the guardband
> would need to change while the VRR timing generator is still active.
>=20
> With the VRR TG always active, live updates to guardband are unsafe and n=
ot
> recommended. To ensure hardware safety, guardband was moved out of the
> !fastset block, meaning any change now requires a full modeset.
> This breaks seamless LRR switching, which was previously supported.
>=20
> Since the problem arises from guardband being matched to the vblank lengt=
h,
> solution is to use a minimal, sufficient static value, instead. So we use=
 a static
> guardband defined during mode-set that fits within the smallest expected
> vblank and remains unchanged in case of features like LRR where vtotal ch=
anges.
> To compute this minimum guardband we take into account latencies/delays d=
ue
> to different features as mentioned in the Bspec.
>=20
> v2:
> -Use helpers for dsc/scaler prefill latencies. (Mitul) -Account for pkgc =
latency and
> take max of pkgc and sagv latencies.
> v3: Use new helper for PSR2/Panel Replay latency.
>=20
> Bspec: 70151
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |   2 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 132 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_vrr.h     |   3 +-
>  3 files changed, 133 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 9138cd1d6284..17e674c06b18 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4903,7 +4903,6 @@ intel_modeset_pipe_config_late(struct
> intel_atomic_state *state,
>  	struct drm_connector *connector;
>  	int i;
>=20
> -	intel_vrr_compute_config_late(crtc_state);
>=20
>  	for_each_new_connector_in_state(&state->base, connector,
>  					conn_state, i) {
> @@ -4915,6 +4914,7 @@ intel_modeset_pipe_config_late(struct
> intel_atomic_state *state,
>  		    !encoder->compute_config_late)
>  			continue;
>=20
> +		intel_vrr_compute_config_late(crtc_state, conn_state);
>  		ret =3D encoder->compute_config_late(encoder, crtc_state,
>  						   conn_state);
>  		if (ret)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 46a85720411f..170f7bcdb8a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -6,12 +6,15 @@
>=20
>  #include <drm/drm_print.h>
>=20
> +#include "intel_alpm.h"
>  #include "intel_de.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_vrr.h"
>  #include "intel_vrr_regs.h"
> +#include "skl_scaler.h"
> +#include "skl_watermark.h"
>=20
>  #define FIXED_POINT_PRECISION		100
>  #define CMRR_PRECISION_TOLERANCE	10
> @@ -413,15 +416,140 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
>  	}
>  }
>=20
> -void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
> +static
> +int scaler_prefill_latency(struct intel_crtc_state *crtc_state, int
> +linetime_us) {

Can we differentiate in terms of naming, as we are calculating scaler prefi=
ll latency for 2 different purpose, same name can confuse later.

> +	int chroma_downscaling_factor =3D
> skl_scaler_chroma_downscale_factor(crtc_state);
> +	u64 hscale_k, vscale_k;
> +	int cdclk_adjustment;
> +	int num_scaler_users;
> +
> +	/*
> +	 * Assuming:
> +	 * Both scaler enabled.
> +	 * scaler 1 downscaling factor as 2 x 2 (Horiz x Vert)
> +	 * scaler 2 downscaling factor as 2 x 1 (Horiz x Vert)
> +	 * Cdclk Adjustment : 1
> +	 */
> +	num_scaler_users =3D 2;
> +	hscale_k =3D 2 * 1000;
> +	vscale_k =3D 2 * 1000;
> +	cdclk_adjustment =3D 1;
> +
> +	return intel_display_scaler_prefill_latency(num_scaler_users, hscale_k,
> vscale_k,
> +						    chroma_downscaling_factor,
> +						    cdclk_adjustment,
> +						    linetime_us);
> +}
> +
> +static
> +int dsc_prefill_latency(struct intel_crtc_state *crtc_state, int
> +linetime_us) { #define MAX_SCALERS 2
> +	int chroma_downscaling_factor =3D
> skl_scaler_chroma_downscale_factor(crtc_state);
> +	u64 hscale_k[MAX_SCALERS], vscale_k[MAX_SCALERS];
> +	int cdclk_adjustment;
> +	int num_scaler_users;
> +
> +	/*
> +	 * Assuming:
> +	 * Both scaler enabled.
> +	 * scaler 1 downscaling factor as 2 x 2 (Horiz x Vert)
> +	 * scaler 2 downscaling factor as 2 x 1 (Horiz x Vert)
> +	 * Cdclk Adjustment : 1
> +	 */
> +	num_scaler_users =3D MAX_SCALERS;
> +	hscale_k[0] =3D 2 * 1000;
> +	vscale_k[0] =3D 2 * 1000;
> +	hscale_k[1] =3D 2 * 1000;
> +	vscale_k[1] =3D 1 * 1000;
> +
> +	cdclk_adjustment =3D 1;
> +
> +	return intel_display_dsc_prefill_latency(num_scaler_users, hscale_k,
> vscale_k,
> +						 chroma_downscaling_factor,
> +						 cdclk_adjustment,
> +						 linetime_us);
> +}
> +
> +static
> +int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
> +				struct intel_connector *connector)
> +{
> +	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	int dsc_prefill_time =3D 0;
> +	int psr2_pr_latency =3D 0;
> +	int scaler_prefill_time;
> +	int wm0_prefill_time;
> +	int pkgc_max_latency;
> +	int sagv_latency;
> +	int sdp_latency =3D 0;
> +	int guardband_us;
> +	int linetime_us;
> +	int guardband;
> +	int pm_delay;
> +
> +	linetime_us =3D DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
> +				   adjusted_mode->crtc_clock);
> +
> +	pkgc_max_latency =3D skl_watermark_max_latency(display, 1);
> +	sagv_latency =3D display->sagv.block_time_us;
> +
> +	/* Assuming max wm0 lines =3D 4 */
> +	wm0_prefill_time =3D 4 * linetime_us + 20;
> +
> +	scaler_prefill_time =3D scaler_prefill_latency(crtc_state, linetime_us)=
;
> +
> +	if (crtc_state->dsc.compression_enable)
> +		dsc_prefill_time =3D dsc_prefill_latency(crtc_state, linetime_us);
> +
> +	pm_delay =3D crtc_state->framestart_delay +
> +		   max(sagv_latency, pkgc_max_latency) +
> +		   wm0_prefill_time +
> +		   scaler_prefill_time +
> +		   dsc_prefill_time;
> +
> +	switch (connector->base.connector_type) {
> +	case DRM_MODE_CONNECTOR_eDP:
> +	case DRM_MODE_CONNECTOR_DisplayPort:
> +		psr2_pr_latency =3D
> intel_alpm_compute_max_link_wake_latency(crtc_state, true);
> +		sdp_latency =3D intel_dp_compute_sdp_latency(crtc_state, true);
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	guardband_us =3D max(sdp_latency, psr2_pr_latency);
> +	guardband_us =3D max(guardband_us, pm_delay);
> +
> +	guardband =3D DIV_ROUND_UP(guardband_us, linetime_us);
> +
> +	/* guardband cannot be more than the Vmax vblank */
> +	guardband =3D min(guardband, crtc_state->vrr.vmax -
> +adjusted_mode->crtc_vblank_start);
> +
> +	return guardband;
> +}
> +
> +void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state,
> +				   struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> +	struct intel_connector *connector =3D
> +		to_intel_connector(conn_state->connector);
>=20
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>=20
> -	if (DISPLAY_VER(display) >=3D 13) {
> +	if (intel_vrr_always_use_vrr_tg(display)) {
> +		crtc_state->vrr.guardband =3D
> intel_vrr_compute_guardband(crtc_state, connector);
> +		if (crtc_state->uapi.vrr_enabled) {
> +			crtc_state->vrr.vmin =3D crtc_state->vrr.guardband +
> +					       adjusted_mode->crtc_vblank_start;
> +			crtc_state->vrr.flipline =3D crtc_state->vrr.vmin;
> +		}
> +	} else if (DISPLAY_VER(display) >=3D 13) {
>  		crtc_state->vrr.guardband =3D
>  			crtc_state->vrr.vmin - adjusted_mode-
> >crtc_vblank_start;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h
> b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 38bf9996b883..4b15c2838492 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -21,7 +21,8 @@ bool intel_vrr_possible(const struct intel_crtc_state
> *crtc_state);  void intel_vrr_check_modeset(struct intel_atomic_state *st=
ate);
> void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			      struct drm_connector_state *conn_state); -void
> intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
> +void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state,
> +				   struct drm_connector_state *conn_state);

As we construct guardband with worst case latency, and compare with vblank =
length.=20

changes look good. Only naming can be checked before merge for respective p=
urpose.

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crt=
c_state);
> void intel_vrr_enable(const struct intel_crtc_state *crtc_state);  void
> intel_vrr_send_push(struct intel_dsb *dsb,
> --
> 2.45.2

