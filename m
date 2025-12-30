Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E38CECEA0BC
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Dec 2025 16:20:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3EFD10E914;
	Tue, 30 Dec 2025 15:20:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FQrpfpRW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE30610E911;
 Tue, 30 Dec 2025 15:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767108047; x=1798644047;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=85DNn/bd++BLZTRLkQVXm0ZlNsJJfo/jfDmKGc3i0+c=;
 b=FQrpfpRWlnAdZ42pyJuKQfNKqtSUQzAH1s+/i5lojGeL3mdIA2lk83hb
 HWNkm834H8ebY2dO1ICI50jZz+Ru700ppJobqP2/KsmAjaQSHH9fLqDbn
 g42/QNtQcibtoVUyznaU5sermYX6gKsVpGnZNvZvx3qZ/5iso/StmasF/
 b5c7RDeRPI0yzlqdV6qUO+G8gPCgyWm//UBvnwNJb83CE+MD8jtSTeeKw
 js0q66YgZ5H7V+QMik4uGUR44DAGJNo3ti57JN7UEDyGNyVn8bmEXPh+A
 +//Uv+hsSuHxk6P6XJB3D/KH2jxHZZBsD9DVsaKyikBt5yZTS4B5uBeOq A==;
X-CSE-ConnectionGUID: lDWNlDw+SvSdYJNmNMwqmw==
X-CSE-MsgGUID: IhlLNYoOQVyA/TbTLhc45w==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="68590619"
X-IronPort-AV: E=Sophos;i="6.21,189,1763452800"; d="scan'208";a="68590619"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 07:20:46 -0800
X-CSE-ConnectionGUID: UKortVX/RqqVuAI6iP4bZw==
X-CSE-MsgGUID: Br3d/RUDQFC/3WG47wTLFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,189,1763452800"; d="scan'208";a="238671237"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 07:20:46 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 30 Dec 2025 07:20:44 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 30 Dec 2025 07:20:44 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.35) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 30 Dec 2025 07:20:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DSUSMCRITVfO5XHIzt+Ks4VMTanoeGZNTsEFIWlqeYPz9Ecm8umrGaB+iFFmsqMgudnOrRa+pFZO8Akikl4puV7313huKcw+AhN9My18J3DDVIuGFL3Myc+pB5DnfA8fEPoOl2DZcMgFSFjEK09V3QeoSVn4V4NPF97uso6dVaAOaqlCd7du28tn015+Tx7Ot0qNTp2vkVWcQOY4HJ14wv55DxMV9A3a2Rv9avX8u8puLjU07wQUxg6NJ+1P7dCbw6bD2N7VLtRBXQtPyepcXxi55tu5RqBlryF4mrV1F1PT6gzog0kjil9+4/r57VJhr7/vcm/ghPdGRimYSXgMiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wHF36bC3/0YuAnClI7I4sDn4qasogRv8CYDCZPxRo2c=;
 b=TpKORexatjg1TWIw3IMXMCrJr/d1cGaR71JP1wss//BzON5qmu/qi7Bxd3OdFJXLrnqUd/bWPtTVvXsgG0D+fxq25TB5u6Wu3XwhpBgGLaOFph8F0jnVthLpU/dxuhcygFvtvziZIn8hTuIl+bN/LNGXdbg/Wn+SAoDn98l4bv45jvR+FeCn3kfqBTxtx96EwxHmyfrM1ZQHsGbn8dqXlzXLscDRQ66PN9WVtR9NVs+cMYNF/FJ5ZNXUBApGw0r3S9ZeDr2Urz8hQ1/CrSQRybpYy9Flc9AsZKJ3rDC0l9pN42z5lu5o+wKxYn2c3YKXM6k6S9V6jY8eDUDLL9Us1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH3PR11MB7819.namprd11.prod.outlook.com (2603:10b6:610:125::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Tue, 30 Dec
 2025 15:20:41 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%3]) with mapi id 15.20.9456.013; Tue, 30 Dec 2025
 15:20:41 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251230083142.70064-2-suraj.kandpal@intel.com>
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
 <20251230083142.70064-2-suraj.kandpal@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/cx0: Split PLL enabling/disabling in two
 parts
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <ankit.k.nautiyal@intel.com>, <mika.kahola@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 30 Dec 2025 12:20:37 -0300
Message-ID: <176710803722.18661.3929879142196785858@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0370.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH3PR11MB7819:EE_
X-MS-Office365-Filtering-Correlation-Id: 111a79b8-e4e9-44c8-3f99-08de47b6fe54
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TlJZeXVvbnV4T1JoWk9oVnAra0pMNm5vWlFlTHEwTmxIVVBNVkFEcU01VmtQ?=
 =?utf-8?B?UGRkWTRiNndRdUpKQ2pjb1pHRkdaM3JOR2xXS1BDYklIMzlaaS9DajVHam90?=
 =?utf-8?B?anZwaUhKZ2dtam9oUThBVVpZR3VENzQydkFyVVYrZlFvOXRldFgxYmhpcGVm?=
 =?utf-8?B?WWx4S2IvMTVmeHdhbllNakJFeTFLUVovbSttYzg3akRjZE5CTjlJZzRhSGls?=
 =?utf-8?B?emwyNjhRNk15eUhraTBQSkk0WVJpbEdCb0hoV1ZCZUdpNWVOTnVNY2VrazE0?=
 =?utf-8?B?aTcvR0d6Ykdzc1VBZWEvS1hrOEhVNWJ5dXlCL1RqOWZwZTJlY1pKUGt5VG5J?=
 =?utf-8?B?MUJBWlVDL3ovV2MrTzFEWWJ3TDQ5UXhiaDJiR0VrMkZYTnZzSE5NdVFRQ2l4?=
 =?utf-8?B?aDJIYWh1SG8vVFBST2lWbXl1djZzM0xyeXhHOU41RThjOGZaZnhyUFhZdURq?=
 =?utf-8?B?NkNrcUJaK21adDdTSnJLRzNQVGFnb3I0SjhVcFdzak85Uy91c3U2aXF5MFRo?=
 =?utf-8?B?NlVLRTVvYm41Ukx4Vk1HOFdmc3NPTVdjeENVcGJpT0FlMTdRckhQdS8zU3dn?=
 =?utf-8?B?VUxNZHV2SkRTeEFRU1hOeGNHSTluRXpJNGdMU2Ryd2p1Mmh3bkhES3gwc0pN?=
 =?utf-8?B?cFI5dVRwa0xPTStKM1ZEQUZuTkpGK3Mxa29EL3BsUUlhUStIYmk3Z0EzaXk3?=
 =?utf-8?B?MkozTE9sM1lubjZiUTlSbkQ1T2p6TG5NMmdqc2FsYmFnZGFOTU9KUEVRRnhC?=
 =?utf-8?B?bXdneEVZS0x5cU5Cd1FPYThLb0RRKzZGS1I2S3ZXWHBHWjNmSXdFWXlQZEox?=
 =?utf-8?B?eDd0azArdjhCRGY1S0NkRXgvN0lMdnIrcDY5eldqQXRaWnZaU09JOWRKL3d4?=
 =?utf-8?B?VWIreWI4eE11ZENnWXBrVVVnOUQyVldxUnd5akVyYnJVc2h3dUI5a1lDTXA4?=
 =?utf-8?B?T3dTNEsva0YwdUhrTzFWSVRLR3BLbUI0c1NpcG1iSXhKUHQ1RkpLTGFMZlNF?=
 =?utf-8?B?ZW9xOTE2ODhKL2Z5aWZPcVBUc3J6UUFQL0huYkZmK3d6Z2x3RVg2aGZNZC9y?=
 =?utf-8?B?VWpNa3NnWEpWY094OW15QWxWZlFCVFJ4elFKajBaTUg1V1ZzeDVWSFFNSXN0?=
 =?utf-8?B?RlErSlY2UTI4ekNacytuaGRiMWl6a0FEeWoyRlpnQU5DWDh5VFNpZzYycUM3?=
 =?utf-8?B?U0dPVXBWMUVMM3JEYnl5cnZOZEl4aFVpUWZXcnFiVTEwaFJHS2c5MnlRT2d1?=
 =?utf-8?B?R3pReE1tcEc0ZEVYVFQ3dVgzOER0NVEvSDFMdk1nU3VTSlVZRGZ3OG42OW5C?=
 =?utf-8?B?dTE0MWtUVVE2bUNhUzR1ZEkwOHk2YmhtdTQrYUVHSEtVRWxqSCtmQ2hiWTMw?=
 =?utf-8?B?Y0l6Q04wSXYxMlRIcnJITm9ZU25TUHhjTjFWR1dJLzVUanByYnpWQzVqS0Nh?=
 =?utf-8?B?dENMZU5oVU5SWjMxZlBCckt3ZVUvK2EvMUdoS0RSUDFZTkcwakJ1OFVxYTRG?=
 =?utf-8?B?MHdJdlZjV0ZESTlublpJWVNxeFJtbjRZL2pGdFhoNjkwVzNxUUFTZWlFZTYy?=
 =?utf-8?B?c1JkSk9rWUVpZGFES1ZqK29QdUhWZ3RxQks0N1h3S2tXODY0bE44L1d5MHpG?=
 =?utf-8?B?bXNOaDFCdjlraVBuYW5KeGNQRVFmY3NncThBbjZZOGVSandqZHlQbVZ5NmR1?=
 =?utf-8?B?OUttbG9PMjA4eVB6WnZFVFJod3BkeVZYMitoQ3hEQ2VYL0lwaDQ3TTZlNXl2?=
 =?utf-8?B?WS82M1BlSk1jbUZvYkVYSTBCd3lHREhVdGZVQ3hwWFFZSXg5TzEzUVVYQnov?=
 =?utf-8?B?ZVZGeEJGVlYyalBCVkNxbHdUeHU1Slk3WE5IaEwzcnU5dkREeXZ5bVZkUk8w?=
 =?utf-8?B?dXNsMnRxdnpWdFlyenJ4MlZjeEF5R2ZoR0VoTm4wQSszNHpsaTRnT1pXVEdD?=
 =?utf-8?B?MWwvalRUVzJtWEZTQ0JPaWkvL3czSkVoTmhVeWQwNjNuRWo0OWE0TDhJUGp5?=
 =?utf-8?B?cHhyKzZzV2tGbFpYTXdjdlhrcUM0SGNwbEJjZHUxejVpZW53akUxYTJBNE9S?=
 =?utf-8?Q?GdZ7vO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWR1RnJKaUZXRWpQTUl6RDUrNWk0ZjR5QnVOeTc4bUsyNEpDN21yQ0xhdlBU?=
 =?utf-8?B?cmlCZEs3WXV1VGYxNWZFbXo5L3VYKzVpU3Y4bnExa3FvSUw0c0JIUmtodzJr?=
 =?utf-8?B?K2o5YkIvZ3RaNG5ZMGxobk43dk4rZlJkVjVHZndGdEl1b1hPNEpsRUxGbnRk?=
 =?utf-8?B?aGRxdHdxZnlIcFdQUThMVVpHLy9oRlJlNVUvWkVWT0pVYXVud3NxVE9LSWlW?=
 =?utf-8?B?VE5SQUpmR1JDZ3RjaUtoN2lRb3N1cDdGYXoxeWlpeWZLb3Fwa2xJdTlNVkZ2?=
 =?utf-8?B?aExPOUpKWDBsTURQUTJxSzdueGlocEl5OUhMY3JPYWRESURIS2srVHQ1ZW8v?=
 =?utf-8?B?QWtkbmEvdlBCdml0NGpwWVNqRXJlZ2p6cUNoMEM5UDB1UlkxbytkUmVYMmF5?=
 =?utf-8?B?U28rWCt0bnRIY2dkbURqZW5MRkRUNmNHZ0MwYWIwa2NVMTNqblp0dzBZdHdm?=
 =?utf-8?B?QWkrY2RRZEEzQmYxaUUvbUx3MTBHQzdOTWh5d254ckd4cER5d1BEa2F0RVd0?=
 =?utf-8?B?WWVFZ0VCeTJTYlBiOER0UjU5MkNuc2pBZ0V2Tkl2RSsyeXZ2TjVnTGRTcmht?=
 =?utf-8?B?WWY4QWpmQUdUUlFkYWczTElFTEhkcHdNN2VISU91N0JPcEJNVVRvUmxGcGlm?=
 =?utf-8?B?QjdKVDdZdFZyc1hON2dhU2o0dDRoQVozMHJWNmNhOGdjVmpZVzB4anNSZGdT?=
 =?utf-8?B?TUlBRlBxQmhTS09ISUN4M2lBNDRnTzE4M21TYmtlRHU4eERPSVQ0SzhWaDBo?=
 =?utf-8?B?TFhINHh4UGFFWXhPSE1IZWFudm5YenEzNUFUNWp0bUxrNTVaNTVXY2RvYVR0?=
 =?utf-8?B?M1Q5dTJUdVlQUHNBQzUvN2JKc21tamJ6Z21EWWh2OVZLbkZJdGFHT2lIWGtM?=
 =?utf-8?B?S3BiUkRJY0MvalJwOTBnVGhuSGY4LzZnQjRkYVcwb0pEK255WGhteFAvV1JM?=
 =?utf-8?B?a2g5N2o4LzkwQm5MVmtJR242Vy9UOVR1U0dnWjNzeFRSeHp4MXlwREZJMTVu?=
 =?utf-8?B?bHNNYnNWRkQyQWhRaUFNdVhpL1hmRXMzTHBmNGRoVS9tZnlxZXd5OVdleUZv?=
 =?utf-8?B?TEczZjg0WUp3ODFseUp3ekdmS2kyL0FzdlJIWHYvNXR1N2NVYWFJUUE1VEQ3?=
 =?utf-8?B?RUxPZk9mSktHRnRUYng4bWppWGIvUHdaMGxKUDFmVUM2cXJ2eFMzY2RFRXZ3?=
 =?utf-8?B?S3ZzaTV6RkVXZGZubXBsZkJCWVFqYnQ3Z295cjltR056dU9LbTB0SDQ1ZW5t?=
 =?utf-8?B?bzFLTmJURE43VXY4dkpiNFZOTk1sek1qb2JGcktSZHZZWnQ4M0xpSi9UWDlo?=
 =?utf-8?B?TERDMGd1WWNkMlFtYVZRWTdCSlV5SS91L01pOTJWRUlkWGgwT3FnMTQraXJi?=
 =?utf-8?B?NmZNWlFqTW9RVkcvQ0MveFFUc0dLZGNHYU5sZlJVMkVSYzV2c3R6VzJiMWxw?=
 =?utf-8?B?eFNBbGtqYUtCUVNPV2VtT2RzY3JwVERKQjd3ZzhQa20yVCtqR2pHaC9Yb0Qy?=
 =?utf-8?B?QzJWM0tUbEhma1hpVXdocG9JcXRiUVAzRWM2R2NQZjBZZ1BZVVBkM3h4ZWIw?=
 =?utf-8?B?N1E1cDhnWnlLUFJoemp6VURTVXNuanh0eDE0WVRBZmVMU1o4Qy9oVDZ4Sy93?=
 =?utf-8?B?NWwzcGZDdVZKaEpCOEg1d2FHU3Uxd3RjUVhVaWd1dCtJbFhKQjdEYXhZSFI0?=
 =?utf-8?B?OUtGYTRPUDBZSkY3OElza0dmcWJvd0cxOFpNbmx6VWRIQnNleSsxdWZ4d2Zi?=
 =?utf-8?B?M3dQbDE1Sy9veHdaWXUwYmgyd2psc29jejVWSHRPd2hvYjc1WkZua3k4ZGpV?=
 =?utf-8?B?VGNFd1haV1p1S1JLekJ4YngvbVRGdHhyZE9lbEh5QVB5TkxIcGE3eUI4d1No?=
 =?utf-8?B?N0pxZkZ6QVZVVjBaZE1tcTJ6Zk9TdHl3QTFmbGJreHJXMHpsbHdZakIrRFda?=
 =?utf-8?B?NDExYzd1NmJrZUhObU9aZy9PTS9ZMUxLVzZvc1BSYUdaQ3JGeUl4Y09ocVB1?=
 =?utf-8?B?d0NjRURyV1pUZHVCWVNqbERUWVBCWEVWUzNmZGRwYkczOFZsK0N5aVRWdVVO?=
 =?utf-8?B?TEMzZ21KdnVrM0ZOZnRBSFNQczR1NTdOMUgvTzBNNkdNQUkwNE1LRUZhN1l2?=
 =?utf-8?B?UnAyRkl5RDRFV2wzUmJKN2NoUkdQbHQyRytEV3VnU29EdGFaTjdpc005RlQ5?=
 =?utf-8?B?eHR0eGIrZlZqSmk3MEtnTkpORWZLSHI0T1AxWG9xb204WWpReTZiQy9JM2dQ?=
 =?utf-8?B?emdsU1loUmVHYmtFTnJweDZ3Qk83Q2pwdlZxTlpXNEhIZDJLUlVyS1FseVFo?=
 =?utf-8?B?azEwbDZ3QVlPUVNCcFhadmZBODR1L0V2QjVzOUpvZjN0MlNjUDExZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 111a79b8-e4e9-44c8-3f99-08de47b6fe54
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2025 15:20:41.4450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TmzHStJsDAnG6zfoES3FRIO3FkxdMl35PYPwNikaee3gbs7ScXHJwH+1c6/yvTmo4NZZ7sCdXM1gRanRnJdWCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7819
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

