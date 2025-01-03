Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA97A008F9
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:57:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B64410E009;
	Fri,  3 Jan 2025 11:57:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dztYs5R/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6A9310E009;
 Fri,  3 Jan 2025 11:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735905455; x=1767441455;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=zRsfoZ6KC+tBP18B/4XXfvo736uvgFqcf80Z4zGYqpU=;
 b=dztYs5R/jeZCx/wmecowEGiY5vVIZ9+oahxwwErZBNcma24WgjH0ZYFf
 t0NMh8OU5z7diuDVWN32QhozzJflxlEfe1fgyWqWWUYNnFLKLd0y82ZN5
 nPbX03FRPfPonw6hQ3CGcyVbYFriVZDwM6vbzN1cWmMXs0G2A82jq9qfZ
 qUjmBiOHPQaCAKjyeEjGPQQLECqqR7XDvEh1xc0Dq/Ueg07BWQLr4bG78
 1knPhcbFQZHEEvSq4I8NKkUKORwnONtRUv9wf5tpvpdv/lkn3s7AN2y5Y
 VVdUC/nRX0Gx7AIQ/r9R2aNuhd1Lw1wXHpX/+9rWzyKspW/dh+/ghFBif A==;
X-CSE-ConnectionGUID: k7k5xoFHQUmjikZrT1q/lA==
X-CSE-MsgGUID: ztmNCfmzROOORdSjRllVcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="58620187"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="58620187"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:57:35 -0800
X-CSE-ConnectionGUID: LcOzUMlPRF6OVn+8wvimFw==
X-CSE-MsgGUID: +M42f0xJTGep4CoFQxiQHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="125059829"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 03:57:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 03:57:33 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 03:57:33 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 03:57:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uU9BN+M1Iq7Xxads2T49eNvG4wmKAtXn1UxQDovk2D7szMV7dAfEq4spvcFkAZubnQBFiKZ15/g3PdxAOyj85WtJumAr3bcwMYUqLBUsRoTe8EsQWZBwsGUrrFAIzl/unuZjVRAWetaShUvhLnckA4Z3gVrir9uApS+HAN2RI+ji6BOrVh5xqc7wYWJpjS8yGlVGKkRvzCFgNU98ADbF9BTVFymSCKzwWMJS50lHZicL0nHI3jb5gNfDW55PMjuwDWm72o1J9zA/D5oAitKqfeGD8hpzGgE+fd7rpD8LJ7xABX+3HNLvHM/1vyuUgfFicMLXcxWt4kBvSmzijyQHCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8iqhaUS3sH4KOUjyAFuTv4MQKaCfeK+uDuoRgjOKeKQ=;
 b=gMWfjEd2CKYnUVo7VUlnz2y2KTxhuWhC1kTiyUFycypAGK18VTyS6hNLk2JL9vj6Y1m/O+KEwoEa+yuN8zLyDKRQxhpeoYOHOvIfbxLC67xUwYCRrQMGX5Dy97LDTlCczlPg45ynqKXkejO33InH/4qoc1dS/ANt1zAYi2vTnFtLNNiDMOENwsLSgfpCuwspG5ExqoO95cvdPcFNs5t18mae0sVOpVrgJn2f1Mh/GxL4CuQ/HXyppEmuLTp/l6py2SOGG6DCyVHLQSEM+K+1FMkhxl8Mcl4e0pPm1wtgMM+4UZu+QmQAgYoJUtdUwpXASUw/wR9VtUA9hE161gG7Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB6867.namprd11.prod.outlook.com (2603:10b6:930:5d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.12; Fri, 3 Jan
 2025 11:57:23 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8314.012; Fri, 3 Jan 2025
 11:57:22 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87jzbcm9s0.fsf@intel.com>
References: <20241224165408.43778-1-gustavo.sousa@intel.com>
 <87pll8nki3.fsf@intel.com> <173566983648.6883.16609818129709969328@intel.com>
 <87jzbcm9s0.fsf@intel.com>
Subject: Re: [PATCH v3] drm/i915/cmtg: Disable the CMTG
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 3 Jan 2025 08:57:17 -0300
Message-ID: <173590543725.2180.2218851131697950044@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0321.namprd04.prod.outlook.com
 (2603:10b6:303:82::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB6867:EE_
X-MS-Office365-Filtering-Correlation-Id: b34a97fe-bdb0-4526-5cee-08dd2bedc874
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q2pnUCtqdFJWNjNuaUdqUFo5bWZ0S09LZ3pUUTQ0aEhkQjg3R1QvTFJDS1NH?=
 =?utf-8?B?aTFTOU9uUEZHcjJVRVlCbVJRVm5GZ1JJekJaZ2hpbC9nSE41NFgvdkxuUFI1?=
 =?utf-8?B?VmIxOUo2RStlTFN2Z3hPak5rcU9uUnNIMFZMcTEzVTlLYVdENVloalFYRkRa?=
 =?utf-8?B?bVMzS0EwLzArVCs4NlJQd3FyZkFXbjQ0d3lKNDlsY1RaRmF6V1dFMjNSNzJy?=
 =?utf-8?B?dnJZdlZKV09wMDZSN21GeTZjZmlYclFnbU5Va0ozb1l6c3ZtS3ZaREJOamQ1?=
 =?utf-8?B?eTZ2SFVETlN1WnlmVmI2dktXVXIvT3R0VTNlWTJlVmlwZzl4TFhwalR4NXBw?=
 =?utf-8?B?UFhUc3R6TnE4Q2VHUzFFU21sNGlBQzhMY0FDaEd5NUpZSm5HdzM3bE5zRlcw?=
 =?utf-8?B?a1V1UGg0UHFIQVpvNWdTNWVBU0xIc0pna3gwZGsraTJDWFBGRFRHMFF5dFM3?=
 =?utf-8?B?dUVpdnAzZFcxcDN3dUR1cjBGL0JjL1FaeGxCb0tib1RTRlVxM016VHhkclg2?=
 =?utf-8?B?Sit6ZUZLYkxEelI3b0lTVy9XbTNRTmF2aVhMNEFNc1BiUVQrSVo0c0ZFT3hO?=
 =?utf-8?B?Qm1ZRXZXRGdFV1dNcUR3NlhmZ2lhWVNMczFJVDFhTXQ2U21RTGwwbE5EZHR3?=
 =?utf-8?B?UkhvQnVyclZEcjZHYTBHRWw2R0VEL1BpdWYvT0YwSUF3ZmZvdENMTlZFaHN6?=
 =?utf-8?B?eDZkRTd0QS9ncUV3VjhEbDI4MU1pbXJjU2IrMTNZS3hjNnQwRVRoUGg0R3g1?=
 =?utf-8?B?ODFVNGI4WW00L05EZk5PbElCOU1seXpUZG9wT0FsdE1pZGZLMEJQSUZDMGQz?=
 =?utf-8?B?VUdiRmNlRFhpVHp3WEtMa2wrRDJnS3RnNWVFZGwxL3N4N0JZTHVxUkJYVkNY?=
 =?utf-8?B?b3J5YUtUWWN6OUZ4ekF1d1gwSU5wcUF3Q3VKMHZwQU1OVytWK2VEUG5QdXYx?=
 =?utf-8?B?NjE4Y2NyK282cWtHUW9GV09JZWRUVDJZRWdvM2pPRDN6SE1vMUx0Q0ZGK1gv?=
 =?utf-8?B?bDcwd0hUZXIzT2tqRXlVblpjYkZ3KzBnVWpLa0czYkJMZGJQd2tUVlk0dUY0?=
 =?utf-8?B?VnE1YnVJTllNUjlpb2x5NDkzc3puSXRBK1ozSkE3aFV1MnVQQ2pxaUF6U09O?=
 =?utf-8?B?b2lWb1R0bllDcmNoK3NvRWlCTTBYZU9pSzFmSzlVYWQ4YW5iMW4xMWhCNTBt?=
 =?utf-8?B?cmJrczdzMEJzRU9wVVhFdXhuZGJoU3p3VDBOUzRYQ2tlT0VtV0NmL3Z1UWxp?=
 =?utf-8?B?d3ViNkRMa0c2K09Ma1Q0RE5nYWZBalNpYkVWZXliSkx5aVZkRmJhUjFzQlBs?=
 =?utf-8?B?SE44eDAvN1Z5d2xkUUZqQ1UvK3NKUEtPRUM1aTFJOG9ERzZTb295R1N1Zy9N?=
 =?utf-8?B?RUdNam93UFRZenI5YklzZ1RSUnBPandIb0tjOXVLR3MvTzRvRnRTdi85R0Rp?=
 =?utf-8?B?T0k2NmtabWFMWlVnajdSa2lHZE8rY3BYd0hrYk9yTFVGTmpBblNCSzJ2ODhn?=
 =?utf-8?B?Z0pTVjdMQjRzaWlsTlNLeVQrY2VrRmY2TTE0WGkramNWRVFBckdvQ3M5aXFZ?=
 =?utf-8?B?ZVBlZ0JEUDdRVXNYcFRnc1BGMEpPaWtsSWdKOG1OUGk2R0RIdDA4cVl0TmhY?=
 =?utf-8?B?TnRWWEQ4RlZNcG5WcUFNT2tnTk1tYUVPSksvZGFuaENlYUJpY1AveHl3NWJD?=
 =?utf-8?B?MWxaU1RlOGdkQk13d2d2Z09hVHlQaHhLelB0eUN2RHlMZzY4bWhCSS80cFZL?=
 =?utf-8?B?VXlxRkVQOHdOdGNobnhNTTN5RVlYdWFwSEdPcXl5QVlCUzFwT1pLdnZXUm50?=
 =?utf-8?B?U0dFTExUb1RYelhKYy95alZJb3NBQy9hanpRNStjb25nSDhXcGp2MDVzUUMy?=
 =?utf-8?Q?ngTRPrlP1d9ny?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cURramp3Y2ppWVowRkgyV2tJRTRSZmlEVkZtMVdxNWYrRG0vVDE1WFE5a0Ew?=
 =?utf-8?B?TnE0czFoWGI3a1cxL2hYbmZaVm16Y01oUlE1TnVrWmVtckIzQVFmL2F6dENn?=
 =?utf-8?B?ZU5WQmRudERZZFRwWStLWnJzZWJiKzQzSm9SYlV5Zjd2THNtbzFtNlAvMmM2?=
 =?utf-8?B?M09qZXlqbWRTU2ljK2lxU0tiNUxKcmkweElGdE9ybWVDUnVoa3hWYmIzbWJQ?=
 =?utf-8?B?TFQxWGF5RHdsLzVCaXluZWpTUjZDYmVUa3NyVVZDeUlSNDZyS3lxOXdKVURV?=
 =?utf-8?B?dnBNeVkxRC9xeFlDK2NadW5PNWZ0SzVlR1ZZVm5UelZLVXdHLy9Rd2E5Sm0x?=
 =?utf-8?B?UVE5K3NiYVJZUkM0eWYrVUZXU2xDTTgxanh4T294VktiQ1BqU1BabXhkNzgz?=
 =?utf-8?B?enlTMFZsVlFaVHZFZ3FyVndDWFZZU0RXN3NzaENwWllvTTNNMityZ3BBTDBo?=
 =?utf-8?B?TmlEbmQ4SnA1dmRCdXgvMkpBQjlUSmRMcVd5YWlqRGhPbXpGTEh1S0szMW5x?=
 =?utf-8?B?Q3Rhb1pSWVJ2OUljQTcwMStVUlVNNDhxTFBXSjVsMVFkSWFXU1d6Vk1HU1NP?=
 =?utf-8?B?ak1RVW9nNXk3aG8vcGlPR050OENmVG8zRUluT3FMb0ZMTWRSZFlZaGlUOTFR?=
 =?utf-8?B?TGY3SjdFMitvOVRPSThlQkhJdzdHbzJ2Y1NuTzJVTmw0S1lDdHFjTnBBOVN5?=
 =?utf-8?B?YlJEMk9zV2ZNb2N3UUVKWWNoTVh0VmJsejhPYWlTZWJheks3eE90a05qZHJq?=
 =?utf-8?B?TklkOE5EOTQwTEZQWU4rNTlSRzIyZVNuc1hUZ1JzNWFRRzFabWRQcFU4WDl4?=
 =?utf-8?B?UjY2SW9lYlkwa1lEVldwbDZWZVdvYWZMVS9idk9nNms5enZHbG95bmRlZzhm?=
 =?utf-8?B?MHRWV2lyakVXYW9qR0NGUVdqWGM0cUxhTUxqMEhxRmFkRHZVN3lMZ29qQ1Ri?=
 =?utf-8?B?dWZKaHRFUEFNeU5JZjFuWE5JK2VVOGd1OHkwOUd0SWtpMzhJeHlYR3ZyZ3Fw?=
 =?utf-8?B?Nks0MXl0OWVmT2NYNjVGRkVJMHZhblp4NUFwc0Z1WCtsL0tFVHk0cmtqZEVE?=
 =?utf-8?B?MUJWRXJlekNDV25nc0NDNHBLQ2JydzdUV3JEbXdFVldIUWZSVmd0N29qNnpG?=
 =?utf-8?B?UHJteTh0cytxWlNtcVIwYmRLc0NnOEM4S2RVWm5NZXF0eHJjQk9vYVFrUzNB?=
 =?utf-8?B?WkNaTUJyNXJBcXNnZnd0Tk0zajJSSUMyV3YzcTBZZmxCN2lpZ1VDYmFpUnA2?=
 =?utf-8?B?YnpWUFJodW5abzNSOUYzcVhac3VnTjVpNkdqV09hTkxaVVRseWgzMjU2TWRh?=
 =?utf-8?B?MXhYeTExNmtMQ0hhRVZ1ZFVUTGRLdFpieTJyUFphTCs5WVJ3UFBkR1JRU2dX?=
 =?utf-8?B?aVlZeW9Wa1VLS3o4ZFBiWWhwNC9GMk9jRTBDeGIrWENpcmhUUDV3WXpub1o2?=
 =?utf-8?B?VXpRV3dHZkFqYXFVQWNWWHhmTU5PdzZrd0VyK1RGazZYUE5BOFF1TjBrOG5w?=
 =?utf-8?B?MjQzdktjLzczd0wxcFgvcnRTVG5ubWo3NGd0UmVTbFAxYVJmTnpxWklTd0FD?=
 =?utf-8?B?Qk5VbCszeE9VL29SbXRWRTZob2J6ZzIyM1YxUXBiT1R6RTI4eGdtbEZ3RGpo?=
 =?utf-8?B?d0d2bERSdWp0L1hLWG1TWjZSc0E4aWd6ZWJqVjQ2dmQvOXV6TVdCUm5VWTBQ?=
 =?utf-8?B?cHRIeE9HN2NMRkRYSVd4UDQwbnNkWFN3OE9DL2xyQ0dkaFo1ODc2TGt5c0Fm?=
 =?utf-8?B?YVBONWFsTytua2V0bVVHUzMxY0pzQnN3eEFGeHh4bzRVQjVxRGgyUkFGR09t?=
 =?utf-8?B?TUZqVVQvdHJua2dwOXZVQVp4dThlL1JHYnJ1S0MybXpwT1lVQjgwVTJXQnIy?=
 =?utf-8?B?ckIrV3ltYUJiUGVkZi91NjhyQ0trMlNQQmFBdWh2bzExMGRCTS95Ni9XV0Zo?=
 =?utf-8?B?d1U4a2FvWEZNSlZtbDAyRVpxNysvbUxvMDJKTEpuQW0zellESTgrWUZ1NEVm?=
 =?utf-8?B?dXBhMElxZ3IxNXJOK2tMWDRZMnh0ZHRyR1ZWcXZ6RFpPSHRyNjF4ajUwTTg2?=
 =?utf-8?B?M2FFU2lmSzZDaTlpWVZ6TVBLaWVsbEZvQldrM3lWYVY3d3V3dzZHSFNWV3Ja?=
 =?utf-8?B?N2RWM0c0VnMwYll4RzgzMlAwRFVya2JDNCtSUzhTY1Fyb1RoZ2c1RjR4WVha?=
 =?utf-8?B?TFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b34a97fe-bdb0-4526-5cee-08dd2bedc874
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 11:57:22.8829 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zSaEp7Eh/AkgK7TE10nSHbHU6rs6rdNpEEfE3zd2e2OZRJeUt3GE1Ih+JCx74XFJ9vEobY4LmdJvrIx/LGGQHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6867
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

Quoting Jani Nikula (2025-01-03 08:11:59-03:00)
>On Tue, 31 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2024-12-31 08:45:56-03:00)
>>>On Tue, 24 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>>I understand you're following patterns from elsewhere in the driver. But
>>
>> Correct.
>>
>>>I've always wondered why we use a mixture of atomic state, global state,
>>>and the specific (e.g. struct intel_cmtg_state) here. Makes no sense.
>>>
>>>I believe the specific global state structs should all be internal to
>>>the implementation in the .c file, opaque outside, with accessor
>>>functions. The to_intel_cmtg_state() should be a proper function
>>>(although the constness handling may require a _Generic wrapper).
>>
>> Yeah. I agree that the specific state bits should be private to the
>> implementation. Even the type "struct intel_cmtg_state" could be private
>> and then we would have the exposed interface dealing with only "struct
>> intel_global_state" or "struct intel_atomic_state" pointers.
>>
>> The only function that is currently asking for a struct intel_cmtg_state
>> pointer is intel_cmtg_readout_state(), but that one can be easily
>> changed to receive a pointer to struct intel_global_state instead (or
>> even converted to be a function specific to display->cmtg.obj.state,
>> dropping the state argument).
>>
>> With that, there would be no need to expose the struct intel_cmtg_state
>> type anymore and it can be made entirely private to intel_cmtg.c.
>>
>> Let me know what you think.
>>
>>>
>>>I actually have had patches to do this for all the global state stuff,
>>>but they've conflicted and gone stale. It's hard when basically anyone
>>>can just poke at the state when this shouldn't really be the case.
>>
>> We could maybe start with CMTG state and progressively converting the
>> other guys?
>
>I kind of jumped the gun with pmdemand that you already reviewed. That
>could be the minimal direction here too. There's the to_intel_*_state()
>but it could be an intermediate step towards the right direction. Could
>do that here as well.
>
>> (Although, after reading the entire review, if we decide to deal with
>> the CMTG only as part of the sanitization, I guess implementing the
>> whole global state "protocol" for the CMTG wouldn't make much sense
>> anymore, right?).
>
>I'll reply to this below.
>
>>
>>>
>>>
>>>> +
>>>> +#endif /* __INTEL_CMTG_H__ */
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/=
gpu/drm/i915/display/intel_cmtg_regs.h
>>>> new file mode 100644
>>>> index 000000000000..082f96cad284
>>>> --- /dev/null
>>>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>>> @@ -0,0 +1,21 @@
>>>> +/* SPDX-License-Identifier: MIT */
>>>> +/*
>>>> + * Copyright (C) 2024 Intel Corporation
>>>> + */
>>>> +
>>>> +#ifndef __INTEL_CMTG_REGS_H__
>>>> +#define __INTEL_CMTG_REGS_H__
>>>> +
>>>> +#include "i915_reg_defs.h"
>>>> +
>>>> +#define CMTG_CLK_SEL                        _MMIO(0x46160)
>>>> +#define CMTG_CLK_SEL_A_MASK                REG_GENMASK(31, 29)
>>>> +#define CMTG_CLK_SEL_A_DISABLED                REG_FIELD_PREP(CMTG_CL=
K_SEL_A_MASK, 0)
>>>> +#define CMTG_CLK_SEL_B_MASK                REG_GENMASK(15, 13)
>>>> +#define CMTG_CLK_SEL_B_DISABLED                REG_FIELD_PREP(CMTG_CL=
K_SEL_B_MASK, 0)
>>>> +
>>>> +#define TRANS_CMTG_CTL_A                _MMIO(0x6fa88)
>>>> +#define TRANS_CMTG_CTL_B                _MMIO(0x6fb88)
>>>
>>>Could make those underscore prefixed, with a parametrized
>>>TRANS_CMTG_CTL(idx).
>>
>> I had thought about that, but then decided to go with two separate
>> defines.
>>
>> The main reason was because of the fact that the second instance was
>> added to support the async dual eDP case and not necessarily to be a
>> common "per pipe" resource like with other pipe/transcoder components.
>
>Not insisting, not a huge deal.
>
>>
>>>
>>>> +#define  CMTG_ENABLE                        REG_BIT(31)
>>>> +
>>>> +#endif /* __INTEL_CMTG_REGS_H__ */
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c
>>>> index 4271da219b41..098985ad7ad4 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -62,6 +62,7 @@
>>>>  #include "intel_bw.h"
>>>>  #include "intel_cdclk.h"
>>>>  #include "intel_clock_gating.h"
>>>> +#include "intel_cmtg.h"
>>>>  #include "intel_color.h"
>>>>  #include "intel_crt.h"
>>>>  #include "intel_crtc.h"
>>>> @@ -6828,6 +6829,10 @@ int intel_atomic_check(struct drm_device *dev,
>>>>          if (ret)
>>>>                  goto fail;
>>>> =20
>>>> +        ret =3D intel_cmtg_atomic_check(state);
>>>> +        if (ret)
>>>> +                goto fail;
>>>> +
>>>>          for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state,=
 i) {
>>>>                  if (!intel_crtc_needs_modeset(new_crtc_state))
>>>>                          continue;
>>>> @@ -7757,6 +7762,8 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>>>>                          intel_modeset_get_crtc_power_domains(new_crtc=
_state, &put_domains[crtc->pipe]);
>>>>          }
>>>> =20
>>>> +        intel_cmtg_disable(state);
>>>> +
>>>>          intel_commit_modeset_disables(state);
>>>> =20
>>>>          intel_dp_tunnel_atomic_alloc_bw(state);
>>>> @@ -8582,6 +8589,10 @@ int intel_initial_commit(struct drm_device *dev=
)
>>>>                  }
>>>>          }
>>>> =20
>>>> +        ret =3D intel_cmtg_force_disabled(to_intel_atomic_state(state=
));
>>>> +        if (ret)
>>>> +                goto out;
>>>> +
>>>
>>>I think the usual way is to do foo_sanitize_state() at
>>>intel_modeset_setup_hw_state().
>>
>> Hm... I see. In this case:
>>
>> - For Xe2_LPD and newer, we can simply disable the CMTG as part of the
>>   sanitization;
>> - For pre-Xe2_LPD displays, which would require a modeset when disabling
>>   the CMTG, additionally force the CRTC to be disabled.
>>
>> Right?
>
>I'm not sure what you mean by forcing the CRTC to be disabled, but I
>think that's the general idea, yes.

