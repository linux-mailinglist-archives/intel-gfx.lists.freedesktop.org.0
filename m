Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLgbHZqBhWnpCgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 06:52:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4683FA77D
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 06:52:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C51410E0A5;
	Fri,  6 Feb 2026 05:52:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BhABhVBX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 828B310E0A5;
 Fri,  6 Feb 2026 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770357142; x=1801893142;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0EENLofe8vLWBm4wZqS7sYZ/Ta+g6J3a1Yt2WSwRpZ0=;
 b=BhABhVBX5hDOZnS5ks7u7T7cQnNbi6rH++nZZdmjCkGfGF4xnBDnqss0
 anb0woazl1aP69I6ECGyRH6ZUnQnNzYHs7rR9fvV8s2twLoJ5wLZ5SwJ6
 feY6I5ihhQqF5Ayws2pLLUfhzN9/nCx5qVHsWbLHeeuQCImzDTm+cTn43
 pocIkpLY5++jI67WNFQrTK8PAqUlZNRiUfjM7inbMIohuWssHU+X9PlNM
 Tw8Qzpl85cdWiyPvDVXTP4D9ekqpYHn7uysIqgWYFB64fMcSWIDX15kG8
 mdbzI5KjFeyAEYAMfjcUiH5p00Lvtv1Tx81xSDp6p595HfxImFwGdRedI w==;
X-CSE-ConnectionGUID: EUmMS2MaS2WlXrb7bT/7BQ==
X-CSE-MsgGUID: EdBruMW/R/6X325Waltxhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="70758871"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="70758871"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 21:52:21 -0800
X-CSE-ConnectionGUID: wrrR1+aLRJC8mVKEJ7WH7Q==
X-CSE-MsgGUID: 1viZg7mORsORKsss+HGbzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="209871776"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 21:52:22 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 21:52:20 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 21:52:20 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.45) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 21:52:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DTll86/OD1HwNcID7BaURN0YiKWgDADDeDpVoPILrdViracYFqPXecZZ7mc6zCJmIj6nsKHQKDAIh4ppYLHa5muz9BZsWYw6xOD7eOp/ZFEJoQBvoqilf5XNX4sOIH+zVUrc+rOHQl56MEy9O8VgkWMm2I6MoAEL6fwCc+LUrVk0AXx7o961a1Yra/xr7WgPkJV5cDQFX1SAKHqO3QxeT6sgEmgg1xrfD/pMHM/hZXIJxXCzDB9bqByNp5a3vSgx48o4549UxAN/Jtvcv2/i2NdMmAKoakDI4X6A6aP7B5I6KaZXR/SzBAAVsHQWnAekS7JYYiFYLNhGmo+uKL7WrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tkRv6SLJRduAg5kovFvmGz2C4ORbFaA335QKb7S9VmM=;
 b=Mu3QBm9B4Eg9TO/yup0EYm9uRDzwQai6OYG+MDVGD7CCiSPAwf8XkIIbAaKUdIjm/Bv0y0us/ohx7ExLaeiywKiVNInmb5OoKVMp6GbTXHC18FsPvjvosJOMJMDfwUV2ZMFC8ZJvTHcsbhyYcYBy7XGzlFUFair3mxCUGY6MdKjOxzvLwYD4DEw/RwiY1TXEp5BhANkB9sJpm29BtiV3KeoNApcGmGHVeNW+LYbLvw/GwdNkQNQb982T2zZIGcO5a/1Fyf32U+OPTpRl0sDs1kM3lIUNTF6Pvkw/6QluD08t3bisQwkeEVHVDYXlguzwSm4YBnMuEjb9VqGDwQKvNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.15; Fri, 6 Feb 2026 05:52:18 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%7]) with mapi id 15.20.9587.010; Fri, 6 Feb 2026
 05:52:18 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v2 08/10] drm/i915/cmtg: enable cmtg ctl
Thread-Topic: [PATCH v2 08/10] drm/i915/cmtg: enable cmtg ctl
Thread-Index: AQHclRdPzE4G/rpdzEuj/if9mDwS4rVzzqWAgAFgdSA=
Date: Fri, 6 Feb 2026 05:52:18 +0000
Message-ID: <DS0PR11MB80495CEB4F848E7D386E7509F966A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
 <20260203134407.2823406-9-animesh.manna@intel.com>
 <43f64e1ba3fcb988272e47a2e6d10e1a35a7d428@intel.com>
