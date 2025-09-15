Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0B5B57FAE
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 16:57:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7339D10E300;
	Mon, 15 Sep 2025 14:57:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PFLdJ1kk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C12410E300
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 14:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757948237; x=1789484237;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Yfbf7D7Rj8El+qWUIKEkaiOD445+CRWrPaI+LC1QrYk=;
 b=PFLdJ1kkYmL6AyejcK+TeRnUFQZ38dAgWfx+9zTUxlsfhG4vCNCmlccX
 +KlCD8fjSv8nDfbf/YgUq7LdE/KN3qYR1wmXnpkXVWXbWsOJNsRdOFRvd
 Lg/2yuuulRfAkjrhzNR85/oPOxf9hAusTS/gxiJehFkEiXHV+xRoXeuaa
 XGmAaajuA/9JYQ97Sn3Ye69XNdZ85+OVU2nV27r3yHrDbXwhc2s+BdS3a
 P2t7mVCJwOlwgsJ7MGgrNfkMRyipWnlFKkiDQCP6AGZXR7cIKnKjqPGC9
 yljQmdiTbZCHkgy6OrvZZ+jdaQcPbN7pYlj1Fj+QgR7CzhqBHfm/Crj3y w==;
X-CSE-ConnectionGUID: QUB1zC4SQkSnKm3QNIZjhQ==
X-CSE-MsgGUID: 4rbY8GnjQn2fKBwpMAzY1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="60314303"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="60314303"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 07:49:25 -0700
X-CSE-ConnectionGUID: muQ8rMKbTTGcwpcxHZ0apQ==
X-CSE-MsgGUID: Sddb57L7TBeNPa5TlQc7pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="198345381"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 07:49:25 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 07:49:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 07:49:24 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 07:49:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DpYfSCZseeQ4PMpklhMvDeoTpu7j5QhhcSKci9j0n9Qa/eXcRSRv1Pc49qOeL8CKi+ldhqZCJT30uZsrM8Zlkb5bLrBaTwEGzUTfQHRkjD++PLpNao+Xes0Rjs0pjZ1zay+45e3hgYYRX2tiE66o//s0p5GU+fVP+2uI/BO0Fz2h4/oq0qB+l1MHyEfCcTYQwLw+eRSBcAL/Yqjb/Bp1eHrhp4L/KrLw+MlywfZoSToKG2tg2HyXppA6H9uKTXNdJnmzQ9vIgkWxJrwj2AXLomzCziCN1yrUDcB/vAsHuOXhkWCxI4aN5BIuu1Zogs9WpKAx+E5RJHC5mwZpD2kNhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O6UkyyLSLdh3EsnxppIl1DpNNxdiqV5+QEHQ5ecbNS8=;
 b=aq+11I+mhQUr11FvrCHXAmD3Ibg7+FPDMqOh1LqbYqodlp8jamYIhr1p1LI9LQiswk5fnWbq5NhuUCg7x4cGG8cuM1lD8fWAZBiWcHex/KKCEHSO77ZcLAn+ny8IQ5gad1rpFmZk4nbYGpTl4fsXroEZhSNP/akQkx1lO2/ScR5ODlPmZjoNt/5tPL1mrl2eV5iHycujX9niEq3VeXxvZJVlRNdM0TdlqsGDZmrrbTyWLsiKbDyed3jmZpnwMIDCb1hD4BRlWou+DG6CywjGN+2RVCoUUnIXXq3Er4gQqy5fj6Nvi2gXWHJ1Cku362MltC5GzSLug/dshlKd+ykFHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CY8PR11MB7193.namprd11.prod.outlook.com (2603:10b6:930:91::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Mon, 15 Sep
 2025 14:49:22 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%3]) with mapi id 15.20.9115.020; Mon, 15 Sep 2025
 14:49:22 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Gupta, saurabhg"
 <saurabhg.gupta@intel.com>, "Zuo, Alex" <alex.zuo@intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH] drm/i915/display: Simplify modular operations with vtotal
