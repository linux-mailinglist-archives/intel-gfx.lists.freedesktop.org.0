Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6F0B09661
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 23:33:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F9BE10E32C;
	Thu, 17 Jul 2025 21:33:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EgO2LTM7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ED2F10E32C
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jul 2025 21:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752788030; x=1784324030;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DV8+frCpCcGD+6LpO6w+w6B5vJac2F0QdE+QYP/GZgo=;
 b=EgO2LTM73yGSS60ZBven492Iq3udjZFQDFv05sDki9xUNSgF21PMyjVg
 pDkbXLafzW04z0IwbIJZ+s6KKFU7MiwyefpbgQvywAmFONsNCIn3IWjx6
 4yztgut1VHuBZ8x/y5XC2YQuJfDdtXi9otcQM+sN/jUWdO8j25MXtupJL
 +fxgVlDtfW/O0MujvuBMEH9tNrcKxJmGvM7PQNrixiUTOiANuPis+9akZ
 gqWtru2uICDiGwWCClPPeNBhK6O0oAg2CNCLcpOIxiGwU1P6Tbkr8GdBA
 uDuyPqBIP7UYdRK2YzwpmyP64LJUxTbfsKU7DhW1E04aUTB0bn4Sx0grQ Q==;
X-CSE-ConnectionGUID: X79qBB9hR823F7icJuw8BA==
X-CSE-MsgGUID: 1YAzEUQxS26DLkwojBCffg==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="65770398"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="65770398"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 14:33:50 -0700
X-CSE-ConnectionGUID: HmoNcAkUQmeLAxAyIb8BdA==
X-CSE-MsgGUID: 4YSrt7QWRSeXRNBXWGJRGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="188849281"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 14:33:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 14:33:49 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 14:33:49 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.84) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 14:33:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qEwRIFxeGXI2fGme5odL5R2yjKnmkUjAyUIquI0PVCQRay7Y8PmEvbo0793a38qZrkpovvMX1Jj9+zj3N1Q7DizxH8F705rkpgNFYHLH/8CT8BOwA3X2oBSRAcrMWIojGJjwhUujRRHxfZzswyMb5o+lk+ql8FxitORtGPoJYsXvIyEl6A7XwWim7eDItOTGr9Di2n6NzLxtAmVvF2oBWdyuPi7Sl7Ti/drYFluB54S8NiTOmop56lq9jmOZRHNOKsPp/GigmVhlhQ8Ub2Nc1jC03qPVjEKu1VFM80x/JiJz0WR7olh7xeRUfrQpabk5i96P9yZqzEpIFNy/N5waEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DV8+frCpCcGD+6LpO6w+w6B5vJac2F0QdE+QYP/GZgo=;
 b=cr1lGwL6dLgzE9qqj6UAGiKTd/wWl1Fl8fcxfZ4K6WDWyo/RLNMdf4+OYuLfmfA/RhBvb1kdV7ZS6VOKaJY65bNSJ0yR7yZBE/yY/QkqUvyiJO0n4ZkdFiLYLhRWkKc0HLjaP7O62pxuqrKip1GU/+BQocJP5jMdvb8HqiLbPIUsIgjs2vuG/QIDJ1RL6m72PkexFXb7EkKTwJBL+aoJHMdHoY9VLTZuOcwF+BU59fS/4TOhepIFz+3KC+ezRZOeWSrzshXzR5J1c4/lCfeKYz2NZ2PRaFXK6i9QunsZGvlbdTnaV9BjQxrd9Hx/hwGCpjqG6SebZJeMy+3OUji2mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CH3PR11MB8155.namprd11.prod.outlook.com (2603:10b6:610:164::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Thu, 17 Jul
 2025 21:33:43 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%7]) with mapi id 15.20.8922.037; Thu, 17 Jul 2025
 21:33:43 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Sousa, 
 Gustavo" <gustavo.sousa@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/display: Remove unused declarations of intel_io_*
Thread-Topic: [PATCH] drm/i915/display: Remove unused declarations of
 intel_io_*
