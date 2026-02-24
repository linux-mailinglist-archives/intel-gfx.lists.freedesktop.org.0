Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Jc1CK/vnWkHSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 19:36:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 694E418B7A3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 19:36:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFA1410E60C;
	Tue, 24 Feb 2026 18:36:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dKaNL5VE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C553410E5F0;
 Tue, 24 Feb 2026 18:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771958187; x=1803494187;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NLel0VwC1rAh8m12hJBEwrCA8OMHI5HcwFIoJM5qWN8=;
 b=dKaNL5VEcCSklWCU/orP7CS6cgqH7MtEP9M7ffThGagme2ymvYIuQNF6
 Kbst6EISGku4E9YLibdBONNydyQLH53zCYpz5wf4hUqqdyRKAS2DECQfS
 8s67LA3pjOZzIDUgKDOZy4zTMS3tRvfM21dg+tK+0jkz0tGArR2vYEtLJ
 S/ZWtZwvspMWPloABkh+mGmi0Wxqvs2+mmYz2Vkyfh2SpgX57uXSWV7/i
 qxW7o0e4+0hbCwb0TuUrCYnadEy0GwR7uaM+IZxV3t1pjH5r267YWlyqa
 V/vqwH+rxG0N5T6wKm8hfePD+xEuE/yRHQEN2BRO0vgbsy02qb9eljgXj w==;
X-CSE-ConnectionGUID: 8MKn8heiQ+O+/Ikqp7L3Fg==
X-CSE-MsgGUID: ymBR2FEZTd+7LP8secfiWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="75592255"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="75592255"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 10:36:27 -0800
X-CSE-ConnectionGUID: /Uysbam0TV+IkdFEaap9JA==
X-CSE-MsgGUID: cHzK4aVoTG2m0pDycUDTOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="214332366"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 10:36:26 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 10:36:26 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 10:36:26 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.20) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 10:36:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fS+L2FQZGwRf5Gw9HQQd2Be/Hl+uacMWan94eWqVQ2gXoPH2i4FAi7TAcsgJe6leoydUqGpGVeKzTd0Sm45yTePkVZI3qUErXsw9rLMOsvQ1tZUAiGHWPfg+JGOzxro+aD+tbWCO08e5vwH4QsWmUfC1QGqhQknLGzZgIYRop9fAlLP5W+DDh+hsrF/3nTqVIH9OQUYOwqfKpuQqEg8Jits9RF34XqWBN8HMV76oQYRB4/xVPIOMrg1jXH3XTb8CJKQIfXhOGp85XGNmx2c7Jky09Ry+W96xI2lCJWIMYdgiRTQ3lvit8jfi1TZXWUMhtpigiE1eH7zv5YirrsNIFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fl8GOjv8B5xaI5XNT3EF1QgwVISSUhV2L4hARqCQXkA=;
 b=VoHgZLVKrI1i4/9oDKuX2zznAy1ijPffR6jjuSiVOLnGlYarB/tEOoCqNwCEdaU/kD1kFqnRwtTV13M/0UxcNbfPLBtOBva4tcMmBZ4xQtP8L698e5rnBSlmoFMGj7GRVkRMUSEEg4PSp+paJwPvHwN+xSgYbFlBKBI6Aql0yg1DMZ2E2PYQ8eQJtvBx8iLXgDglG5lDx3Ac9N50S+VmY4ZtWW0AUPVYcyfeJVisibZz7JrkoCWGeZ7IBNkCWZNRRR7MKdqbzhcaWY+V2Ig0L/ZLVAlaw9rojPbkYZzvynp/GPtF2VTmzTCntuLsksgkMf7I/p3saQvdBAbDdK4r0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6347.namprd11.prod.outlook.com (2603:10b6:208:388::6)
 by DS0PR11MB7957.namprd11.prod.outlook.com (2603:10b6:8:f8::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.22; Tue, 24 Feb 2026 18:36:21 +0000
Received: from IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::7bc5:97ab:e0ec:1f87]) by IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::7bc5:97ab:e0ec:1f87%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 18:36:21 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH v2 5/6] drm/xe/fbdev: print info about stolen memory
 preference for fbdev
Thread-Topic: [PATCH v2 5/6] drm/xe/fbdev: print info about stolen memory
 preference for fbdev
