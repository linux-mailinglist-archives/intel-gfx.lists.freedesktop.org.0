Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCfzCMYbHWoeVwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 07:42:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A35619C0D
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 07:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A132B112DAA;
	Mon,  1 Jun 2026 05:42:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EkCdgrvM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A674112DAA;
 Mon,  1 Jun 2026 05:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780292545; x=1811828545;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UZ07QqpYTA5KsCbUXiD63Bo+zHQ6sCnByHItsrvD5cY=;
 b=EkCdgrvMoEOZBaVSMpCRS8HVEAFnRL8wjHVbbkuGUxGtEQBmD2HmpylE
 Vk3ZmVDNY+kOFFD9ts3ZJPPZ1S1j2+wMhLliutUtKDhRyu7ueGivstRJX
 bkuMtftXRls5pyIqV+PWzmMF33HFfS2k/S2FAgCdWWVZPcn1D8wIK1qqq
 tVVQ72XpgYUffUlw3P+McqwOeyRMlHaqSPObwesJkmeGge1wqGyd/LuVU
 YIfbtYo7odkNDBdmD2PRpTywAcUDSBtK9u3ye8CFa4s176LaYue9vsamk
 stTy9Qd8+GwHKmErjfzx/6WQArKcoD2613qIzX/+YPrq4C+wipAI13NqL w==;
X-CSE-ConnectionGUID: jcEn8M51RvqFg9cx6KC5Qg==
X-CSE-MsgGUID: 7Jws4hhbTkWTWFQQcvs9mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="81035112"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="81035112"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 22:42:25 -0700
X-CSE-ConnectionGUID: jZO6bz2ISh+ja1psC1eupw==
X-CSE-MsgGUID: YBe+OEJyQhepJH1BvJiMqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="245296877"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 22:42:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 22:42:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 22:42:23 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.27) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 22:42:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zI4PJjVJMV3qOYuJE/wQ+rLwLLRLYbevsyuXJVFkxOTtwth0ua2pzouEqmCyk8hdZfxFrxl8RnadcrDW/lkzf9Pxyv4nR02pQucIxfOaJ2z+iXErPXp1V5RDbXeNwsDFvNcCvEn2fG8uunj9OPt3E5xHmQ/jAI6VN0VrNQQu7N2gQnno+MSWfbm+rD3i1hp8wFtqVxAvTE9oecoi8tuy35MxEDJ3F2lsoZSgbyrF85Vza9Oob9VFXaBetC8CwNKL2vm2y8GDPKlhuHqiV2Aer46trbyixVsgGoRubb5RlZCyla/dN/SeHLQ805TISIDzHb//WJA0cFuQphyzFswJ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Opkk40y3mmHEbwvvqZ+vUUqOhB963sm0DHzNGS6soqE=;
 b=ZmYCIeju74kpLTRzXHQpiZaTCWJmde4IrQ0uYpauJ5G7KplkA3LgNy3WADg1/5G6u5VBAEPFyad1wdJFTSM4ug1S9yNRZxG+NctD0bvJ5OvyCo35rK0d+uE2UNYEoclPZ3ioYVTu//nO/49jPN9D/j2lMuqiZeMjZ9gfD2Zq7FgXFgf+3esXycxbnYIJIgPtOS07Y2GgunS5sKG6fRzDQL8QeDEhG613ZSMmBhqxD2dqSxZmDfnMVAF1Sg2/eQ/ohFQRSnM9NzKeWyddwXEg1E5LzBI8+L+QtTBHlycOd3tnyUJAwW06KsUElVX5xJKUpU4KQPke2ytdYGVBviyY0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.16; Mon, 1 Jun 2026 05:42:21 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 05:42:20 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v4 04/13] drm/i915/display: Add DC3CO DC_STATE
 enable/disable support
Thread-Topic: [PATCH v4 04/13] drm/i915/display: Add DC3CO DC_STATE
 enable/disable support
