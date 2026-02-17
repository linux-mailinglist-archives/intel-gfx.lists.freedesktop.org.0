Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WwAbCOf/k2mf+QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 06:43:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A85148D99
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 06:43:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF27A10E43D;
	Tue, 17 Feb 2026 05:43:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="el+KpIrp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE3FF10E43D;
 Tue, 17 Feb 2026 05:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771306979; x=1802842979;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NcW60gbkY+b6Ha1b3VT+Kf03S1K9jkWForIMu6LWoJo=;
 b=el+KpIrp/W9uBIpdL9L5Ojw0mzrN6Sz8jLgkfqgEb1wARQVmlrSk0OjS
 DWh7tvmB2d5OQKPDuXKLirdQaEEdHJXrqn0OOewNRnL+G7fJUGAfD0pn2
 DxWsWC8ah5gykeHVFK49UIwyFMmqDZljb7BRu0V61SgVKKqW+dIxG8W5p
 OiuDGs5JQwDoOVfr2eXflmKccAOceNEALEHk/yUL38gjqot0S9vYgqhG9
 2VCWagDG/c1Whowy10rgyoqTCrWoMo5fBfaAYjW24vx1x4+3IlLJZVgUL
 kHZ74f4ZK3W9/JYSDPIywkUWZD8RN+adn00SmqoQ0KmCEVwBUtsmsikdg w==;
X-CSE-ConnectionGUID: UGOKpB9lTsqCsYyBY20/pw==
X-CSE-MsgGUID: kfVAizPwQrSqUBiTv38sTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="89958896"
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="89958896"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 21:42:58 -0800
X-CSE-ConnectionGUID: NmtYZjzhR4CQd3eZ+OMr4g==
X-CSE-MsgGUID: Nro989uKSMSQH+Wn5RdqDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="213616311"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 21:42:58 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 21:42:57 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 16 Feb 2026 21:42:57 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.34)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 21:42:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gJ/f40puFvXmKtQSVZvH6V1q6NKrzVvfzdVKpZKyvj466uerDtXEF6u865STASWuNZDIdGDXMLUzi8XRGskToewLncMD0X2pbIDvWeIBMAPY947jqCntXdsk2UX7FyOAvrmvB6+Nsk/BT9XwdhGP8+TKFoupF6V75JUUpXdASQTGwMQJHhpzz98xw5SyrfkZmzSa2K+/XZqxmPetPrP3eaZFdEPrdQXI2XIescddxy3D/tNgsODcjPS+Y7iSipkUhpYre+dWA7ARogMqfQ/DOrA1tn719eXiN3NJSENFyvOc7cYesZLCQpX13TZi1AKBXRG0DxWnazZCI+2z6SCu7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1UNOScWDTxOsC8HJ9F39zqyWmf+J9ZZyvHtDEbDEKCs=;
 b=mx6ghw+yeKaszy7VEKHLhsgSj+/XiW53WVJ6fqG0V/qAEMKrAaJTizcLFdp7fRFg762du/Sq6MhtkF6pNkTzRU31gz1i2Gp02NfSi/mZ1HQB+jAwCht/DDJ/yXHFF8x50hCkQTOIVoD3O12BQhY/i0glSCd/hey8CbYoAT5zlIxTKGen6jri4ZusZQhVu9kVWKGL4Lk5mx3qcVqUI1jIx7VMXxqJYfNNVE2VFwI5WTUpDrc+hhWDNtduyMjBHr4Gw+GRra7vtPqKbhNEObQiaMvTEkWsxFhHoP1V05/DF7jznmVNb+6EkenTgXXi7fiuIgr34yGkNJw/RHYbzCfssA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MN2PR11MB4647.namprd11.prod.outlook.com
 (2603:10b6:208:262::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 05:42:55 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Tue, 17 Feb 2026
 05:42:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 02/16] drm/i915/display: convert audio workaround to
 new framework
Thread-Topic: [PATCH v3 02/16] drm/i915/display: convert audio workaround to
 new framework
