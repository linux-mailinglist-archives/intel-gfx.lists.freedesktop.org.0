Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIhcKX99lmkggQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 04:03:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 248C815BCE8
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 04:03:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B8310E19D;
	Thu, 19 Feb 2026 03:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D2NgCqnH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F9F010E19D;
 Thu, 19 Feb 2026 03:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771470204; x=1803006204;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GLPnHzJz2jKhBJqEt1xh6l9vv7mfPidmOMpdbTRVR6E=;
 b=D2NgCqnHt9rYRzVi+ccuvDJCX2mlVHfWT3OFOkD6UT/9Zi7bFPwgTrUK
 GXX0syU3MRltfZUiGWNGFlfWnpmGofP6AJ5UlwK8qyT+fxrotGuKXRxv3
 9tg5l1seQ9l9JUtNSYHsAFNOBvNufopSWnxwTEPdEr0yAe+PpncOODATD
 vGnClfM0uvs0YJWvE7Ul2c1c5+pZncf4bgUJ6irpGsmhSLeBJspwzKuhE
 HR+yFOuGZTinYvf1hWRMbgvi3GF1v18xFAU6E52x9C5SPLTGaJXbSqigY
 g1HLPdFLooqKWS2tqFXAOQ0fjfijHnzZy4ldXSs2ND+D9VZ4wUxWzI5tU w==;
X-CSE-ConnectionGUID: qhTi6Vp6TdK6ptYLGrUZcA==
X-CSE-MsgGUID: 4iZZ1XBKRYG1MsTjPacWWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72646494"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="72646494"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 19:03:24 -0800
X-CSE-ConnectionGUID: gknOAq50R+ui7sLYFfwsbQ==
X-CSE-MsgGUID: 7erg65CyS/Sd/PPRtmNq+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="213533043"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 19:03:23 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 19:03:23 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 19:03:23 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.25) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 19:03:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tce4dcyWwqgygPsN7wj4ybDE8WtGYBgIsvESJo6mhckfTIg5ZVv8TK+CPN6Uy0Q/rwZg0g1560R9436IKpv0y2c3vtPyJMVybQy68uqwQWwH2p/aD7jb9WvqvVDH2iQZXahk4a8fYvJc8l1EawGVkwCO+hTiEDZDbTkTBRPK6og3H45WCe0y8yR9a0k7Hy6JhqanLU3DT3xgXOuSezrLr+8WGemvbXQ+mR5dbTX07YbvNoN9/9fZhEMt+bcvf0gT1KxawL3F18DIfDZFaIyB0kIP9k96Nu6J2yjybYlTh5IwcBotbSX82x+bzz5NKKARWw4HsGAGpc1yxmWnri/ESA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ftK9H8Xb4CzxGHPGxfN77mKPfexQ8P4lRFPxpkIXUQ8=;
 b=RIxUZ2rFXs69hk8LDC8CDhQmJFSJd21cRkQ+sm5mXjNBPZ/VY/6YYnxeme8iNTo8gocabykueovzU1mY+6KsFrzhgDZ3Yx3/MV6TqOTjfyB+krmlfB80gkdUSkdUR2sORCUR4h6VS89+TDJotE5Hq59NBTEE744jB8vJY5blitU5MoBC9qcNfT0YE8wZWFphO8Hq5QVGNFvtH90NCiXj4dcGkQTi4vvQJfmH8Kl69JE4EgYpyYETWMXBaLJtWgF4czfphUKxltfQsnhkJ9UNgBcjrKbq5HlH8Iw3EuQ1rHeVNdSl6auHprjLsT4z77YHzYyL2+CLmQjYzgeGAiwH4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB5867.namprd11.prod.outlook.com
 (2603:10b6:a03:42a::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.11; Thu, 19 Feb
 2026 03:03:19 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Thu, 19 Feb 2026
 03:03:19 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 03/19] drm/i915/lt_phy: Add PLL information for xe3lpdp