Thread-Topic: [PATCH] drm/i915/display: Simplify modular operations with vtotal
Thread-Index: AQHcIzJG+nLPCZG8XU+LA98NK/0P9bSPP6cAgABV0mCAABhpAIAEqwJg
Date: Mon, 15 Sep 2025 14:49:22 +0000
Message-ID: <CH0PR11MB5444745443F2BBB579122BD1E515A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250911153921.9038-2-jonathan.cavitt@intel.com>
 <e696008aa8675e2ff33f478b3ff47032c8c7ae36@intel.com>
 <CH0PR11MB5444919A7E9C4CF1A430672CE508A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <aMQ8iKlCbT5dlYQm@intel.com>
In-Reply-To: <aMQ8iKlCbT5dlYQm@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CY8PR11MB7193:EE_
x-ms-office365-filtering-correlation-id: 6999d810-854a-4a70-1f2a-08ddf4670eae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?tQWrn5hae6YdHmJGx0w5zhFqxCwRKDOrn7AYSAXz62CwavJzZw2+BCU7T8?=
 =?iso-8859-1?Q?bE9AkuVEcs0XiNKyn/BPBKfM0KfPX/QHptzIS9VK2145lyor1VzU0itkTQ?=
 =?iso-8859-1?Q?lEHkGQZU6cbg4H6QOJ4oB306b+5sDkxcz2Z0+/W4xNPXTz7ca2AtfF/CT8?=
 =?iso-8859-1?Q?2MPq5jwGKcG+4G8sGAHDV0YvKvGNez540osPVQWv0fBAMgjt72+7g3vKGe?=
 =?iso-8859-1?Q?xwFQHBEdGjqQOkbUm+9PrySiHZuRNRofL5qyGPl5Z8N+nR1bOEKLAPb5k6?=
 =?iso-8859-1?Q?fQrt3LTKWwuKyLWsHbjisYU/mnTt+vuq0n64d6/755D3/CxLC14QBC+Qt2?=
 =?iso-8859-1?Q?atYuCjeKCP0nmHvHTwKpnEeoAeXTteYUBfxtgfN5umhRfJXYM5gYbVZxSM?=
 =?iso-8859-1?Q?V3BhLjCgjTdq6cbLFpJK105yjc+KdcnYZNAl13bumqzqyA3WX3VTe+aw6M?=
 =?iso-8859-1?Q?EWX2MSsaLT/BfC0xgsssfG+lct30Dd9pKO4s+iidy17UwPDt4fS6OYAyy0?=
 =?iso-8859-1?Q?SuTkOH9nOp1WRVOvGtqUt3JGQjN/uFLpWBdMl+q1IvHNM2We72vHXzImx2?=
 =?iso-8859-1?Q?xLlW4JwPtIJ4RFkPXgfCuU8fofvRRiT9bpB+P/NaC009aotZbypwUzy56q?=
 =?iso-8859-1?Q?9+NB0Tz2BvOB8mEhX2INPZPptSaQuWRLfcUizw60Ri5+Cu6Pj1YGu4+ZqS?=
 =?iso-8859-1?Q?r67PLn4tBqgCLob44JIsmgC1lOq31XNIMlNpAfNaj119VQw2T84KVeA5IZ?=
 =?iso-8859-1?Q?7uq8xkUk+7o0kNRrYqsFdgJuSFGtPe5F1IwV5gFtgi7fib9QGEdVjhxpi9?=
 =?iso-8859-1?Q?bdZql88Cn85iInMx7cw9KSFmtxXUyppSMspGB3HRVsZ9H1NT2bNPd73cUc?=
 =?iso-8859-1?Q?U61SVI8ulIoFhzhb6uDK6jCdQhxbN3NRzzpY1vWooo8LvVYCJbBbUQZQSK?=
 =?iso-8859-1?Q?hEmyiah0sZIYEjOKZ7Hi6KZ3mCuRObd7tdw1I/GpIm4Tablv71MNU/v6ku?=
 =?iso-8859-1?Q?Q7kJNlu0DQt1rkeor/TxN/CcMRxvCxS99NWz7nmxUrWyc9E69GbRI+zWI6?=
 =?iso-8859-1?Q?s30RoOeXQeVApJOZlmoF5ji9C/D/+qN2JwpoFKmvV18NmhNmKZy7wE9iML?=
 =?iso-8859-1?Q?tYRBznJxgKHwDeOjMEUMg58z/u6XLvmIz2CSqkIcjfQZYzRdlvWT4B7/+D?=
 =?iso-8859-1?Q?34PjVt4ds4RLokBpZrGqLSq0YKbrTRdlzEUyRl2jTAWla2+tnZ2V6ymThM?=
 =?iso-8859-1?Q?L42xNaz/QQwdmONsPXUFvd+cRM/qau+vNu3Ln+ymwA1mJttVMzcpka8Rh6?=
 =?iso-8859-1?Q?4aOY9vUNtAz5rEeDfDJ7CIA96o+P3ZSBEDV3/urtQByP9NKlt026vpQB79?=
 =?iso-8859-1?Q?QEQfZNJm9kZEJPPNxWGMeyXcKiTEu2OVrRj6hakvhO80xJ+j/ft6F3WyPp?=
 =?iso-8859-1?Q?I7Ah6YC+YuJzklzromdRqlbU8dZ74F7U4swbIsSEP46a2bor23J6UEYUTX?=
 =?iso-8859-1?Q?zd1A6TrGTVjPRKHhszsOW20MuCHHD0/7goQxUhgkAiYhd7iIbpy88uzEiu?=
 =?iso-8859-1?Q?8NGpueg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?+FXsIfyqR3NDEvNfdJyaWKE3lVLGLdyrpMLGaBPqQNHajANzU7J+CzCYnr?=
 =?iso-8859-1?Q?f25K9SHpSGo+iPmSkWqPE/L/5ga8Rr4yd6PFZP0YyFueNGsqaL72VQ+OrT?=
 =?iso-8859-1?Q?6x47V2ivt/NeSMGZ2sY+J2lsHO+q0qOEJIMjnBXD0YjVoRyAKG8QXN7BI/?=
 =?iso-8859-1?Q?v6bmlyoP5sQZ3KXVIKO/SclW5SeG6BzaYCMnmQIuSvagKdeIAR2+YbsYGT?=
 =?iso-8859-1?Q?YypUPNw/DLBL1TraOeHIxvj1gFkcoRq+TnyrNXlXRWVA4aAhzr18blMM/L?=
 =?iso-8859-1?Q?RNTNiMX06e3jjCy1UN9uqUv42m0PWtsAx7YZqMfwpDzs/vZ/xvUCg70nM1?=
 =?iso-8859-1?Q?g/7N/DZUr0Br5gT/KLizDqjssOOIE6g764yVzIJv1DGuGeoJVTIBKymA2v?=
 =?iso-8859-1?Q?+jOb2OlZG9msW0HNBhwQu8jzI1WBKFBzkygc9dhCbqdY1JuPpYIUtHhGp/?=
 =?iso-8859-1?Q?930N/nuqzraqeTE6keQZ0ZlXg+93HL1Jjs9/iFWHuxmAiw0ReLUpRAXltx?=
 =?iso-8859-1?Q?TrafDp7L2biIvK9qrqDMiEUWsR/kT/9ZDzH6k9zYzxZUR6qBi1sDdYiloT?=
 =?iso-8859-1?Q?msMDEc936FWeDhA0hvUb2DvjaefuLz0kBPzZRnT+TneDYKvoDaTSQ3VcCv?=
 =?iso-8859-1?Q?s4vINcGiqn6OOh78mJx4rEt0y0fWHiGDZQArYqZ2v5LjoimTywRlvp2jyc?=
 =?iso-8859-1?Q?yQ0lJ0hYVKIMduCXYmW7pS7myncxG2Nca8DU7ayu3UGNiXLYMveW8Q/XrL?=
 =?iso-8859-1?Q?U37/jEjMHZm8VXn4dPIv3Zr6MaQB0r1jggy8Cs6R45r5FzS4p+3s6Imw9g?=
 =?iso-8859-1?Q?5a37B2cBouuL7W9mtb5oKWPbhqxl5kNJjrNeOz3jbEanUNdtmVFVxRZhrS?=
 =?iso-8859-1?Q?F3xfwC4noz1vs6OvlVOUrgZYTcVjgqmiR+qtvvczDAyiM6F7igGMLaNixM?=
 =?iso-8859-1?Q?6/pgf6Ps8QI2xQ1Wj6CzfUsXUAMNGTbqlP0Nw9feDvaPaEtKkH7KGMSdaj?=
 =?iso-8859-1?Q?0uICSoCCY8/ilzf2nPij+32mMGzQx6tvhyPBfzDSh7Xodb3NbSOfiLI6Vb?=
 =?iso-8859-1?Q?9jGIjjbZBYKe3BYtCALeQ4sdMVJ3mXv/ZzgDqrioyyLwQ80IMeugkgC/v6?=
 =?iso-8859-1?Q?rhNaNdx+9M9KXAKCoxfSFX7ItEPXAtyCLyycM86NBHxE7Rzpxg7F3Uf76P?=
 =?iso-8859-1?Q?8J55V7QbOKACJdaVoI2Fo+KbV4s9xnX3F8BUyzTULrSQG5emSv7U/Z/LRC?=
 =?iso-8859-1?Q?w86z7sV8llOvJPX9igusPbPsO8XP/8Q6jopdUbAU/dxoUxbJGgQfd/CcVa?=
 =?iso-8859-1?Q?4Sy/5QN1TxT4d8vIWEH7M98niwVoyUtxyhunbqjweWba+bI59XIaL/xReW?=
 =?iso-8859-1?Q?pEg35oTmPZwRVk76jsyQSiBmTYvYa52u/ZIsMG8E8Cr/tsjlKWjCHHHw4x?=
 =?iso-8859-1?Q?7qrctK7WYL024V0EbOT1F8LZOC3+OGzVLLJbsDLVDLDqAkeD0SeANK3lk2?=
 =?iso-8859-1?Q?PSLyBZ4uOfP8Ky86HnxPfbhU7QKxexR56mvMe0hcGIlony9urHWwlDat84?=
 =?iso-8859-1?Q?oPJTHbNzLiUZ3ngXLSKacsj1pbkRJbT3NYTMEEPKKv8xzpStK3YDBLrgBk?=
 =?iso-8859-1?Q?x94k01143Mc3pnZBOIgx6OTheqENtB/qztdNX3JIaPKiqV7n0vIfluH+nf?=
 =?iso-8859-1?Q?/t3vdaxUdSz6/LiE9j6h7RFNi7Z5//N3ht4xzyrM?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6999d810-854a-4a70-1f2a-08ddf4670eae
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2025 14:49:22.0988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IKRMT+3mRASuftb4mKKH3oq5THgYXD6YLM9g0cPoPaKY2NIr/ijDRp3H56w9CIijh6khEaPcJ7YZ7q1HdH+xpNOXmPDb//vehVhMLIUkHG0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7193
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

