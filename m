Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB6598BEF8
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 16:06:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DCF310E62F;
	Tue,  1 Oct 2024 14:06:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wh6dJfCk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8F6B10E62F
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 14:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727791608; x=1759327608;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C9yGBxfW4vBCHs3L0jhOht1B7RaiBk2p7RzNyr2fUzU=;
 b=Wh6dJfCkd+dJ5gWd9DjcQ6rMs6db8sJ6//M5M8MnYnb0ycD0c9J8leLs
 FnumwmhtBccyWFfp9xNr9akxEigarIJnIBXnobfjXE0xePgu3A9MjLNVQ
 XBJ1mqnnmQp4Eo0BMmqjllHKa9gEfbNArWhAJJIcu51duJHQUnyldFixu
 5K0gYDUoFH/IEgZYX2OgoxPdPdfSVX5fZI5hVldbjTxpxo4gT4HSToXsJ
 YecviPHG7EzHLGNruoK/0FDdmxWiXklFQNFJ1NSaY+Ig/wirIwh9u1p+W
 fM9K9+oRsS+N+z46rl6Q7JEL200Nsm0IK66McyCVMq5ZpVVg+HSA+Motl A==;
X-CSE-ConnectionGUID: jHpzsJzMQhiZEAEdcxypDA==
X-CSE-MsgGUID: +CZgeuPGSLWn38I0E/qmGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="30634115"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="30634115"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 07:06:39 -0700
X-CSE-ConnectionGUID: PdU4UBE9R26JU2OKLOjp3g==
X-CSE-MsgGUID: Wu9PHhIwQ0i+Ol1vyp/frQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="104460410"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2024 07:06:39 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 07:06:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 07:06:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 1 Oct 2024 07:06:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 1 Oct 2024 07:06:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lwIUhKE40R4X5Z5rqDL7l2bhsXkZa67lb/8Iy/tufFALhgxH8GlC/Iwf+4BPf4Ue3gX7mE04LqAX/bxkB+oOiooFVp1+6EY9ptCx23Z0kNeSg5awDW0mO6Sd9txO+sl1HxXLEwQUx9730k5psw7kBhXC9JN02C5oivLNyZdr7yy43yEC6jwdosJ1RG7WbBbjgSYGS8oVpva+h25ieZcALSDO01AZd6C9RlmsMACQSNXH3tTJcIa6uHWZL8O/nL2jFeteudBDjzfB6FzAnvrefGKGMM6zItcPY5TtbMtAf5A0YwURjt2bhcB3QVjdzwDeWvcSdQCAPla5FS/bFwA01g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XsfuCgR8AJ5EW7/87xw3eouTOtZw58xNPKbXduWGLDI=;
 b=khYATzmHxSbaEggnSR6krvtYTq7mtQG+r9hbl28uYcUNr9n7Q2fob99CkJq+sEfZ9o/cah6no81bmvQlG5hHFnxKv6X1Geb2nfi/ER+nkVDmWI3NMuD5C6gvrVd1n21cnWIKmQZ89qdroGh1WNzGEczH0BR5paMuTRh60HyoVz/VQs5eztupnVpS9YwAQrHFVm41rjY2cOmDOzGczOUtiNV2Lm6H/+4kC3Asg2GkWmACeOoFaGtUA2743Tsyg83zbdvNJuzU+4bftZYvaB6yS9qD0yz6GkAWht/oBAhjFaSJAa2NrcjmxW+XxfcWEqQKJXrMyatkqeFccbn+HK7/rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CY5PR11MB6535.namprd11.prod.outlook.com (2603:10b6:930:41::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.27; Tue, 1 Oct
 2024 14:06:36 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8005.026; Tue, 1 Oct 2024
 14:06:35 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH v13 1/3] drm/i915/vrr: Add helper to check if vrr possible
