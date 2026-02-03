Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBuHH3Z3gWk0GgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 05:20:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8CFD460A
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 05:20:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62AD810E506;
	Tue,  3 Feb 2026 04:20:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eTh5NHSB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65B9010E4FC;
 Tue,  3 Feb 2026 04:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770092400; x=1801628400;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/8KXN5nUi+tp5g/oeinl8nIdPWumMLA5rJZgVMgkZeE=;
 b=eTh5NHSByLLzSFuaU9z1TzAA5lfur55O98Zx8v4dO+aBkZsegbeSOu3m
 6riv8DetPPcXv0ZjIKEw9igtBnK3/gYMgbcTaSBWFHO6QOUkxAME3lGAT
 gMwJaoPfjiiS5pu3+lXYvU88DvFLFmGH+pvWW363qZEEAi4NYHiatJwIr
 UsEprzckmS8g6s6lm/OAu2aJtgAH4/NG9jx2APqOPzbHHhn8th3sIOsAs
 4PGiAj58zZtCojEbAFalHCn8RvCKwsk9s+jpGP5xAn0SjktQlh8HacPag
 6Tny7VMan3W+2Q2lG3M3xBJUhkEBQRuBv/wxbPL31klDjGHKNtxAJ/9BX A==;
X-CSE-ConnectionGUID: X+bJ0LKBTfO0gn7WntWznw==
X-CSE-MsgGUID: HF3pvxhCSY2UR+CiKGlmFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71310451"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="71310451"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 20:19:55 -0800
X-CSE-ConnectionGUID: vlFb61evQ0S5Tu2Zlnpqvg==
X-CSE-MsgGUID: LvOGcSD3Q3aTRD95V+5OWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="240750526"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 20:19:55 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 20:19:54 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 20:19:54 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.1) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 20:19:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aKhx12HwNsTyjHw1h8YsUsiOJN+e+zqtoSj1A9XYpR+ZKq/Rwg/NoTOP5TWrkPRvceu6zJ5siGK+7LL1tRGXfKk+UjL1BfJZ1SZ3FPJfKloHDfU6hID/IOHY8RPdySHNVkJdoHLN0D+ls7vrqYs3T2K9rq+TwsfB3PgFzrxNiY9XxVIY8AXhkD4ShTw+ahyAYov+a1EtAhjzximrAhUQj0W27TN9AUIgN0FMt8MWubePw+WmNne4XnPzZwOZWpBfqnNFrOjEJhbOqJY8whQIBSN80GZb56Ck1IBckDTy/gFwijBWiFWHj6qSeIVLUyyQMxr50JevZeTwjzKUFgKHtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/8KXN5nUi+tp5g/oeinl8nIdPWumMLA5rJZgVMgkZeE=;
 b=uNL7v7ubEop6m2VlEDRz1L7HcWZvv0GNgjzt5H+Z0NtxxlfVOoTs0k+qxqDPEz9T96pkIa8ke+1YktVwf7UWvHTF/i6NkZtA7NcPSY6PxcJBmxxOi3U76iqvP9Mga7tX66z3eLyxH7A3tCo6AEnrGVD8mdhwTZxfYwNHVsaP1Fjo5D37sm72JCbThXSXkVjOzJKnAIoZEmiBAZUTU94MG1OU9LLHel3lP0TjihG4dviYQlqT2kgLW7amsBG9c7iW/UAdU/rq71JDIGfN6YSWTS6x64t2iZX5BxXc35nrvt+rMEbZGbsFEVfyivj4MBmi19lRjgNSOddz06Vv+knXEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by LV8PR11MB8697.namprd11.prod.outlook.com
 (2603:10b6:408:1fe::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 04:19:42 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9564.016; Tue, 3 Feb 2026
 04:19:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Subject: RE: [PATCH 15/16] drm/i915/nvlp: Hook up display support
Thread-Topic: [PATCH 15/16] drm/i915/nvlp: Hook up display support
Thread-Index: AQHclI48c/u513NMrUCqRaMzSprSaLVwX2Vw
Date: Tue, 3 Feb 2026 04:19:42 +0000
Message-ID: <DM3PPF208195D8D2E5AD3889EB43F541CCCE39BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-15-653e4ff105dc@intel.com>
In-Reply-To: <20260202-nvl-p-upstreaming-v1-15-653e4ff105dc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|LV8PR11MB8697:EE_
x-ms-office365-filtering-correlation-id: 52b274c2-08a9-4552-a4b3-08de62db744d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?eExFdDNJanFsQ1VLWTZvdUc2M2NsODM0aGxBTWlZanUxT1VGdmJJczJaeUg4?=
 =?utf-8?B?eE4rbkF2U1A5WWVnZjB5L05iMERpeUM1c05jK09IcjQ5SWNWeXFJeEdvOTVR?=
 =?utf-8?B?VlFCWERXZEVkSWpZUDRXb2xoWHJhSWtKZEp4bW5VeEI5UnY4UVlrTEdGL0t4?=
 =?utf-8?B?YllRcWNhY0Y1Z3JPazRnL3BqMVRubzVqd2tMb0xyVUhreHpSQTZ5YjVGaWNE?=
 =?utf-8?B?Z1l6dHVudVdqamd6NzU5S3dDbStvczI4bFZORGdWRGF1SDNnNGZYSHYxcGNO?=
 =?utf-8?B?Z0czZ1czRkVTWjVDTjZZZnVHWFhEbEhUb09KbHBTY3UvSDlIREl4TU9hVDZ6?=
 =?utf-8?B?cVhPNXo0Q016R0xLVDJTNkpWMjM5dUIrK2VsUjB1M21lNlJPakRUMjRPZENN?=
 =?utf-8?B?NkdjNWhYbWhkK2ZpelUrR21aMTkxZ1JNWGMwTU1ac3ZLSUNKYTVieHBuOUY0?=
 =?utf-8?B?NWFxZVNiOSswRUp6cmdLLzFySzR2bVJ4aWxQQ0hxK2FzdFRrTzgzd3JZTUR6?=
 =?utf-8?B?L2NYZWl6NXhURTJ0TlQ2UGNTYjZyZ2hpSjBsZnVjRG4zUmdaUE1ZdDJFeE0x?=
 =?utf-8?B?QWo4dmlmc011TjdwZFloa2ovNXFUbnJJZEd2V29za2xaak1QejJhTTN3RnNB?=
 =?utf-8?B?emZrTmRMb3RLYnZiK2UzeTRmV1hoZHZSVkdOSkROUlYvcXlMYnptdGxwOTNY?=
 =?utf-8?B?WjFEcWUrSVFkcnc1UTFvdXNVNEl4MzdCYzk3WERpN3BPdjh0dXYvRDNpT0dY?=
 =?utf-8?B?ZGE0QmMyWU5ibzFPRU5NL0lTNzB6UjVpUXNRbHN5cnB6aVQwSmNQRk5mQmI0?=
 =?utf-8?B?Rm5pRnVUcFFrQ3N0cU5Gc0hxVEN1eEx5d29YV1lFeDRtZktNZWovTG51eEN2?=
 =?utf-8?B?V1RqWEF4L1NGK1h0MDVzT0g3MHlZQXRSb3pLMTluelRDSE5KUVdyZU96V1Ez?=
 =?utf-8?B?SmZLVkwzTS9RY2RLd3ZtdDlYWmZkaEFSWHpoU01lUjAxRm8zbEM2bG5DVTNH?=
 =?utf-8?B?M3lxaFMyamFvYWJXM0Rlb2RPdkZEVllvNW81Z0dCUnFhcWFidHlDNEE4KzZw?=
 =?utf-8?B?Y3RNMW5CdTRWc2dhckZJZ1VCNk9tOG91RkFyWmZEcGU0M2F5Mnd4NGI4UVpC?=
 =?utf-8?B?WjE0cU5ic29CMlZRemQxMlpyZTRtaGNWWlBXNGQvckVDYUhRT2hxTTZjc0Vr?=
 =?utf-8?B?RW5wMnd6Z3ZIYU5JOFl3MkZ4S3JubWRlM2NQdHJpc3FLTVRueFFQUGdOVGtl?=
 =?utf-8?B?Q0ZiZU5DcTVSSDJKbVdZNndmOFRROE14b3lualBDY25HVEluQkgxRUtGR1U3?=
 =?utf-8?B?N3RCNVg5OGxCNkxuU0lVbGl6dFQxNE5NdExkTHZVNzNTMzQyMXZVblM1ajV0?=
 =?utf-8?B?NG5DOHQ5cm5HaXpBNnBXWCtWb0pjcUhJVXo5UXU4YytjOEl3QVpUc1l2ZGV5?=
 =?utf-8?B?RDJlWXdka205eERNZ3FSdjNhc2ZEbEJIZHR3WTlhaFozd2lSemw3R3JTMzRq?=
 =?utf-8?B?TjVKbW4zRUxEdllrWGVUZDNoYzFoNStyaGlqTzgzZzN4NVh4Nkx6a0xZVnJO?=
 =?utf-8?B?Q3lZT0pERUNLd3JpQjhPc1ZIVkxickJ0Zk42T3V5RDQwK2xpWVU0akZicUlU?=
 =?utf-8?B?Tlc4THpmbk5GWGJUNFlBcGx5MFpXVXhPMzVHVmN5VXhPK0JQMTNPaTNscEJT?=
 =?utf-8?B?RHdlRy9IblIwNThWbUlGV3dXOXhWSFRBaElIaHpTcEh0N2wxcHAxZnIwZXU1?=
 =?utf-8?B?Vy9ybzdYVGV1cFJ3eUd2UmJCeURuVDVSaWNEQWswdkM4b0ZseUJRVjlTa3cw?=
 =?utf-8?B?RDcwd1MvZXBZMCt0c3l6aEwwZXQ3dGhNeDZBa2VMYzhWZGJnM0VtOTlLemRR?=
 =?utf-8?B?SzNPdTBhVWtiU0g4dEFWcDZ0WWRjT0liR3BtRVdjNDZTemhUam5qU0lOOXg1?=
 =?utf-8?B?Mm9PamQyYjM1REpIWmwwdU14eFpWVFhEQ1lmRVRGZXZKTmtUcU5Jb1Z4ZzVH?=
 =?utf-8?B?MkVWNlJtNGZVTXQrY3pPYldaV05PbFpGSnJWa0xwOGtUNUV4K21nWWxvODkz?=
 =?utf-8?B?QmhaREhJcytLc09aR0lWWEZFRWx3bVV3WEJDUVdFYlJqZUxid2pDQ1ByRmpK?=
 =?utf-8?B?ak9lOVN1cmhwVDdUVkZibVRQV3NPaDA3amFiZTdYQzg1MmxDeVNnaUt1WWZh?=
 =?utf-8?Q?jHoPzVnQjg5pmJKku3+etK4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V1JobjM3WExKVDJJM3lLaGZJL1l2VUVoOExyWGd6SWh4T1BCZ0FaelZVdjda?=
 =?utf-8?B?elFQRWRaa1RFM3V1V1owVUkvUGdnQ2JvYWlQTVk4eFYyc1lKeTZXV2Jud0tL?=
 =?utf-8?B?VXdtV3Y0NmZPU0ZoSlljNHlUcTFrWkRLK1BBbE5WUGpZeDJRTmJiczNUSWdx?=
 =?utf-8?B?a3NIWnhCb3lxQkxlR0p4dGdVNmluRXBoL1F1VDh0NjlUbGlERHBLOXdIdlJi?=
 =?utf-8?B?NW5qRnc3QUwweTEzYmh6NHFLZThZUm5QMkcrY0V5YnpEaTdsYVRnclNQc0tD?=
 =?utf-8?B?ZFFCVnNRSmt1UkRDeU1KMEdlRlZoK0Jac2Z3dG9GK0JiaVR2ZitjbHphbzhZ?=
 =?utf-8?B?R2M1L1pNM2dVT2lwZ0NnNUFKVkF6L21JbEtnQ2xxWTJJY3p5NGNKTEkwL1N0?=
 =?utf-8?B?NUtBM0xjeVlHYkVYUm9XQ3V2aVBOVDlySThkVHhkc0lMZmZRUjh3V2U2Y1lP?=
 =?utf-8?B?MzRKeWlMOEhOUm94c0JFNHRlSXFFNEI1V3NIZTYzYWJkcnExZ1Q5RTg1a0ND?=
 =?utf-8?B?d2NOWEwzdCtwVkJ6WTZUTTZzS1NmYkd5bW9QNkNXT3FQK09sa1ZIY3pYVEpK?=
 =?utf-8?B?Wmp1NEdDRjdlS2orR1R3d2FrSDZmUEc5M0xwYWY2SW9UOEo3aUFGQTFMRHk4?=
 =?utf-8?B?bFl6R0Z3eW4vTkdPN01YaVh1M2NiRHhvSkRGQ2RZazM1QjRZM3hlNXJUOUp4?=
 =?utf-8?B?ZnJmaFhDTHVQU1M4NWZRWUF5c04xTERZWGtJcHM1bmMrN2kzNUxGWTZFbXc3?=
 =?utf-8?B?UmlmY0RJUWljNXVITVNhSGNLcmgwbkFxOWpzbEhKN2lvQ1MwVFFtNnJMSXpi?=
 =?utf-8?B?VUxuRW5hZ003MnBUUTNrMUVxWlVSWTE3V3U2QzMxc3AvaVRsZlBiR1d6YXNP?=
 =?utf-8?B?OTRJZjV2REhKeExJZ2ZyMG5sMzgxRlRLeFJickQ4ZVdIbDR4KzQxcG9uTS9S?=
 =?utf-8?B?SVhTTEFscnRsbWRzVUViNHZ5VXYwTHM3Q1E2a0tGZTJnUXB5K3BUQlEzVzRq?=
 =?utf-8?B?b2JCNUg1QmhUTWxCYURwSEhhTDUxdXBwVFRvcXZZMjFRdVhYckwvOENycTJz?=
 =?utf-8?B?ZUdMdkM5b1JGalFjMnkyWTd2U041S3QxWXEwd3pCV1k4UExkeEZjVjk0V1Y1?=
 =?utf-8?B?T2xOZkZYbHBodHoxMkJmUDhTQ095VE1wVTRnYS9KUU5VSGszVk5YQkdFTCtZ?=
 =?utf-8?B?SFFzenZvNzFOSlFmSStweGxkQmlCOElMUVFNZjIzS0tFdU1ZeUtHdWNjdzYx?=
 =?utf-8?B?Sk8zYXFwQmV2Zm9ic1p3emROcjgwUUF1QlkveGdkcFk2QllicG5FZE4zRkJK?=
 =?utf-8?B?cS9veVl5Z1gvck8xcEpwY2J5T3JWSGdSRVlLbnl4b3lUTU0yWG5JOGh6dFVK?=
 =?utf-8?B?VTNqZ25xL0ZaN1BUNnFzUHNHNTBLVTBZS1ZQYTJ3ckVjSE1TUzhwTURwaDVx?=
 =?utf-8?B?TVZua1Z2Rks3eFk1eU8wWHU5WmVzRjRoRk5PR2Z6SGhhTEVDZWEweWgyUW1F?=
 =?utf-8?B?THVCdklZZGIyRTNKdnUvNnJWRGpQamZvL2ZWdjIrc0RQQWUweERITlZPM2ph?=
 =?utf-8?B?ajNjb2pDNHZmbHZxdEl6RSs0dWVscG5YTDhNRitxc01PUTNoZFRqVkROYUxD?=
 =?utf-8?B?RG9RbGZsRE5KcERJV1FqeHVUS2lKNDZlaVFXOE8zQlFFNzhWZ2xjRXlHVTdI?=
 =?utf-8?B?VVFuRWhsZ3ZTNkptZFdmL0lTSFI2SnJFUVA4N0hWM3F4Y0tWZGZWOFlwMktK?=
 =?utf-8?B?RWlqbTl5c1ZwRXN1aXo3MHBmbTF0d2xRdEZjTjZOMWt5UTgxTnl4SytMcG1K?=
 =?utf-8?B?eUk3UW5jYVhyZHJ5b3ZLMjZSdEtpUnRxb25CaWdqbjFwY3Y3LzdFWjFENHhN?=
 =?utf-8?B?ZUc4WTJEVk1BNjNGZklYZEZKMnkydVd5MXFqRTFzTlhLTEpBekxFRVpaVmU3?=
 =?utf-8?B?dDUrNTM3alVCSnVMNnFkemZ5bzAzVFdxdWZub1RjdHc3aGRhRXhEYXBXb0RQ?=
 =?utf-8?B?T0hpcFJUU0hKcFR5NFp5Q0xzaEVpcFNGRU0zV1p4bkpIVDdJMmZYMFhxVXBx?=
 =?utf-8?B?Q084RFU4dXNYdTRCMHhBWHdPaGdQRjNwenYxK3VjSE9QQ2hVU0tUUHdsSXR2?=
 =?utf-8?B?VmJSd0VKcXFBbDZlY3AySXlieWJ2KzRYY29mL2NPQ2p1TmJyN0pSSlFpcUZw?=
 =?utf-8?B?QThBNlQvejVieCtGSXRRczV6bEdEVUJzMmlIY0lWTTIyMDdiUUg3ZENRU2JX?=
 =?utf-8?B?WEFuRlJxRjBqZGZKcnFlN2FabkVKM2VKR2RsZHhEVWU3SHB2SEt6SWJTUktq?=
 =?utf-8?B?a3d5aFhiZk9UMDJrVGxpSndJSWRMbHJpSVBCQjBMUGtFV3ozT0tydz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52b274c2-08a9-4552-a4b3-08de62db744d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2026 04:19:42.1494 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T8v7Bh9DAna8GXPntP+4Qz5FQETpnNhpqnea8bzrCfLizb2Xd91ckjCb+YJw1kD7IFjshP/STPoBVBxmM7juAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8697
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DD8CFD460A
X-Rspamd-Action: no action

PiBTdWJqZWN0OiBbUEFUQ0ggMTUvMTZdIGRybS9pOTE1L252bHA6IEhvb2sgdXAgZGlzcGxheSBz
dXBwb3J0DQo+IA0KPiBGcm9tOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
Pg0KPiANCj4gQWx0aG91Z2ggTlZMLVMgYW5kIE5WTC1QIGFyZSBxdWl0ZSBkaWZmZXJlbnQgb24g
dGhlIEdUIHNpZGUsIHRoZXkgdXNlDQo+IGlkZW50aWNhbCBYZTNwX0xQRCBkaXNwbGF5IElQIGFu
ZCBzaG91bGQgdGFrZSBhbGwgdGhlIHNhbWUgY29kZXBhdGhzLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1i
eTogR3VzdGF2byBTb3VzYSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQoNCkxHVE0sDQpSZXZp
ZXdlZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQoNCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMg
fCAxICsNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuYw0K
PiBpbmRleCA0NzFmMjM2YzlkZGYuLjFhN2YzY2EwNzllOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuYw0KPiBAQCAt
MTUwMCw2ICsxNTAwLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB7DQo+ICAJSU5URUxfUFRMX0lE
UyhJTlRFTF9ESVNQTEFZX0RFVklDRSwgJnB0bF9kZXNjKSwNCj4gIAlJTlRFTF9XQ0xfSURTKElO
VEVMX0RJU1BMQVlfREVWSUNFLCAmcHRsX2Rlc2MpLA0KPiAgCUlOVEVMX05WTFNfSURTKElOVEVM
X0RJU1BMQVlfREVWSUNFLCAmbnZsX2Rlc2MpLA0KPiArCUlOVEVMX05WTFBfSURTKElOVEVMX0RJ
U1BMQVlfREVWSUNFLCAmbnZsX2Rlc2MpLA0KPiAgfTsNCj4gDQo+ICBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHsNCj4gDQo+IC0tDQo+IDIuNTIuMA0KDQo=
