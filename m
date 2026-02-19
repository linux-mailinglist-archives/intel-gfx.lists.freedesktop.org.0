Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OF/fOPJ4lmkwgAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 03:44:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3043D15BC42
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 03:44:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4B0010E659;
	Thu, 19 Feb 2026 02:43:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gX5AKpB/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B380B10E243;
 Thu, 19 Feb 2026 02:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771469038; x=1803005038;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EsygDef4K4bLwi/zhs7t/EEGspyDyZnNuFEOHRlslNg=;
 b=gX5AKpB/c3UzfSZjAofT5LHFE+GugjH/Q0OlYc7aH1NzwAZKml1OcWBZ
 HCOMgzbsdqBrEpxQgZKjGTs+C4HWB23z8eQi3vtcTI9TCgajierEBUaNb
 nR8me7YLTQm64OK+znuaSXuOSoHKYkE0HvnLtfReU9mYi0sUuib27wPOO
 B2eQwmvSTJScfEwH3kFr7DfW1nsDTPAU+mHg9EF63B9fbc45FNzYJ2NNi
 kic96bzkdP7qqKM7Bc8eGtQ5OteypE3r0UiKEtvfSLoctduzZQJ2HbyV3
 7CAj4YJAkguZHL8h6yCrv7it9DbAKYAQEhAU4trobW+oxCZSZsAkgmxIO Q==;
X-CSE-ConnectionGUID: qdQY0rFRTV+rk3Jhh7+M3g==
X-CSE-MsgGUID: sEVxWxnSSxejgK08rtC0CQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="98015798"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="98015798"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 18:43:58 -0800
X-CSE-ConnectionGUID: yK6viiaqT2yKQVxawHU6mQ==
X-CSE-MsgGUID: 8p32pRoaRo66Aoew8RgpXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="213023194"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 18:43:57 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 18:43:56 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 18:43:56 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.27) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 18:43:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cDLeAVqLVBhoUUYeObG9yRqrAoWmML2FhELrtjxx/EFusA4Nu/psPVLSfy4Erub1DTR58qJjIhp0kOB8VIVOEKv2ZXUzvfxmjGwSr0vJtNVCQTLPgYEUR5YQjwGuqHora6Ui7MO4SQ8TcIhxBjFYkEXn5W+ekWpK//FUNAZth/JXWZbbgr8R2I+2y0nvu46xLzwHYCGUXJIPCzTYktjHLWnq6Lg374glZcAjQScPwxyP//oLp0qmOK2RQhIg6b5xnA2/Vf8kz7KKvyc5jovprKfPVbWOzMlcAD1ot9rWzYVEOlFu9zX+RjM/CWtyXwrE2ACQkXxSvIj38+Rue/zcVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YVV8vf/NiFlWg1xQOVcxdYnjO5/N1ob2qqQYEDYjEIA=;
 b=RTb2Fl67oDeZ89j41bokh/8J4cokoC60ilY8fUkOgHX39APCph1pNcG4E1nDkWwNXEpVlHXGdF8UQw4dijBsPirpye5zABc0jHWKgN8QzwcDbXtPpyUfMsCyqyh2RSvout15Enm1zN/8ShFzM//ICYuLFzRpc+r1adpYRQBXqZN0wGEG2zNPYzY/Q8/74ISS+MyHmLE5aPNZOtScEmnTkTCGxjl4A8sh7eb7iS03vBkKWa8UQ40+HmPDOb0wkHc+m8AdTuK79mooTTylSnLrgUdmDv9pgOOwmh1/Dha2VMDuQx0uxEnsDNk/tzEZAd4FagChmvg82wlNSnSzykzlaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH0PR11MB7562.namprd11.prod.outlook.com
 (2603:10b6:510:287::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Thu, 19 Feb
 2026 02:43:53 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Thu, 19 Feb 2026
 02:43:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 01/19] drm/i915/lt_phy: Dump missing PLL state parameters
