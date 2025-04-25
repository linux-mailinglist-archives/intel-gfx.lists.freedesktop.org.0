Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DB5A9C041
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 09:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E41710E8AB;
	Fri, 25 Apr 2025 07:59:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mhUf953Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3435E10E8AE;
 Fri, 25 Apr 2025 07:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745567966; x=1777103966;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+1mPwjEt7nK9XCzdWR+rv3wOifPIesZBxJ1svLxqGlk=;
 b=mhUf953Zzb6jw4jZU+2me1hHr3JHGI7shhN5AZ4ZgbMlhzJRlMQZ7R/7
 eVePT0sPuV/OYhAgWmt0PbCPEY2/S3AfhK+WBJu/Ss0gkmZa93ynmrBsw
 yJTXO+xXLC/6+k9GdvTtVlQKkK7XFHbpqL17Ea5gywcY8N+zlrDAZ3Pau
 1kmdjDBI0v4gzz9JpqsLJKV77wUfJchRv1Aty+czybuyTo46kMeQePg9C
 GJURx1NvelkDX2jLRWBwkwhjanulF2ONngRxPntoPHvAZa462JDVYk9pC
 HxavdBFSSwV26ESqOmwi/fe9v95KbUUyTP/qgxs6IV8SIT315q+7zkwVw Q==;
X-CSE-ConnectionGUID: E44ukWeoTwqvrFBtRMxKXQ==
X-CSE-MsgGUID: 8MHSCmceQ6a2fjXDsn3NVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="47316334"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="47316334"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 00:59:25 -0700
X-CSE-ConnectionGUID: LxNI6MFqRuqyaQaIgJpKbA==
X-CSE-MsgGUID: 53rR/BXnQIK4Rd3fMUvx1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="132584731"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 00:59:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 25 Apr 2025 00:59:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 25 Apr 2025 00:59:24 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 25 Apr 2025 00:59:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ntQ3z8Yao04B6Bbb1ZTc0169J1kuOVRrhhYQi8bYXe8INtOQo7arq20lPU1kygeG/uF7XGLlRJCElIAXigA8tzJElgCKXp1LPVmsW5Ruhc7uST6IMcghS4NSCHejC4ErPn9CcrVor6Xfq3QKvoB+M9j4z3Z1UnXa1kdUbpu/sMkt4jafn+jUTZJxhQVJljD7JtvCWxXtXPvrJS1P9kt9dek65KCsuF7iuoxnPY7JfZkflg0ZaAv9oLpVHCdS5M631cAPFu8AriKCk6LKekQX+Wo7W2khiVMWzY9bOtpr1rjwU8HEyvkO+sQWbYlScTbMhU1/2IPKFwHkKER9lTPT2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+1mPwjEt7nK9XCzdWR+rv3wOifPIesZBxJ1svLxqGlk=;
 b=EtgFeuB/ACtcIMIxMnof0x39tjZv2KCwzg8mnmOk+B25aPjbtO1AtasFtIa55h8cUG0oA0a1rbC/Z8EN9ae8OUa92oi/rigGRB+iasXsfAa5wm9XeF6DQbV2Linsur3V/cbJvb11Nzcy6ORanCtP8xVIgrhne2uK1qFr9fnbX4U3I5HBVSy8skiBoc4Tky8iGRtcUWxKhOCXSuKcTWkOP9h6kHYp87ykx3tHiy49EdhKzIv95/f82uBqQX/bFokZZ/38EQ/r5urUv+TxzgZSZw3q3MU7Tz6Hm4pbxDsZbr+pl2c59a3wNjY6qf8sSW72BsIAm01PtnGU1CLtkCdo7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ5PPFD56C4208E.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::858) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.26; Fri, 25 Apr
 2025 07:59:21 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.8678.025; Fri, 25 Apr 2025
 07:59:21 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 1/2] drm/i915/display: Ensure enough lines between
 delayed VBlank and VBlank
Thread-Topic: [PATCH v3 1/2] drm/i915/display: Ensure enough lines between
 delayed VBlank and VBlank
