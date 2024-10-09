Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEDE9964DB
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 11:19:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08AB110E6AE;
	Wed,  9 Oct 2024 09:19:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vc8W9xsX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1814E10E6AE
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 09:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728465581; x=1760001581;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Lm+7K1l1N1a+hUqJ92gK0sxTJd8VX4pSuES/aR9JMY0=;
 b=Vc8W9xsXPCeCEA3S3QqgCWfFvIukQiU5hRdNncN3bBH6YVSomGdP8zZF
 kWqXwlktWrgJUHms+teazcjPBfCntaWV+lpHUuuR33XcASyiAuqdl1A6X
 9Cj1XcG4KQA9db9R6Ct/nL4VYZqvveGvOxqGNqGMEG4S/qt1J2LmHCJGd
 m76H0BP4kOy2Zpq/cKRP0OjjYpH2rks1zf2S0t84PPxxCyv59Y8V8f7vu
 tslj7UjIlZAFGaFeYE249BscbyxjJ2KGFZvzrNruJz/u2B1tguRI57kj8
 vvLU8v5e5npVCSKTrDthF2lh0nEPlp3OcajlPEo5Z46lpvOUufyFj2CG6 Q==;
X-CSE-ConnectionGUID: 5RsuJw6sQTyd1QIEJquQWw==
X-CSE-MsgGUID: C5k40rKiSJqmZz/c584V7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="15373845"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="15373845"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:19:41 -0700
X-CSE-ConnectionGUID: rofEwZk6ScaqVvvcselAMA==
X-CSE-MsgGUID: 3I3oGWwkQSaZt+hurhHPBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="113669678"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 02:19:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 02:19:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 02:19:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 02:19:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 02:19:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aoCmIvOTWWas1qmzp5PHw5Z+JB+nEj/UiuakMpMRj3/erAS0u0T+HeewMwC4tehpldq2CZjXd86jjc5IuA5WC49imjeu9sprbr3W9lzBvZknOXUS/vJGM1NWS8SGueP1ctv04vcO5VNOhI6R6SIYHYSlqpnsaLdiiZwX20zyHWTh/r/hHTPsVxXdRQ73TVwoZvUAmcbtM3zzOzXwth/Whe8reuE7xQ+E5fJ/MzSEKgXxY6ypSVEaK8zXFnvyygWhLQgSf3EYwRfRLMDsiSTFrWKYpgDRHRZmut/p7Zf0nEc9MEL+BvzXlfIc4U/46yiQO+uV2Jwc+ll+VEiEr38yBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MGxfj95NAsZkA4HAw0GmMg0hdqpLlt7nXacAt9ivEUs=;
 b=K3VFabbLu/2ZDP1+l2kJPPrqPJwMXyf7NjXYT7/i0V4gbWHi1Bkw170yE6Liudpw30E4XW3lwDRspGJYV59NBgI8llGq4wHBpCFJYu3pvgw7lx9uL1cwJSuKv872F6R6fvDXTJs6TmUB6DE3/t3epRzZaDGk3X9hX/B11r/ORJt1uWxXBkLgLscxckcsiizP2VxM8W/tyrfVj44NnmJWPLppHbBRWgyBYzT23Vb1p5Cwut43z0HHBgkNkko0RJ/2Xg6Xs7/CqjZrwANeLZWztkzjJE93WtS3DTYiInvkEtZ0LrHWs79zYZv6Hs7c/5K7eF4LgP01fCjwU3Sny33BnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SN7PR11MB6969.namprd11.prod.outlook.com (2603:10b6:806:2a9::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Wed, 9 Oct
 2024 09:19:37 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%2]) with mapi id 15.20.8026.024; Wed, 9 Oct 2024
 09:19:37 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v13 3/3] drm/i915/panelreplay: Panel replay workaround
 with VRR
Thread-Topic: [PATCH v13 3/3] drm/i915/panelreplay: Panel replay workaround
 with VRR
Thread-Index: AQHbFAhAJ2dALCCPkEWmuobkqYpVgLJ+EjaAgAAeOCA=
Date: Wed, 9 Oct 2024 09:19:37 +0000
Message-ID: <IA1PR11MB634841640BB22225130F440CB27F2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241001134703.1128487-4-mitulkumar.ajitkumar.golani@intel.com>
 <ZwYxHyd_kzF-WaXj@intel.com>
