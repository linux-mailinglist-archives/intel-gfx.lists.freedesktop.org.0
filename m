Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9641AB1A51A
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 16:39:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22BDC10E224;
	Mon,  4 Aug 2025 14:39:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cU/iSRKv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B8B910E224
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 14:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754318375; x=1785854375;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HovTR9KbpmLjNzaEQsPj81TrBTaKJfXEVfkWLEv1aAA=;
 b=cU/iSRKvGKiqnzrq6vmQ4+1hAvkd+UFbdCiQF4Yomf7S2OAOETw4O8Og
 Kbz5Ljt3cQPMoXVyQf91XiFzo9XVotRGAVISzkSh5hEIUzOKKXqWxvR/L
 C8YB5dpQFeh2RSLlGNIUi0j9iTkr83PWXZOHr8ToLVPlt8Zdkti3QmR/T
 E7qBZZUToe4EJ74OEP4G9ME1kAoraw8fWgUQazDBUpa1pIt8GK4R5Et+t
 nuV4ge2nqDJA+RbV3h9uKWDQHhO19WlINVcRU6fOWXrG1lccviCOhV+uw
 Pi6eu1giIvdbgCSbQVgtVEULlpaRNFyaJE+lwSG8HUxAfHmhq8G6dAM5j A==;
X-CSE-ConnectionGUID: VSr51HpLRFmbPKGN6B14gg==
X-CSE-MsgGUID: nwFZSGyKQk6kY7sIzWVYSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60412058"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="60412058"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 07:39:34 -0700
X-CSE-ConnectionGUID: r6IQmV3ET4+4UzrDqwWEeg==
X-CSE-MsgGUID: JHZl4AkxQ1K7AYYatDwUlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163441501"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 07:39:35 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 07:39:34 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 4 Aug 2025 07:39:34 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.59)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 07:39:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kP3tmf8s52ZTSZmsISuPVD5LTspvZDzA5Uh4DaQwCOct3ItOEGzwOB9Zs+xCnnuYGYsFnGOXVG4yjYU80dLGfkC5D34XzXwSysJIa3Y7DlITTkKMjAZMRhQGFB9DbkELglT0fM08C2F+NmQ9jkjJ1wZwIlxfwKRB2d+/UheoNKeXwEgC+3vfxn/s2vGa6XOzGAMcdTgoY3WyiKxCV1FkpVlFQe+m9vv5sX0ScKBJ7sJ+s2NBB98SaWJvKpxLylaHUlyLfNSxOBPnYOsVCcfP2TXqvWeqNHezwvucSLa+GcyNytMdVd43z1aTl9XdENe2OWIAQvQNFaNLpaSyXp71zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d5zg8ck7WwxrnQjmY85MPuD02jeiNq/lEGS9hJ1zoy8=;
 b=MZDP1+aRogRNTa4AoVzzhGeWxl0lw5ozsrfMxxUS1F/ZcRwpgsqsPOAT3IDX0gg+jE8CgnmcGWUutHXTLgAC/jSrfbV1oUqRuFnmnGYtpfOLpIJHsI4FUPKGXjI6FpUMP/3LqUO9P9HKWerGzgjKPcM+B/0dPmJDOWKU5ApKnKP9BNDY5Po7uKFpJwFczWmL+uHI35Y+4a2OjQLXTv5M6W6w9K7hnERQSEmoY9wHJcn41bK3tRUncINCB0CDQmdE9EVfhoAKiMzzAKF2TetTAaTK5UgJ60pMt/3xf/izb9KJFy9D2EAXx/hxxiPg7rshzeViKmH0Se8PXqMeW2YgtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by MW6PR11MB8410.namprd11.prod.outlook.com (2603:10b6:303:249::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.18; Mon, 4 Aug
 2025 14:39:29 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8989.020; Mon, 4 Aug 2025
 14:39:28 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Karas, Krzysztof" <krzysztof.karas@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Chris Wilson <chris.p.wilson@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, "Brzezinka, Sebastian"
 <sebastian.brzezinka@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/gt: Protect against overflow in active_engine()
Thread-Topic: [PATCH] drm/i915/gt: Protect against overflow in active_engine()
Thread-Index: AQHcBRV2PZRlo+t4+UaAKmxfhV0gq7RSjLEw
Date: Mon, 4 Aug 2025 14:39:28 +0000
Message-ID: <CH0PR11MB54441480D954AC9AB09610D5E523A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <xb3spla5mxe3y74hbn3pbhjdb7b6peopcwctfokf43qs54uu64@a5pgr7dctcrt>
In-Reply-To: <xb3spla5mxe3y74hbn3pbhjdb7b6peopcwctfokf43qs54uu64@a5pgr7dctcrt>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|MW6PR11MB8410:EE_
x-ms-office365-filtering-correlation-id: b30c8dd5-edd2-4951-9ffd-08ddd364b78e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?9EX+7Ele3OHaV70XnzA4NFOP/j9ZAZ7+aTgkPw0m30l925SM6PVO84crZaE5?=
 =?us-ascii?Q?ZQ/ZjC+ETYwN1M8Zw/FY6uFGWokbeKl0G7xIAx+Oqbe+ZuBX7pPuc/2YYt7u?=
 =?us-ascii?Q?YNr5v9/kT8piE9vNwMDZwUVMA1C5SDmYS4zXI7eM9g6Tc2c5TrS8c8yZx+FG?=
 =?us-ascii?Q?ox9RxVaAnMMoXu0E11j4ZTp3Xpx2jebn08v3g7D3T2r6NDZOMTACWRzHm5f8?=
 =?us-ascii?Q?5NBO/olyONL+x00g+Kk3Wp4OMVnyf7SUj4fbzMY3cPlXgzvEXTzvzZE96TGb?=
 =?us-ascii?Q?nGgk2wRZpQHiFhYv1k2NeLqbNgaIAQ8oNtUF+Se1LUWbnVUX7fkSzLb4V8ne?=
 =?us-ascii?Q?0oDukW2a+J56jnqYEaYth6Vr4mwbHCzfTF/XvaoA3HRF6u4pe+wwGysybr+p?=
 =?us-ascii?Q?CJFGq2T2oGkltX+6i/sXijFdW48J6SvolWBBzWmlSYyMNgotRb0nFm0cLrOe?=
 =?us-ascii?Q?Ha9C1KfKGe1dSlqnsKOQ8BAgWIq6uId0Rjp81hMUb43cefFoUvy1xnCTs0oW?=
 =?us-ascii?Q?rH3yRZYEO9ST5cHR/MkE47VeOFT2P1nbvEmpCc1IwTObh1vVM0VByBrASzYV?=
 =?us-ascii?Q?a3jWWdIR/zm6WlS1kmRJOobrdKyMpx+HaNC8paGP0jDbgyj2B4uPaWbghWHW?=
 =?us-ascii?Q?LMFvVG3Z4shn41ffYFr3T/iBfspdTsnb6hELZBUYCWP7j7hy7Nnr5B6VKd2c?=
 =?us-ascii?Q?0UN3dzC+a5eagwGaMvOmbLVnrp8JS/lhtuA5cCL6c5yO7JosgXLcfPcJC5mf?=
 =?us-ascii?Q?UnHxJnenSPA1n0szWqRMqkLlpEep2gdiv24+b3qINSFha/M6Ho4AO4nZ9d4x?=
 =?us-ascii?Q?jAGOra3TMfjEMlN+9lYAXWdCKn8ukmgm48SBOPhfATSjeC7cm5DI72Csue8a?=
 =?us-ascii?Q?9HuemC/HDorvBa4u0vxN/lbebps6xKWFVRG4ZSwZR7bu9aC2HhMxBIsZ91bt?=
 =?us-ascii?Q?6AAhCsACuQ6tnF5Y4af6oHuRv0pXmyB/5K+j/IVOL6OWrkHVxduBlEtWdVIt?=
 =?us-ascii?Q?HR2qO3EGRWGaKzDFRDqySF0p4a2HDpWNJrZuSj1W6DMVBKjSoh8RLHTvKZYh?=
 =?us-ascii?Q?btmwVyY8aODFhj3g9r3BXI8HUCIom2LDPSky1N+sf+xIiV6B+VKqmG3E/z0c?=
 =?us-ascii?Q?Atss+TeNN6J+DvUOurOZ2caKpcaWC1gLiMO0N75DG3wqxBiFcytKBvlZj0Fk?=
 =?us-ascii?Q?tCgCe3JDTOc0ZCm7aOFvN7HkbtXDoFP1RxYFCahuh9CPGX9hMqp/q65QoHZK?=
 =?us-ascii?Q?W1noBfOaKha8g3MJkDK8zC0GuBrnXnwir29AI/GW4dECjKot8uHfgANAr0b6?=
 =?us-ascii?Q?g8s3FhKhKMYUMXjQCXeNhRm4m+yftZHNz0OMuf00X0zQbUo+84bbPbb1UuPz?=
 =?us-ascii?Q?qvuCwqYVgjrWjKGi/v59BcWuyK27u/wo3T0gGAxdUFrquH19Vd+lTiXUnq7q?=
 =?us-ascii?Q?jQkRXNSPrtIT+jfHGHBOkSNfuhmVOwZMMMJ04DGb+No3cUwuYhZPCYXQpeG1?=
 =?us-ascii?Q?k/lqQU5hrGWTsb4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qsWkZB1d8ZQ8li7jmCb1+W1iOp/6TyOrgD/DRNsaI5ohiButZY+mmVyfaT/J?=
 =?us-ascii?Q?IonMTVHKZ0tOtXoD4RnIFMeULvBV5Cr+f4ZYJL1iyUwaeKTg3E6KjEZJ92Hg?=
 =?us-ascii?Q?amUvupwLY4qHCXZZ1iUJRcnba6INP0zwaiIxxzeCZpgppinnljmkBNPddlAc?=
 =?us-ascii?Q?pRiULlCueRfSnufqs00ph/wnpghKPMXJbcobrqmJwFtht3bNmScRSBmqXkjq?=
 =?us-ascii?Q?atM3ukAOo6Kfg/K7ggyh71aj0IPFot4ODYHQyAiQQqkgwowOHpJ4DTHK7gYw?=
 =?us-ascii?Q?ypMZ9kQiFPJxm+z66JlB/UjnaHlGkPQMxS8JkXZQx3e4x0urPJOCGVxTjE/E?=
 =?us-ascii?Q?Wb908XNhi5ZCb9oRU2S2+Pkb5MUiAVenxU/i1NaRf6r+4WBGsprOaUoZFALg?=
 =?us-ascii?Q?MPrmx5GcgwIA22+efHtnifx2Wp8XwUmtFCDuhzqfjIGzyHD4NgLD9AlXIjPP?=
 =?us-ascii?Q?se6BHIZ9/Hp5QvNu0EXAz5UbnjVIj46JzM+wXEerZcbtaUTbK2498jkeYYD5?=
 =?us-ascii?Q?eOzCnxuHEBaJ7c1p6ZZ/sX572Z9293yrhjuqdJiCQU4GkE9oTlowwbtKAMe6?=
 =?us-ascii?Q?muu8yHWAH/plSLfWQjMpjDCaBv6RHgCgQy8S7s8Mh7Q7Ks9DtUSazAB8S7NT?=
 =?us-ascii?Q?SNZroRJIPk60rNEprMJt050SMXNh3eplOHH93E3o+yHT6O5FDDjac2OfkXFY?=
 =?us-ascii?Q?pMX0SCUSkn/VkO0CaBP5sfyrTYw0OMNvTDioViDzuDHCUQMZsN5zpUahwlyT?=
 =?us-ascii?Q?LuEeYuROsY0OcOiD//mcIUlzErP4Ir1HCxVmBFR83ndAygAlYid8mDXqs4x0?=
 =?us-ascii?Q?v+xyiyeN+rGPr7sv5UFUqQoXpxQU6oPKjK1H98n02/AsaZZit8aFyYO5RN7l?=
 =?us-ascii?Q?8Uaa0oPCCqHXKonmLZkoDn6pugThwfM5jynItntYIe/0ijXxBuUZSvQcaOAH?=
 =?us-ascii?Q?nj24bW8eXa3p3a3jeqCRari/rICVGCFJUE1Mx5YfuXTJI411+wX2b7snJSc4?=
 =?us-ascii?Q?nJvei0xLcn0NVnfFWqW384CgYa83LLbj0uQvFtegliE9+MIVytr64hXw7hn+?=
 =?us-ascii?Q?KZ3RCmPXyB7k0AGEZ4wURtuJopMmbip459Q6UHAIpuNRo+myu7hxLQYN+s/F?=
 =?us-ascii?Q?0dkao277TJNM5yLEf+qt2l2QeZlZdoQv3K1xlBoHu3/zeo2y6pnaelmP+n6i?=
 =?us-ascii?Q?3QUoCay11JgHLay4otZoEostsfTYjv4x1GeODvJ+bMpc4waW+Bmblk/tIHaD?=
 =?us-ascii?Q?RT/RmDDCDJ0hi0xyegvN22jErZTb0FDD1n2SGYR/lXT7FaNOtkn6GhUt9S55?=
 =?us-ascii?Q?aWPw/mr5WSL1Yi4V9ik7rUEzVB9ZGkt5OKLlQfZ089dZECGrOqN45e1APVm3?=
 =?us-ascii?Q?MlXU/mMvFscng9dftFwUqhR2Rt2/11LbMWYuHdblFVnF9o1WOLK8QSh3PhHG?=
 =?us-ascii?Q?PgpJ3q8HqSu5Q8XWXF6/qnrgHQSUceD1mSSQG+7bfr5zBh+c5aqoecHOOoGW?=
 =?us-ascii?Q?nmxJi8LSrhzaqn9CJzcgZLC9XB3SC0TJByG6Kc37E3r7jxzubrGLyYaYADt5?=
 =?us-ascii?Q?wJK2M7nPPvwNNLLD3gQ6KuOZwaN4S+HAH7BtP9oiaMMJOyiuYyGaDxaoy2nA?=
 =?us-ascii?Q?oZrA2nj6JJbj4w1fs/HntxKC5VqUJgQ/OmAsJ+0QKfha?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b30c8dd5-edd2-4951-9ffd-08ddd364b78e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2025 14:39:28.6056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6eL31JQQiIeL8MeJFLzvMhvOa1/AwXVf1OYMEGiAi7vBBxMqkRytV3AEV2oklfae9evPiPWRqCTdxHQCsrEBXYovTnYAhSQoQCAnU9dMbos=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8410
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
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Krzy=
sztof Karas
Sent: Monday, August 4, 2025 12:57 AM
To: intel-gfx@lists.freedesktop.org
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>; Andi Shyti <andi.shyti@l=
inux.intel.com>; Brzezinka, Sebastian <sebastian.brzezinka@intel.com>
Subject: [PATCH] drm/i915/gt: Protect against overflow in active_engine()
>=20
> It is unlikely, but possible for the first call to
> intel_context_create() to fail with -ENOMEM, which would result
> in entering the following code block and decrementing "count",
> when it is set to 0 (initial condition in the for loop).
>=20
> Protect from overflowing the variable with additional count > 0
> check.
>=20
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/d=
rm/i915/gt/selftest_hangcheck.c
> index f057c16410e7..cc0798dd30d5 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -904,8 +904,10 @@ static void active_engine(struct kthread_work *work)
>  			arg->result =3D PTR_ERR(ce[count]);
>  			pr_err("[%s] Create context #%ld failed: %d!\n",
>  			       engine->name, count, arg->result);
> -			while (--count)
> -				intel_context_put(ce[count]);
> +			if (likely(count > 0)) {
> +				while (--count)
> +					intel_context_put(ce[count]);

I think it would be more streamlined to convert this into a for-loop instea=
d of
applying the additional check separately.

E.G.:
"""
	for (int i =3D count - 1; i >=3D 0; i--)
		intel_context_put(ce[i]);
"""

-Jonathan Cavitt

> +			}
>  			return;
>  		}
>  	}
> --=20
> 2.34.1
>=20
> --=20
> Best Regards,
> Krzysztof
>=20