In-Reply-To: <43f64e1ba3fcb988272e47a2e6d10e1a35a7d428@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|DM4PR11MB6455:EE_
x-ms-office365-filtering-correlation-id: 2dbec57f-9870-40c3-bc6e-08de6543e334
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?t5W1+eTZ3SyDJvY61IMoKaAihFphis4tHYEToy61fPrANbZVYVwIFfQtEM3j?=
 =?us-ascii?Q?bptlkRkYBeJ4KpUClrAKdLU3gog+noFg6mSWLLFI5TIQb40WJjJsFC358Jk1?=
 =?us-ascii?Q?rRrcXATitHvHabUJs9VJBR5/8OsaklbuOGoIHeZG4TKdRPZ5vPoj6PTThUcn?=
 =?us-ascii?Q?9wniw8bVeIXXB2f4AN8LVjU+0gZYZVdt6WRszMqoBOUR/ZNcnp+yPT5nH03+?=
 =?us-ascii?Q?iaGHFjKKOqCTEL2DT3KVl6kMubLb++TymrN6j+IdnNeL+vjhrHBQJxnS6E4v?=
 =?us-ascii?Q?KU1ZNQhYiy0f1ZwP1bld2yoNZiHvBuS5sC+Ggh4aWHnbmhq1q/dOguFUE8ZV?=
 =?us-ascii?Q?Fb3wofIufXjImlzJOfpIyZCpSGWroDdvmHXQFwLUubCnSxKazuvjneR4GKXF?=
 =?us-ascii?Q?B+9vof9R6p+9EtGWwd79vqXl4ZRsvCpfk29tuYx13aAeJThovRiEmYIZ1nLv?=
 =?us-ascii?Q?G2HvxRr0asX14/ikdO+ghW/TeOTuCj3r+X/q4Ill7EQh9KzmW0MOZUZchfGZ?=
 =?us-ascii?Q?4QhelNML2/DDBXw5wWLfRr11UjlxyCyaXGe9HCAaEYEOhYbRp+w6ylwUIxy6?=
 =?us-ascii?Q?nbohJzkCBdhJWGGUhfJNj1FSPuLK+ShDXMlSxkQr2GKtWAZcm/gSzH2PkcpV?=
 =?us-ascii?Q?SixMYQmOrsWORs48VTJEfsLiTtfUx+vbA6CN1UssSt8b0dH4U9WoFp2jILw1?=
 =?us-ascii?Q?SLi6tIaAk1OcxWnyBHHKs8i4kXjuGOOlYQ1y8722gaCZKqXeyqg8RaFHmbxl?=
 =?us-ascii?Q?V0sUasurUHwXk9JpV/Hmv+zgN5YjavXpqsHZL8uAU4KTKNJWbvo8X4YTKLKO?=
 =?us-ascii?Q?VEMhRSn48tnT+AblshwUcTq2P9qWMF0RfdWh/6BPpRI5NfuwuLZc4gArz8Lx?=
 =?us-ascii?Q?WhwMWpMgDYgHB87PljLMVu3fgBvS+sr+W9sWSj5ra30ywWCXbBiCW8GXQUnT?=
 =?us-ascii?Q?EgI2Vc98zdUJZNZ4rsstc/L9zO8phHA2tj5VdtvOYBIC1yML2ZfbH+7cgvQy?=
 =?us-ascii?Q?pdRJB9b5xZZJFqxRbJ+6g9SATWCu9SVj9TLzpq8dHH97NYS4jZvNQfhoE2Ry?=
 =?us-ascii?Q?x7EkA0RDsDtOJtivZEscu/xe5WNTZGmPtOtlBMJFIFpKSibVFcak2qLsHMwZ?=
 =?us-ascii?Q?vtCoI2wb3Xqwyl+1q46J30mps0BLpUp9nZtfgIq295UyN1rwpAbltVu47B1J?=
 =?us-ascii?Q?qR2wHUtLkIMO6WcjDazC3lh0dRVJC/Et1Ffr25ygKnS+zAb7YLrkt7oxzYTf?=
 =?us-ascii?Q?wKArs7wmSD0szeuKSQYh2b2eNEg4NAdZls4vjlMEW0K5lOxcLQHKI6xaHs4y?=
 =?us-ascii?Q?9mP7Jkg2y1/bXM2cYn/Kzx7Qgl9aigzU0hTDYvfiJ5PtgC0WGAoRZ4HgVetl?=
 =?us-ascii?Q?83381O3VRxRy9e04wnw/OlPs0iV2riXQrosyESCcMVYXYqyIpTZg6xTdxrhd?=
 =?us-ascii?Q?aMO1sZCN5ILJLgARd3v+Os/97qlRSQauwpihT2ELBCfaLXsjo6NZ/xacFgFj?=
 =?us-ascii?Q?Sqq2mFvt3nQ1VcbUr2RJnPGgQZ+9UIv+AHJfG/hOEEXEeW+BmZ2jQ6EtAYvJ?=
 =?us-ascii?Q?ZfDGtDg8JXYZLTvGlFEh5328j/sSPKq98Vjfe8WLO8CVXHzGrSaXZUPMjyCu?=
 =?us-ascii?Q?PpJ83oWItj+31b8OmgotJRM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0HSAKWBTO7WTJhTZOmMJrj+6ihYBHezyfj5IhFx505WKZysp8cPXxpTQPhda?=
 =?us-ascii?Q?aYgLO6EoNsiaUybMtI3GEnV25K1sFOOsG91xUaAlDmqHJcBBWRWCBLX/Iwfn?=
 =?us-ascii?Q?ocOP6iuovVSFxdEe4N2wZlBRyeURXcVs0fsjJ0t5IglVpa1sZhWVj5+NMxpv?=
 =?us-ascii?Q?12ab9Hmu3sub1QmOdjJPwaSlussZURQNvmHZzKOXKbuELLWkioth1+Z29ipk?=
 =?us-ascii?Q?ZjwGLJRuf6vLKeC6budjNt4+19eA0eyQS8g/1CH84hyfG/nQR63la+L5W3dU?=
 =?us-ascii?Q?O2qK0qrDljou6OQ9qk76mtSSRdQDugHD6htPMl1i46ubXlg6hgTCfisM8rIG?=
 =?us-ascii?Q?zGUsvQCQa/jmKvKsVHfU5QHvdnKnD8osDZiQwp6B0O+k9wtJXJjANx1x/Y7i?=
 =?us-ascii?Q?M/ovX2LeU19ASO3ab3jzjHIbm5fVk5zQAr2tiP5tMINZYRePcR0O/y5NSMPi?=
 =?us-ascii?Q?kzYpBnO/ZI7DZ/7KWMYIyc/S+mDdjJccQ8HzpEy9dseATWkcdz9LTKO1u1UE?=
 =?us-ascii?Q?tr03Yk4BsJYM2jsI42zmEoI/RmlspoCpKI4HXm5q+U5BqWZpsVZmmaCQbAc8?=
 =?us-ascii?Q?rrsy9ASbD/1lp0qSEZlJt9oId8NGYmJiSQolM3+AxsvwWcL5aGMMmC31lCIV?=
 =?us-ascii?Q?b0AWt8DB0goaIzoctjBiM7gIYfSrugbuNmmjWgx7oGjefUcz8LYXgnzEZBDa?=
 =?us-ascii?Q?lkZ9QAhrE/QQLxVFwkQ1kDaFsfnDdpObKNDL8oua2u+E7JFX1yXfhtowCMfu?=
 =?us-ascii?Q?BFJXmZBDY/C9D0CBUviH04vV6ARcUkG2DLs2+jKbqbgGwkvQRnj5sQ6RJRJH?=
 =?us-ascii?Q?GtMBXLeyRziXQedzk6K85Cmo9CiBeWpfqcsmIorlXjTjh6AGzv2oljcimV40?=
 =?us-ascii?Q?DlI0mBOnVS5ygYcDkYRj7v4OP2BWA+j6/3fntedsg7kB2jIrwOgzrP1t2keC?=
 =?us-ascii?Q?iD7saPXTUeMiAF1vt1/Q4CszuUALl867DmVEiRukH2pVYHSuDFV5aKoUopAI?=
 =?us-ascii?Q?l0z66nLXJdHRKYS06sD97AEj0U3EkLHFAJks5M9Y0q0jovqDq3mN45nNWTdp?=
 =?us-ascii?Q?k26ZtPuFu/LmgZtowSNWGKNhvnQbeXtX0oXg7nL6YJxDXShZiiyIj8ZCLkTM?=
 =?us-ascii?Q?SdNKWG17TvMak8+rf2RRe9C106HpS0cUVf4mcdeGs/IuT4WQCBkSvyPBFeHG?=
 =?us-ascii?Q?Ad+nS+5FAhTH6h+Y1ycefFVmY/IWDvByl43tSzBYVQMTOrKEF72N1yQkz7P4?=
 =?us-ascii?Q?6Y2u+xtjhS9zFO15iqc/uJKZRBw/upJSbcG2h4aQqRnu5qEDQHMvfxUYBQs3?=
 =?us-ascii?Q?FOS+perPs9RQw9+hLbYPs4kR1K1TIgAdzg0NgoCnpjO4d7OF1kSRSfXTR4UE?=
 =?us-ascii?Q?3yLvmViCpytdkFLGQnHhZO4/3M4eFjWTcoOj4f0PE2kiUQY6vjPkNY+8xwYi?=
 =?us-ascii?Q?TF6DZojXp2YQZ2pROxbrGSIqF7pHx1N04q84HReNEtAKX0tiwEPRxTY4W5oN?=
 =?us-ascii?Q?/obzm4MKR0A9H4WnzjQthCVit2fbNLSKd6bwAEz+JCZ9KxWxhmxxEtr7scAH?=
 =?us-ascii?Q?3kIKeO1fZsj7mp07IDwDdqqD3HCgnHw8pLEQyWR325O06LzwuMDeQB4JJw1j?=
 =?us-ascii?Q?Q5rqpFTEEi9I5AuyA3R4gVoNMN9BOLEDYeYgx7Ju6pbgMmBsxTZDlXvikzAC?=
 =?us-ascii?Q?KyVIXyXxj/xiLNMZPrnie6FDc7ffOZ+xQTildNy3UAmGz+xxPXMgolD9V3kt?=
 =?us-ascii?Q?9EUCuSWMJQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dbec57f-9870-40c3-bc6e-08de6543e334
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 05:52:18.1973 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: URYr69dzMi9bL0tAvuCI7ZksjbF9lPQZn613+XAQVoOL1En7XhwjPwDuSHzszXQm4O4rStK7PAqzqEeaoiamNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6455
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D4683FA77D
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, February 5, 2026 2:20 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: Re: [PATCH v2 08/10] drm/i915/cmtg: enable cmtg ctl
>=20
> On Tue, 03 Feb 2026, Animesh Manna <animesh.manna@intel.com> wrote:
> > Enable CMTG through control register.
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cmtg.c | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > index 3af4aefc760e..f7364c7408d5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > @@ -244,6 +244,19 @@ static void
> intel_cpu_cmtg_transcoder_set_m_n(const struct intel_crtc_state *crt
> >  	intel_de_write(display, TRANS_LINKN1_CMTG(cpu_transcoder),
> > m_n->link_n);  }
> >
> > +static void intel_cmtg_ctl_enable(const struct intel_crtc_state
> > +*crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +	u32 val =3D 0;
> > +
> > +	val =3D intel_de_read(display, TRANS_CMTG_CTL(cpu_transcoder));
> > +
> > +	val |=3D CMTG_ENABLE;
> > +
> > +	intel_de_write(display, TRANS_CMTG_CTL(cpu_transcoder), val);
>=20
> This is just a single line intel_de_rmw().
>=20
> > +}
> > +
> >  void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state); @@
> > -261,4 +274,7 @@ void intel_cmtg_enable(const struct intel_crtc_state
> > *crtc_state)
> >
> >  	/* Program Cmtg Sync to Port Sync, TRANS_CMTG_CTL */
> >  	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder),
> > CMTG_SYNC_TO_PORT, CMTG_SYNC_TO_PORT);
> > +
> > +	/* Program Enable Cmtg */
> > +	intel_cmtg_ctl_enable(crtc_state);
>=20
> If there's intel_de_rmw() before, why is this a function?

Got it, will take care in next version.
>=20
> >  }
>=20
> --
> Jani Nikula, Intel
