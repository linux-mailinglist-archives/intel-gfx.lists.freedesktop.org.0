Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DF8C230F3
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 03:49:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4ED410EAAA;
	Fri, 31 Oct 2025 02:49:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mir6W1Qi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7978310E188;
 Fri, 31 Oct 2025 02:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761878942; x=1793414942;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Lv3NSqW2qMMkBwJBXohuPGEFC8KehlBLJXqDQzHmPjQ=;
 b=Mir6W1QidYUhZJrC3oJ+9Hw3hk/P62MWEXyGjLteu7o8myG20SvjZhDh
 fbCNYjY93o+5R9br4k/Y7pFqMLF41r3pn0TC6bEaCI6AXCLXfzcpG36ls
 inWoQgHtNB83XMPl934vTwhKxDSWYmASNN/97g+vXGvJMbiF9m5Si0E3f
 0M/pWGEeMpxN3XPsdIH+XoZ2E0NGQB61DQp4mcG6H/mXIQgADV75lkZBz
 xfJ+mQcZOfePUwfzeP1q5DIgue6CnTbKZRchgdM1NUectJSpxbQryxsLD
 9c9DpqlVpxZEsVKOm48j1sxxl7xiaY5dRjkQy+4XmN6rgJDpxHE4cj4n0 A==;