In-Reply-To: <ZwYxHyd_kzF-WaXj@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: ville.syrjala@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SN7PR11MB6969:EE_
x-ms-office365-filtering-correlation-id: c7d3062e-d793-450b-bed4-08dce8437f6d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?Z6vtQ1cDLh3R5ewYFeZptz7TUCwtkThQhOwyWV+izNSWvSxEC6EAebXmmx?=
 =?iso-8859-1?Q?fCI0J3kXfkBPGBZ97QgONI2GJychiPlZP0c/LkIoJhZcAOxQmo2wruQaZR?=
 =?iso-8859-1?Q?+uFA92fsDyUDOXNuAhqVtD5oAYNyzEbUAa94HS/LjPrVIX5Z6gr++vE6Ty?=
 =?iso-8859-1?Q?XKtIVa9BnVBZgDJT2+o0gbhpd/MD2rNZllxSWVIEKOXluimjo8PifEQObE?=
 =?iso-8859-1?Q?2v6QnoqZXiCfHSRL5lvKM/FYHmrV1Oma3qzeuDTWhwVoixTPekZ+/wJrzR?=
 =?iso-8859-1?Q?xKzksJeBr1Te/TQxF02PvP69NYD7XuVzorjKeHwZffzhYFmWbf5zHdO4qV?=
 =?iso-8859-1?Q?j/CrpOe/88IvMHTn7XjaU0bZ9imoJbFJ9qzeL5imAiJGgE7WHMF4lfOM79?=
 =?iso-8859-1?Q?GU/y7C4ykkp0mOVXswBRWdBxVxx26TGiYaFDiL6hRj9ulyzrVQyuUKmn82?=
 =?iso-8859-1?Q?HvNpgl1Y0ow4zFF9MBNmbhhI3gYcJDP0loMgMnx/LPq2F6tmvjSymmDNUh?=
 =?iso-8859-1?Q?s4iA8GDKhBtZLBLWQK3zkH8xDwyzA830cGnlaNDdoxi+fBy4UuBRqBlkCS?=
 =?iso-8859-1?Q?mYnW1ciyAaao4EdMmd67tXunmqdHQ7kdOHNbu/mcJlBEQ53lIMA9ybZKW8?=
 =?iso-8859-1?Q?d+VqMKCurAHTQpgB16KLU0ymx8oWC2hfLxnuOwvsWw4e8Eb1ZdyqBTTibl?=
 =?iso-8859-1?Q?ZvHph1B13B5wXjGviGkvdVLK5gXk9mpgHZGPcReVr9S4q9GFLqUb5cBsLx?=
 =?iso-8859-1?Q?BxRPp8ittKcbjlQP0BujdmRzhrwBIFYq376PhgYiDKzQIV1G53etCiK3ud?=
 =?iso-8859-1?Q?7JhX6lPrBpGHSsrKQL25eqZa57hVoqKTOd2AnyM9tDrBq9F5M/gUczLpSz?=
 =?iso-8859-1?Q?nbz8NF51T+MZhh5PTw1zM3w+gtoHBmiTnl6Tt8y4S3gB1Gj1lY1UdBFVgX?=
 =?iso-8859-1?Q?iXO2HG2n6cMwPi7lmh8m6iCCd7c82465gEtroz48UvdGQi0OAQCEGGMN1G?=
 =?iso-8859-1?Q?IVyxF/exBTSoo0uwu5Hrv7KxvY5UNm2Lz/F9cu5mD6wdBXT0PaaOEyh/zO?=
 =?iso-8859-1?Q?u/Nr6lKhf+B/LtMGJwwdnJBPGDdHCGgx/5txvICXIBSZBDJUklmfCjdN6U?=
 =?iso-8859-1?Q?Ef07tVdUAgWW4PP4lKYHBcTl1sDWvwTaZOdkxvMcL0IvCDC2nApvTs+ZZs?=
 =?iso-8859-1?Q?ijc+mTGS/rY8WKSq59PVcX2b7GoIsNYyOG4HFqRUqA+gIuHEMw7yTcBvp7?=
 =?iso-8859-1?Q?0DHjNMtCJf/EtX9dgZx3hYkxzJjTB/TAzGwtav4lCUNOse4P3wd7RWuKZo?=
 =?iso-8859-1?Q?LV/r5LDHp+PRpnNgzXVl1SbFMgqe/fmH+FvpbyEY+88tk7hlHGUcyBp3G6?=
 =?iso-8859-1?Q?bl/Gwa+ZSmof9jjlYWh58abwaQK8pA5g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?EXIWMkD0ov9oqeznt0OHLfwx+CHhoRdVpbcGIZ5ijYN9KGe6bImR5E500+?=
 =?iso-8859-1?Q?4c/FqES/y/Y4Tl0JBvYexnNSSy4oCUIoFOpE9jDEm8A/qOTEb+zzLe7wYG?=
 =?iso-8859-1?Q?cBEfIE+iU8slsnF4c2E0IfGuPJKE+SkyUkWWIQhguVAuSdytmKWod4i9G2?=
 =?iso-8859-1?Q?ysda7x3Lv/coqB1WwpcOGfJH5LJehnswsJGSeZPnPbITON3SJzPCyrWVFo?=
 =?iso-8859-1?Q?w+O7YTnPu231W3aqkYtxoFtSsAVivzPBUgyrqTAod4gyxjYmKEeDowheCr?=
 =?iso-8859-1?Q?7QkbJx003GVoR/SXvdawdOw47+gyquc8wGwxJPvF06GADG0qFv4VxU0FJd?=
 =?iso-8859-1?Q?sPEDRa/dFsNF/HhHK8ZqE0Yu+PN60k3QaG2ykQIotQUcCCnLLX/q+XU7kz?=
 =?iso-8859-1?Q?ZDOViY2AjCIHsiyPbKqomumEiXA1fKw+IEomQjKEyoaA9/sYg2Ocf1wY4Q?=
 =?iso-8859-1?Q?7sxL/HF11KtPkiSS88+1OVNFRpjJDJYRAjj+ZAugkftsinL4rS/r1Noagu?=
 =?iso-8859-1?Q?AjwXa5yZHM4PAChbbxRhrlGsfrtKXSds2GsJbf1EtcqaVAQL4VK2Z2GWbD?=
 =?iso-8859-1?Q?dBMOeH5/KtDPNs0cgG4N89z83KGBEY4TRtc1ScwrBwl5XiJ4RHdcRQTKnD?=
 =?iso-8859-1?Q?NQgNlJJqt4ej6tQImAZLADFuzKyqrRtRZDvcqO3Mk1BKdlpoC2p8RL6plP?=
 =?iso-8859-1?Q?tg+VyxZMHPqulZubdt71HOdNojNnxXZApqk9xyHAq/1wk8RcboyEFfbJsT?=
 =?iso-8859-1?Q?+LD2DNTcdCbIHzowEby4QPWdYbznnzsCz3yzEYwt/4WgcHiSDt3DcGd00J?=
 =?iso-8859-1?Q?Dg6LVbLAsknntS0TAIbb7c3bZGYkIVe0wsAAxP2oLvK2wTL68DBkelrv52?=
 =?iso-8859-1?Q?BpXLbqrE2Tdgr8NQc5rfF1gkCVAgkMCyxkwKDbzLItk2aCrE84Yku4DD/C?=
 =?iso-8859-1?Q?89Wan/2UD7bsrjibor7Llk/y2oYVfOUb3/XdvXslii2j5Tzxto1S1rjugz?=
 =?iso-8859-1?Q?nYL4h3T/g+OsBMKdRx1LuI7Xu982s86rhDr9MOWdGZJVJo5DNmovgl3IyX?=
 =?iso-8859-1?Q?nIYk+HVnfSxRI1E//K9c8+Z9u0siMtK+EmzhdB9p8QKEBNQit/LPDwilO/?=
 =?iso-8859-1?Q?1ZLRCuFS5B+3F0bmSJASzOBR77Ohh1tKu2x0jXVSW1OLIGgG3aFEGMeeAS?=
 =?iso-8859-1?Q?m/2MRgwNC19c752lS+/lOUjhUOBOXgSAAZcRN7cYx7OxPV8Un9RWwPerhO?=
 =?iso-8859-1?Q?j6bvUdbC/qniTG0GHenJWqG5F845OkCb4pkCnKkH7cNbOaKo353ucN+ACM?=
 =?iso-8859-1?Q?6Mq393gC9CoBwA6qktd2/DuoQU6eWAj8vi4EyhS28Hja+JgB18PVFD8DO/?=
 =?iso-8859-1?Q?xRn3+YywujPc167vY1JhIqd25JXZNpC4bLRNs4aUpj3ByTwLgB0FAJdZ16?=
 =?iso-8859-1?Q?eLY78jIpbMbo7Jej4xoE1Do3YToXgrE1faosSBwn94lNWfaGWO8iKs6wmd?=
 =?iso-8859-1?Q?3ESca/5zGJSnfLEp79l+dn0yqvXdNsvo+4lzShEycdAAclecy9ImYch5Lk?=
 =?iso-8859-1?Q?abnm1IvrMP/gdkyg15OqYyK+X2B5tTYL5nWlr7+RD0z2ua2/BQvHE+rVvO?=
 =?iso-8859-1?Q?PSFNZynbM3cioPanxKmUYlnQbE88XJDBOMFdC1FEKgNI73D01HfnTjsYi/?=
 =?iso-8859-1?Q?PPFgkneztGryjxq6Fe4=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7d3062e-d793-450b-bed4-08dce8437f6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 09:19:37.7532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GeAvphKpdLHY+Se1ihEozi8mr1KIAzLnvDP7y78LklEYlitAvvkcfqK1i8Ja9pzKx74aADyCZJB0bnFRYC6s2NKDfpdMZeu+prpoCwhCk1cPCUArGjuLVkzECYPl5iB7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6969
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, October 9, 2024 1:01 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>=
;
> Syrjala, Ville <ville.syrjala@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCH v13 3/3] drm/i915/panelreplay: Panel replay workaroun=
d
> with VRR
>=20
> On Tue, Oct 01, 2024 at 07:17:03PM +0530, Mitul Golani wrote:
> > From: Animesh Manna <animesh.manna@intel.com>
> >
> > Panel Replay VSC SDP not getting sent when VRR is enabled and W1 and
> > W2 are 0. So Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> > register to at least a value of 1.
> > The same is applicable for PSR1/PSR2 as well.
> >
> > HSD: 14015406119
> >
> > v1: Initial version.
> > v2: Update timings stored in adjusted_mode struct. [Ville]
> > v3: Add WA in compute_config(). [Ville]
> > v4:
> > - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> > - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> > v5: Move to crtc_compute_config(). [Ville]
> > v6: Restrict DISPLAY_VER till 14. [Mitul]
> > v7:
> > - Corrected code-comment. [Mitul]
> > - dev_priv local variable removed. [Jani]
> > v8: Introduce late_compute_config() which will take care late
> > vblank-delay adjustment. [Ville]
> > v9: Implementation simplified and split into multiple patches.
> > v10:
> > - Split vrr changes and use struct intel_display in DISPLAY_VER().
> > [Ankit]
> > - Use for_each_new_intel_connector_in_state(). [Jani]
> > v11: Remove loop and use flipline instead of vrr.enable flag. [Ville]
> > v12:
> > - Use intel_Vrr_possible helper.
> > - Correct flag check for flipline.
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 21
> > ++++++++++++++++++++  drivers/gpu/drm/i915/display/intel_display.h |
> > 1 +
> >  2 files changed, 22 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index c59d7bffbf57..a8f846b654e9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2573,6 +2573,8 @@ static int intel_crtc_compute_config(struct
> intel_atomic_state *state,
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	int ret;
> >
> > +	intel_crtc_adjust_vblank_delay(crtc_state);
> > +
> >  	ret =3D intel_dpll_crtc_compute_clock(state, crtc);
> >  	if (ret)
> >  		return ret;
> > @@ -3985,6 +3987,25 @@ bool intel_crtc_get_pipe_config(struct
> intel_crtc_state *crtc_state)
> >  	return true;
> >  }
> >
> > +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state
> > +*crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	struct drm_display_mode *adjusted_mode =3D
> > +&crtc_state->hw.adjusted_mode;
> > +
> > +	/*
> > +	 * wa_14015401596 for display versions 13, 14.
> > +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> register
> > +	 * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled wi=
th
> VRR.
> > +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> substracting
> > +	 * crtc_vdisplay from crtc_vblank_start, so incrementing
> crtc_vblank_start
> > +	 * by 1 if both are equal.
>=20
> You're just paraphrasing the code in different words here.
> Please don't, and just drop the whole comment (apart from the w/a number
> ofc).

Thanks @Syrjala, Ville for the review,

I will remove comment in next revision.

>=20
> > +	 */
> > +	if (intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
> > +	    adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode->crtc_vdisp=
lay
> &&
> > +	    IS_DISPLAY_VER(display, 13, 14))
> > +		adjusted_mode->crtc_vblank_start +=3D 1; }
> > +
> >  int intel_dotclock_calculate(int link_freq,
> >  			     const struct intel_link_m_n *m_n)  { diff --git
> > a/drivers/gpu/drm/i915/display/intel_display.h
> > b/drivers/gpu/drm/i915/display/intel_display.h
> > index 1f0fed5ea7bc..e6bd03ef104d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -446,6 +446,7 @@ u8 _intel_modeset_primary_pipes(const struct
> > intel_crtc_state *crtc_state);
> >  u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state
> > *crtc_state);  struct intel_crtc *intel_primary_crtc(const struct
> > intel_crtc_state *crtc_state);  bool intel_crtc_get_pipe_config(struct
> > intel_crtc_state *crtc_state);
> > +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state
> > +*crtc_state);
> >  bool intel_pipe_config_compare(const struct intel_crtc_state
> *current_config,
> >  			       const struct intel_crtc_state *pipe_config,
> >  			       bool fastset);
> > --
> > 2.46.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