-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>=20
Sent: Friday, September 12, 2025 8:30 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org; =
Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.com>;=
 Manna, Animesh <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/display: Simplify modular operations with vto=
tal
>=20
> On Fri, Sep 12, 2025 at 02:29:17PM +0000, Cavitt, Jonathan wrote:
> > -----Original Message-----
> > From: Nikula, Jani <jani.nikula@intel.com>=20
> > Sent: Friday, September 12, 2025 1:56 AM
> > To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freed=
esktop.org
> > Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@int=
el.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; ville.syrjala@linux.=
intel.com; Manna, Animesh <animesh.manna@intel.com>
> > Subject: Re: [PATCH] drm/i915/display: Simplify modular operations with=
 vtotal
> > >=20
> > > On Thu, 11 Sep 2025, Jonathan Cavitt <jonathan.cavitt@intel.com> wrot=
e:
> > > > There are a couple of modulus operations in the i915 display code w=
ith
> > > > vtotal as the divisor that add vtotal to the dividend.  In modular
> > > > arithmetic, adding the divisor to the dividend is equivalent to add=
ing
> > > > zero to the dividend, so this addition can be dropped.
> > >=20
> > > The result might become negative with this?
> > >=20
> > > BR,
> > > Jani.
> > >=20
> > > >
> > > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Cc: Animesh Manna <animesh.manna@intel.com>
> > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
> > > >  drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
> > > >  2 files changed, 3 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu=
/drm/i915/display/intel_dsb.c
> > > > index dee44d45b668..67315116839b 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > @@ -173,7 +173,7 @@ static int dsb_scanline_to_hw(struct intel_atom=
ic_state *state,
> > > >  		intel_pre_commit_crtc_state(state, crtc);
> > > >  	int vtotal =3D dsb_vtotal(state, crtc);
> > > > =20
> > > > -	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state=
)) % vtotal;
> > > > +	return (scanline - intel_crtc_scanline_offset(crtc_state)) % vtot=
al;
> >=20
> > intel_crtc_scanline_offset returns -1, 1, or 2.  So the result here cou=
ld only be negative if
> > the value of scanline is less than 2.
> >=20
> > > >  }
> > > > =20
> > > >  /*
> > > > @@ -482,7 +482,7 @@ static void assert_dsl_ok(struct intel_atomic_s=
tate *state,
> > > >  	 * Waiting for the entire frame doesn't make sense,
> > > >  	 * (IN=3D=3Ddon't wait, OUT=3Dwait forever).
> > > >  	 */
> > > > -	drm_WARN(crtc->base.dev, (end - start + vtotal) % vtotal =3D=3D v=
total - 1,
> > > > +	drm_WARN(crtc->base.dev, (end - start) % vtotal =3D=3D vtotal - 1=
,
> >=20
> > This can only be negative if start is less than end, which doesn't seem=
 possible.
> >=20
> > > >  		 "[CRTC:%d:%s] DSB %d bad scanline window wait: %d-%d (vt=3D%d)\=
n",
> > > >  		 crtc->base.base.id, crtc->base.name, dsb->id,
> > > >  		 start, end, vtotal);
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/=
gpu/drm/i915/display/intel_vblank.c
> > > > index c15234c1d96e..bcfca2fcef3c 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> > > > @@ -288,7 +288,7 @@ static int __intel_get_crtc_scanline(struct int=
el_crtc *crtc)
> > > >  	 * See update_scanline_offset() for the details on the
> > > >  	 * scanline_offset adjustment.
> > > >  	 */
> > > > -	return (position + vtotal + crtc->scanline_offset) % vtotal;
> > > > +	return (position + crtc->scanline_offset) % vtotal;
> >=20
> > crtc->scanline_offset =3D intel_crtc_scanline_offset(crtc_state).
> > And position =3D intel_de_read_fw(display, PIPEDSL(display, pipe)) & PI=
PEDSL_LINE_MASK.
> > Finally, #define   PIPEDSL_LINE_MASK	REG_GENMASK(19, 0)
> > So, unless position =3D 0 on display versions 1 or 2 (where intel_crtc_=
scanline_offset returns -1), this cannot be negative.
>=20
> Scanlines can be anything from 0 to vtotal-1.
> So nak on this patch.
>=20
> >=20
> > ...
> > Wait, if crtc->scanline_offset =3D intel_crtc_scanline_offset(crtc_stat=
e), then why are we recalculating
> > it in dsb_scanline_to_hw?  That should also probably be fixed, but not =
in this patch.
>=20
> Not sure what you think needs fixing. dsb_scanline_to_hw() is the
> inverse of most other uses of scanline_offset.

Well, yes, we subtract it instead of adding it.

But like, in dsb_scanline_to_hw:

"""
return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtota=
l;
"""

Can this not be simplified to:

"""
return (scanline + vtotal - crtc->scanline_offset) % vtotal;
"""

?
-Jonathan Cavitt

>=20
> > -Jonathan Cavitt
> >=20
> > > >  }
> > > > =20
> > > >  /*
> > >=20
> > > --=20
> > > Jani Nikula, Intel
> > >=20
>=20
> --=20
> Ville Syrj=E4l=E4
> Intel
>=20