Thread-Topic: [PATCH 01/19] drm/i915/lt_phy: Dump missing PLL state parameters
Thread-Index: AQHcnOQDaq5U/OGTIEu0qTk2kdefBrWJVnzQ
Date: Thu, 19 Feb 2026 02:43:53 +0000
Message-ID: <DM3PPF208195D8D412F3313F6E435A69E60E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-2-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-2-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH0PR11MB7562:EE_
x-ms-office365-filtering-correlation-id: 2ad9da58-c511-4c20-671f-08de6f60b890
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?VU3Yo2/IlyB/6xiFN67AX5gimqAMtTNtnntQ8gK0GqwWfLQWeaorycPMx0i/?=
 =?us-ascii?Q?F5nMgcatw+E7CwyJGVOlSbPu1l9fALxf+5F3Cqui0UJ5wJgiqXUrQAc460GX?=
 =?us-ascii?Q?jTzszk60UrDErvUHtVuYWGXn4GvOAcl2/0OPMJ+GZ2smbRvBU3oVNpV/8Nqs?=
 =?us-ascii?Q?VwUF5dA6iRsqgZUGZewAfRcHUMB3gMm03Y5yoHLk+YIsmnKbX89PsrFjps4v?=
 =?us-ascii?Q?4EZGDqHM63NnEMCFhnkoa9gg1dho+QnaKms3Oez4OsL6N6LRjFuzVPZB8w1+?=
 =?us-ascii?Q?1rlc3bHhrVgVJ4ymVNBwjxYLjH1qe3m3YHpLoPJ5hx+M2BlvClFkDMSYEMQ0?=
 =?us-ascii?Q?d0E2Tt7hKBwnNdr8ak/kcZBtsCO5cXMdGmPkdIdDhNZRgwJZOVqhAfZMXLBO?=
 =?us-ascii?Q?7SsTI1YWGeP0Jsd3ZnoWuKZDaeLygGeYxBfKajtkwCejeKPiL3Wg7grqzf21?=
 =?us-ascii?Q?NyMLjFZ3kp5QNSJdCOv/0crPDHGe5vSwob6G5JSNrMf6a+NslZPxk5NLmzgs?=
 =?us-ascii?Q?x5QbHsvmepCHZMYxAzNQDgzOs759iS+xq4Tb37ZP03iPTayqkWH0BkJuxSoN?=
 =?us-ascii?Q?NA/qltEH4FFeTC8XXeYdAGt+NkG/PgQgYW1sqszs5+37T2uBrMYUk7SgWv8t?=
 =?us-ascii?Q?b4pZoni2g69ysXywD71U6/8tF0354rdVHFs/w3j5oPxcJoRS3bfFaO5rE87e?=
 =?us-ascii?Q?KddjzhY12srzmtycrt+uNArbpNutvJRJMhxjV04L2lTk58mckfAYfc34rf56?=
 =?us-ascii?Q?DSy1fAsbhh0IXjQ8C9V7g2fS50huCh8f6cNI09tSTILcz3meMmdBHuAh+cAh?=
 =?us-ascii?Q?91TCUTgtlFmGDCkJQysgDZncKd1NzrMFQ/oJgs9o8GFsYCAgxfqcEbeOkxQa?=
 =?us-ascii?Q?Wy+96BhTcNbvfwXQNTAXXwpn5ebbnnfKtIpWdIcV9AqWHYTCz83g8rATVKC1?=
 =?us-ascii?Q?D3CLXhM+PbdWM3a+aic8CT10VOQ8NRqg85cUaL5huMFWbnUi+rF6ifjps3p/?=
 =?us-ascii?Q?ialo5pRmhiynl52HJwzwpRvBVLHAtqGlOAE7TKFGNmGy4FKBot4vh0S+U44b?=
 =?us-ascii?Q?41ZGhvken5fUamppo9cBTP3SrlPnRc1AufhxiAgLdpF4xkQWAqNqg6mRLRVf?=
 =?us-ascii?Q?lQwyxoU+Yd+9ylFTYh3EzSdmVGOMqQYKnVoejHCtBhrxAsw9Hs2885N+ZYkV?=
 =?us-ascii?Q?9K2mG4JmJvXmRXYhtRnHp9b/vgcuLrbK4VA1nBWe9yn6H7WZFGU/X3avXIcT?=
 =?us-ascii?Q?9XCQZdNRlyzo9wQmnM1OlnbVPUKI4dHqHt1UuMOVlWrOQdaVYk38jpX5AWfj?=
 =?us-ascii?Q?YHNMCVF4qeY574NZqSum8TOQ/mMFpEO5tQ5Fss+Sos0gIKmeu2EAb3ZBCNt3?=
 =?us-ascii?Q?fZChI6edT5q/nPmkKkPJDY88NCM2ABMb4QuW2WdDSERzKdFKs6ej9rfj8Eh/?=
 =?us-ascii?Q?7Na3w6Rh1+m2ETVfRVb4kzNHNeGW8+7YJnTYlQsS6IBuNyJRAs+9DP+IDb8U?=
 =?us-ascii?Q?+QfgedYuOL4AoRlmClNilhE5tZ+X4TB7xHi5c1hNrFzwDGVyI4TZl2EO2nQp?=
 =?us-ascii?Q?vjrIvi+Y45pvu43tivO7oYKBiCy7GaVBXaYqiLNz1Ry1xrkcoJgfSv+BwxMV?=
 =?us-ascii?Q?7jSw2YSQzmb/DMJaUY8We3w=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mmuJDmcTpI+6lUJNMxRCw+Aw2FFRWP9gwYYvx1gXm/QMaYaixuaB3tL7p6rF?=
 =?us-ascii?Q?GyPdAFdabYV2JhdcY01+f0oPPxU71vLjL2xVxK+pbBrHTkpBPSRsxo9sORdc?=
 =?us-ascii?Q?IFaSjGRf7OAjAXxX2FoogxA6rhgm9NcV2N5e1roePXS/sQHo9q16jteJFQmW?=
 =?us-ascii?Q?sgWVxwuRRHCrCmWCXD/CQiLJ8P9lFe2eWtBTDsNfIxXBKKQ+x0nKtWP//oXH?=
 =?us-ascii?Q?W7NX2qP5mQ6EQYIOh+s6KgaEqqU6uKCeNPtoIZz6luYNXoFvdF90MXlJr2Ll?=
 =?us-ascii?Q?PQC5B1bltUP3UW4JQniPH9A0U1IjpcTee1NXnI9rxfkNaAsWJpdiFyKG8Fh3?=
 =?us-ascii?Q?fWZJiv2g6l/hX//wbzhGezFJKg8dOsn1d8mFLXWv0i1Wcc4m7B+z76909ysF?=
 =?us-ascii?Q?VGFsFshgIZbRMZ2dtQ8Iz5irHgcKl6BrQsgYhvMgFLRpdUGivXa1pWpScA3Q?=
 =?us-ascii?Q?OrFE5pJW97jGZJoVx3O/gWvpE8NpeuvUt8bSh0OjNjhWSAP04V8yHTrrvJg5?=
 =?us-ascii?Q?Pe83J2mdGgWKcOuYJpJdRBeKu+ODmedgjZtqCpFSg2nfCTAJ8EFZrsajTtFr?=
 =?us-ascii?Q?1UPOy4HcUikmbxyrot8H/Xs41QlKsGZst2i0t/xUnOfbYLCej7tvYTDIb/dz?=
 =?us-ascii?Q?2urlPi9U4LYm/0FXRoyxOy5LtoJssVCkmcRrCR/8ZcA7ESu7t6oeYjjxxK4t?=
 =?us-ascii?Q?HgCHUKNcyHIHTyTjd3nryqCcJGjiKgMd/JE7dGv4wcdHVQ3giqnVEUJsRpq0?=
 =?us-ascii?Q?EtSgeenRbb+jAL6thWj3wqagl1jPaBIFH7QovIkdTqRa9+0+3EWyV9KvNzor?=
 =?us-ascii?Q?rSYreadZKqO7CSkTZbHd5usDwQU0K7JFvI55N3PvlTSJvbzXp5NY1Wo+AE68?=
 =?us-ascii?Q?p4C+mOf9/09LYujeq22IL1nmrxZ0F+sRZ1hEzB4emvVS5tKbHt4c+5ED1kZM?=
 =?us-ascii?Q?VN3lV/2YaH9TYXquFKkszlgz5WYCpKIbKl4r2sZcKsSwuhwS/7PxqjByfW4M?=
 =?us-ascii?Q?wp/gThdaQqTG65AVctAlCEYMfhc8AadC6E9JMUQo+gWeeqvDOLk3mtLTnw71?=
 =?us-ascii?Q?q6EyK2+RHXElyvW4OL5K8/rQPwXL2pEo6qo4yglH8VwdgnMHO6vlK4g9LMcY?=
 =?us-ascii?Q?BhKhfwH/TrnXmqyVv47g63rUKF8pGo83appZCYGRhsciZGuldrX3qdQ1jDks?=
 =?us-ascii?Q?uMr5aJ4gudtX9u8id5QwaCgRELz1Yb8oUSeDR0FRW8XHpJfGpqoNsqkU0yVO?=
 =?us-ascii?Q?+hpB6lq9hzdVI5/LlY8iv2I7zfPFeqfVDFvASrNi0wfKKfx7/w3UTLsGw0ZL?=
 =?us-ascii?Q?I66kUxEwheZ/rIxOWhOoe6ZBgg395yIcDpv6QQi62EfgH7ZDNQVqm2vA1i8I?=
 =?us-ascii?Q?Tao2KbdjB6BDtUrc4Lhi3QxYoJZ759B2T/6QryornOSho8VO2vYThXEjxQiJ?=
 =?us-ascii?Q?oADnpth/wFkLsj2vx3cEfM6w6FTWuApPGNKJmMsQowMSwlctwePvArKF7lAx?=
 =?us-ascii?Q?A352bLJGmfZuob94Ntmh21eqg8FmDskS3tIL/DpQPJ3/NzC6Sj33/ShIl/Wh?=
 =?us-ascii?Q?5BGpT/ADV0vJr7eK8ae0Apje0tWlQGBK1bmS/sF2HlG1X0/cvgyrcYLjNt/U?=
 =?us-ascii?Q?sY+ebYhZrWrRCu6eMEjcX5isDhX+YBzOkFnH3nJr5yoAPssLmtIT9pKbO1I7?=
 =?us-ascii?Q?KneOugx9JFtCuSxai4TWRW8SiuOgDNqXvrECJdiXMyQVShzUdIAKEzz/LGHP?=
 =?us-ascii?Q?hRX9jgYhjQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ad9da58-c511-4c20-671f-08de6f60b890
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 02:43:53.7066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1kdG9p4pddly/Sp581xyQJobaWfnyGgTewBawlonU6XyuWManoQaQp/G8pxk53t3rmE4Egktgf4GfTxijBzPKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7562
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3043D15BC42
X-Rspamd-Action: no action