Thread-Topic: [PATCH 03/19] drm/i915/lt_phy: Add PLL information for xe3lpdp
Thread-Index: AQHcnOQKbFvFFeWhvkW2nf1JgX4XarWJXitg
Date: Thu, 19 Feb 2026 03:03:19 +0000
Message-ID: <DM3PPF208195D8D2CEE35CAA3F55B40069DE36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-4-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-4-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB5867:EE_
x-ms-office365-filtering-correlation-id: bc33f1a3-4192-4ce9-e687-08de6f636fa1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?SqnJc9TyjFtXXOmCl+HAgvthOdYfnU3PYbTY7i1HnqYN8AE9LbKFAJ/rHFb2?=
 =?us-ascii?Q?fyhAq6iOtc2JANw1TnyOdCRSs5QLnznxSPIOijGyTPTl7WcTtN2roONvADEm?=
 =?us-ascii?Q?NMpWZGig8mKelXtggBY7q6954lEsOxRnWZxP7IXY+bk55RroDPUm23LkMZRN?=
 =?us-ascii?Q?ijlkN/Vukyf2qmRCeKHpPtJyDmRg+ZFVAyVV6ZQr4VXKw/HDNNiXJ+brmdjL?=
 =?us-ascii?Q?uAzQKY3Q03BGifnodp4cwQM4z4Y0cX+Kw2DiDOSh1XjVY2Oxdx9J0HZxzON1?=
 =?us-ascii?Q?gHlbuddR4q4MANtBYD5Ihh8unxIsxgPIA/it7cgO1dRc4GzJyW3apKBSG15H?=
 =?us-ascii?Q?WYFh2eBb0t5eYVy0WPgNeriLjy4oCER7rUtdxAu699lHibU/tathIvnY9FJB?=
 =?us-ascii?Q?aaLwLvEcthzyfl95xFqHSdyFvHeHUTfRAere5mF6TCbSbpT2MypGsTEPvsBf?=
 =?us-ascii?Q?8ZyhITLuH3GCkxupy8Q7dLRxjrzAyMfIUtmx6oKobuf5234IxRwBR4PY0H/N?=
 =?us-ascii?Q?/mEXJmKMjuPBH6M1glrbHNfNi6OIg1zKu1s0h36vTDawVCzHDRFjqHyYuWKB?=
 =?us-ascii?Q?POqAxV8IDm3C5Q57xQYG2od6YoHDbAVBJiAQgQGpTazAE/0oLwN3rzds7HLb?=
 =?us-ascii?Q?ucsCx7Rz2+3JiPlRkTfcySStlJ4SxZFBbFKRvuL9t0yAkQ1Zt06lyqp1G54Z?=
 =?us-ascii?Q?kgS6VMFl+7E2QObLO9au4E8H4Nl8s8RAICeNBL3owgkco8dYr+azMGS/Tp/Q?=
 =?us-ascii?Q?/dCHb4KNnxEiJHfuAq1DmmB+8HiQ1EQod6ZF8cUv0ql3yJ3wC/5hFOfIuR0D?=
 =?us-ascii?Q?mcK9xcLYQ5I+JohvYcyTLyZskzQJsPXrJ7TP1xs8zYKZ8WON6HxrSbOGOgqu?=
 =?us-ascii?Q?Lh3DI32eGSBnX5YTXKdd7qm0pBlI4JXgzRJEV0mGggZxt0RxGIboLf6BREYE?=
 =?us-ascii?Q?V9uOPO/WedtW9ihpMWpNDYJFLBeiOcQBmQIMaUq1rieY3CiY4A3aw1QN826v?=
 =?us-ascii?Q?mVV5byg3EbDiuNwtC9a9kseFpCoKcDBj3KMxhbvoxpbkTZJb/U1nyVe164ws?=
 =?us-ascii?Q?N82POI+3/7suWdXx/O40UAG72po1i2odJYl+gR81Q2/ajWNWw/omKZfU1fZ2?=
 =?us-ascii?Q?awP1W6dvUsiAtkZ6KAOAjK4gpIH41IdK8bCoyN6MiZu19fEF42jQRjhkAM1j?=
 =?us-ascii?Q?f0jwKBVTbrdY7Ejl9Bd+2sFdlHdV8Sfhi/1gu2/8dfvH8yMRuHAx2KZpK+tq?=
 =?us-ascii?Q?iIYDLcB8U4JMlB4JOYHuzTIfF9OIVEGrysYFeG9r/3YbLpKS+pssnSZWC/Sf?=
 =?us-ascii?Q?tQN3yywT3Gepgy7ciKqw6+85GCh8xyCnDu3/EMClhh2SI2t/jdkwI2Uo7050?=
 =?us-ascii?Q?ENVGpqRKfp8aKQONLyBjgPFpYLaS1iqV3aqZ4jmhJscMeuds/5XpQTKK4AUK?=
 =?us-ascii?Q?2VVe3kycgJT76nn+CTfk8ge+pZbph1eXguDb3ulWk9conduN4w9NUxG+9sxO?=
 =?us-ascii?Q?YduWB9br9uo8g3RzMl/TkK7MwkfORfVB53uTxzOTnsHJBEYFMmQ3nWrLF4qZ?=
 =?us-ascii?Q?QWkuPVeE5QySr8YscIIqv5J6O3O9x/Tiy3OXDgJEGm8nL4w1g8KS//gBmKrU?=
 =?us-ascii?Q?d3aZS2WOCM7FBU4sU3OYL2k=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JyXTXxiAcyKz+bEZZER6WdE2BUJ9vZp1tFzcRnzyTzR+x+btc63BO7mIT8dq?=
 =?us-ascii?Q?pYxFCFQ2TgP70uDfZs6oLGD3OEO8+mi8GLRjxF/mFSPTUmf30L46Ag2ISrvO?=
 =?us-ascii?Q?+j9gkoAOvdBewYKOuqLnErq3kiVmwxS6QHIrazLwRK41B46xrHyO4ptIrbFq?=
 =?us-ascii?Q?l3Sa9T5kVLcYf//Cg0/H5RrWCO68qetJnH2FjK4cQKQS/EgsXBcJrpZxIIC+?=
 =?us-ascii?Q?xT5NJcr0H6zb1omPODp9A+U3ESba6Ls6L8OPFjQs0gakktNipvZ76fUVEzba?=
 =?us-ascii?Q?XAuauB1SnMQAoPeU/+q6/gp+qALp0NbKXo9X3eT18YfjtTidl9GCa0k8V2aJ?=
 =?us-ascii?Q?gmkTyykJrIXF6dx+sa7vFIp6cPq1DfyfOviIXbdYNaUhMrxRXLUD3K6N8Bw/?=
 =?us-ascii?Q?eIW0QcLt9GpeSJHrS3KFGVzJV9uq5tDwLjwyHHiagyT5ip9DLSxuB77h/Aaa?=
 =?us-ascii?Q?YU9uA7+KFQOjqB9jsO6AauE6zffHAs4YygGOqmd5OrONiIrd8XAos5329yDL?=
 =?us-ascii?Q?qdUCH00I6pSvXJCNFILFD+AzfAnI0wvn2d2YrHIbfiVC4cigO4VHtzyOcMy0?=
 =?us-ascii?Q?lpaajcikRm+QuebQPJlA0V7SPVTgOa9PovLH7sKooEl7Kmbe0gtIWWF5FSJq?=
 =?us-ascii?Q?RUghi2pAS3WpBPzbomgZO1qN2gh7/XD6z2E5Fw1JcAvj3kpmHH1WVNx8BkqZ?=
 =?us-ascii?Q?q+LWDuG77XQcHpn9lh6+E2kYMgFnFafQwghUGE2pLfWitZi4voZ7ham8tsXI?=
 =?us-ascii?Q?p1e4fMgJ/7ERN8QG5t275QcMEARSdBtTKt8YNCK7zcz7Uy4rz/sJEsV3vXcE?=
 =?us-ascii?Q?we51wTT2qWmVU2rELwim9TwBmLmcuFLo41wKrSvzVksB2cy7BBM2sOEE22F/?=
 =?us-ascii?Q?Nf4Aqtc+wI0NrKQAlNXTcZLI7zoV6K0P2GXDkqdr6ygmU2Ek2gjdg70/yUBQ?=
 =?us-ascii?Q?YDIghpAClxVqDur26wJvgIisZEcrxAxDyRa4yGnDuIp0WNqObtB93ps2oPib?=
 =?us-ascii?Q?iafnbLcIqAmFe4S9ThbkgEf+/rib1xzQB6hHBRNuFFl1W2750WnCVcXx5WgN?=
 =?us-ascii?Q?ppV3XBftOftHgNPZ+D5II3OQ9WXPj7G40jVo+dPkxwjKnukofaHh68WdXeKE?=
 =?us-ascii?Q?oPAIa53kwQrAdtsP3uxlkKxoMVZnA4SAp+uvU5Bka6qj9vhreyoPbKftwSz8?=
 =?us-ascii?Q?BekT/gNShaVPuOkx3gKmcphePTDOGulDVCic47U4jAaHMpJ+caSzIB8fMvKQ?=
 =?us-ascii?Q?vUOb/NaaHRUSUD/ZwfwHw6VOS6D1F39GjHjhpZndaEG5q6DoGH/iJwjaKCc3?=
 =?us-ascii?Q?+w4xiGSBy00ajqk3ELFJmUzQ+UxqpbAjCTy/OtAPSEpdKSOORH1NjiamHS96?=
 =?us-ascii?Q?XrpEhwjscuYFqQNpmrSyfchBRIVqmrX6x4E/1Z/rufExJlWSFICL2wLv/stO?=
 =?us-ascii?Q?NZehQTSM6nhR5mBGBAkMtVg1YEOFd8ki/ZA8Uyqc0miaIy7nEmMrfCBBDa8L?=
 =?us-ascii?Q?K8f4UBvCm+fDzqhul+CBIvXC0Qz4WVUzn+2EG4CMoaliRgVo4SYjoZmEjHcE?=
 =?us-ascii?Q?R3eL0W1huBf5lbm6NvXjyo5gXKcBaNALj+T8Nyynezu60Gm/RfgsADGMQiXq?=
 =?us-ascii?Q?EaXbxE+GonAQIZb4KTLGmbY7rcd9joU5rO/cKXD5SVbx1LXDe25kD+TE5aFd?=
 =?us-ascii?Q?l/Ptj2oiUsuM0lz9PSThAMCHOUoipQMkrfY0V8Tewxo3/9QxiKNn7IkbHNCM?=
 =?us-ascii?Q?xAkyfGqe8g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc33f1a3-4192-4ce9-e687-08de6f636fa1
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 03:03:19.8273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zRoVQVeHF0mPnTPIUmA4oYFSCAT9n1xIy+9IiFaCfAkfn3KpEL6jVjdlntJT7h5Lyyvsv7hEmvyFNnech9D+XQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5867
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 248C815BCE8
X-Rspamd-Action: no action

