Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50788CB4F43
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 08:05:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9FB110E2A0;
	Thu, 11 Dec 2025 07:05:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UITzfC4p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2ED210E2A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Dec 2025 07:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765436730; x=1796972730;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DnOXRcf+djyUTWU8O989oh+2Z6OzVejuiHJWgzUlvLM=;
 b=UITzfC4pce/oYOwWarSjaKLWr/YFNAtqKj91CHV6h5XSgnUZzH3Hem0Z
 PGUZ7LZZzaffxO3bCSwayos5RKpGcIa5R04nEmqdlr6nBCRlVvKYy02ma
 pi6btKm/LDIMILfHeBzKI/2kfqQQh2sboh/jQkHAIBO0Cejrz2U+gesKw
 l91ZzlBJIFevuAbtu+mevcN215BdoxPw0tUpHHlAbrBQU3YO1E2aR5C7H
 t2po6SnjKDLHOLnIEBNGEfXJ45QRwv8UkPaCyRqQX8xsB2EIOIawF5MxE
 BvYG1CYURr9L2qEyqtukJOmUtR/rSZV+ai1nYPCQ3QsQrHiUTvUJhMI5Y A==;
X-CSE-ConnectionGUID: rUKQIW9pSRWuGeyPbgkVbw==
X-CSE-MsgGUID: yyIkR3WtSmGzrHPhU6vD1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="66415184"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="66415184"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 23:05:29 -0800
X-CSE-ConnectionGUID: GaCRFJD2TtiC9sYkkm8Hyg==
X-CSE-MsgGUID: nyanBvOMR3Kv5O9krRcWyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="200890943"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 23:05:29 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 23:05:28 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 23:05:28 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.21) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 23:05:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U8yoO3UORvgiFkOUVvwVCUo9JaU1SLc+XHzIZUu2oN5iv3FTzM+GoJy+zeFj+WZsEb2rRh23HBUMazbcAX+eJ6NleUf405oev8MIBvEbPJT6QmIti8nt7n5twEpO6DlaLYMixtuhnfRMsuha1CcYx1Pcgjkb50W9lst7NKc/6MOCTacYHUTAUIvQXmc7Q84/DvnMX/87hKG/NwyCNOXDZwDP7Db1DeBs0p3BA6U2zIB0bwMGu90lVFTXFFLTHx3TKXCaw+w+oDVjc6lVKWgP/o4St2EbJhKjsTQrBL+3SM6nNrXAv93yTkWvlWC0zEg5YkGRlNRtswXrajoUgTARJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KACIsUfzyuf/iZu1PmOKI10NQceQQYQIqRR/Al86P/A=;
 b=Pe9vUUHv0yGFh+8Ylm+ryHk1OBEYbuCl6NuqmQgwCkS3+5Zd+41p20knnsTqWSTRpFFW/DqNTY5kjfo1aXrqXtkSeqJZWO9yyu98vGT3vlorYihHMLV/VQFTfWm6PdoXJXWGfU3Mo/Eu64V6lLdJDxoP0ROWKQZo+oMOIn6nj/sAy7W4zh1lIpF8OjWT7PJ6ymCI2K0NElTruIIjnMV4yf0caqjadB4RVX2YE7w7iY+3Y7KbSxBI+Kj2AMl+qzMGqa3O/ajzxReKdZYNkkSDUcszmzEyTEjlbYajNhEufXzzsTvEw2occ+kZG/tiacw2c5Tm0z3mcekyM3/oNRvL2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA2PR11MB4876.namprd11.prod.outlook.com (2603:10b6:806:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Thu, 11 Dec
 2025 07:05:27 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 07:05:26 +0000
Date: Thu, 11 Dec 2025 07:05:15 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: "Anirban, Sk" <sk.anirban@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <badal.nilawar@intel.com>, <riana.tauro@intel.com>,
 <karthik.poosa@intel.com>, <raag.jadav@intel.com>, <soham.purkait@intel.com>, 
 <mallesh.koujalagi@intel.com>
Subject: Re: [PATCH] drm/i915/selftest: Add throttle reason diagnostics to
 RPS selftests
Message-ID: <ro3a7nfpblstp72xurgvaeve4ligkdwujesxznoasu6wuj23in@7idiegp4t4sb>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251209055616.1095495-2-sk.anirban@intel.com>
 <phjuejgrtlhzocdcmvglngezt4u3xhcdkptyeatx7rtx66vpwy@mfitxo4m7txn>
 <40c877e4-a017-4056-a0d4-8cf3ada0c96e@intel.com>
 <tglsnnckzfji56d3vqzvbee7ax6yjh6o5lv7lpoco2clikdmzn@txrozp7qqebp>
 <a7af4b0a-31cc-4f8b-b90c-e5f3bc399f0e@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <a7af4b0a-31cc-4f8b-b90c-e5f3bc399f0e@intel.com>
X-ClientProxiedBy: LO2P265CA0385.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::13) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA2PR11MB4876:EE_
X-MS-Office365-Filtering-Correlation-Id: a49c7352-66a3-4356-1c92-08de3883a95a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WmFvckhpU0Y2djMrd05leWlKdmN0bW1idDBvZ0NWbmZubVZmU3VmcU0rem42?=
 =?utf-8?B?a29oSmp1WjlLRHlpZW5RT05mR0V0TmRwMC8wRUJOQ3pkMGc2aGxqWGluVTM4?=
 =?utf-8?B?Wm5kaE81Q2FpSEdTSFAydmVpZEQ2UENKZy9TZzRWanVsbk1EeE9zSnBIdW83?=
 =?utf-8?B?UFg5Y3hvaFFPRC9PNEtON0w5a3NFa0RoejVuNnZtZ2IyN1h5S3dOZUxHMHhX?=
 =?utf-8?B?REN1RUllR3pYUHpwOHlUUG01ODBjZjBjUitJMUZoNUxDTzhHWnJpdmxLbmJn?=
 =?utf-8?B?MjZRL0l6TjNOUUJJZ2h5M2ltVVZWOWpoeHJnWjFBQ1QyQmI5cFBKbVYvakNR?=
 =?utf-8?B?T0UxVlcyUys4cnRualJCcnkraW4rYlFmSlFLMGcrRnUwUHhZUkR1WUNKd2Ev?=
 =?utf-8?B?QnR2alRnSlQxU3pUR0wzMS90TnJTR3JxRzRCTFBDMGplcGttcFVTbjF4Q1lm?=
 =?utf-8?B?Y1krc3ZBMU51R1B0UmdRVENvZ2FxeDVhb2JDT3NzOWYzWUtBaEE4Nzk3SkRW?=
 =?utf-8?B?NW1ob1krR2FMcDdaVWtPVkExRFF1NEFQVE5idFR6Y0RPOVlFdDlkcWlOeVNx?=
 =?utf-8?B?NkZjS2Vmb3NkT25naGhVd0E1TGIxN3FmTWJTY1A1Q2ViS003WHdlQVJhcUNo?=
 =?utf-8?B?OHluUFVLQzZyalB5STRSV1FuZjc0STdBMkpEVHdmSFQ0bzJZMXV5Q2ZlRy9V?=
 =?utf-8?B?YmdLM3p5MFluUkJzZW9xemtBU0JLN1pJbVE4eWdmYmc1UmZ5My93R0dTYUZz?=
 =?utf-8?B?cWpNcGtpNFBjYmhNUUJ1c3hib1lIWHA1YWE0b2w3VDZWRVorRlBxNUpqcTBz?=
 =?utf-8?B?djVYNXJGVENTL3hwZTkwUUgrTHM4NnZidEtOaFNXNElITENIK25vemtiWkdx?=
 =?utf-8?B?RlJ6ZkkvbHd6N3ZWSWxBTGw0ZGhXOFJ0UHVCZzJWdVJOZnZiSHNCaGRkL2Rp?=
 =?utf-8?B?QmV6VndwcHpKWE1FZjEzbXNHTW5DbGlibGpLUHZXZ1Q1VmFPRGpETGhmWC93?=
 =?utf-8?B?c0IyZndzdkxCZk1qakQ1Tm9nU3JLM2tyLy9zTGVxK0diSWoxSGMxVm5NNDNH?=
 =?utf-8?B?RjBHcmxSclZ4QWZBcTYyRU9iRmNwWmJqSFdUQlhkQkx5RjdHQk1LeG9DT015?=
 =?utf-8?B?bVliZEo3SVdwYzVHNW1mRW9lbG96K04vR0hwVXVYSUY4U0kvT0o3MWZTVVIz?=
 =?utf-8?B?ZTk4cVc0dVpITE05Um5DMjU5d1JtZm1ucHZsRGxFclJvdEdDbERNVTkwaERn?=
 =?utf-8?B?WjNpc2NQTmV6K3FlTExWVko2TitkclZVOHl2WCtsSVpobWlkWDZ5QWVJZ25i?=
 =?utf-8?B?U0llTS85ZEhlRm1IeGI5UFpWZk9JYVFaQnlmcmk4cDJWV1NOWjArTHpqVlhs?=
 =?utf-8?B?QlFQcFc1ZTlVZzJkTXYybU1leVhUcHE5NGtxRWkybmcwS3VmRXduVjFQL2JX?=
 =?utf-8?B?TzhzUVExZStiQkJHdzdYbG5ZeEQ3ak5nWi9jWlF5d0E2SXNlZWNGaTRaYm0x?=
 =?utf-8?B?MjZMcGd3RjZqQ2ZtdWhjUGE0RW56U3ZFSmJGNE9YdWx0YXJtMWJhRDlWY2xu?=
 =?utf-8?B?VHhyQkFEUVRpbytmckNhUDJ2blNUSHlKeWxZUWRGZ0tYQTM3WjlzUmtpbEN6?=
 =?utf-8?B?TFd0WTR4V2hPZTUyZDV2eHlyN2JtajFhUU9DWE12ZTM0T29nSXFmLzJNSHVN?=
 =?utf-8?B?VVBuZldibWNqcGozTldyR1dBK0NCZG9nTS9PQVRjM2N6OER3VGxkdVhEZUl1?=
 =?utf-8?B?K2t1YTNiTUJaV3lMN0dzTmFDbk1YYi9NM3dhQXFVUDdKYWlFSjdNeVFQd210?=
 =?utf-8?B?REd6U2RXK2N6aFJ3c0luTFRKZ0tlb0F5bDAwMFBjbE9NWmFlanJZdUZCVWI2?=
 =?utf-8?B?RDMzVER0RENrV0U2R1Z3ZjhWT1hhOEllcWgrMjVJclJ0eklXWmZIN2Fma2xV?=
 =?utf-8?Q?40EMuGN71K53n3cqfAf0Xul2v7l15FCa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUhyQ3F5a2RmVlh6eGM2enplaGF2WHNMSmVOKzhabWorUHdoM0tQN3IyMHUw?=
 =?utf-8?B?VWtzejBUSWkyeWExK3VtdGk2WlRRcEluQVQrU0RqZXYxNTkvWlhaRGVUcng0?=
 =?utf-8?B?TGFmUzhuaXJqS0tnMElsQWdLaXFFeFhYVmhva1E2am04RldGeE5VK0xzSWFF?=
 =?utf-8?B?QVhHSXQ5em80N3FXZTFqN3U1aXVXRU1Cd1hHSEpFcm9ZWHB2R08rbUJ2ejE5?=
 =?utf-8?B?bkRkMTdtKzQxbndKRHgzQWcxc2hubFpSamVrRzhtRkdHbjBNeHNFaDEzWlNZ?=
 =?utf-8?B?ZWFzRURiWjZVWDN5M2o3V0VZTFVSYUpDaVUvbnNHOC9BSTQxVys1dWVOWGJV?=
 =?utf-8?B?dmwrWERHUzJMb2xyK3oyNElEbEJUa2p1ZWNuNnZ3YmNlR1U4bzNnMlUraEZN?=
 =?utf-8?B?aEx5UXRyU0hHNjg0UXFqMFFNZDIwcGliZU9LM05mZ2RTd1dySHFSUXZDaVJa?=
 =?utf-8?B?RXF4cDA4a3dJN0c4WUNwdjl3QzRxV3huN01JZFNoVGV4TFI4bFh0NmdPcFAv?=
 =?utf-8?B?Yi9XUE1rd0gyS2xaTVYyakNBQ3hHVDFwR3dGbDYzdk9VSGs0SW1Pc1lCVzBU?=
 =?utf-8?B?MllJRGZDQmlMd0hYRklPVmNCalJtNVJ4dVB1UEtWUWtsVE04NTY0bjhMWjM0?=
 =?utf-8?B?UW1ubWFNSTVBNEVlTEdoZ2VuSzhRNGppYzVnM0pxVDNZM1lCbU5kUjE5dDVq?=
 =?utf-8?B?NnNHcyttbHlwQjNsNGNkbWp6NkFHN3VWcXBoZXRXRHkyTmRsMmRkaUhKM2d3?=
 =?utf-8?B?ZDg1MHcxS00vVmRSM1pRUjhQYk95VnUyL2V1YkkrZjZmTkc3c2hNSjJweHdQ?=
 =?utf-8?B?TkI3Uk5FUk9nbm9KNEprU3lTeW1vRGN6NDJkaVhDQm5ONXJoWlZYSnZLNTRT?=
 =?utf-8?B?VitSS2N0bHp3MWJvZjZPYUMvUk5sazV5blg0ZjFTM2YydkF6QXd5dHpzR3F0?=
 =?utf-8?B?UlMzdG84YWlSUFFpdFVtc3BRb0pHN3F1ZXpwNU1acmJXYUlOUjN1aEJ3MDln?=
 =?utf-8?B?MDE0cFdPT3lLSXF6VVlOUjdnby9Ic1czWHZyWWowSE5mcTBESXp2eFRqNVdz?=
 =?utf-8?B?SGFzaXhDT2xpZTlvWGJtUHVmbms0aVhVOXZIRm5adm9zOTFpa2hUcDhOYndU?=
 =?utf-8?B?TFpvdk1SWFF3ckxuR2xtSnkrd2RPY0RMNFVld2pseTcwODNXTk1veWRSMWUw?=
 =?utf-8?B?ektVZXIxbzd0ZVI4c0xJQXVVTmtIZFliUDFiakt0WVBxNllESzNTaXVZWm43?=
 =?utf-8?B?OW5ZcEhrVStxVW5INHBYSHpSLzNtWlphM3ZwS0xFb1pldW8xMjM5ZFhadkps?=
 =?utf-8?B?SVNudWE1OU1DTDY5Y1lHaUk0NVZqekY3dlJ0OTZUUlFlTTJVM2JjT2Jnanh6?=
 =?utf-8?B?NmwwS2JzaHRSOThBUlVTdWw1amMvZjJVWFA1QjJVODZKV1owSW9Jb2JkNVg4?=
 =?utf-8?B?VzlQd1BmdWpGam5xK0FTeHlUa25zVG4wcTNXTlB5N05JL2FDOEFCZ3JHelkx?=
 =?utf-8?B?Qm0wTVJZS2F6Z3VVNE9Ia2ROTDNIeVFmd1Nya2ovcUJLeE1zWVJrMGE5a2Ey?=
 =?utf-8?B?Rkl5dHhFZ0FGRUs5d1J6L09CZVA3cW11U1dHZDlNTDZONGM5TzluSnJ3bU9P?=
 =?utf-8?B?NmpKcHRHWHlZMEVqanRJQlNnN1hVek1WQzlJVlRVZHZuL3hPU2JBUEpWdEwr?=
 =?utf-8?B?RW9EZS85R3ZFT3hWdWY1TmRnNm1MWnM3aU9uaElXVnFoVnY4NldFQ29jYmww?=
 =?utf-8?B?UitZcVUzNWpsRkdxWEUydE5UL05oRnIyZ1ZKOHRSU2F4SmI3NE15Wit4NUxO?=
 =?utf-8?B?d2tMQUZlZUNCUXhhVUEwNWtwSWdleGNCVGt1UUhtUnluSndlMlpIeEt6SzlR?=
 =?utf-8?B?bHRXcHA0QS96UmZCVDJkcVhiUmdCNUxXdTZZdjZQN1dXNDZzL1JkWWNvRE9G?=
 =?utf-8?B?ckI1a01PS2JxWkJzbzJaN0dWbGxjQ1RFcU1jVzYyZzZ6TDdDYndCaHRsdGZp?=
 =?utf-8?B?ZUNPNkNNK21kaE84aWlBSmxMaEdWcGVQc09sUnZOVHNmbHgvUE9nYklJT0dL?=
 =?utf-8?B?SGhvMVRsOE9FTHlWSkJJdU5aMmlXR3JLUVEzS3U1dlhtY2IyQmpSUDQxdWwr?=
 =?utf-8?B?a2k5ZHg5bXBnZXpsZ0I0UGZGcGFLKzhaa0hoTHN1Nk90aVV6ZmhkSG1SOHJT?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a49c7352-66a3-4356-1c92-08de3883a95a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2025 07:05:26.7736 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nlub5W44ka0XEs0teJ9fJ/pFh1sp9xslqES9R4buh+CzMlqWLB7fMyJPxVgX3nOPQR4le0zQWLcqnFsOB6T8iOe9LI7cqOxFKRp0LXFS1yo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4876
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