X-CSE-ConnectionGUID: BMZN4zkxTxSKM9ilVBR4Bg==
X-CSE-MsgGUID: oP4c37HtSoK66MjulDKAug==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64183744"
X-IronPort-AV: E=Sophos;i="6.19,268,1754982000"; d="scan'208";a="64183744"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 19:49:02 -0700
X-CSE-ConnectionGUID: BRWUUsQUQPO8DWcVlq9Wcg==
X-CSE-MsgGUID: Je+E8pAFTn2/K8gAbL+c4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,268,1754982000"; d="scan'208";a="191261863"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 19:49:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 19:49:01 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 19:49:01 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 19:49:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lTCbwAWnLGyM2cDjTnmh1mFBv+Ccb/tQjUOHgtLGQiRoEZvfvRIEdouD7+SmZGx1TQVqx/ToaOqM/m+NhY6ktTIk+KJuaEOBeVaAzQ9Er0thNwdY9cVZjrJ4wpa81arZR2vjGLRlbimBhJdoCddoxir2iRo4gu3Z0rqSGltmZSgf1PRtp7jTeESJvcCu1XTGB4IhNff0/sXl8e81X29sMWt1nqgB/tOOrqnutqdxEWhtNthPj7Js0S6VGTSWstiNflrJwH/b7Zgjn28Sj2BK3l/NAL839ifr7LrIyNiy1RiDA7aN3ex6525V9D4JKegYMZ02mf6Qh+FwrpKUs+mASQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=63QMYsRLFyeEMgyC1eoEl3uiwNsk34d84PX1HgEQxWQ=;
 b=nxq2Fvu6NPSyR/TlFbXLEtpjWNM1C14LzNRyb7GnnSoIvoXLFcJn6XB+GOOqIScta8TxCMPD0zcpGFwS5SjAr94SRonZ03AREA4BUA0KFGvDOMxWLPbdOQsIeCACy+M2NHDaZAjcGEG60dmz1sAR2T2XmP1bvK34cpQnVQhgESwytPiL02eaey3UrP1x30w6HNUP0Kpuy6Xvz97NnunOSvWWaEw1z/ivNGfShijcMTNgRHQNkXj5QvgDdUe2r59NZ6Ws1zxk93e5JrzmLbeGT15sLVMklkK2wTDoWe8Otsl+dYWXZeN06t/APOmW2x1c4w7J3xMBIOohzRJKGdxYjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB8320.namprd11.prod.outlook.com (2603:10b6:806:37c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.14; Fri, 31 Oct
 2025 02:48:59 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9275.013; Fri, 31 Oct 2025
 02:48:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251029212215.GC2806654@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-13-10eae6d655b8@intel.com>
 <20251029212215.GC2806654@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH v2 13/32] drm/i915/xe3p_lpd: Adapt to updates on
 MBUS_CTL/DBUF_CTL registers
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Thu, 30 Oct 2025 23:48:55 -0300
Message-ID: <176187893526.3303.4396397116272962497@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BY5PR03CA0009.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::19) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB8320:EE_
X-MS-Office365-Filtering-Correlation-Id: b86a01a5-967c-4adb-d9be-08de18280a84
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eUVPc3lMcXh0WFBySkRjcUZHMVJaK0FnemhKWHBaeUpVQ0MzUjNkTFIzYUQx?=
 =?utf-8?B?c0h2LzJxajNCQWxIWnk5T3pJV0QwTmFlWSs2czErOEdlK2hKMGVzMmd3dnBv?=
 =?utf-8?B?eWFMY0YrbjhRbFZVcjJZaUhkV1ZJOFpvNHpGcHdCeWZIZy9FNENNelZDUW9s?=
 =?utf-8?B?cVZVSWNKMFQvd3IzS0l0bVFxVFhIakRYUkFRRG14Y05FdDhzemU4L0pXUWlN?=
 =?utf-8?B?RWk5ZzFuSitzekVoZTdWMUJsbTFpVjc0YjQ4dzBpTUplZ2hqSkNXNE5Rb2oz?=
 =?utf-8?B?eTV3WGdoZTI0NVgwL29Xc2V1SlhRQmlhZEhUMUVOYTBGRGxYSDlFY2RkcjQz?=
 =?utf-8?B?eVlaczFPaHQ2Rzd3cktTYlVMajhXeWhDek1icnZoTXpUQzcySU9PNWJaTTRL?=
 =?utf-8?B?SWluT0RqRE0vOFZKVXYxWVEyblNaZUZjQ2ZUTzhXK0lyTVl2K2g5OUprNEhk?=
 =?utf-8?B?WkM3dU1COFdTR0lNcXdZTk1uT1k2T0dEZkRWcWJtYjlpSDl6UGhmOWh0RWsw?=
 =?utf-8?B?TGU0R2RFTG5KcVlDVDFoaC9yRG9PL2tqbUNnLy9icjI0UFZHQWFNeHE3Zktr?=
 =?utf-8?B?bHhldDZEcENaWDFOWkNVM1U3Rzh4dHBTZmhnWHk3QmFVMVRHSWQvVXMzRXhS?=
 =?utf-8?B?QnU3clZWQ3VtbGhaZXpxcnluOE5NWE8xUjNHRHpjS0pCM2VJSmRoMWphajdP?=
 =?utf-8?B?a1liMkJvbTZ5SmJyb1k1WU0wTnhGeS9TV2dUMEhIbEZSQ2k1citVMkFKZURM?=
 =?utf-8?B?NkJVUW54a0ZJelRGOERJTzZzQS94cW9mTjhUVjF3VDR0U1Fha2FmYnlKUWEx?=
 =?utf-8?B?T24xRU44WUt1THlBWXlScG02allkK3NSUEZjbzdSc0FhTjJKbWFMOFVJb3Vx?=
 =?utf-8?B?L3l3dGMyL2RmY3Q4aHFMYzVtZWFWUmxONkxRN3F3MjhiRG5TSGRXN0x4OHRS?=
 =?utf-8?B?SGE2RXFOU1BGa1ZBaEtiQjM2UmZsRXl1LzVNUG1BMVZSb1BWck51dWtVdEFR?=
 =?utf-8?B?Sm1PMy9GVmdXVmhDKzRmNk1hV2xxQXBtekxTYndyWWczRVRWTlhHTjczMEhY?=
 =?utf-8?B?Z3M2WW5vUWs1c2RwYlFXTzJpdUFHTXRmS3hrVk0zWWppRi95MytYdU4rVS9s?=
 =?utf-8?B?V1BKT0tPVjNMU2pGRWppQTdFc3R4Qk1WRnZLRVV2RlptUFlpV3JJYjlQUVBt?=
 =?utf-8?B?YkZqcVR6TmFZbmxrcDZucUNJdnBRRGM3RkZUdDRPdE9zRlI2eEZ5V2hLUlNx?=
 =?utf-8?B?eGRHa0NidDJIa0RFMkw0TGQ4RXVlMkplNzl0WVJDT0x2TlM5UGdIVGtSMC9O?=
 =?utf-8?B?dHZmZ2hMZC91S0NkYmNGSSt1Zm5ZMEdmMEIvZDVVVStTWm9rUzhOOGJ5M0oz?=
 =?utf-8?B?MEdDQkpmNnVOUTVLK2hVdEhQMTZ2bVg0N3dyUGVKZjBoTmlRQkd6U3Z0MGc4?=
 =?utf-8?B?SEUzVTdGZ2sxb21EOWpsNEcrQnFrQk5kbldMVytvcGhkS2Z0VXZOMGNrdWpS?=
 =?utf-8?B?UjBTWEtKVFRNSkE5dHpNN2dCRTdhR0RCUDVnbk55YnphRFBjUUZ3OHhpVmhu?=
 =?utf-8?B?eEJ1K2sxSU40Sk43RkdaV2ViSEpwa0RvZGhjYU5MZU1oUllwTE5NdGQxL3RN?=
 =?utf-8?B?NHE2UnNaeDdyRzNtMmRESXRFSFpjcm4yaHUvZGw3UVIyNUk1SHdhSVhTYTdr?=
 =?utf-8?B?U1MvUUVxN1krdUlqbTdvK3JGbUorUVpLcUxrdzdZTmQ3RTViSmphMkVkOGJh?=
 =?utf-8?B?ZkhTWnA4UmUzZ1lhVjN3SGtsUkI5ZEFTZlBRak1TZ1djNyttV2M4NHVaVktx?=
 =?utf-8?B?T09ZNnRsYUJKbU5yeFVsa2lUNUpuVmxTQVRmUzluenYzOHpTVVFIUEJndVhu?=
 =?utf-8?B?OHR0RmNsU0JWQmpIQ1EzalVsZXFERmNhZEQrZWVIY096alBaT2RGbGMzaUtn?=
 =?utf-8?Q?Cq4thkcA1FGQCocA+hy9FGX2b7Lj1zWh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QlV6ZS91YlYySStNZXhGblgzVmo4NXF5TnpyZ252T0VQS1RCMlZJTlBqWCsy?=
 =?utf-8?B?ekthcHVuQ2lLYU44T1RoaS9tQk1VNWo5c1NhanNXS0VkYU5XQmNkWEgxN1B4?=
 =?utf-8?B?QmxabDgvTDhKRDk4L2QrM1pGQ2k3TFl4MTJVMFBaSHJUckhBRGpoQlhZaStz?=
 =?utf-8?B?dER5aDVXMElnMlZmSHRRaU1XbWtTdUZwbi80bCtacklaaU5wT084RnBrVGdx?=
 =?utf-8?B?NG91WkQzamEzSkhUUDY2UEdIdW5aSCtiUkVoL01WTDg2Q0hnd0xacUYvN2J6?=
 =?utf-8?B?bnppOGtONW5rMTQvMXBnV0UwQUVyOExGbGZKMGdUSVR5RmMwaldGZngxS2Vu?=
 =?utf-8?B?ZHVkZ01wdUtxcjlIZ3IrRWFRWkxqTTZ0WktZUklPek4zS1RlSXQwUFR1ZmFF?=
 =?utf-8?B?WDdsS3hhSFVLRFp4QzFzQU0yMjhCOE1zZ2ZYL1JFTHlaTWlPNjkxUFI1bFZa?=
 =?utf-8?B?cHpPY29WUTNiSm9HR2FORDkvR2NISWNwM09Fdk9HVFVuZyttc0NBVHhuQjdM?=
 =?utf-8?B?b013Tk05WGFmQk1teWMwRWRpQS9WTXpFMWpqWkltNUpqSDZITjQ3VzAzdDNW?=
 =?utf-8?B?OVh0N1Z2aHJ5ZExXaThDNzBBY250MndSd0ZtZ0R0SkVTdVRWMlhHK0VDQTRq?=
 =?utf-8?B?NnB0UXRyamQxMzdZcDNKUGZHUWJRSG1YaU5jRlFJOUY1SUlYWXBWa29ZRy9t?=
 =?utf-8?B?cFQ5aXFaZHExWjdrU00wL2ZzaVNwcDdsL0JaWE11Y2FrUzkxYkxyK3ZidXli?=
 =?utf-8?B?eWtRdWdSMVVpNGF6emc0djFaZlFINjNtMzBxaXNuQ3Y4OHpTMkl1SnAwRnBo?=
 =?utf-8?B?QXNqUEdpOGo4T2dxM2o1OFkxZmsyemFNWVRVU2hQa3QreThnOHJ5NWdPTzFM?=
 =?utf-8?B?YTYwN2FJYUpmU3IrZG5ybnVFTW1jQzhXUkZwVzVhU1dkL2tuc1doMStnMzJ5?=
 =?utf-8?B?RlgvVTJXaHprWTBQYjZTMFJmSlpEMkw4VjJUa0ZEbFR3bEVFUmZod3VMRjdD?=
 =?utf-8?B?K0tIMzdsM1VrQ0FnQkVoZ0lwUEVQOGY5TkZ5Y0J4SjRPYWJOUDQxVFlOd2Fl?=
 =?utf-8?B?SktvU1hhcXg4R2xoS0ViRlNvVjZZc2dQQko5dzRqekI4ZURNT3BNSWE3K3pO?=
 =?utf-8?B?amQ0Q2Y3bmhiZU5BVFA5WmRIYXU0czRySkUxMFVJZGdyNHVoZFAvSCtaVmZq?=
 =?utf-8?B?OFl2dFJyODNQcUZQOWpJYk4rUEt6UmxIdVdFN29oczVVMFhLc1pPVm5HNkJj?=
 =?utf-8?B?MjBrSWxTUFVsSThCd1MyQnpXV3J5TE1xcFFNQndFbzVjMXovdnRvVmd5SW5k?=
 =?utf-8?B?VzhQaHNyTjRHbFpRYzlzYTJCbXZnd1Y4dXFkbWhKYVdWTjRZKzNaWUlXYkw4?=
 =?utf-8?B?TnBkVkQyWG8zWHZBaDVFMzB6ZFVpcFlOcmlHUytjZTg3aUt0M0Y0dURaTzE2?=
 =?utf-8?B?T3QwaUJNcGprMXBhRUc2d05hNXN5NnZVVzl3Y1hRZ1dJd1A4R09sc1ZjMnJx?=
 =?utf-8?B?bHRmNHgrZnBCMzMzRmJkYkNKZ0o1NnlNNGlsUTRFb0M5bG1ocVgzUXhaTUZO?=
 =?utf-8?B?MXFaNk4yRnJMS2pOa2ZPalY3RitldkVONXdaVEp0VFVhckQzdDV6K3RMbEtt?=
 =?utf-8?B?ZVdUREFnaVNRMnRVSXpkUjdVaWxKeUVRSHJubzFNODF5OVEvSHZLSG00Rlhv?=
 =?utf-8?B?QVIrY0cvajVwYk5VVkxITU9KTWhFMWN4TnI3TjdJNDExUzArNGxxY1I0N1NP?=
 =?utf-8?B?bUlNejExaTBoWSsvUGJ1a1d1SkwwY3Bab0VpNWxOYXNMNk50TkUzNnNlVWNn?=
 =?utf-8?B?QkhvU0tyUWpxTnIzcm5PWVJHSUFjQ2k0ZTg5RzY4aU9TR2EvTUgrcUowMlRM?=
 =?utf-8?B?OEIxeWNXaGluVkNPYVFEaUp5d21idjlYYXFrWk1GVzMyWWd0dTE1Yit0N2xy?=
 =?utf-8?B?WEpiSTJVZ1d2VW9WdHdRRnVGWWZKMjVhOW9SYWJ2MkpvSjZRQXozUml4bmxW?=
 =?utf-8?B?RFlWUVdPVTNBZ3poYW1YWTN3TmcvZ0VGd0w1NEZDUitabjlDYjUxYUZlRVBG?=
 =?utf-8?B?clMxbTkrNE92K1l2RkRIeVpoWXd6RnJNVVBqU1NFM09oa1NUMHIrbjBqRUJH?=
 =?utf-8?B?VjlIMXloS1VwNmNjZm1Jc1g3YS9nbURJekViSk45OUxKTU5oQkZtOWtPSThm?=
 =?utf-8?B?REE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b86a01a5-967c-4adb-d9be-08de18280a84
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2025 02:48:59.3195 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XHE40pSJyHIDN5ISsL9G+41187lRannTg4Ph/RxI1yGz5jyIOodXKPxz6Y+ntgTq4CG7fWl5ud1HOD2X1utvLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8320
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