Thread-Index: AQHc7USIUStHQf0n/EmQYLxlhzxTWbYpN5YQ
Date: Mon, 1 Jun 2026 05:42:20 +0000
Message-ID: <DS0PR11MB8049E4F5077945466B39A870F9152@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-5-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260526191826.3786009-5-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CY5PR11MB6211:EE_
x-ms-office365-filtering-correlation-id: fa86c96b-890d-4932-4585-08debfa08c98
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|4143699003|22082099003|18002099003|56012099006|11063799006|38070700021;
x-microsoft-antispam-message-info: dG2a1ZL0V5Csx2uoB2Kb6Cbbb0FYptpHKaN6cJVWC6jnBwRG7XpnMispajLgwCzsgzKQdGHnSvmVlQ2WkzqCoqRKEYdXkSH4WADfDChEzv/HSIATQz0v9YpmuEiwtmvN1+RuddxDwacGS+WVm5ECRtr3H9wZV9O4JJQcKOGXb6FURh+ZAE/PR2vhQBsjJTe7hx6EkICkaKZ0MLwNQ2SAA/o3crePHbHAk6XC9vVIcVbVynN8r8KWxaKK3F7/+z3+zYf5l3K45nsb3iyzgcp2Xh+4Pa6j4H7FZ5ZUSMvydlDqr/MPCdr3yGT5Am84eASl3QosK4fVjXJJqtdUOEjYpCnEf7RhIt0msm4YfKxCA/jK/JlLNd9zQQz+9HO3cO/DyIcKMBjkrE0ZiHDut14oaxSWNAtWYaIGyP+R0BLhrZOCbMy5Ez3e4HzJFTuJFEI894iSsl7ZEaEzsJHEt8xZnsnjDKIvagx02XgcyrKb8/loCMn3eIFI4li/DLfi6IkVgiupJGuQ4gH+t45W7FUrdAZnDcH6CJT82vzELzylYgCLqOGvn7HG5pyMdoRvg0T+Gbu8xXSnLzTkLeQFV0YQGX3MvJT0bEVWG25uREkTfLFbNRgTkzDYNU3W7M20XBwcXMMl9KPxeZZM7XzlfIm3qOmf8XjvHQpoGds7yF4ErWrrScMKBAHT4vVU9h9rEt6Mtn9DGj471yXL42ZHH3KzRFaZRTtdrNncgzAxCLif4S7f2hjUhKm713MwQ11mB1iH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(4143699003)(22082099003)(18002099003)(56012099006)(11063799006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?if1FPwnVKsxeATDKuk76zHoutFH9zihTHP3ULNo7giDdF+1+g3Xi3ifOrKrD?=
 =?us-ascii?Q?JnNyoBGMl2djG2P5sxYOpx3kk0K9UclkSezMTBqRKsXzuVcetBwh/8hiFqhg?=
 =?us-ascii?Q?DZWVexMOen4cJBLCMBkacj38iiKr+Zg75HpT8axTRGqV/x4S1EHMptFG2iWs?=
 =?us-ascii?Q?N/yVMdM3WOBjWGO6/rhvT/5YwHoHxh6RF0oivYh5mz0XEziWLMvOVQam17c3?=
 =?us-ascii?Q?EH1CqIBfUdWKPuz5BpaVQ0C+lPXgv+mj2OEmzNIBZ0AYDGK/ZKfuepaTNMUp?=
 =?us-ascii?Q?6FGjE+CPToh3TWsy80L3Rd9pJ5nTmnSbSiU3jxY2RyGEc1J8VfaOiZaRziUS?=
 =?us-ascii?Q?w0g4ftb/0iWuDb2OqQJoBuaLdqaFf83/qFrjopGCFjZJ2QZJSWJVOqepfPz/?=
 =?us-ascii?Q?0crlZMmxJdJkH6+wwCyU6Gw52ctLAu6zBNshVtE3bLQ6362ddmRvqTMYNvN7?=
 =?us-ascii?Q?RaL1ARVh8CJYfbTJSU3hEUpw0xlo+0mWiZkMxKkSeQE6wBOK7E3BMTJubEkk?=
 =?us-ascii?Q?vw39nSomoNGq86nhvuqS5L3WQIx/tjPJZxsCeyAHWGegcOPdfK32JC77lVHE?=
 =?us-ascii?Q?SVD/8uGQkdztpHduWMa+M1QYvZBw8LzDxZHL8AcTXBtc9iPNt583YGluR30/?=
 =?us-ascii?Q?vIjtuXpgDioQ3SWCCeJUB00YBVedK8YDPP0Kn2o62TpVdPfd5gkwrJ8NIsJ1?=
 =?us-ascii?Q?XTASsMzaTlCuBqyN1eM/cQ6Z6FmYEBKDQmg3DI7OMeoAQ0mtb/frv36+h7Wn?=
 =?us-ascii?Q?aVd7oNBrW663Av17p7z4yBqtXGklNnaPKRd3fLGRZMhQsrg7knd/m5GzjfM0?=
 =?us-ascii?Q?OwXlIux0GTvj/aYTFEqvcd/tvmW7tKHIHIllbFlPJU3ZxCwFjTKO1HJSf/mf?=
 =?us-ascii?Q?2OGE61bGfrGuDm7POWqjEyNqpD0VSBPXJCX+iSFFwKYGJB+yhrLnzzOlqMvi?=
 =?us-ascii?Q?85y/Gi6GDnpyoOC9uhXVvy/Xe6UiXqM7YasiQ37qYdm9DjIVjhQq54zPBbK+?=
 =?us-ascii?Q?yFUNbXm1wXyOsfYVUL6q4QvwSCuIZjOLEeEwrtdywFdeZ8hZzTwrUJ8rpSru?=
 =?us-ascii?Q?eUfAGnb+qohSjF7J1m6TbKwxc/eUrlqGRcabsZXABKldyAJpkuIWTD90B5ix?=
 =?us-ascii?Q?kE+oZh5zZ6gPb02HemFpWF7kHUnp49CldrTpCITUjDroZekjv96OPkEuhhvB?=
 =?us-ascii?Q?JMg7d9jZeQf5VCBddI2sLUqieqRmran8EaqRoXSLDYPIJKkiAxq+AI4cBzlN?=
 =?us-ascii?Q?glM+7JSDl3MknjvKAoZofhCKzRtFJohREniKnk7gVHOQ8RN/UyoRr4ss5c58?=
 =?us-ascii?Q?D/tbgSenPJdxB+aBAcf0XKX80FhUxPOAqhu8mayt1l4JfDuRQTA4LSFXauIa?=
 =?us-ascii?Q?HX4QGG2PPjmN1kX5gDhKlZ8uK4Al5SQeZ14r9iSbAw4mggVgVoTIapIxDmGu?=
 =?us-ascii?Q?IPIdJqSCxkydlGuLLi5j3xIv/3VEY7TALp2dsPyqe2ZYUazfd36N6d2D1qa9?=
 =?us-ascii?Q?deVWj7hDf4KhNL0y++zSZI6Pz68QL+QOYtWxIpo53idFODKR3bf10rXhPJWW?=
 =?us-ascii?Q?i+F8tjDqksQJ4bwir+e5nh071d9HvgnS1TglsqU/Fxqk+r9fd4yTFxbJ9e4V?=
 =?us-ascii?Q?3usreyRLcAhiWLlnNYM8KTWWvRuJW6PJjQeHWpIyQ9r5IT6DuimupwtOqC2j?=
 =?us-ascii?Q?jmh5pFzgBNvr2F1pC1j0zKUpFpqiVdZ/vEZ95vJq/VlPoAoeLnkBmCgkEywc?=
 =?us-ascii?Q?A8fhlpR5Lg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: m3+HAwDeiFKBE9QAi8VhhcoJqUEPQ1nrCuJhxg0MZiUibajH0rSTacSoG5dGAK4/wcb1n0J0WWnDA5S/ujI5i1DQF94OEyV04dtT4mvIDCq1JwIi7f83e4gcLeNi/Smw/cC9Vz9K2A2YmlbIxtvZN2zMSRI8wAYRuC6Xd59tYEBgfUmKNRJLlZJs5M7Wrc1mNiOUi1tpfOtWoIeRIODQaX+TYICH4dD+yoNgnvQCO/IalFBSIx4OCEpnHsTe1/0Z5eU31R/6glV6Gx3wt7A54toZN2x6l/w1mGjvF6B/3E/BaDG6yHpwtAGZcUmJqGNTM1xNexWfj8N9dYK/KTX2eA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa86c96b-890d-4932-4585-08debfa08c98
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 05:42:20.7026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FBq3NugLchmVWo5yBzGqynPwHFVaxt5nM2pnvUs5gtxXxglHRl/I9/W1yzRBQ0teKxZjxTC5LfyY28zIYDRKUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6211
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 77A35619C0D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Wednesday, May 27, 2026 12:48 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [PATCH v4 04/13] drm/i915/display: Add DC3CO DC_STATE
> enable/disable support
>=20
> Add DC3CO handling to the dc_off power well sequencing and disable the
> DMC wakelock when exiting DC3CO.
>=20
> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  .../drm/i915/display/intel_display_power_well.c  | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 611f784d8a7a..3ea080d0e21e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -866,6 +866,13 @@ void gen9_set_dc_state(struct intel_display *display=
,
> u32 state)
>  	power_domains->dc_state =3D val & mask;
>  }
>=20
> +static void xe3lpd_enable_dc3co(struct intel_display *display) {

Better to add a assert_can_enable_dc3co() which is followed for other dc-st=
ate programming.

Regards,
Animesh

> +	drm_dbg_kms(display->drm, "Enabling DC3CO\n");
> +	intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC3CO);
> +	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC3CO); }
> +
>  static void assert_can_enable_dc5(struct intel_display *display)  {
>  	enum i915_power_well_id high_pg;
> @@ -1054,9 +1061,13 @@ void gen9_disable_dc_states(struct intel_display
> *display)
>  	}
>=20
>  	if (old_state =3D=3D DC_STATE_EN_UPTO_DC5 ||
> -	    old_state =3D=3D DC_STATE_EN_UPTO_DC6)
> +	    old_state =3D=3D DC_STATE_EN_UPTO_DC6 ||
> +	    old_state =3D=3D DC_STATE_EN_UPTO_DC3CO)
>  		intel_dmc_wl_disable(display);
>=20
> +	if (old_state =3D=3D DC_STATE_EN_UPTO_DC3CO)
> +		return;
> +
>  	intel_cdclk_get_cdclk(display, &cdclk_config);
>  	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
>  	drm_WARN_ON(display->drm,
> @@ -1092,6 +1103,9 @@ static void gen9_dc_off_power_well_disable(struct
> intel_display *display,
>  		return;
>=20
>  	switch (power_domains->target_dc_state) {
> +	case DC_STATE_EN_UPTO_DC3CO:
> +		xe3lpd_enable_dc3co(display);
> +		break;
>  	case DC_STATE_EN_UPTO_DC6:
>  		skl_enable_dc6(display);
>  		break;
> --
> 2.43.0