Thread-Index: AQHbtDpUCQg/PKsc2USXORRJ5WjfybO0BC7Q
Date: Fri, 25 Apr 2025 07:59:21 +0000
Message-ID: <IA0PR11MB7307783802290A436817CBD0BA842@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20250423102704.1368310-1-jouni.hogander@intel.com>
In-Reply-To: <20250423102704.1368310-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ5PPFD56C4208E:EE_
x-ms-office365-filtering-correlation-id: 4f147c3d-9163-4b59-17df-08dd83cf164f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?OUNua3lPbk0rcjVGc3NleTdOdUFuSnRCQkFkOU9GTHNYcUt3V1RwcFVyYjVC?=
 =?utf-8?B?N2lHT0xtMUlyTDVXYzF2RVByNWFEVlBBSXR3T1M3UVhyMUc1Z250d25DWENy?=
 =?utf-8?B?ZW16SFdOeGFxelhBc1JwdTRCcGd2Q3FFU1N2dFZiWlJLdVhZVlFsRDNPYkM5?=
 =?utf-8?B?Vlc4VlVOUFZKcVZYU0RTMEYwRXcvNjFYM0FkZmlJSGhmRWJYVVM4Z2NtaWgw?=
 =?utf-8?B?dDZXS2dnMjVtT2hIWXE4VG1FNVV6K1liLzZMVGhFc2tGUXB5SjMxTllsMlJV?=
 =?utf-8?B?ejFZQnl1S0tlOXJPUko1OHh6ZFhNSVJvTVJyOXNVcWJrdDF6cWlnWnIwRkZj?=
 =?utf-8?B?ZWxJRWN1UHl3VEd0eFlRSEdZU2tiWWwwT0tXZ2ZpdE03ejg4YkxTQjlZWWtS?=
 =?utf-8?B?WGNLVHh3L1ZjY0lVTzhBZ0pJN2lGVzZ4UnBoTjB1bUFFNUxLSGxuTnB0VU5x?=
 =?utf-8?B?WWRxckNHc3JtNjFsM1Q3MzVwaTAxR2pINzZSWkthVEZmNXgyWStiS1BNQ0Jr?=
 =?utf-8?B?cUp0QXc4MkYydGR3SS82djl2azBvSUx2VDAyRkIvekNpTEVKMXF2VHB5cTha?=
 =?utf-8?B?eE1Xc29vS0IzM3N3WitqdDFldkxHTTlHZ1VpMFVScEdPVGt3TzM1cytvNk13?=
 =?utf-8?B?T0ZuSTRWanhsalZSUjZtU2xtMnpKSzlnd3NNSXlqRll0SVcxaWg3MFp6K0p0?=
 =?utf-8?B?NXp1WHEwNXAzNVZKejhScGtQYUN0VWFTaVh1OG9HTXRyT1FvN3FoeW5lUVds?=
 =?utf-8?B?TjBUNk9LUVRaTE93U2liak9ObDBac0RMQlplU3Btald4WFJQWU1QeEFtTXl4?=
 =?utf-8?B?V2cwRXVpbkVZN21XOWJYNEdGZUdFV2p4OGMxbFFjRVNmU3N3RXdWeFN2VWhI?=
 =?utf-8?B?SWtTTEVCWnROckNxVFMxcGd5RXJjZmJtZ3luenVMTGE2Y1hTYm42c3J0RE9n?=
 =?utf-8?B?WlU2VHhHWURMdUNpT2tDRHpqOFN2YmJzUWZGMytpYTkzUUpYMWU0dlQ0WElh?=
 =?utf-8?B?L3NHeWRYUDRSM09nWHBPNXFLaHFtdDlsWnk5OUxlcjVnUCt2RmI0VEZNTmlF?=
 =?utf-8?B?SDMzbnc1ajBiVENGNXdKc1NNLzJiaExjUGJ1emk1V1VTYjE5aGxSemd3VjdP?=
 =?utf-8?B?bmUzNEtTUTlOZzZReHR1cUFHNGFmZ08zOTUzUlgzVm0rd2xJRWdZU2RlMm1M?=
 =?utf-8?B?M3IrS2ljaEdOczhvbG41OXI4QTlhYTQvMDdCOGUwTERjQWUzQWZuVFI5OFdi?=
 =?utf-8?B?K1JnVW1EeDRQRTQzMDN6MFN5VXlMWmREUVNra3pBdmtrSHV4SGVIZTJVMExB?=
 =?utf-8?B?RnFWMmc2dzZCZTFJUmh5REtVQWhpVmwvZUtvcjFLN1Jtc1h2bk5DdGcyVHBi?=
 =?utf-8?B?ZnpYbjJvTUdWUE1rZmhzTlUxWDYra0d5Z3dmQU1qUDRPOWtBekdxaXl6b1pC?=
 =?utf-8?B?bzhuSnZoU3NDOGZTOXA5RW5GSFdVdGNtNUNXMUZFY1JnaVdDNU54bHlJWTNo?=
 =?utf-8?B?WCtUMDRIdGd5UmRGbnJiN2RHek5QQjBKMEl3MlFmOFlIZEM3ZmdGc04vMk1s?=
 =?utf-8?B?SUtidWd4WDNUR0x2VzgwT1huRWJmMWRqV25jaGN3Z093ZCt5WE9SY01xR0NC?=
 =?utf-8?B?c2loSmNNZUpoMkZRUkdZRXpDOFVESXlndkU0czFCTXZYMk0xWkF4YUk5Yzdt?=
 =?utf-8?B?aGluQ0QrL3BpcHN4UjVQM25rRXppVE5wSStER2h0MVh1cWlXdmRnV2p5cml0?=
 =?utf-8?B?S1JjeE05WVFjTnZOck9YVDRXS0xtdHJTcm1ZWGtSbENOMnR5aHdpMXQ4NFo2?=
 =?utf-8?B?UldFdWdUcGxpZXBrdU1BWWp1aC93WDJJdDlFUWxiOHhYRU1rRU9pR2g4bXJC?=
 =?utf-8?B?cTZJVTRid29lZE52ajkxcmlXeVo4dk5pVnhWVzFrQ0dGWjdXNk5DRUhFT1Ra?=
 =?utf-8?B?SnRwVmFtQlVEYmpMTnZtWVZwbndRb3ZJSmp5Y1R0QWRZUnkrdFh1elFxU3Fz?=
 =?utf-8?B?V1oycTlnd0NBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Yi9wd1ErTnBabjI0VitrY0YrZnlvS01XaWFnMU04TXhjNFpxSW9jRkRiZ1p6?=
 =?utf-8?B?M213SGs1RS9obXVPdTZPdEdodFZOV1BPVGdLQkJQekpDMm0xQnN3b04rOWlT?=
 =?utf-8?B?VWw1ckN4VkhkaUcxMmVjZWV6ZlAyN1NHUUlCYWM3STJyQm1HSUlzZTliZnl3?=
 =?utf-8?B?OVk5RG1FdE1TWTRuTjltQW5zRCs2Zi9JY1ZneDlHR2NPY1JqNGdycWl1RkIx?=
 =?utf-8?B?eTNoZFNTT2duWDA0Y3docE5JZkZadVRsamxLYXdQd3BpRkorTFpnWDNmdWRS?=
 =?utf-8?B?a0VkM3A0R3ZpNVBzSFpYdHFsWllXODIvS2hhQklOQVd4bWdvR0JsWElaaGFR?=
 =?utf-8?B?TGttS1BWRFJTUUFBU2ZmeHZqbTQ4QWZteGZDOTRlSlRYNTB0cENwWHlmVFB2?=
 =?utf-8?B?ai9UdGRkNzdvNFVtQkcrUHZUNS9mZGw1dUs0b1krYW5vZVVPMDhIbkl2U1VJ?=
 =?utf-8?B?WWFiT2JFQmtVcE1rdnRyUDJicVlCaFNGTDlZNFFMVU5ZV2dzbFpsZE51TUZw?=
 =?utf-8?B?bm5HYmVhNXhFUzk4UWNORE9yZ3Qyc0tiRjBTVS8vNjRZUFZNMENYREJlZ0wz?=
 =?utf-8?B?NDl3UTU2TkI3RVU2NFpMdmk4MHpDcFZFZVZMUHg1OWFKa1d2WFVpY29yYUIw?=
 =?utf-8?B?U2FBNG1oQXNDbVdTc2xrV25OTnNWM1FCdGRWekFLZENLdjN0N0M0ajBMOEpZ?=
 =?utf-8?B?UFA2MWpnVU5BaXRaYWZ3aE9DckYwbEJsaXhhTTJRVkFvQnVxVGtsbklKYk1k?=
 =?utf-8?B?ejhVdnM2WmxvTFY4UEZJdVBzRVRzWVJLOTZnZGFvejFwNVc1aExEWVVJVFFo?=
 =?utf-8?B?V2NOR0VOazZCMEw5cFJFNGVvckc3UnZvYzhvNm5ScmcvK0Z4L0tuQW5kbk55?=
 =?utf-8?B?UkdhZ25mczhMUUd5NVgzV3ZpcW1LTFRJbEVXK1Z2czBDS1hXVjZ6dHJnRXl3?=
 =?utf-8?B?blBMT0FFMGJPekowZG9iSngzZ083aTdXQ2RCQVNPa0hJNmNZWTNxMDB6WlVz?=
 =?utf-8?B?Y1RrTG1aa2Job3F2cUlYcjRzUnhXU3B0UnNVb2tET2xHV2lndDdzVk5TOFYv?=
 =?utf-8?B?Sk9RYm4rLzNpdmNDRE1nNDAxSytaMzl6MDZTU3RWTUJNVmk2SW1DMXhTMDFk?=
 =?utf-8?B?ZEc5alJYYkQwd00wSHFGQjVDRTh6U1R6ME93eGd5VFJxdXkzeXl5MlN2bVJl?=
 =?utf-8?B?cnUraUlMOEI1RWVzSktCbmxHV2tMakdReFRwVFJJVVdOQ3A1U0J3YWVOVm9z?=
 =?utf-8?B?SGZwNmgxaUdXSWNCVzQ2dkppa05EL2hjdUc5dW1IR0F2c3QvcDJuUWtDN012?=
 =?utf-8?B?RWFCaWl6TFJXTFpwT2FwWG9uVmNjWnhacWc3N2RrdWRnMzBoWVZ6U0k2clVj?=
 =?utf-8?B?dWJZVTF5cDRCSk85NzlCdkNudjFOR2pheUNVbDAyV1o2c1VRb3YvT2hvZUVh?=
 =?utf-8?B?dWtYdU43N1FraFJDdURNenZTUDNZMCswZWNSZjJtNUJpZTUwVGU1YkVQTjND?=
 =?utf-8?B?SzAxS1NYNEVRRjhBWGFUbHdPbjN0Y0lnekNpWE9qWTVYWGNWMFNJVUcrMEM1?=
 =?utf-8?B?QjJKL3gwd0dydlZwaDlxNzhHQzVoQ3JyeFNXWXB0TVUydmd6by8veFZvYzNw?=
 =?utf-8?B?anhjeVJVUmJZTkpKOVlaTDdGTDArMWNhbTUvTlY1QnpUOHh5QkM2QjZtam9q?=
 =?utf-8?B?eUNPRkx2b2taU1J4cjdkSk1XRTZsN0FRVWczeGVlLzJaQkpVMUxkWHdkSmcv?=
 =?utf-8?B?NVJFdjVrNkI0aHlXNFpYRC9jamFkRTdVN0NMaCtaRXMwNGFJZlpqUHZ2UlFv?=
 =?utf-8?B?OWVMUGN4d0ZkS1RuWU1UdmpaNjJCa2tTV3ZmQ3h1WGxNQkJ1SXlUeDkvZFhz?=
 =?utf-8?B?UmowbkI1QjI1RmZ4QXhGYnluaVlUL2NJTCt3Ym95K0YxcHZlUFNKNmt1OHJP?=
 =?utf-8?B?OU02eE8yNG1KZXZFTkFJWGtLcDhvU3dWVVAwcTNiRzNBM2tZZENQQThoakRZ?=
 =?utf-8?B?bnd2WldQOXJrYlVwRjhrbmpNeVB3MVVKK1cydGtPRzd2NkQxYm1qZmR4NHBJ?=
 =?utf-8?B?RnBYVTZwRXVVQktIK2Q1TG02VjNaMWxteFVkK0tScEZGejFGYWh5VmVXVkdz?=
 =?utf-8?B?cWpIaHNmRFJDV1N5c2haNjFRVUdBRVJxbEkvT0ZJdHFlbEJJcUUzZmhoZExX?=
 =?utf-8?Q?UzpUcPPO7sXe3MCR1EHZsdjRZD/Q6TfRNVCvGG6wrG+n?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f147c3d-9163-4b59-17df-08dd83cf164f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2025 07:59:21.1667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FsYJZ2ODWXjOh2lE1YWzGvxt22Gcmfdx6+oSzxDwgQKb15u4gJ3qTlBQiAD7Z41AjUTpS/LuperCs8VyEkGbeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFD56C4208E
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBXZWRuZXNkYXksIEFwcmlsIDIzLCAyMDI1IDM6NTcgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+IFN1YmplY3Q6IFtQQVRDSCB2MyAxLzJdIGRybS9pOTE1L2Rpc3BsYXk6IEVuc3VyZSBlbm91
Z2ggbGluZXMgYmV0d2Vlbg0KPiBkZWxheWVkIFZCbGFuayBhbmQgVkJsYW5rDQo+IA0KPiBUbyBk
ZXRlcm1pbmlzdGljYWxseSBjYXB0dXJlIHRoZSB0cmFuc2l0aW9uIG9mIHRoZSBzdGF0ZSBtYWNo
aW5lIGdvaW5nIGZyb20NCj4gU1JET0ZGQUNLIHRvIElETEUsIHRoZSBkZWxheWVkIFYuIEJsYW5r
IHNob3VsZCBiZSBhdCBsZWFzdCBvbmUgbGluZSBhZnRlciB0aGUNCj4gbm9uLWRlbGF5ZWQgVi4g
QmxhbmsuDQo+IA0KPiBFbnN1cmUgdGhpcyBieSBhZGRpbmcgbmV3IGludGVyZmFjZSBpbnRvIGlu
dGVsX3BzciB0byBxdWVyeSBudW1iZXIgb2YgbGluZXMNCj4gbmVlZGVkIGZvciB2YmxhbmsgZGVs
YXkgYW5kIGNhbGwgaXQgZnJvbSBpbnRlbF9jcnRjX3ZibGFua19kZWxheS4NCj4gDQo+IHYzOiB1
c2UgZXhpc3RpbmcgaW50ZWxfY3J0Y192YmxhbmtfZGVsYXkgbWVjaGFuaXNtDQo+IHYyOiBhcHBs
eSBsaW1pdHMgb25seSB3aGVuIG5lZWRlZCAoVlJSIFRHIHZzLiBMZWdhY3kgVEcpDQo+IA0KPiBC
c3BlYzogNjk4OTcNCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQoNCkxvb2tzIGdvb2QgdG8gbWUNClJldmlld2VkLWJ5OiBBcnVuIFIg
TXVydGh5IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0K
QXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgIDIgKw0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgfCAzOSArKysrKysrKysrKysrKysrKysr
Kw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaCAgICAgfCAgMSAr
DQo+ICAzIGZpbGVzIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDZiZDU1ZmQ5
ZGZmODUuLmE3YjM1ZmMxM2Q3YzggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0yNDIyLDYgKzI0MjIsOCBAQCBzdGF0aWMgaW50
IGludGVsX2NydGNfdmJsYW5rX2RlbGF5KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQ0KPiAgCWlmIChpbnRlbF9jcnRjX25lZWRzX3dhXzE0MDE1NDAxNTk2KGNy
dGNfc3RhdGUpKQ0KPiAgCQl2YmxhbmtfZGVsYXkgPSBtYXgodmJsYW5rX2RlbGF5LCAxKTsNCj4g
DQo+ICsJdmJsYW5rX2RlbGF5ID0gbWF4KHZibGFua19kZWxheSwNCj4gK2ludGVsX3Bzcl9taW5f
dmJsYW5rX2RlbGF5KGNydGNfc3RhdGUpKTsNCj4gKw0KPiAgCXJldHVybiB2YmxhbmtfZGVsYXk7
DQo+ICB9DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gaW5kZXggMTI3ZWVjNDI3MmZkYS4uMTA1ODEzNDQyMmJjZiAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0yMzg1LDYgKzIzODUsNDUgQEAg
dm9pZCBpbnRlbF9wc3JfdHJpZ2dlcl9mcmFtZV9jaGFuZ2VfZXZlbnQoc3RydWN0DQo+IGludGVs
X2RzYiAqZHNiLA0KPiAgCQkJCSAgIENVUlNVUkZMSVZFKGRpc3BsYXksIGNydGMtPnBpcGUpLCAw
KTsgIH0NCj4gDQo+ICsvKioNCj4gKyAqIGludGVsX3Bzcl9taW5fdmJsYW5rX2RlbGF5IC0gTWlu
aW11bSB2YmxhbmsgZGVsYXkgbmVlZGVkIGJ5IFBTUg0KPiArICogQGNydGNfc3RhdGU6IHRoZSBj
cnRjIHN0YXRlDQo+ICsgKg0KPiArICogUmV0dXJuIG1pbmltdW0gdmJsYW5rIGRlbGF5IG5lZWRl
ZCBieSBQU1IuDQo+ICsgKi8NCj4gK2ludCBpbnRlbF9wc3JfbWluX3ZibGFua19kZWxheShjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiArKmNydGNfc3RhdGUpIHsNCj4gKwlzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+
ICsNCj4gKwlpZiAoIWNydGNfc3RhdGUtPmhhc19wc3IgfHwgRElTUExBWV9WRVIoZGlzcGxheSkg
PCAyMCkNCj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gKwkvKg0KPiArCSAqIENvbW1lbnQgb24gU1JE
X1NUQVRVUyByZWdpc3RlciBpbiBCc3BlYyBmb3IgTHVuYXJMYWtlIGFuZA0KPiBvbndhcmRzOg0K
PiArCSAqDQo+ICsJICogVG8gZGV0ZXJtaW5pc3RpY2FsbHkgY2FwdHVyZSB0aGUgdHJhbnNpdGlv
biBvZiB0aGUgc3RhdGUgbWFjaGluZQ0KPiArCSAqIGdvaW5nIGZyb20gU1JET0ZGQUNLIHRvIElE
TEUsIHRoZSBkZWxheWVkIFYuIEJsYW5rIHNob3VsZCBiZSBhdA0KPiBsZWFzdA0KPiArCSAqIG9u
ZSBsaW5lIGFmdGVyIHRoZSBub24tZGVsYXllZCBWLiBCbGFuay4NCj4gKwkgKg0KPiArCSAqIExl
Z2FjeSBURzogVFJBTlNfU0VUX0NPTlRFWFRfTEFURU5DWSA+IDANCj4gKwkgKiBWUlIgVEc6IFRS
QU5TX1ZSUl9DVExbIFZSUiBHdWFyZGJhbmQgXSA8IChUUkFOU19WUlJfVk1BWFsNCj4gVlJSIFZt
YXggXQ0KPiArCSAqIC0gVFJBTlNfVlRPVEFMWyBWZXJ0aWNhbCBBY3RpdmUgXSkNCj4gKwkgKg0K
PiArCSAqIFNSRF9TVEFUVVMgaXMgdXNlZCBvbmx5IGJ5IFBTUjEgb24gUGFudGhlckxha2UuDQo+
ICsJICogU1JEX1NUQVRVUyBpcyB1c2VkIGJ5IFBTUjEgYW5kIFBhbmVsIFJlcGxheSBEUCBvbiBM
dW5hckxha2UuDQo+ICsJICovDQo+ICsNCj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0g
MzAgJiYgKGNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkgfHwNCj4gKwkJCQkJICAgY3J0Y19z
dGF0ZS0+aGFzX3NlbF91cGRhdGUpKQ0KPiArCQlyZXR1cm4gMDsNCj4gKwllbHNlIGlmIChESVNQ
TEFZX1ZFUihkaXNwbGF5KSA8IDMwICYmIChjcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSB8fA0K
PiArCQkJCQkgICAgICAgaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLA0KPiArDQo+IElO
VEVMX09VVFBVVF9FRFApKSkNCj4gKwkJcmV0dXJuIDA7DQo+ICsJZWxzZQ0KPiArCQlyZXR1cm4g
MTsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHUzMiBtYW5fdHJrX2N0bF9lbmFibGVfYml0X2dldChz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkgIHsNCj4gIAlyZXR1cm4gZGlzcGxheS0+cGxh
dGZvcm0uYWxkZXJsYWtlX3AgfHwgRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQgPyAwDQo+IDoN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+IGluZGV4IGM2
MTM4NGJiNzM4MmEuLjM4MzhmMDFkMTYxOWMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuaA0KPiBAQCAtNzMsNiArNzMsNyBAQCB2b2lkIGludGVsX3Bzcl91
bmxvY2soY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpOyAgdm9p
ZCBpbnRlbF9wc3JfdHJpZ2dlcl9mcmFtZV9jaGFuZ2VfZXZlbnQoc3RydWN0IGludGVsX2RzYiAq
ZHNiLA0KPiAgCQkJCQkgIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJ
CQkgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gK2ludCBpbnRlbF9wc3JfbWluX3ZibGFu
a19kZWxheShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiArKmNydGNfc3RhdGUpOw0K
PiAgdm9pZCBpbnRlbF9wc3JfY29ubmVjdG9yX2RlYnVnZnNfYWRkKHN0cnVjdCBpbnRlbF9jb25u
ZWN0b3IgKmNvbm5lY3Rvcik7DQo+IHZvaWQgaW50ZWxfcHNyX2RlYnVnZnNfcmVnaXN0ZXIoc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiANCj4gLS0NCj4gMi40My4wDQoNCg==