Thread-Index: AQHcnNMcEP9W7fqZh0e5U/kQfMmxKLWGZfaAgAAAvkA=
Date: Tue, 17 Feb 2026 05:42:55 +0000
Message-ID: <DM3PPF208195D8D14E99B15583F1757B659E36DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213102500.406925-1-luciano.coelho@intel.com>
 <20260213102500.406925-3-luciano.coelho@intel.com>
 <DM3PPF208195D8D19FAAB8B4A6E1EF5D60DE36DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D19FAAB8B4A6E1EF5D60DE36DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MN2PR11MB4647:EE_
x-ms-office365-filtering-correlation-id: 7c6051b6-9b7c-483d-b76f-08de6de76656
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?RVFsM6Q+2Haz1O366O5KknjzUzL75k9aKj47SjrtdWZggr8tycQcgos6G/+U?=
 =?us-ascii?Q?xPdBwVJLyeWKmsJAZB3ROduLx7P3INy3a6LKUBIk9l8mH5LU1MnKNImGFmse?=
 =?us-ascii?Q?ASwEGc9X2ymftJDy0LRwBnVScWfUEiegM5PEARO3BzTN2+sYbER3rAsGbT8R?=
 =?us-ascii?Q?fB6Zb/urV0pKMLzPWZiYmoZxQY9dMq6QvfnP25RhFurglfvxfoQCslIZxYbi?=
 =?us-ascii?Q?gfYrA3SeDPR6R5HzW4D1EcQBvP6Izduh8qR1xLzgd7FD8wDrvn8CSlySJvH5?=
 =?us-ascii?Q?9cxFaA995te0s4vhmPnlILv64qhd49LvzwP+8LBH7nKSD5UCgk/pOPXO37Xn?=
 =?us-ascii?Q?PQ8SnCaCPc7qK7NF0NaGscOXbQOXEriBDHv/sMTm2RDm12QSrZRdEcr8D0O8?=
 =?us-ascii?Q?iH15h3MfjkPYxLQMKPJghwwDs8KzoOy/IUhiM2nhqbDYhx8iqlEH1EjDSTkJ?=
 =?us-ascii?Q?ZpptBFcy/Yg3FepTWijdGjKKzZcwo7uQIQZdLQwBuUirHxD+3C+dzTZzPK+x?=
 =?us-ascii?Q?CSuhMB+qhWca/+CYU2HWYnF7J5F+9yfQZseGBDnGwuFJT4OOOpZmt6fISbIj?=
 =?us-ascii?Q?aTvAwsMHbTXQSBgMpJyZEBYqFP1z/CCYPcgG8G8ySymFQGqN8GSBvdb4U/zH?=
 =?us-ascii?Q?4U3Y3HENJi2N6+138MRob9o2RVR6jLsrR4S+KEZqAc26gtTSlefHH+JdmXZk?=
 =?us-ascii?Q?VSveeSAOcTSmen/6xbAz9pBXm5JH48sqF5Tv3frJ9nOCHd5MMu3j5x0cvTXP?=
 =?us-ascii?Q?kAXPGncubWSWmQBePAxN9lZvDhOhzmdJSam7Gj6X6NCar3rb9inu9DI0HBuR?=
 =?us-ascii?Q?M2ULAoZE9jZEbl6hQw6DgRZrMyKgYxuw5Fyc6E0Yp53pAfbKWUMcWANGMzgy?=
 =?us-ascii?Q?Kr1C6kLEs8agE3DBbSJQtjYkzGKIZKC9K2lF719IqT+tBjiml9CZ4BM3kKvc?=
 =?us-ascii?Q?KGnSzRRmCD6P6rqzvSGCwOhRT/NwQascHaF+rqsEzKbRrb2cyvj/oXfLtyAL?=
 =?us-ascii?Q?YdflGntESP/ZprAw06nS22EZY60ic3N0znpgcgJi4HSTb0gbwzz5Ei2ZFKpH?=
 =?us-ascii?Q?nS0shRWIruBzYM1f2dFl3F6k/1V01vTj4rg27pe+wR0EnvRIUF7hxdXTm3dH?=
 =?us-ascii?Q?avz1tcWCOk3SQBsXPpzFPHfmiyAzBEpvezRL5HWFZw6P6DHkgchdjcEP61DF?=
 =?us-ascii?Q?tmzWkZroBdEn590HUrCgaDFtvP/RMA6Hy9baOXy+sLh3R1U2Kfn8/THMCHWI?=
 =?us-ascii?Q?N9bSsavjlUPTTeYIV2XNVl5e1rUYMika3Xm8Eii0h7z4u2aeV59SZ/vbiQV+?=
 =?us-ascii?Q?0gL2rifE66V8/6RELVE6Xyicu/ZR/HXGBfwZP61ce6RAKNb0UhylxgetvO2D?=
 =?us-ascii?Q?7ZjQqn6xiA0N0v8osUwE1hT2mMhkEII5UPmCDqJN1nCirP+VxURit9gNArw/?=
 =?us-ascii?Q?ixRTWdC6H6BDJqhHHnxXe2kj4hHTIEBVTHx0GPsnYM3ogR3TGtrmc5hO5EtY?=
 =?us-ascii?Q?QP+WCg7BwysExrMxBvbzrut08Gu+Mh32GT9t8z/EyoOYdXZT61dhKBVIfbl4?=
 =?us-ascii?Q?Nr0XDrQHL3SCHpxVotSkz+AVVlDc+C+nSBMm3uSMsu8F1oMmCJBL2JegX98Z?=
 =?us-ascii?Q?4A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jzFrtQI7FPrDkgFNUZxJRLyiusfFZI0+DTJ0u92QsUOPFmIn+4MSkf9BYuLD?=
 =?us-ascii?Q?zduLYVwFqJEDD27QPg2pET8Wi5XgXNlxp8aD9Qfn/Qiom1wl9kX3YJG52JjP?=
 =?us-ascii?Q?uK1Zu13tiqyUc3ujyrCB6shl2z+fChZREs6S/XN/tc4z6RnFKBOQdlgfIurN?=
 =?us-ascii?Q?Qdg3U6c39vuT0T6Gr7e/80jslk7PqKg+RFO3AqFd+QAvJ+aVHqxWLX+2EMs3?=
 =?us-ascii?Q?YBPoZBsI+266sMg+AAF5NbYB07hhoBwD7MCq05TVRUnOyEfHCrUwfNhggZAU?=
 =?us-ascii?Q?37HLrJJUY2I84gb5cWNo0nRJ4kZgnbAeC19UtIe58QhTREwnVgIr0cif+8x5?=
 =?us-ascii?Q?O7/JDeeL+odd85QADM6/D9AvJupWBaBunYqMdfdRqNyfLTeE0J+/zoUgMeZv?=
 =?us-ascii?Q?SBdtWkVY+IDObJwSialhnUZBM+N8MDgthxbO+L5DGQMzEkX30SKhcfBN5GfH?=
 =?us-ascii?Q?ilVJdY3K8o6R8A32zvD89gzwh1JWHjwtWOQ34/Kb0++xNqwTNNk8KlkHTE6a?=
 =?us-ascii?Q?CEbuYape+D2XJfLTaUIKD1pBJARCCA2vzpYV+/k7DLD7/+bh059ADCMGoAah?=
 =?us-ascii?Q?1068SFJOVx8CoXwvjYiYi2iO697WdIPYTc5Cs9uC4QtyXnoFe8ItPIJPTBG2?=
 =?us-ascii?Q?MH7zQEvracDsKo1FVDytVsq6+QSzVM+C70C9rdwOGTWN9U/0ux/2PmUM7izp?=
 =?us-ascii?Q?yhhR6FlXJb16vuh/iVcJY+1ebZv57qihWotGhcYAxlPKC8tfUz4RIzcuqlge?=
 =?us-ascii?Q?YRssQ8m1w9My3R8l557MnPmbI+zYledFJ/qeOjlDZjpEcXUZhOsgNIC9pi0R?=
 =?us-ascii?Q?kqOb30P8NWaV3LolXMRiWO5W7eJSZxhK2be2QmJin6ed3d1xS9c+pl5H5Tnr?=
 =?us-ascii?Q?KuQZ2bzTWBDWPrVteTzJdsXAsZAU1xZnIXtNhmSgSi7omn0Htn8zEU1KgORW?=
 =?us-ascii?Q?/1XgxKGL0E1S7kVq1egEz9lel1iMtT9phyrQBZN301kWyjM3CYS2taIMVasf?=
 =?us-ascii?Q?7u7Pp+thpX3jsQvVodUMhacqVWmbpnkcPjmqZK2xIE8sPzi1VtwO8pBCEcRc?=
 =?us-ascii?Q?eImkEpl4X0Od7RmCZzL/uy4iOchU+/2dMpR+nxT35VJFxnfdUChR0Oi7LI4q?=
 =?us-ascii?Q?osn80/O5quM7TXKlkzvkCKDIbd4aCFPhgp1buLRjwUw5jnpNbVahaPJvaOrQ?=
 =?us-ascii?Q?zvkVAGt6Zo2X9kVTtV0qiKDBbWWHtgNQ51RPJBuQbpE2S5nryGVVgOwnmgY6?=
 =?us-ascii?Q?jJD9iksyfm0nWVrsWOn7Twq8tATZD2ANVqDU3KcCE1HFgf5p404CedJN8Ntd?=
 =?us-ascii?Q?zhigKgKmkgbvJ+J5JXTeduj4h9k2KpI4rId2V0chJycYk3KAnpxgU99VR6U2?=
 =?us-ascii?Q?+b4awLxcEi8m3IUtU84f5dSEMteW6t665wffivbnQ7b68gaJG+D9o71JCWya?=
 =?us-ascii?Q?aa7uBJDNorUpOdHDeYDcrJXU3ySuZ5000M5kjeFNFJ2uPyyxC/ruoF9QBjHc?=
 =?us-ascii?Q?ylvzKiZ95gNVHXhwISm2ZIiO++ARaQ1BkNOSUoCWiZ82DPgUn/97kpAHkHFp?=
 =?us-ascii?Q?1CVXwunqLvs3XeEBBmtgxEQnbjugtYTJZf42QdifHUmRakyWv7pGK61cpLB1?=
 =?us-ascii?Q?Drg0UnjXSoLTTIz1Ry2gj8gjueIlVxPoGQAPC02gdAKx8q2mvASHRbqZLZg1?=
 =?us-ascii?Q?XVFku5/N5W/Nde5SjroljpewI6zFbTp7n1jELRTRY+f7AEk+Bdk47VxjD37K?=
 =?us-ascii?Q?dj8YNeVH8A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c6051b6-9b7c-483d-b76f-08de6de76656
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2026 05:42:55.4720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d24+XyByBebvk8MwkeeT5jmtzm/16c2FjY4yhgNO9HuXMurxYZXnwNM+bgi9vlLZqLtl3UpuXm309++kOoBuPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4647
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 71A85148D99
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Kandpal, Suraj
> Sent: Tuesday, February 17, 2026 11:10 AM
> To: Coelho, Luciano <luciano.coelho@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH v3 02/16] drm/i915/display: convert audio workaround =
to
> new framework
>=20
> > Subject: [PATCH v3 02/16] drm/i915/display: convert audio workaround
> > to new framework
> >
> > Convert the low-hanging fruits of workaround checks to the workaround
> > framework.  Instead of having display structure checks for the
> > workarounds all over, concentrate the checks in intel_display_wa.c.
> >
> > Acked-by: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>=20
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20