Quoting Suraj Kandpal (2025-12-30 05:31:40-03:00)
>From: Mika Kahola <mika.kahola@intel.com>
>
>Split PLL enabling/disabling in two parts - one for pll setting
>pll dividers and second one to enable/disable pll clock. PLL
>clock enabling/disbling happens via encoder->enable_clock/disable_clock
>function hook. The reason for doing this is that we need to make sure
>the clock enablement happens after PPS ON step to be inline with the
>sequences which we end up violating otherwise. As a result of this
>violation we end up in a hanged state if machine stays idle for more
>that 15 mins.

So, it appears this started happening when we Cx0 code was integrated
into the DPLL framework and then the driver started enabling the PHY
PLL/clock too early, right?

I am lacking some context/background here due to my unfamiliarity with
pre-MTL platforms, but why I exactly do we program the PLLs before the
modeset sequence?  Is it related to the shared nature of PLLs for
platforms pre-C10/pre-C20?  If so, do we really need to do the same for
C10/C20 PHYs, since we have dedicated PLLs for them?

(Sorry for asking here and a bit too late.  Probably the better place to
ask this was in series that integrated Cx0 into the DPLL framework.)

>
>PLL state verification happens now earlier than the clock is enabled
>which causes a drm warn to be thrown. Silence this warning by
>allowing this check for only earlier platforms than MeteorLake.
>
>Bspec: 49190