Quoting Matt Roper (2025-10-29 18:22:15-03:00)
>On Tue, Oct 21, 2025 at 09:28:38PM -0300, Gustavo Sousa wrote:
>> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
>>=20
>> Some of the register fields of MBUS_CTL and DBUF_CTL register are
>> changed for Xe3p_LPD platforms. Update the changed fields in the driver.
>> Below are the changes:
>>=20
>> MBUS_CTL:
>>         Translation Throttle Min
>>                 It changed from BIT[15:13] to BIT[16:13]
>>=20
>> DBUF_CTL:
>>         Min Tracker State Service
>>                 It changed from BIT[18:16] to BIT[20:16]
>>         Max Tracker State Service
>>                 It changed to from BIT[23:19] to BIT[14:10]
>>                 but using default value, so no need to define
>>                 in code.
>
>In a lot of cases when a register field picks up extra high bit(s), the
>extra bits were previously reserved, so it's fine to just adjust the
>existing definition (since reserved bits are required to always read out
>of hardware as zeroes).  However in these cases, the new bits these
>fields are extending into were actively used by the hardware for other
>purposes on previous platforms, which is why it's necessary to keep the
>existing pre-Xe3p definitions unchanged and create separate Xe3p ones
>that can be used only on the newer Xe3p platforms.  You should make some
>mention of that in the commit message so it's clear why we're handling
>these a bit differently than a lot of other registers.