Thread-Index: AQHcoou5EqT/kEwBpU22VP8mBV/ObbWSM6Zg
Date: Tue, 24 Feb 2026 18:36:21 +0000
Message-ID: <IA1PR11MB63474FE7A1F224ADB1F3A154F474A@IA1PR11MB6347.namprd11.prod.outlook.com>
References: <20260220170908.201422-1-vinod.govindapillai@intel.com>
 <20260220170908.201422-6-vinod.govindapillai@intel.com>
In-Reply-To: <20260220170908.201422-6-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6347:EE_|DS0PR11MB7957:EE_
x-ms-office365-filtering-correlation-id: 56b222bc-43b3-458e-0087-08de73d39b4e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OuLn6wereq96nZfohfLsT9dVQHK/pD21Kzvaf0jfzTFga1qT5r7MSm0jnCe/?=
 =?us-ascii?Q?kMfxfoh2VR517Ub/facnFR7rttQDyXxjpweHV7ZE88c5U6eeaWOQoKcXUWMM?=
 =?us-ascii?Q?anf6UiEtsM96Lehj2QjfvKGY4Ia1ck/zAmmZU6Hp8QRNHeDlOyHZhTaszpfz?=
 =?us-ascii?Q?baxRvW06e41HwykgeInGOwYiQ2ZtQX80NuYT/xBBHY9kL5gVo+VylHYEV4NY?=
 =?us-ascii?Q?Tc27zXvI4FzCkC3n2ckrE78zz804zTX+rVp8Q5IKPrVWU2vP7ndEyvFoYN9m?=
 =?us-ascii?Q?kj6RR4/WutrMpsAEXpsD33/ZGiA7Djx0TSVzmPHnSLwmAW4ebm9zYaH7VGW1?=
 =?us-ascii?Q?1Vne2DiesGB4iEBDVyzhWbp5znMSqOA89/Io9OmKB7+U1RThQ1miMYi62avQ?=
 =?us-ascii?Q?zl2No9rTosLT332SFfvds17lEj8tPsj5ZGX/lN1yhXpITwewaBzt4o7UOxwb?=
 =?us-ascii?Q?KymnWSy/W45ew8FdIiRpUT8LdK+Sg9Ifnq0HoBzAlFCmekTxXTYa/wGIPyU4?=
 =?us-ascii?Q?5SlYJ/W3OKmYGAJuxR5gxeZWuAg9BOzW+k+0/djPvAvi/6tx2bjvGT258EqK?=
 =?us-ascii?Q?80ZkHkX+ivdpF/qbABN9/0nmQm7McI1r2e9ok2xXBxtrxuo52a1ApraxHTZM?=
 =?us-ascii?Q?FkvwYp/cEh3sPvs0tbl6efvCQlvq3t88LOvvXK97Z2CMI3O69+P65ac2DdvD?=
 =?us-ascii?Q?kEeS79Xd1lfnY8tCeNfIu5ppjIvHeMVuTqM0BVq6PEvFlgb2Jrcj40Qjr3ZY?=
 =?us-ascii?Q?Vk9jLvMRODGmmLiC9WNAtXFLi5f6QZXZ7fbQvLiTSyuhqJBMeHz+wayNvo9J?=
 =?us-ascii?Q?rCMbw2LgItpCKjknEE0ts4Ffd/7hwCpH+ESJiXscVvDqBXC+RjuHvateFA4P?=
 =?us-ascii?Q?YceZm+HcsBJAEZqkcjjIxwm0PRRDIBtmZhkmVEiUShzRa12KQaVJhCjDYcsJ?=
 =?us-ascii?Q?HqEQQaQ5+nwAZdYpRq/6DTfmshKvgwoC0SM7Ji6ihJaiy21v93RycthJgLKI?=
 =?us-ascii?Q?fONCQTiQHgWtm7prztmZeUkV90MnD6YCSUA1udlMjcTfN/NWO62lxRssqvGH?=
 =?us-ascii?Q?2pyfWLeZrIz4kh9ucYLTZMQncRkuG5a6XjZlFIIyMIvBp9ncMlyWwjnD4Imt?=
 =?us-ascii?Q?KH0eU/RdY/I8yrXvVQGzi3IaalYh4r/0+qix9KlTup8SQU0Tu/K5jnyU/vgc?=
 =?us-ascii?Q?WlZWYwKoZ30RaEI2iYUje8UoKfbCxecuTyJXoVpvGRmd58YwxqbWPsniac9O?=
 =?us-ascii?Q?Ko+9jHK75x/FA0lqLNWBz9ngBUoKMYkyIvWNvXwCAg0AE8p7hKDgcZxVpbnj?=
 =?us-ascii?Q?3zcfnnVqGGogZG0mBXEqpOC8jKlgwupsX1nLvV/ddoWYoi1wLIZV5ca/3zVG?=
 =?us-ascii?Q?dqqPMCtGwGHuJg4igr3liJmW3mGvUk7vZc2sVyi+FllXjcL1d3MN/8IRIxQk?=
 =?us-ascii?Q?mrpnzSiqMv9LPiu9Ez6CQOcaJAK/bqvxOjf8m+9l6/lsDuIMTTA4OFGkl0sG?=
 =?us-ascii?Q?BClyrXtStfoar7SKsTb8DUzGK/OlgsmWhEnvzmGzaxeLX/nzr4VoNB6evZse?=
 =?us-ascii?Q?m9tt0eGw4exJB+oPM9pmBAAYVEfo7p8YMQlMF/Hxm/wQXjUN1CB1Qh8rHNjM?=
 =?us-ascii?Q?tAUOHu3kiWx6YDKOqEufu5w=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6347.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VAUdQ4NVh85A0TQP9C94CXgwvWAUpCqIPm7DWrSLp4BFBByGtzEvsR0PQFP9?=
 =?us-ascii?Q?S23hQp4s9MbhLq1hJZZTpec3i7QhmHv8qN3AP086fk4qPRo4eakx33aBbQrx?=
 =?us-ascii?Q?hwu/DbWXgME95tljYJKTc3pEvrw+xYg3r3l/YdJkEUlWRhS/fV55Co+qHhqO?=
 =?us-ascii?Q?FepAVfl6Bh2g2zrKdJvptJy8RocKVQwXGgolXXH/jEG67IFWlTlSH0yFzvsc?=
 =?us-ascii?Q?lcnNQxcSmRu8yaGGQBpK34csKVCWMlksYB9PMxcoP8sI9kidtJw1RtBGUODN?=
 =?us-ascii?Q?HHGPQgS6zITyyNxGf5yqJkdGpvR0hc7t0nUEUes6As20pSFcUq5aTHphnMyg?=
 =?us-ascii?Q?dHkbdSjeBX2joVGc3l/WEMDiNDvYM1Kmh5OXjycH0heyTmYObFGbPtBGEMPp?=
 =?us-ascii?Q?zF5cJRbcFcRgU6BymW8mVnRiMwHMFFhfXXdCKSrH2hj/HqU8xbamZL+Zvw9e?=
 =?us-ascii?Q?9WTCw0V6N/DP1HtFxon4YsrxMFCCO88S0w1CAaNnojJaLeDBUpHh0wD38aNo?=
 =?us-ascii?Q?FJnU15RDGmRuHL0ggc1+bNEKojbKSaFlBXadzarAxkQjrwztK+IOvxs6pCjq?=
 =?us-ascii?Q?aMVKEpJJLhYIaFUV4TfwZ97XpbBnUyM2TtZFNKhFq0Jl/jIwyIGTSTXZ46FO?=
 =?us-ascii?Q?hHq26IEtVM4sIevcid54i9aEkk7sPO1rtWRQt4ZnYMvHT7oZrnO3rj9SHJ6c?=
 =?us-ascii?Q?7RP7hMTmmvQTQ6OWr2ze4TOHA0zgjQ3CiMOC9Bd1YLpqCysweuyP791bN7/w?=
 =?us-ascii?Q?qLSy5qU5j/bgSejzwv0GHEIPOkLTSJGpf0dldyrmiFUyCOdYTVvBCloBgMyQ?=
 =?us-ascii?Q?IHoipTOh3/W3HxPNzjl/hTNJWS+Xw9OkqQwBDxRi+9PluomOf3nwqHhIqnvh?=
 =?us-ascii?Q?ufpaaX0yzBlJUB/TT8ATc/cg381m0+0pJ1/CnOEkj/adQCX0xwXVxUyxjQBa?=
 =?us-ascii?Q?03QzdXt0Vf+KCwL2gOOf8iTXufK9bnKUO3LzF/gNZK4TkvjfnehuuDrYRPRr?=
 =?us-ascii?Q?Q4iBn260VzR+4sTE1PLqLirT8xvI8Zw2y1ViDhnRnmf7DycMLpGTGyHN6S36?=
 =?us-ascii?Q?5sfFygWUYmiuw27G+KVHHR/WYpWbzePXdti3wgt9IDvn9QoSsGobORO3s5OJ?=
 =?us-ascii?Q?NaSXF4LO6aqI4Vyb8dq47/qTZWiI4aK96SrfpYlA3kYvWUqQPRAUMYZZckUZ?=
 =?us-ascii?Q?trrJZLRgiF5FlRAAfaYk8sGSulciIbOltIc9K+NMthl75btMBHiFMgsA2hv4?=
 =?us-ascii?Q?GVZ84Oe7KrQhrKq1abKvzisw/RRDNf/CpleuZFX3A0Z3REIlDrazucbwR9Hj?=
 =?us-ascii?Q?/hYA+qEbD4yFgXGnpgMQ++vxGLVHC+f/m7GAcO5h/n85JXzIWbMotd2ndcUR?=
 =?us-ascii?Q?oBEvLBlMIPzaSJDaf0nQlR9w9n5oukL1yIcD+Sax9kHBx9gQN13qaeoSgMdE?=
 =?us-ascii?Q?P9r7vkOSqa22VBoaA1pXY4UD6OIWtSm6kh9PWY4V4afSogvCp88k8oYcjOJn?=
 =?us-ascii?Q?+7SmKm13bgiiK3s+k5AVs0DUvtxKhV4IqaIJ1r3ediYosEa7jFjIDaHGpQQI?=
 =?us-ascii?Q?bPX9h07goav0UOX9+xBDXwFS6YWmvg5+dizLu4ytRIGAcG9JpX4SksR6bUsL?=
 =?us-ascii?Q?LHN9A5nHFOjNxQeSydHgVfFGTp7p0NV0qrWRI22wzPh/7ZKNxwZ7MpBoAtQm?=
 =?us-ascii?Q?TsIG4VZf1DgcCK/FSLNHbCZ0fbPUPja3UYvpdv4q4VvNrWhf/GEsHH303rWl?=
 =?us-ascii?Q?hoT55pOhEw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6347.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56b222bc-43b3-458e-0087-08de73d39b4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 18:36:21.4030 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1mvhvPUGgt0kYZZMSyPz7OchSxD6xnLj2uOYQuOWR/vQ4iLTg8rAi/ZddBBfRhdsyTvQ2V6h6O6UYiplBwEjOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7957
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6347.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 694E418B7A3
X-Rspamd-Action: no action