> Subject: [PATCH 01/19] drm/i915/lt_phy: Dump missing PLL state parameters
>=20
> Dump missing PLL structure members ssc_enabled, ttbt_mode, addr_msb and

* tbt

> addr_lsb to enhance debugging. Readout addr_msb and addr_lsb from HW for
> HW/SW state comparison.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 27ad8407606b..9647afcea897 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2142,7 +2142,13 @@ void intel_lt_phy_dump_hw_state(struct
> intel_display *display,  {
>  	int i, j;
>=20
> -	drm_dbg_kms(display->drm, "lt_phy_pll_hw_state:\n");
> +	drm_dbg_kms(display->drm, "lt_phy_pll_hw_state: ssc enabled: %d,
> tbt mode: %d\n",
> +		    hw_state->ssc_enabled, hw_state->tbt_mode);
> +
> +	for (i =3D 0; i <=3D 12; i++)
> +		drm_dbg_kms(display->drm, "addr [%d] msb =3D 0x%.4x, lsb =3D
> 0x%.4x\n",
> +			    i, hw_state->addr_msb[i], hw_state->addr_lsb[i]);
> +

No need to create a new loop here to print address print it like you read i=
t there should be a nested loop
After config print there should be a nested loop let's use that.
Moreover it will be better because we will showing on which address we writ=
e what data.

Regards,
Suraj Kandpal

>  	for (i =3D 0; i < 3; i++) {
>  		drm_dbg_kms(display->drm, "config[%d] =3D 0x%.4x,\n",
>  			    i, hw_state->config[i]);
> @@ -2197,6 +2203,9 @@ void intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	pll_state->config[2] =3D intel_lt_phy_read(encoder, lane,
> LT_PHY_VDR_2_CONFIG);
>=20
>  	for (i =3D 0; i <=3D 12; i++) {
> +		pll_state->addr_msb[i] =3D intel_lt_phy_read(encoder,
> INTEL_LT_PHY_LANE0, LT_PHY_VDR_X_ADDR_MSB(i));
> +		pll_state->addr_lsb[i] =3D intel_lt_phy_read(encoder,
> +INTEL_LT_PHY_LANE0, LT_PHY_VDR_X_ADDR_LSB(i));
> +
>  		for (j =3D 3, k =3D 0; j >=3D 0; j--, k++)
>  			pll_state->data[i][k] =3D
>  				intel_lt_phy_read(encoder,
> INTEL_LT_PHY_LANE0,
> --
> 2.43.0