This Bspec page is not invalid for platforms using C10/C20 PHYs.

We probably want to use these instead:

Bspec: 65448, 68849

--
Gustavo Sousa

>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 87 ++++++++++++-------
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 12 +--
> 2 files changed, 64 insertions(+), 35 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 7288065d2461..f3baba264e88 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -3225,11 +3225,8 @@ static void intel_cx0pll_enable(struct intel_encode=
r *encoder,
> {
>         int port_clock =3D pll_state->use_c10 ? pll_state->c10.clock : pl=
l_state->c20.clock;
>         struct intel_display *display =3D to_intel_display(encoder);
>-        enum phy phy =3D intel_encoder_to_phy(encoder);
>         struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>         bool lane_reversal =3D dig_port->lane_reversal;
>-        u8 maxpclk_lane =3D lane_reversal ? INTEL_CX0_LANE1 :
>-                                          INTEL_CX0_LANE0;
>         struct ref_tracker *wakeref =3D intel_cx0_phy_transaction_begin(e=
ncoder);
>=20
>         /*
>@@ -3284,27 +3281,6 @@ static void intel_cx0pll_enable(struct intel_encode=
r *encoder,
>          */
>         intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), port_cloc=
k);
>=20
>-        /*
>-         * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
>-         * LN<Lane for maxPCLK> to "1" to enable PLL.
>-         */
>-        intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->por=
t),
>-                     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES)=
,
>-                     intel_cx0_get_pclk_pll_request(maxpclk_lane));
>-
>-        /* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> =
=3D=3D "1". */
>-        if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, enco=
der->port),
>-                             intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LA=
NES),
>-                             intel_cx0_get_pclk_pll_ack(maxpclk_lane),
>-                             XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, NULL))
>-                drm_warn(display->drm, "Port %c PLL not locked\n",
>-                         phy_name(phy));
>-
>-        /*
>-         * 11. Follow the Display Voltage Frequency Switching Sequence Af=
ter
>-         * Frequency Change. We handle this step in bxt_set_cdclk().
>-         */
>-
>         /*
>          * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
>          *
>@@ -3403,6 +3379,42 @@ static int intel_mtl_tbt_clock_select(struct intel_=
display *display,
>         }
> }
>=20
>+static void intel_cx0pll_enable_clock(struct intel_encoder *encoder)
>+{
>+        struct intel_display *display =3D to_intel_display(encoder);
>+        enum phy phy =3D intel_encoder_to_phy(encoder);
>+        struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>+        bool lane_reversal =3D dig_port->lane_reversal;
>+                                          INTEL_CX0_LANE0;
>+        u8 maxpclk_lane =3D lane_reversal ? INTEL_CX0_LANE1 :
>+                                        INTEL_CX0_LANE0;
>+
>+        struct ref_tracker *wakeref =3D intel_cx0_phy_transaction_begin(e=
ncoder);
>+
>+        /*
>+         * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
>+         * LN<Lane for maxPCLK> to "1" to enable PLL.
>+         */
>+        intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->por=
t),
>+                     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES)=
,
>+                     intel_cx0_get_pclk_pll_request(maxpclk_lane));
>+
>+        /* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> =
=3D=3D "1". */
>+        if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, enco=
der->port),
>+                             intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LA=
NES),
>+                             intel_cx0_get_pclk_pll_ack(maxpclk_lane),
>+                             XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, NULL))
>+                drm_warn(display->drm, "Port %c PLL not locked\n",
>+                         phy_name(phy));
>+
>+        /*
>+         * 11. Follow the Display Voltage Frequency Switching Sequence Af=
ter
>+         * Frequency Change. We handle this step in bxt_set_cdclk().
>+         */
>+
>+        intel_cx0_phy_transaction_end(encoder, wakeref);
>+}
>+
> void intel_mtl_tbt_pll_enable_clock(struct intel_encoder *encoder, int po=
rt_clock)
> {
>         struct intel_display *display =3D to_intel_display(encoder);
>@@ -3472,6 +3484,8 @@ void intel_mtl_pll_enable_clock(struct intel_encoder=
 *encoder,
>=20
>         if (intel_tc_port_in_tbt_alt_mode(dig_port))
>                 intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_=
clock);
>+        else
>+                intel_cx0pll_enable_clock(encoder);
> }
>=20
> /*
>@@ -3567,12 +3581,6 @@ static void intel_cx0pll_disable(struct intel_encod=
er *encoder)
>          * Frequency Change. We handle this step in bxt_set_cdclk().
>          */
>=20
>-        /* 7. Program PORT_CLOCK_CTL register to disable and gate clocks.=
 */