> Subject: [PATCH 03/19] drm/i915/lt_phy: Add PLL information for xe3lpdp

*xe3plpd

>=20
> Start bringing in xe3lpdp as part of dpll framework. The work is started =
by

*xe3plpd

> adding PLL information and related function hooks.
>=20
> BSpec: 74304
>=20

No Line between the Bspec link and Signed-off-by

Regards,
Suraj Kandpal

> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index f35a9252f4e1..4185c8e136da 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4571,6 +4571,25 @@ static const struct intel_dpll_mgr mtl_pll_mgr =3D=
 {
>  	.compare_hw_state =3D mtl_compare_hw_state,  };
>=20
> +static const struct intel_dpll_funcs xe3plpd_pll_funcs =3D { };
> +
> +static const struct dpll_info xe3plpd_plls[] =3D {
> +	{ .name =3D "DPLL 0", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL0, },
> +	{ .name =3D "DPLL 1", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL1, },
> +	/* TODO: Add TBT */
> +	{ .name =3D "TC PLL 1", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL1, },
> +	{ .name =3D "TC PLL 2", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL2, },
> +	{ .name =3D "TC PLL 3", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL3, },
> +	{ .name =3D "TC PLL 4", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL4, },
> +	{}
> +};
> +
> +__maybe_unused
> +static const struct intel_dpll_mgr xe3plpd_pll_mgr =3D {
> +	.dpll_info =3D xe3plpd_plls,
> +};
> +
>  /**
>   * intel_dpll_init - Initialize DPLLs
>   * @display: intel_display device
> --
> 2.43.0