Thread-Index: AQHb913ImxfkV+5d5U22XgZFUyceH7Q21PQw
Date: Thu, 17 Jul 2025 21:33:43 +0000
Message-ID: <CH0PR11MB544471EB5B461A4499E45948E551A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250717-drop-unused-intel_io-declarations-v1-1-bdea2c749571@intel.com>
In-Reply-To: <20250717-drop-unused-intel_io-declarations-v1-1-bdea2c749571@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CH3PR11MB8155:EE_
x-ms-office365-filtering-correlation-id: 949ced75-e1d0-4baf-03dc-08ddc5799adc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?dkhEc2tEbG5WRlN3STdSWWNvZlQyMzBmb2o5VmFKNEV6cjlHUmJJWEw1VzRp?=
 =?utf-8?B?RlQ2OTVVak85Y0p6SENvR05KZmswbmhCNlJkODdBY0NMbkIzN210bmQ1SGFq?=
 =?utf-8?B?VkN1NTc5cUM3Y1ByTXA5anFaTDJ2UEpzNE5jQXorV01FZzBMNkR2Z2RUZEFC?=
 =?utf-8?B?ZUo3OXpuYzdmaU1OcytudVdPWmVUVXFrdFZjdnUrMVF2OFhSc2E4OXhTd0w5?=
 =?utf-8?B?czZoQVBGbEEvamYyRGtGYWxNandlRWJyWkFibFFYK0s0TC8zVnpxWVNSZmpE?=
 =?utf-8?B?c1ZNQXY1c0FKc0VjWFdlQW5YU1JxYnVkaFFDcTRjNHlQODBiRG1WK0JTaXVh?=
 =?utf-8?B?Wmw2VEp5bVFjMHBtN1pEaEt3U2x0YVhyL2QyMjlSQkhtbDBmRWJ1R3h3aGti?=
 =?utf-8?B?NE1zS0NtY2F1MTJZNERYc2JDbmdFY28xUlR1QkZDOUIyZHVkZWU1TUdMaWtC?=
 =?utf-8?B?M1pUUmNJY0dheWgwL3ZuUnFFNkZlMEFRbUg1cUp6OXE4YlNnUmh6ZFQvVytN?=
 =?utf-8?B?Q09aaWxlenI5STE5TUhVMlFLaDgzMG41K25lbUJPOG1LZCtLRmhZUkord2JP?=
 =?utf-8?B?Mk1aMVF2NEZIMXRlVmNldEw5eUw5SWE0emo4QVlVSGtKK3YvUnRtejJFSlc5?=
 =?utf-8?B?VElwMllFUHh6UkNlU2lqMFRwOWhKZURRU1kzNHdFKzJaZkdsdklvazQ3YTlY?=
 =?utf-8?B?SkJBRXFDcllyT3c1dkhNYzIyOXNCdXE5QW81ZnBiU3luL1NZZzV3OFowcTBS?=
 =?utf-8?B?MUVGcXBIYWVJY0UwaDhYdVo5amlSbnd6cldGSEpiclREVlRHTVlrRElKOHlF?=
 =?utf-8?B?S3VNQ2FSRjQyL1FYM2Z1TWc5Ny9FRjR6M2xkZ1RaRENySWZjRGR2V09Gdk1V?=
 =?utf-8?B?QWd0b3FkSlZiczN2ZmlJRmNsTHlyVjRMdTFlVSt5UXRQeFRZdFIzRlN1UnM3?=
 =?utf-8?B?Q2dwbzhhejlqTEU0VlpBTk04dmFGT3pOSGxXR0IvVXp3OUFidGR0SzF2QXN1?=
 =?utf-8?B?WUpXUEVERTJrMGVEcXJlNVdTdU02T3R6Z1EyZTIwb1BpdUZxWmNNNXBNNXdD?=
 =?utf-8?B?Zy9rUytJU1ZKUVJSZmUxb2ZIa1dXWjU5OG5WSnNublpGQ1pEVWVOaHZDY3FC?=
 =?utf-8?B?RHhOVjJEU0hYTmxaRVNzdCt5WFpUWnFPcWVYNktXQ2t2YTUrV29uMVlSS1ZE?=
 =?utf-8?B?ZklSNXdFNmQrLy91SUhPV0JyRUcxZUVEQkJMTmJzUTRXMmpVd20yMEs4MmhI?=
 =?utf-8?B?Q1l3WUhqYjhveENadmhHc2JiZVlKakk1MHBvL2tKRHptR1A0eEpRSW5YVnEw?=
 =?utf-8?B?cjJDZjNyNFhPNXNEWlVGaVM3V0pIU2pWTHpMK1NsMnpYaDZmZVlTZzd0WTB4?=
 =?utf-8?B?dzFjbG45aGsvU0Y1d29Fd2FwV3NXaWQ4bDc2VjBvaTIxRHNHZFl4ek9sMXRK?=
 =?utf-8?B?bGd2aDRxMHVmU09Mby9aS2Rua3Z6L2prYmlhV0h3UjhseGxoejF6Rmp0c2lP?=
 =?utf-8?B?alhXNU1vanlKakVQeWJTQmhnR2F1Mm5OSWtndHl6L1lVeEZiQ3JUQ1A5VkIz?=
 =?utf-8?B?K1VjdmExNzhSTys2bDI3YkJoL1J1dW05YnRnekIvN1hOVHlDY1VVU2UyM2tB?=
 =?utf-8?B?T0hFdlNIMHVxei9MeVEzeHc0WWpMV2NaSW5Cb09kNHdNMklqdGJ4Si94SWZt?=
 =?utf-8?B?eWxXcXdaTGhlMWtaQzFoVkI3bWF1MCt1ZnlYMGFMYXJyS0lUMTJwampVU21n?=
 =?utf-8?B?bGgwdFNrY3Flb3BxSUVxSW1XUmh1L2ZIbWZCTERwYU9OZHQyb0NKVFFIZ3Uy?=
 =?utf-8?B?MEVCZHJFNkpSaXF3VzAvNm80OEsvazBtT0R6enYxQ3lSU2lVREtJWjZZT3V6?=
 =?utf-8?B?b1JadzdyekJaV2ZxcE9uczBkUTVPemgvZ0ZFTHYrTlJybjVIWmtQc1VEL3Y3?=
 =?utf-8?B?bVdraFgrL0NSY1NtRnpvaGc3eGRNdzFtQUlvTS82cmRBR3dHVEVEMCtSdEZ5?=
 =?utf-8?B?WFNKRXpLMWt3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MW1oUzdCWmxCdjl3cEU3cGZTeE83UksvYS9GVCtQYXFCK25sZVBkUlBOSlRI?=
 =?utf-8?B?dEo0L0gxbmN3QjhIRXpOWDg3UklKU0daa3ZFWGJ5cTdjQWJoT2FSL2x3TmRv?=
 =?utf-8?B?UzcyUzgzSG1sRWdHRFdQK3lGOHpPWmpzMjMxVGlUN1ZySTVpRlVqaDZuU3Vz?=
 =?utf-8?B?M24vbUM2YlB4ODc5OS9WSm5ZOFlYd2N2SFNkZFNpandHNDJJOFdHay9PVUJr?=
 =?utf-8?B?ZU1zV3VMcFp4NzVtSXh6UzhyWnRFYUNYUXk0WlBaQ2F5ekFOTmRJbTdkK2c4?=
 =?utf-8?B?ZEY2emE1R0ltaTNlSlNVV3NmQWVvcFdudGZ2R2FySlJrSFlLTkl2dTdTajMy?=
 =?utf-8?B?Yis5U3ZnOWtrcEhacDloamdlVjl4SDdnQWUxSjhWYnAzcXFNZ1FhaGtHUDVH?=
 =?utf-8?B?RkVzczJnajdKa1RERjhoVTRocm5sYmRrMXJrNGRDVEJEOVVBZURLMkZYM0NX?=
 =?utf-8?B?UmkrRWNLKzFzYlhsZWt3Y002Zm9RNmhZN0RUL2hsTXR1YXFONlNORHJrZ2Jy?=
 =?utf-8?B?UGxGNFYrZ3l6UVRGaEI3WnMyTW1peEU5UUxnNVZEZE9DeXdxVS91L21YU2tG?=
 =?utf-8?B?NThEcVlvMzZsUkdHalZBWXdVY1B2c2tiSUpkQUdxUVVYd0REa2loTkV2MmU5?=
 =?utf-8?B?aUpjemFnQk1jYm1vRm5RNDZKU1JHM2FyZkFKRG1CbUwvWmw1elo5UVBJdmU3?=
 =?utf-8?B?ZWEyMnE5S2E3Sk9KOTZ5ZG8rNVBrK2hsYUxsQVgwNnV5S01VZ3lFcDRkUmdX?=
 =?utf-8?B?cWxXQVZhc0pHVDFFcExGaFhUZVUzOWlRa2s5WWIrL0o3UVN5ZUIyb2p1NmM3?=
 =?utf-8?B?ZTRBek4rRS8wam5hWlhnQ3IyR0luSGhzUzhIcDRPSU95Ly9XcTR4dlhyM2VO?=
 =?utf-8?B?bEQyNFBMczIwc3JDL2ptdTFtYnBrS1AwVkhtTlpMSnp6MXkvSjdVblJRTGlM?=
 =?utf-8?B?eVdWYW1hRTJESm55UFN3WVI4QVExdTFiV1R1bDBxRmZQNkt4UmhtSWl3SDNq?=
 =?utf-8?B?NlB1Tmtsd1JvbjVjUU5McWZrZndwZzdRZnZxUFhvZEFlM0lpTTl0WkwreEl1?=
 =?utf-8?B?Z0xIeW9DTk84THNxbTN6Qmx5TXA1bno0cVQzMHVaMENEa3o2NzBKZDhhUXlv?=
 =?utf-8?B?cUdxOE1NdFRJUEJ1R0NKNVZQQzA2RGJ4Z0FzOXMwWDRHQlpnZmZhSUhvdDhS?=
 =?utf-8?B?aW5ja3ppK0xYTi9QSmtYeXNUZjZaazRjdzdBdkk3cGQxZU9ycDBjWlpKN1ly?=
 =?utf-8?B?V2t3ZmdzRnJ6cnVQQ3VEZEFmWWJlZVNzRHNwZjNubU16QjdNZmI3VStQTW4z?=
 =?utf-8?B?N3NpN1BlbGYrc05Od3NQbS9GYWlwOFE2Q1pPa05RWDlLY0lNa0NiWWZVSnpZ?=
 =?utf-8?B?ZmZDS1BRM2tabk16bjlRSHBDZDg1RFBtK3BFVHJyeHRNTUEwbFpGMUxrdWov?=
 =?utf-8?B?QTVLZ1BHcDNZRndKRHdzK3JUb2g5Z2NaeWpCTEdKYUFEQmtQd1FDNDc1a3pD?=
 =?utf-8?B?SDVpUk81cDJDSXlhNDcxZFBTUzdEa1RrSWRPZnhudEdkMEM5Sld5MWhubVhh?=
 =?utf-8?B?dEdpeXRNZkhhN3pKajc2dkxzZ3NqM3JSK0c1cEZLQk1YK2ZpeUk2VE82RzVp?=
 =?utf-8?B?U0JWeHoxbVZwbEpoQU81Z01wZVU3S1ZYQWUzK3BqZXBxZ3JQdlJEU3NOREZU?=
 =?utf-8?B?TTZscXBJWm02NnZVZHc3Vlk3TmJNZ3p4dUk2ZWZPUVZ0VUUzNVpnazduMUhi?=
 =?utf-8?B?N29QaWdBK0FUdDJUbThnSnI5OXYxWENFYkJoYTVZNUxJRGhBK0FSUmE2bDFx?=
 =?utf-8?B?c0liZkpVTVM0bVIvMmc4Njh0S0FJQUo5Q1NuNk9qb3g0eWJlTmk4aGVjZ1RY?=
 =?utf-8?B?YnYwVHNLTjZJL0g2WnFCV0VIaWNHejZSRGJWVEM2YmhGUHFZK2lvcDBpT05a?=
 =?utf-8?B?RHh4RlA0c1g5N3RTdGQxZ1lWNmwrdGJOVjRBWkdJZVhkeWFNRUpGcjA5QkZD?=
 =?utf-8?B?dHNFby9ENmdpaEJSY3RkS3ppWXBnVXJsS3AzcWFiSTJoYjJDdWRQNXJnSlBw?=
 =?utf-8?B?UURXSHBlQ2RCeWNPSEhFTFhKNmdSYnM0cDBsY0VVcDduNSsrYWU3bjZsMTFr?=
 =?utf-8?Q?A92kAQr7ZWTAI5GE6rKlhiwnw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 949ced75-e1d0-4baf-03dc-08ddc5799adc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2025 21:33:43.6140 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O81y9aerZZ7sCW2HqCYxnzajmM/8bxoXHQhpPcnG2ibrKV7Ba679x3P1yhPQUfSxuqZ24MyPTVOP/i/OJW5EwY8wubSQBDDVzY/PD6X+65A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8155
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

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJv
dW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgR3VzdGF2byBTb3VzYQ0K
U2VudDogVGh1cnNkYXksIEp1bHkgMTcsIDIwMjUgMTo1OSBQTQ0KVG86IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPjsgU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0K
U3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBSZW1vdmUgdW51c2VkIGRlY2xhcmF0
aW9ucyBvZiBpbnRlbF9pb18qDQo+IA0KPiBEZWNsYXJhdGlvbnMgZm9yIGJvdGggaW50ZWxfaW9f
bW1pb19md193cml0ZSBhbmQgaW50ZWxfaW9fcmVnX3dyaXRlDQo+IHdoZXJlIGFkZGVkIHdpdGgg
Y29tbWl0IDAxMzg5ODQ2ZjdkNiAoImRybS9pOTE1OiBQbHVtYiAnZHNiJyBhbGwgd2F5IHRvDQo+
IHRoZSBwbGFuZSBob29rcyIpLCBidXQgdGhleSBuZXZlciBnb3QgdXNlZC4gTGV0J3MgcmVtb3Zl
IHRoZW0uDQo+IA0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2byBTb3VzYSA8Z3VzdGF2by5zb3VzYUBp
bnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmggfCA0IC0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgNCj4gaW5kZXggY2U0NTI2MWM0YThmNDI5OTI5M2RkOWRjNDg1ZTYzMTM5ZDI5
MDYzYS4uNzZjZmY1NTQ4Yjk4ZmM5NjE3ZWZmZmZlOGE2MDY3MjU1ZWNhNWM3YiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmgNCj4gQEAgLTk0MSwxMCArOTQxLDYgQEAgc3RydWN0IGludGVsX2NzY19tYXRyaXggew0KPiAg
CXUxNiBwb3N0b2ZmWzNdOw0KPiAgfTsNCj4gIA0KPiAtdm9pZCBpbnRlbF9pb19tbWlvX2Z3X3dy
aXRlKHZvaWQgKmN0eCwgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpOw0KPiAtDQo+IC10eXBlZGVm
IHZvaWQgKCppbnRlbF9pb19yZWdfd3JpdGUpKHZvaWQgKmN0eCwgaTkxNV9yZWdfdCByZWcsIHUz
MiB2YWwpOw0KPiAtDQoNClllYWgsIHRoZXNlIGRvbid0IGxvb2sgbGlrZSB0aGV5J3JlIGJlaW5n
IHVzZWQgYW55d2hlcmUgZWxzZSBpbiB0aGUgY29kZS4gIElmIHdlIHBsYW4gb24NCmZpbGxpbmcg
b3V0IGFuZCB1c2luZyB0aGVzZSBmdW5jdGlvbnMgbGF0ZXIsIHRoZW4gd2UgY2FuIGp1c3QgcmVk
ZWZpbmUgdGhlbSBhdCB0aGF0IHBvaW50LCBJTU8uDQoNClJldmlld2VkLWJ5OiBKb25hdGhhbiBD
YXZpdHQgPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+DQotSm9uYXRoYW4gQ2F2aXR0DQoNCj4g
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsNCj4gIAkvKg0KPiAgCSAqIHVhcGkgKGRybSkgc3Rh
dGUuIFRoaXMgaXMgdGhlIHNvZnR3YXJlIHN0YXRlIHNob3duIHRvIHVzZXJzcGFjZS4NCj4gDQo+
IC0tLQ0KPiBiYXNlLWNvbW1pdDogNmNiMzI5ZWMyODI5M2U4YjllNjcwYjA5NjExMTQ5YzA1MjIz
ZGNhMA0KPiBjaGFuZ2UtaWQ6IDIwMjUwNzE3LWRyb3AtdW51c2VkLWludGVsX2lvLWRlY2xhcmF0
aW9ucy1kZmE3ZjFjMGZhMTQNCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gLS0gDQo+IEd1c3Rhdm8g
U291c2EgPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiANCj4gDQo=