What I thought was that I would have a intel_cmtg_sanitize_state() that
would disable the CMTG.

For platforms pre-LNL (i.e. display pre-Xe2_LPD), disabling the CMTG
requires a modeset. In this case, I was thinking about
intel_cmtg_sanitize_state() returning a mask of pipes that need to be
disabled as part of the sanitization.

I see that intel_sanitize_crtc() disables an active pipe if it does not
have an active connector. So such a mask could be passed to
intel_sanitize_all_crtcs().

Unless there is a better way... Is there a way of flagging that some
pipe needs a modeset during the sanitization step?

>
>> In this case, I guess implementing the whole "global state" protocol for
>> the CMTG wouldn't make much sense if we are not going to handle the
>> disabling as part of the initial commit. We could simply store the state
>> in a "vanilla" struct (and it would be good if such struct lived only
>> during the readout+sanitization time).
>
>I think it all depends on what we'll need if/when we properly implement
>CMTG support. If we're going to need global state for that, and you have
>it written here, might just as well use it instead of throwing it in the
>curb.

Okay. Sounds good.

I guess we could keep the state strucutures, but then, with the CMTG
being disabled during sanitization, we would not need to have those
get/get_new/get_old functions. Probably just the ones for duplicating
and freeing, for consistency.

--
Gustavo Sousa