Agreed.  Just updated the local v3 to make that clear.

>
>>=20
>> v2:
>>   - Keep definitions in the same line (i.e. without line continuation
>>     breaks) for better readability. (Jani)
>>=20
>> Bspec: 68868, 68872
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/skl_watermark.c      | 16 +++++--
>>  drivers/gpu/drm/i915/display/skl_watermark_regs.h | 52 ++++++++++++----=
-------
>>  2 files changed, 40 insertions(+), 28 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/=
drm/i915/display/skl_watermark.c
>> index 256162da9afc..c141d575009f 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -3477,7 +3477,10 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct i=
ntel_display *display,
>>          if (!HAS_MBUS_JOINING(display))
>>                  return;
>> =20
>> -        if (DISPLAY_VER(display) >=3D 20)
>> +        if (DISPLAY_VER(display) >=3D 35)
>> +                intel_de_rmw(display, MBUS_CTL, XE3P_MBUS_TRANSLATION_T=
HROTTLE_MIN_MASK,
>> +                             XE3P_MBUS_TRANSLATION_THROTTLE_MIN(ratio -=
 1));
>> +        else if (DISPLAY_VER(display) >=3D 20)
>>                  intel_de_rmw(display, MBUS_CTL, MBUS_TRANSLATION_THROTT=
LE_MIN_MASK,
>>                               MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
>> =20
>> @@ -3488,9 +3491,14 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct i=
ntel_display *display,
>>                      ratio, str_yes_no(joined_mbus));
>> =20
>>          for_each_dbuf_slice(display, slice)
>> -                intel_de_rmw(display, DBUF_CTL_S(slice),
>> -                             DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
>> -                             DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1))=
;
>> +                if (DISPLAY_VER(display) >=3D 35)
>> +                        intel_de_rmw(display, DBUF_CTL_S(slice),
>> +                                     XE3P_DBUF_MIN_TRACKER_STATE_SERVIC=
E_MASK,
>> +                                     XE3P_DBUF_MIN_TRACKER_STATE_SERVIC=
E(ratio - 1));
>> +                else
>> +                        intel_de_rmw(display, DBUF_CTL_S(slice),
>> +                                     DBUF_MIN_TRACKER_STATE_SERVICE_MAS=
K,
>> +                                     DBUF_MIN_TRACKER_STATE_SERVICE(rat=
io - 1));
>>  }
>> =20
>>  static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_sta=
te *state)
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h b/drivers=
/gpu/drm/i915/display/skl_watermark_regs.h
>> index c5572fc0e847..94915afc6b0b 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
>> @@ -32,16 +32,18 @@
>>  #define MBUS_BBOX_CTL_S1                _MMIO(0x45040)
>>  #define MBUS_BBOX_CTL_S2                _MMIO(0x45044)
>> =20
>> -#define MBUS_CTL                                _MMIO(0x4438C)
>> -#define   MBUS_JOIN                                REG_BIT(31)
>> -#define   MBUS_HASHING_MODE_MASK                REG_BIT(30)
>> -#define   MBUS_HASHING_MODE_2x2                        REG_FIELD_PREP(M=
BUS_HASHING_MODE_MASK, 0)
>> -#define   MBUS_HASHING_MODE_1x4                        REG_FIELD_PREP(M=
BUS_HASHING_MODE_MASK, 1)
>> -#define   MBUS_JOIN_PIPE_SELECT_MASK                REG_GENMASK(28, 26)
>> -#define   MBUS_JOIN_PIPE_SELECT(pipe)                REG_FIELD_PREP(MBU=
S_JOIN_PIPE_SELECT_MASK, pipe)
>> -#define   MBUS_JOIN_PIPE_SELECT_NONE                MBUS_JOIN_PIPE_SELE=
CT(7)
>> -#define   MBUS_TRANSLATION_THROTTLE_MIN_MASK        REG_GENMASK(15, 13)
>> -#define   MBUS_TRANSLATION_THROTTLE_MIN(val)        REG_FIELD_PREP(MBUS=
_TRANSLATION_THROTTLE_MIN_MASK, val)
>> +#define MBUS_CTL                                        _MMIO(0x4438C)
>> +#define   MBUS_JOIN                                        REG_BIT(31)
>> +#define   MBUS_HASHING_MODE_MASK                        REG_BIT(30)
>> +#define   MBUS_HASHING_MODE_2x2                                REG_FIEL=
D_PREP(MBUS_HASHING_MODE_MASK, 0)
>> +#define   MBUS_HASHING_MODE_1x4                                REG_FIEL=
D_PREP(MBUS_HASHING_MODE_MASK, 1)
>> +#define   MBUS_JOIN_PIPE_SELECT_MASK                        REG_GENMASK=
(28, 26)
>> +#define   MBUS_JOIN_PIPE_SELECT(pipe)                        REG_FIELD_=
PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
>> +#define   MBUS_JOIN_PIPE_SELECT_NONE                        MBUS_JOIN_P=
IPE_SELECT(7)
>> +#define   MBUS_TRANSLATION_THROTTLE_MIN_MASK                REG_GENMASK=
(15, 13)
>> +#define   MBUS_TRANSLATION_THROTTLE_MIN(val)                REG_FIELD_P=
REP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
>> +#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK        REG_GENMASK(16=
, 13)
>> +#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN(val)        REG_FIELD_PREP=
(XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
>
>Nitpick:  I'm not sure if we're 100% consistent, but I feel like we
>usually sort bitfields based on their upper bound rather than their
>lower bound.  So even though xe3p and pre-xe3p start at the same bit 13,
>the xe3p should probably be sorted first since it ends at a higher bit
>(16 vs 15).

Ack.

Thanks!

--
Gustavo Sousa

>
>> =20
>>  /*
>>   * The below are numbered starting from "S1" on gen11/gen12, but starti=
ng
>> @@ -51,21 +53,23 @@
>>   * way things will be named by the hardware team going forward, plus it=
's more
>>   * consistent with how most of the rest of our registers are named.
>>   */
>> -#define _DBUF_CTL_S0                                0x45008
>> -#define _DBUF_CTL_S1                                0x44FE8
>> -#define _DBUF_CTL_S2                                0x44300
>> -#define _DBUF_CTL_S3                                0x44304
>> -#define DBUF_CTL_S(slice)                        _MMIO(_PICK(slice, \
>> -                                                            _DBUF_CTL_S=
0, \
>> -                                                            _DBUF_CTL_S=
1, \
>> -                                                            _DBUF_CTL_S=
2, \
>> -                                                            _DBUF_CTL_S=
3))
>> -#define  DBUF_POWER_REQUEST                        REG_BIT(31)
>> -#define  DBUF_POWER_STATE                        REG_BIT(30)
>> -#define  DBUF_TRACKER_STATE_SERVICE_MASK        REG_GENMASK(23, 19)
>> -#define  DBUF_TRACKER_STATE_SERVICE(x)                REG_FIELD_PREP(DB=
UF_TRACKER_STATE_SERVICE_MASK, x)
>> -#define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK        REG_GENMASK(18, 16)=
 /* ADL-P+ */