Before merging make sure you fix the checkpatch issues

Regards,
Suraj Kandpal
=09
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c    | 24 +++++++++----------
> >  .../gpu/drm/i915/display/intel_display_wa.c   |  4 ++++
> >  .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
> >  3 files changed, 16 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index 5f3c175afdd2..9a7d9cf3d571 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -37,6 +37,7 @@
> >  #include "intel_crtc.h"
> >  #include "intel_de.h"
> >  #include "intel_display_types.h"
> > +#include "intel_display_wa.h"
> >  #include "intel_lpe_audio.h"
> >
> >  /**
> > @@ -184,17 +185,6 @@ static const struct hdmi_aud_ncts
> > hdmi_aud_ncts_36bpp[] =3D {
> >  	{ 192000, TMDS_445_5M, 20480, 371250 },  };
> >
> > -/*
> > - * WA_14020863754: Implement Audio Workaround
> > - * Corner case with Min Hblank Fix can cause audio hang
> > - */
> > -static bool needs_wa_14020863754(struct intel_display *display) -{
> > -	return DISPLAY_VERx100(display) =3D=3D 3000 ||
> > -		DISPLAY_VERx100(display) =3D=3D 2000 ||
> > -		DISPLAY_VERx100(display) =3D=3D 1401;
> > -}
> > -
> >  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */  static u32
> > audio_config_hdmi_pixel_clock(const struct intel_crtc_state
> > *crtc_state)  { @@
> > -440,7 +430,11 @@ static void hsw_audio_codec_disable(struct
> > intel_encoder *encoder,
> >  	intel_de_rmw(display, HSW_AUD_PIN_ELD_CP_VLD,
> >  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
> >
> > -	if (needs_wa_14020863754(display))
> > +	/*
> > +	 * WA_14020863754: Implement Audio Workaround
> > +	 * Corner case with Min Hblank Fix can cause audio hang
> > +	*/
> > +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14020863754))
> >  		intel_de_rmw(display, AUD_CHICKENBIT_REG3,
> > DACBE_DISABLE_MIN_HBLANK_FIX, 0);
> >
> >  	intel_audio_sdp_split_update(old_crtc_state, false); @@ -572,7
> > +566,11 @@ static void hsw_audio_codec_enable(struct intel_encoder
> > *encoder,
> >
> >  	intel_audio_sdp_split_update(crtc_state, true);
> >
> > -	if (needs_wa_14020863754(display))
> > +	/*
> > +	 * WA_14020863754: Implement Audio Workaround
> > +	 * Corner case with Min Hblank Fix can cause audio hang
> > +	*/
> > +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14020863754))
> >  		intel_de_rmw(display, AUD_CHICKENBIT_REG3, 0,
> > DACBE_DISABLE_MIN_HBLANK_FIX);
> >
> >  	/* Enable audio presence detect */
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > index 1d8340b36c01..b383bfad3af6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > @@ -74,6 +74,10 @@ bool __intel_display_wa(struct intel_display
> > *display, enum intel_display_wa wa,
> >  			DISPLAY_VERx100(display) =3D=3D 3500;
> >  	case INTEL_DISPLAY_WA_14011503117:
> >  		return DISPLAY_VER(display) =3D=3D 13;
> > +	case INTEL_DISPLAY_WA_14020863754:
> > +		return DISPLAY_VERx100(display) =3D=3D 3000 ||
> > +			DISPLAY_VERx100(display) =3D=3D 2000 ||
> > +			DISPLAY_VERx100(display) =3D=3D 1401;
> >  	case INTEL_DISPLAY_WA_14025769978:
> >  		return DISPLAY_VER(display) =3D=3D 35;
> >  	case INTEL_DISPLAY_WA_15018326506:
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > index 06c1f62c0f6d..b1bcc18dd2c8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > @@ -29,6 +29,7 @@ bool intel_display_needs_wa_16023588340(struct
> > intel_display *display);  enum intel_display_wa {
> >  	INTEL_DISPLAY_WA_13012396614,
> >  	INTEL_DISPLAY_WA_14011503117,
> > +	INTEL_DISPLAY_WA_14020863754,
> >  	INTEL_DISPLAY_WA_14025769978,
> >  	INTEL_DISPLAY_WA_15018326506,
> >  	INTEL_DISPLAY_WA_16023588340,
> > --
> > 2.51.0