Hi,

[...]

> > > > > @@ -1216,6 +1217,13 @@ int live_rps_power(void *arg)
> > > > >    		if (11 * min.power > 10 * max.power) {
> > > > >    			pr_err("%s: did not conserve power when setting lower frequency!\n",
> > > > >    			       engine->name);
> > > > > +
> > > > > +			throttle = intel_uncore_read(gt->uncore,
> > > > > +						     intel_gt_perf_limit_reasons_reg(gt));
> > > > > +
> > > > > +			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> > > > > +				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> > > > > +
> > > > This feels like spamming the system messages. We are on error
> > > > path already and exiting with -EINVAL, so printing an
> > > > unconditional warning here is excessive, I think.
> > > > 
> > > > [...]
> > > Got it. Based on past experience, most failures occur due to throttling.
> > > However, I can switch it to pr_info since we already print pr_err
> > > beforehand.
> > No, that would bunch up two reasons for potential failure.
> > If you experienced problems in condition check:
> > 
> > if (11 * min.power > 10 * max.power)
> > 
> > due to throttling, then throttling detection could use its own
> > error path, something like this could work:
> > 
> >   		if (11 * min.power > 10 * max.power) {
> > -                       pr_err("%s: did not conserve power when setting lower frequency!\n",
> > -                              engine->name);
> > +			if (read_cagf(rps) != rps->max_freq) {
> > +                       	throttle = intel_uncore_read(gt->uncore,
> > +                               	                     intel_gt_perf_limit_reasons_reg(gt));
> > +                       	pr_err("%s: GPU throttled with reasons 0x%08x\n",
> > +                               	engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> > +			} else {
> > + 				pr_err("%s: did not conserve power when setting lower frequency!\n",
> > + 			       	       engine->name);
> > +			}
> > +
> >   			err = -EINVAL;
> >   			break;
> >   		}
> > 
> > The main goal would be to differentiate and print only one
> > reason for failure, instead of emitting two of them and leaving
> > people guessing which one of the two was the real reason the
> > function returned with -EINVAL.
> > 
> > I did not test the code above, so it may require some changes.
> 
> Throttle is not considered a failure in this context; it serves only as a
> debug indicator or a potential reason for failure.
This is a good reason not to include it straight away in the logs.

> 
> The primary objective of the test is to measure power, and any failure will
> be related to power metrics.
> 
> Throttling is viewed as a defensive mechanism rather than a failure
> condition.
Then print the log when throttling happened
(i.e., when if (read_cagf(rps) != rps->max_freq) is true):

             if (11 * min.power > 10 * max.power) {
                     pr_err("%s: did not conserve power when setting lower frequency!\n",
                            engine->name);
 +                   if (read_cagf(rps) != rps->max_freq) {
 +                           throttle = intel_uncore_read(gt->uncore,
 +                                                        intel_gt_perf_limit_reasons_reg(gt));
 +                           pr_warn("%s: GPU throttled with reasons 0x%08x\n",
 +                                   engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
 +                   }
 +
                     err = -EINVAL;
                     break;
             }
Unless, you are certain that a throttle will always happen in
this error path, that additional "if" is necessary.

If this is a debug log anyway, then choosing pr_info or pr_warn
is not that important, so you may leave it as you see fit.

-- 
Best Regards,
Krzysztof