>> +#define _DBUF_CTL_S0                                        0x45008
>> +#define _DBUF_CTL_S1                                        0x44FE8
>> +#define _DBUF_CTL_S2                                        0x44300
>> +#define _DBUF_CTL_S3                                        0x44304
>> +#define DBUF_CTL_S(slice)                                _MMIO(_PICK(sl=
ice, \
>> +                                                                    _DB=
UF_CTL_S0, \
>> +                                                                    _DB=
UF_CTL_S1, \
>> +                                                                    _DB=
UF_CTL_S2, \
>> +                                                                    _DB=
UF_CTL_S3))
>> +#define  DBUF_POWER_REQUEST                                REG_BIT(31)
>> +#define  DBUF_POWER_STATE                                REG_BIT(30)
>> +#define  DBUF_TRACKER_STATE_SERVICE_MASK                REG_GENMASK(23,=
 19)
>> +#define  DBUF_TRACKER_STATE_SERVICE(x)                        REG_FIELD=
_PREP(DBUF_TRACKER_STATE_SERVICE_MASK, x)
>> +#define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK                REG_GENMASK=
(18, 16) /* ADL-P+ */
>>  #define  DBUF_MIN_TRACKER_STATE_SERVICE(x)                REG_FIELD_PRE=
P(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */
>> +#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK        REG_GENMASK(20=
, 16)
>> +#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE(x)                REG_FIEL=
D_PREP(XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x)
>
>Same here.
>
>
>Matt
>
>> =20
>>  #define MTL_LATENCY_LP0_LP1                _MMIO(0x45780)
>>  #define MTL_LATENCY_LP2_LP3                _MMIO(0x45784)
>>=20
>> --=20
>> 2.51.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