>-        intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->por=
t),
>-                     XELPDP_DDI_CLOCK_SELECT_MASK(display), 0);
>-        intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->por=
t),
>-                     XELPDP_FORWARD_CLOCK_UNGATE, 0);
>-
>         intel_cx0_phy_transaction_end(encoder, wakeref);
> }
>=20
>@@ -3586,6 +3594,20 @@ static bool intel_cx0_pll_is_enabled(struct intel_e=
ncoder *encoder)
>                              intel_cx0_get_pclk_pll_request(lane);
> }
>=20
>+static void intel_cx0pll_disable_clock(struct intel_encoder *encoder)
>+{
>+        struct intel_display *display =3D to_intel_display(encoder);
>+        struct ref_tracker *wakeref =3D intel_cx0_phy_transaction_begin(e=
ncoder);
>+
>+        /* 7. Program PORT_CLOCK_CTL register to disable and gate clocks.=
 */
>+        intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->por=
t),
>+                     XELPDP_DDI_CLOCK_SELECT_MASK(display), 0);
>+        intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->por=
t),
>+                     XELPDP_FORWARD_CLOCK_UNGATE, 0);
>+
>+        intel_cx0_phy_transaction_end(encoder, wakeref);
>+}
>+
> void intel_mtl_tbt_pll_disable_clock(struct intel_encoder *encoder)
> {
>         struct intel_display *display =3D to_intel_display(encoder);
>@@ -3635,6 +3657,9 @@ void intel_mtl_pll_disable_clock(struct intel_encode=
r *encoder)
>=20
>         if (intel_tc_port_in_tbt_alt_mode(dig_port))
>                 intel_mtl_tbt_pll_disable_clock(encoder);
>+        else
>+                intel_cx0pll_disable_clock(encoder);
>+
> }
>=20
> enum icl_port_dpll_id
>@@ -3783,6 +3808,8 @@ void intel_cx0_pll_power_save_wa(struct intel_displa=
y *display)
>                             encoder->base.base.id, encoder->base.name);
>=20
>                 intel_cx0pll_enable(encoder, &pll_state);
>+                intel_cx0pll_enable_clock(encoder);
>                 intel_cx0pll_disable(encoder);
>+                intel_cx0pll_disable_clock(encoder);
>         }
> }
>diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/d=
rm/i915/display/intel_dpll_mgr.c
>index 9aa84a430f09..59395076103c 100644
>--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>@@ -186,11 +186,13 @@ void assert_dpll(struct intel_display *display,
>                      "asserting DPLL %s with no DPLL\n", str_on_off(state=
)))
>                 return;
>=20
>-        cur_state =3D intel_dpll_get_hw_state(display, pll, &hw_state);
>-        INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state,
>-                                 "%s assertion failure (expected %s, curr=
ent %s)\n",
>-                                 pll->info->name, str_on_off(state),
>-                                 str_on_off(cur_state));
>+        if (DISPLAY_VER(display) < 14) {
>+                cur_state =3D intel_dpll_get_hw_state(display, pll, &hw_s=
tate);
>+                INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state,
>+                                         "%s assertion failure (expected =
%s, current %s)\n",
>+                                         pll->info->name, str_on_off(stat=
e),
>+                                         str_on_off(cur_state));
>+        }
> }
>=20
> static enum tc_port icl_pll_id_to_tc_port(enum intel_dpll_id id)
>--=20
>2.34.1
>