Thread-Topic: [PATCH v13 1/3] drm/i915/vrr: Add helper to check if vrr possible
Thread-Index: AQHbFAg7BC4hm2gbX0esNgw7drTux7Jx7UnQ
Date: Tue, 1 Oct 2024 14:06:35 +0000
Message-ID: <CH0PR11MB5444C2DE56CFF7D77F1DC41CE5772@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241001134703.1128487-2-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20241001134703.1128487-2-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CY5PR11MB6535:EE_
x-ms-office365-filtering-correlation-id: ab209f54-78b0-4778-3b39-08dce22242df
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?hKpXFoFohtgu2DDfGfcHCgXkFsgfLwnt8zKDbHfmXMRpi6CBRmkmWC2KAyvH?=
 =?us-ascii?Q?XCCtQ2soctDIBAw9yj92Og7pFjmqFlL1HT7s8Bne4CRhchGk9H5vJkOSgzhB?=
 =?us-ascii?Q?9ry9XDc4bq42LDSFZn+ZHaiYfUtPr1GRNQjv8zOM1IYkYn058FRuc7YJjaH2?=
 =?us-ascii?Q?kTAyCSe6XPTHxePvVaWAARazBUY0dj8K8ME3awjHUFQHpalE69pLJOHoaTqT?=
 =?us-ascii?Q?3io6nMFvXer1dPjwpmnv1aGcWNwKU0XBAt65NQMD7ZH8DSAyPWuyllobtUnI?=
 =?us-ascii?Q?BlQasfOcju4bB2BYfFIcwVr1Bd8wvJi3KFH3lWTjxzl3mnHv0huccG91eG5G?=
 =?us-ascii?Q?69RCd0Lf8QahNwdwORK/W2XXc/A1Z4FR5hcrvzHeSS6KO4s5TV1DoGqimaWj?=
 =?us-ascii?Q?ixKZQf7zAVbRt3dQueBnxSm55MJIQmsdDLO5Q8s2fYk+TgNi8Ytnc1k+Clbo?=
 =?us-ascii?Q?FOUVGwHKw51r/yrd18378kV6RK5hjl+2wl3SNPJV5KjEzh41wA+LIejBxTaV?=
 =?us-ascii?Q?NlbhbObcbZCv9n9IaS3xlB8kqC0qCs8yJgyapxUwGMA/pXFBblH1F5TtDBak?=
 =?us-ascii?Q?GzthHBqkqUx5sF1pmN96bLhrKk/R7lfANFdPKeKIhcxwVmNwPXOfUhBhyob4?=
 =?us-ascii?Q?DJRE8NPuZ/5gCgnwBv9dBVyXA95QNtvbQUG7bwCuz1QXbYi63mpl/x0E/42O?=
 =?us-ascii?Q?gg5T5vU0caxxL1MqOgMoqOJMc47fUTheDHm3/UoNBHZ6VYQ9eFwazwdvve3M?=
 =?us-ascii?Q?69fkX6+Phuxuos0FmRcLal8vzLklZWiaq4rw0gGjedabkYpsHvT64Jdl2KZF?=
 =?us-ascii?Q?Y+lCnXjK0fJrWR9CzKzQzK8+JjB4OgXP4fCZfx7VCf+UikbbmdX5X6xHHrq7?=
 =?us-ascii?Q?J0qHnXxRXXzycMgxC7vrKm4gLBOhup/zVnRYnyIRSQ2VZ8r5POWLAJqNtn9x?=
 =?us-ascii?Q?9Krp4Zu0TWkqkFiZ6tN8Y0U68gxwSM5Vb9HFmHHqIOVCqUYcKducXMdv/0kg?=
 =?us-ascii?Q?mbX6A8C1W+LiD0T6muafuOu9ziJmvu1ejF87t04jnVT1SRoRIVR/8ThYMjtZ?=
 =?us-ascii?Q?lIQXtVWlg0k976XRwGbsWN+V4FUnsRdgQHbENtuje2rVeC3saxA8Wj2tsHWm?=
 =?us-ascii?Q?floFqs62NUHzEcipy6yi/49w92hOum4VGJlaKj2n0uyT0QZYPP5z4vw84E/w?=
 =?us-ascii?Q?uNw7LWJLgB6DWDYwAX72wDJBg1PP91YPtmz4492/s+mT9RpcXrGgXJRJbrAX?=
 =?us-ascii?Q?YKzYXvNqfsp9WF3pv1UWFFTg9is9ZKRVo3fTkWcoxAxyqOEVovXZOvE5ltpC?=
 =?us-ascii?Q?PJQHw1mRD4VSJR2G+Gs5bBcXs7xmqXWGrwwIC4NXkrgAjA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f6Lqs1Bq0llBf1W6Cuv/VBu4YdOdJVf7wqHpA4LhHwn8v4y1LMcUytAtYP56?=
 =?us-ascii?Q?cIX1woG4bC82/sT/O/yTXEDoSn1QkwQ8J5lpXSf+03uMwAHs8r9/igVQNPFc?=
 =?us-ascii?Q?qW0cmhfomlZbe+aptTty3M8puX571TThu67niT5RvkEiQa/bUW7nDmWnUFAf?=
 =?us-ascii?Q?axJ5xi9nvzr4/CLShprFXIsWEkV82NAEo0k9amTf38KjOqfU3e8I++ayBjFL?=
 =?us-ascii?Q?2pBuSnfcc1Fiklc+Qa5ROmCg51xbFEWUzDTBLhf+twrYv3yJ+HKeDvirk96z?=
 =?us-ascii?Q?samAaHro+hLYnRC3PKeWCFLHKRDHyzCpyw7msduDK4cctFDKqI3PRaUJuI6k?=
 =?us-ascii?Q?zYhGyEaBxLnlf2cf7HSv+DZRWyv+WvINimdQHnoEaYCMSgmL4/wQzec3iA45?=
 =?us-ascii?Q?yypAZRaVr/F4FEAYjIsLpZRJF/U/B3S5pFsCv/TDrLe4gIJRocU/RkdBZzn7?=
 =?us-ascii?Q?+Ny2cXPWcLuPANZvOOldz/imwoC5W7toTQI1Xc4TlyqUCuFOQGj0L7NhzQdR?=
 =?us-ascii?Q?9u0XmW/E0N4L5+dJ+B/LnRn+JaOiP7oQpkWfB0CdMIOPWzn6IIF6tzshmATJ?=
 =?us-ascii?Q?g46Cv57sbQKaBHuK8SJ5V8+HMrHM0MvuUT37Z7Wyt6dtt9qlOsHvf+6jsrXi?=
 =?us-ascii?Q?DpL/GZGYlcoCeRCHI1OLXz8d9E8HewAFBniMjdtNTslpSVFMhOwauiT3itaw?=
 =?us-ascii?Q?lfv09eCyLWtdQ4O/PwFKAsu6znutgI3QI85KKqYFu8GJUehFIzT5ViMSkwMP?=
 =?us-ascii?Q?S1t2JJtUl8Iy1WKss6EwaGy+O/gwjAc6eVQCY33KVHrGMignJqtB4ckNBu0S?=
 =?us-ascii?Q?nu5vYS9Xdi8Hczpr0LkOT91NG5o5Mw2CFQMoNcyfC9hmhLQqDMyK1eKdfFSj?=
 =?us-ascii?Q?DR5kcyqTtf7OYNRh/NiHqI/Wgbl4KMkNPeMgYx46QrJIiEUu2LXhp3cQQ3rm?=
 =?us-ascii?Q?06VSy/9rKfkmsBLsRSZEjtqWO/nTA0aGniAYlc/Or6IfDivwmF8GoG8rOaOc?=
 =?us-ascii?Q?TzwgEzv3NjN0L79dHDthM+cJg4L7W+/5puwpY+Bug6gUL6UyzJK91vPDg8rs?=
 =?us-ascii?Q?h3tassrI/eakmH5jCnbzUtp//wqVPzz5lbumgIFP0fcZsAlrLYKMqpWINnMa?=
 =?us-ascii?Q?c+bFYCN8cRwPgZP7AAWg8eeo+dDX5EC3wKwGJ8ozVzsIr43QSRt9oeRYIiXK?=
 =?us-ascii?Q?9RgEJMPkrGPyWaJwLXFxo0N4lUJzLj475dy2xVSRPtE8427SetRSbFr4Qomd?=
 =?us-ascii?Q?j16iyGFgr5/V+sZgNsNFzGPBOedEiytPMQfWYY63Awm3VwSWiB/MUzbjMmD5?=
 =?us-ascii?Q?8MZaGUoVuQ81mZnfvQRto3D2z2bi0MqDLl/FCFxDnWPcpVaidosxolE4d9cz?=
 =?us-ascii?Q?oaR0CLw5JRd/1tR+ge62MC6sWRkiTyvK0nW4gL/6DdGCt1PJ+/lyTLzasaUt?=
 =?us-ascii?Q?edfngmuADwZjLl37pyXwgQ1/xuJhylFYYS1YXEcRRxYlI2qkV3YHyuMCNY5z?=
 =?us-ascii?Q?8tc9oRLmo/WlpWC7qdBicOrXCAa214+JaqgOcekmL2cQHoeGDhRzYjE23aC2?=
 =?us-ascii?Q?0uhLod+5xmwOMi1pDo+18D8cG2cldn1SBTmjFCsv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab209f54-78b0-4778-3b39-08dce22242df
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2024 14:06:35.7902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LTd0hNb0EC/u4nlAlmqLmngxoCNb5PEZcwsATO09EYKxM28HeWQNKx/iuggOhmrICGNVC5vsmdDH6kTTplFT1l9qm3ThwT3ihsFpyrTihIA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6535
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
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mitu=
l Golani
Sent: Tuesday, October 1, 2024 6:47 AM
To: intel-gfx@lists.freedesktop.org
Cc: Nikula, Jani <jani.nikula@intel.com>; Syrjala, Ville <ville.syrjala@int=
el.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma <uma.=
shankar@intel.com>
Subject: [PATCH v13 1/3] drm/i915/vrr: Add helper to check if vrr possible
>=20
> Add helper to check if vrr is possible based on flipline
> is computed.
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 7 ++++++-
>  drivers/gpu/drm/i915/display/intel_vrr.h | 1 +
>  2 files changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i=
915/display/intel_vrr.c
> index 9a51f5bac307..79db30e31324 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -56,6 +56,11 @@ bool intel_vrr_is_in_range(struct intel_connector *con=
nector, int vrefresh)
>  		vrefresh <=3D info->monitor_range.max_vfreq;
>  }
> =20
> +bool intel_vrr_possible(const struct intel_crtc_state *crtc_state)
> +{
> +	return (crtc_state->vrr.flipline) ? true : false;

I think this can be compressed to:

"""
	return !!(crtc_state->vrr.flipline);
"""

But otherwise:
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> +}
> +
>  void
>  intel_vrr_check_modeset(struct intel_atomic_state *state)
>  {
> @@ -281,7 +286,7 @@ void intel_vrr_set_transcoder_timings(const struct in=
tel_crtc_state *crtc_state)
>  		intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder),
>  			     0, PIPE_VBLANK_WITH_DELAY);
> =20
> -	if (!crtc_state->vrr.flipline) {
> +	if (!intel_vrr_possible(crtc_state)) {
>  		intel_de_write(display,
>  			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i=
915/display/intel_vrr.h
> index 89937858200d..af921dda4619 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -15,6 +15,7 @@ struct intel_crtc_state;
> =20
>  bool intel_vrr_is_capable(struct intel_connector *connector);
>  bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefre=
sh);
> +bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_check_modeset(struct intel_atomic_state *state);
>  void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			      struct drm_connector_state *conn_state);
> --=20
> 2.46.0
>=20
>=20