> -----Original Message-----
> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Sent: Friday, February 20, 2026 10:39 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Syrjala, Ville
> <ville.syrjala@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: [PATCH v2 5/6] drm/xe/fbdev: print info about stolen memory pref=
erence
> for fbdev
>=20
> If stolen memory cannot be allocated for the fbdev and initial plane bo b=
ecause of
> the preference for fbc, have an info about that in the log.
>=20
> v2: log text changed

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 2 ++
>  drivers/gpu/drm/xe/display/xe_initial_plane.c | 4 +++-
>  2 files changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index 4673614cd224..87af5646c938 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -63,6 +63,8 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct
> drm_device *drm, int size
>  			drm_info(&xe->drm, "Allocated fbdev into stolen\n");
>  		else
>  			drm_info(&xe->drm, "Allocated fbdev into stolen failed:
> %li\n", PTR_ERR(obj));
> +	} else {
> +		drm_info(&xe->drm, "Allocating fbdev: Stolen memory not
> +preferred.\n");
>  	}
>=20
>  	if (IS_ERR(obj)) {
> diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c
> b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> index 13fdc51f8f50..c46e9d8115bd 100644
> --- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
> +++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> @@ -92,8 +92,10 @@ initial_plane_bo(struct xe_device *xe,
>  		flags |=3D XE_BO_FLAG_STOLEN;
>=20
>  		if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
> -		    !intel_fbdev_fb_prefer_stolen(&xe->drm, plane_config->size))
> +		    !intel_fbdev_fb_prefer_stolen(&xe->drm, plane_config->size)) {
> +			drm_info(&xe->drm, "Initial FB size exceeds half of stolen,
> +discarding\n");
>  			return NULL;
> +		}
>  	}
>=20
>  	size =3D round_up(plane_config->base + plane_config->size,
> --
> 2.43.0

