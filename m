Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45150A1D649
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 13:56:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A755B10E3AB;
	Mon, 27 Jan 2025 12:56:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h3lkKTNf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB71510E300;
 Mon, 27 Jan 2025 12:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737982577; x=1769518577;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=e1sEC1UQQlZmKCO8An4IAMyiEpydSo5Xb55nvzRhKEg=;
 b=h3lkKTNfENNMYOu9Mz73OX3ziBSXBTHJEP4KMBz/insJXlubhU2a+LN7
 Caj1mcpFSrk1PXtVpCZRoBPd6004H1DmG4w6z5OGnM6uxyVR/+lGOCCW9
 zGHnttq7NYWteWhPCzVCHA7+ublhA7o5K+FfchnUrbI6E2qSJwNCvY1xg
 vB8QEYGGpQ/3PZMUaNUEOUHBN+dBtziTKriOtP09893BwKtZYgux/IasW
 r1Q82yKQle0WD62iZdF9xy6VEtY1e257h9ydg7wSKkU1zaikl66nmTXui
 xJfCwXThNm2tF+OYvETl65dl4c0sak1IWylnSccZIbzljHn2PoITZrY+f w==;
X-CSE-ConnectionGUID: 205o5I5HRjGNInQ0xMhBaw==
X-CSE-MsgGUID: Jyzuh8TsR1eDWJGkwmzHqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="60908218"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="60908218"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 04:56:17 -0800
X-CSE-ConnectionGUID: kZiMzO7jRCaD/c76tQ/Isw==
X-CSE-MsgGUID: m6rI9m5WSeuBLT+CTrCJIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="113397562"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 04:56:17 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 04:56:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 04:56:16 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 04:56:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k4ISi2zOnqrx8CrNMqjcwIn0KiCynOLblBNwguWTfrOmUSVB6lOJc3gvKjntu+e1wszZLuqlTKQWpTCR/vF+3GzT/nMKvwZ+5eG/xGeSx4MGN9UbDGCVjGzIUFrhhkeE8KnSTa89v7WrnMSQLW7qsogjbJrr3k6xXjJauGKXYTAVjvbWWK4RHCqV+GaxR6/P6raBsgETEPuz8//75ggOXAMQKYysin1zRJfk2jCoyLWzCNBNMcNjAYyF+vQkYwv/Y3VKjpMko8nNuTnZ89pA8uOFy/hPrDD4qIDsYp2XeCU9Y5G8pMDPaJiaEdZwl4v1HjUTtLkCYmzKo8X/Kj+YuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nIKHleDM17psg3UK09A5KfTx/3KzfN3czZhX15J+D+k=;
 b=gT9HRTu4bN547YwhiVKiGX8bRBF4ENxZ2teei/HOs2Jn1ILlVax5SqtbITRoGaB4HAtSQ1mhpq7yOkSyZTETCGx3QtWc9jx12//oYUVl/Ln+/565cVH8DirNAaNyFsdBS/p5tGGAmx+VFer6cTXAc8+ugxn8vQJU5l5u9SVJ+9YbACttPLZ4FxsK2kCX3OKswsiZ8GygEWljR5eeWmmTUkKO9VKzwkx2DqlHvSQUVVDmjExOLwMl6db8C94m+1/B2ItlF3w1WQvhdXojbTJ22E5BL9y61dU2PggpON1Ml9H05zTF8IxVAUgjPw3XNGp17hVkyEdMvjzk4b15DFdddg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH8PR11MB6951.namprd11.prod.outlook.com (2603:10b6:510:225::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 12:55:59 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 12:55:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8734h4bh80.fsf@intel.com>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-3-gustavo.sousa@intel.com> <87bjvsbnap.fsf@intel.com>
 <173797666856.2736.14360802368974999515@intel.com> <8734h4bh80.fsf@intel.com>
Subject: Re: [PATCH 2/4] drm/i915/dmc_wl: Add debugfs for untracked offsets
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 27 Jan 2025 09:55:54 -0300
Message-ID: <173798255470.2736.17843551492867016581@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW2PR16CA0003.namprd16.prod.outlook.com (2603:10b6:907::16)
 To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH8PR11MB6951:EE_
X-MS-Office365-Filtering-Correlation-Id: 76b10a32-8ca9-4fff-2df0-08dd3ed1f230
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M1RyM0JNTXNsZ29YUzk0NG5vL1JzOStEVGN1ck1jOGNTYW5lZ1hZbGxOeCtw?=
 =?utf-8?B?bHVqazJ3eWw4UFA0cHlITFlldE93clhDOVk0NTBKNHJ3OUVzeEpDdGQzSml2?=
 =?utf-8?B?dWpoY1ZidXlFQkU2NkVGY1pURkZ0UFFrdWNYS0tjYzRWeks5ZnpBdng2WDh5?=
 =?utf-8?B?RTNMV051QXkrUzZhbGNPbmNIR2V5RGxhQ01hbTY0RXU2cFFRN3orWnJZbmh1?=
 =?utf-8?B?NUFGMjZZdXVVQUp3aFk3ZmhZTUZuWEtzVzhyY3R3eTAzcDFjWks1a2xkYW8y?=
 =?utf-8?B?dzR3Tzhma3BOdTgrb2J1cDBZb0hQZUFxaTlRdU5NUGkvcXRraCt4K2ZxQlBX?=
 =?utf-8?B?Z1U3YXJoSXphemFLN0F0ZDRxM0JDODdrTytkSDVHMjdNaEJQKyt3VFd3ZlpQ?=
 =?utf-8?B?U0Z4MzVIdEhGaHJvQ1dzanRUeWpaamxwTHV0QU5JR0daeE5lMThvV3Y0bThR?=
 =?utf-8?B?QmN0Vm1JSHN1c0FvdlJHK1Y1cXpocGxFUWpsMy9DbUs0d2VIRG52RGxWaHFr?=
 =?utf-8?B?eWdsQVpRVkhRMnFRL1JEQXdxOHJxdjJpNk9BaFpEbTNXYS93WkNlM0RyMTIw?=
 =?utf-8?B?R2lwNThXTXZKU3ZDanI3S0FFTDB1UHBvcml6cDdkVVl6TFF2cTAxUU9jU3lr?=
 =?utf-8?B?TzlDbEZlTVNNanZRSXl3bWtTZTJCUG1uNks0MkFnY3ZLWXBWOWFQMmt5cEsw?=
 =?utf-8?B?S2JRUXEwUmhxZy9VQ3ZZRXlZNjZ4cWE5R0hSaU1pcEpQeTZKQlBaVlNkS1Vh?=
 =?utf-8?B?dEVibHd4UURGVXUrVmFFTmkyWGxTQkkrN0c5bVE0bUpuQnlkNHMzdklHTnBn?=
 =?utf-8?B?MmphelNDRDd4czJWYnY4cWtBeEZaYjhpaTJ6UGxabHVWS1VRY2I3eDJDQ3dC?=
 =?utf-8?B?Y0NtYkhGem1PVjlTM2J6akx2ZUhGemtLQVVxUnVPSzJlQXU5ZTFUcjd5RDJo?=
 =?utf-8?B?SUlxcHBBYzdwelVoeFExNTRwZHFqblVKSks5a1UyRVl2TnJDcWtuZWpuYlJR?=
 =?utf-8?B?dWt3cm1TMzNRR3dnUHhLT1FCRjN6K0FtdVowaDVNZnhkbG45QVNXRFFNV0Zt?=
 =?utf-8?B?blZVNmE3czVyWVdQVXZkNkE3ZndQTVo1dndwcThkbDEzRWVTWU1Ncm5jS3c1?=
 =?utf-8?B?b29DMzJyR0Excm5BRTlSRlp4Y085dkpqcllXdUliaHAvVUx5aFFVRXhidmE0?=
 =?utf-8?B?enMrYmZVNzJzbU90ZVovMzRFSTNBWklCeU1tY0FmaGZUZSs1YzdkdWpmbDZJ?=
 =?utf-8?B?bWxvWUFKM1RGbkpBZ3FyU2lTaUtjcmJSNG1yZTg5clZsVitreXZDcFc5VnNX?=
 =?utf-8?B?d2lHaFVFaTRYOHlGTDB6RXR0dmlsQ29CK1BaWFRrMEE5M25reFNjdWdBZHVG?=
 =?utf-8?B?SjVyZTlrcFZsdjR0eFpjdnV4aGp1dmt5SWgzUWVJMmZhMDRTMFdUZWVjSk1u?=
 =?utf-8?B?UDlIWnMrWE1yeEJDRStZNDBpMlNHQnBzTVB1eWtEc25JUFhGRE05WmVTN25o?=
 =?utf-8?B?M3JQaFVVVFdlYk5ob29VMWV2T202L1NBbHdKK3NWN25RbVFCdWZXOGZ1blE1?=
 =?utf-8?B?QzJVSVhzOHF2MFp4cDJOdEwyakVvYnNTRk9WRHN6dk9wWWhIQjJidUUyVVAv?=
 =?utf-8?B?NGNjYnM0WjU2aDY4dG0zV1VwRW52Y2J1Q3VrVTQ0Y1Q4b2Q5V0w4ZHJOcWxY?=
 =?utf-8?B?OWh5VjZiRG8rOGhlWGhRa1c1M1FXZS80Q1pDWFBJaWFuZG0vTkk5MUl0ZFdi?=
 =?utf-8?B?Wk9tL2NHaTNVVUI4MzZWY1JMU1FCbUxGWEsxbVpLb0JQcnNNK29rQkZFUkE4?=
 =?utf-8?B?TjBuS0NVTElIQjhpT0hqQjlkMTBRd3lrVFRxK3N6bXpob0s2Q1ZNN2I2WEU0?=
 =?utf-8?Q?EQE8lMLcnXB91?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tm45bCtiaVUzd0lBL0wrWGZaZ3hSSjBMeS9jS0d2RUhSMGxTaytKZzFMTGNo?=
 =?utf-8?B?bTFlOEJDeUdTeVBoM1BUQ3Z6d3ZvMzVBWWYxOEhiNTNZYUtIZE8xYUwzdGQ1?=
 =?utf-8?B?cGV2U2lwakFmS2EwMnNYKzgzSkhJeHp1ajZNUHRhQm9wMFRXNTk4VWZYS2JM?=
 =?utf-8?B?aGF3dzB5cWVtMzFWY0tqa1ZpZ25yeEdxWi9KM2tYWUpaSnQ4cWx1Tk1lYTRa?=
 =?utf-8?B?c1JBYzJOSTJVYjF5M3VHU2xGNjE5QVMrRUp0QXJVa01PTWZOQnMvZTFzKzIv?=
 =?utf-8?B?RUdTWGovNHRSWnNUMGw2Kyt2c010ejhOc2FLYksxditMczlRWTNoLzdncnVu?=
 =?utf-8?B?cnIyNUdHUmw4WjFYd2I2NTZIb1BhZVEvcFh3SkZDWklNVlo1NU1lN1BrSHVr?=
 =?utf-8?B?RVlHZWt5YU83NmxmMXU4anB4UE1ZKzd6bVN5R2FpWXpIeENKVFpOS21zSGJ5?=
 =?utf-8?B?YmlLYWNWV0s0WFdrK2tybmdOQy90WGN1SW9iTkpwTE91VFAxZlh2M2RxbVFT?=
 =?utf-8?B?VlUvbEdGKzZGRkFGdTFQUXpxazZFNmRXQUFGSWYzNHRHd3Z6aklWcWhnbGZ6?=
 =?utf-8?B?V29oL1daellSWngyOEtJOTlITWhjS3paU3lhYTNkNnJFQ0tHWFBhdk5rWmEy?=
 =?utf-8?B?cEdwdS9yaXpzb2t0QVR3SVZvZmlReXJxajRMRm56OHlYRUVLQnJRWERDazQ1?=
 =?utf-8?B?eGV6RFNha2VUWllMVEM3bnBaR2crVHllS2dKQml4MmdCcXJadGtJcm9Pajlv?=
 =?utf-8?B?N0VSN0ZnMlQ2UHlmNnpzSnl6RVlYeXVZVmZCdGRPRHNGOU5qczcyZlljZnJF?=
 =?utf-8?B?THM5c2lzdnprSGFyNm1wSW5PTGFvZ0lZeEJWTkQwRVhwUWt6UlZ4QXU4Tk5t?=
 =?utf-8?B?c3czMUxlZi91K0lGWVpuVTdxN0F3UTJNODVYL2JnRE9KQ05ncUFSTVloVmRG?=
 =?utf-8?B?K0dKMCtodWljbGFyZm04ZGF4YmlBVElXckkwMVVlZXNtYWU5L3FVUCtWcWV2?=
 =?utf-8?B?cWl3V2NrUnRQZXVUTDhCbVg5MmVMcVdHYWtwQVR2aTVERzRxM3NhT0hwL2ZR?=
 =?utf-8?B?WGx3cUVTZEtGZ2thYUxSbTNqSlVQMlFOT3NpQjM5U0QrNkd4ZnJTM0ltN1RL?=
 =?utf-8?B?S3FWdFNnSTZ6cmVFK0JCeHg4dTgyNGJBYzUrVW54aXIrRUlHWUdyWjBqaitN?=
 =?utf-8?B?d1FiQkQ2eXpvL3ZUQWUva3ROWnBwdHNjMkpGL01Qa3lCNDlreDd6OGg3RE1M?=
 =?utf-8?B?b1JVT1FmUVJhVEFNVzM4bStRcEN6bVN5dFFRaHVYYk55M1ZWMjZsUCtwNVd6?=
 =?utf-8?B?UlA2UkZKUGdVVzdIdVRlZmRoQWxKYUFhTFE0bXB2YnFYOFlDMGY0cndnU1F6?=
 =?utf-8?B?OFJzU25XcnNqOFNNaTA0Z1F2bVd6T1ZPc3ZQSEUvTjBNWlpvM2pOT1pkM3hr?=
 =?utf-8?B?Ly80Y1B2YWFLM1M2WXo5cGR1Z243Z0pYcSs2MnZuQkU4VWY5ZEp1Tk5wZ2Vh?=
 =?utf-8?B?ZDViSERFY2ZubHU5c252WFFiM3hCRlJtQktZeG1rRU1BSFJSbk0wOGhjTXZY?=
 =?utf-8?B?NHBDYjNUT0lHOWpWWmxiWG5XYkV6b0lxaTYzNnpPTjRvd0psKzZLOFQwaUpn?=
 =?utf-8?B?ZFJRb2ozTFA1MEcyOWlJbEQ1akdzSEZvNUlhTStVN2J4cTRraEhMcDAyemJu?=
 =?utf-8?B?L3FZS1EvaVF5UzFwczRqdngwa29QSWRQZVlRcTNqREoyT2diUlhSb3E3a3dB?=
 =?utf-8?B?UWVjL0dnbk9kbkVEQ09yRTU4dkJYdG1pcnhKT2dTcFBkTERwRUF5UUxKU1NX?=
 =?utf-8?B?bUxkR09TOEU5c2FZcmxUbDUzelpNekpUKzhsV0NjUDJSTHQ5VzVmVGNITFVF?=
 =?utf-8?B?UGlTdGhyYnYvVDU0QmhOYm9TZGREL1NlTnVSVURkalVIOTdOMEIrOGtzK044?=
 =?utf-8?B?TG9ESlRScWpDeS8rV2ZIRFNVeUl3YnZRWkM2Y0RYWGdsdG8xeThXOW8yWkxw?=
 =?utf-8?B?NjVwM1RLNDhOOEJPZFJ6cTNFcWFLU2JSZG5JT2ZNRkN4SFBIRWpzYkRlMzVP?=
 =?utf-8?B?MEpRSjNVeU5WcEJpckZjMzhVZzdvamRTcVNtMHQ3WHAraFhhYUlJQ1VXNjht?=
 =?utf-8?B?eWd4M1lFNjdYOUo4dkc5akd5OUExWSt2ZFYzaDBUOHNieGtYK25tNzNXck91?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76b10a32-8ca9-4fff-2df0-08dd3ed1f230
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 12:55:59.1679 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rPkT0YXAWJxtgYrNUst4SAtROUi5novKdVldcnLimjKVLQEoNtceQSMjucJtGxE1BdF9uB2Xuv7xSEdiL1pW/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6951
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

Quoting Jani Nikula (2025-01-27 08:59:11-03:00)
>On Mon, 27 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2025-01-27 06:47:58-03:00)
>>>On Fri, 17 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu=
/drm/i915/display/intel_dmc_wl.h
>>>> index 5488fbdf29b8..d11b0ab50b3c 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
>>>> @@ -11,6 +11,7 @@
>>>>  #include <linux/refcount.h>
>>>> =20
>>>>  #include "i915_reg_defs.h"
>>>> +#include "intel_dmc_wl_debugfs.h"
>>>> =20
>>>>  struct intel_display;
>>>> =20
>>>> @@ -27,6 +28,7 @@ struct intel_dmc_wl {
>>>>           */
>>>>          u32 dc_state;
>>>>          struct delayed_work work;
>>>> +        struct intel_dmc_wl_dbg dbg;
>>>>  };
>>>> =20
>>>
>>>With intel_de.h including intel_dmc_wl.h, we'll have almost all of
>>>display include intel_dmc_wl_debugfs.h, and getting the definition of
>>>struct intel_dmc_wl_dbg, really for no good reason.
>>>
>>>I really like to flip this around. You need to have a *good reason* to
>>>expose stuff to the entire display driver all of a sudden. Instead of
>>>requiring a good reason to hide stuff.
>>
>> Maybe make dbg a pointer and have only intel_dmc_wl.c knowing its guts?
>>
>> Or do you have some other suggestion?
>
>Yes, using an opaque pointer is usually the way to go.

Okay. I was hoping not to have to have a separate dynamic memory
allocation for it, but that works and helps isolating the definition.

>
>Lately we've been adding debugfs next to the implementation. Often the
>debugfs needs access to the same stuff as the implementation, you can
>hide stuff and not have to expose a ton of interfaces. This could work
>here too... but I have to say this debugfs looks a bit, uh, bloated for
>want of a better word. Maybe having the separate file is worth it.

Yep, I do think it deserves a separate file.

--
Gustavo Sousa

>
>BR,
>Jani.
>
>
>>
>> --
>> Gustavo Sousa
>>
>>>
>>>BR,
>>>Jani.
>>>
>>>
>>>
>>>>  void intel_dmc_wl_init(struct intel_display *display);
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/dri=
vers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>>>> new file mode 100644
>>>> index 000000000000..41e59d775fe5
>>>> --- /dev/null
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>>>> @@ -0,0 +1,251 @@
>>>> +// SPDX-License-Identifier: MIT
>>>> +/*
>>>> + * Copyright (C) 2025 Intel Corporation
>>>> + */
>>>> +
>>>> +#include <linux/debugfs.h>
>>>> +
>>>> +#include <drm/drm_device.h>
>>>> +#include <drm/drm_managed.h>
>>>> +#include <drm/drm_print.h>
>>>> +
>>>> +#include "intel_display_core.h"
>>>> +#include "intel_dmc_wl_debugfs.h"
>>>> +
>>>> +#define DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX 65536
>>>> +
>>>> +/*
>>>> + * DOC: DMC wakelock debugfs
>>>> + *
>>>> + * The DMC wakelock code needs to keep track of register offsets that=
 need the
>>>> + * wakelock for proper access. If one of the necessary offsets are mi=
ssed, then
>>>> + * the failure in asserting the wakelock is very likely to cause prob=
lems down
>>>> + * the road.
>>>> + *
>>>> + * A miss could happen for at least two different reasons:
>>>> + *
>>>> + * - We might have forgotten to add the offset (or range) to the rele=
vant
>>>> + *   tables tracked by the driver in the first place.
>>>> + *
>>>> + * - Or updates to either the DMC firmware or the display IP that req=
uire new
>>>> + *   offsets to be tracked and we fail to realize that.
>>>> + *
>>>> + * To help capture these cases, we provide the intel_dmc_wl/ debugfs =
directory,
>>>> + * which exports a buffer of untracked register offsets.
>>>> + *
>>>> + * Untracked offsets
>>>> + * -----------------
>>>> + *
>>>> + * This is a buffer that records every register offset that went thro=
ugh the
>>>> + * DMC wakelock check and was deemed not needing the wakelock for MMI=
O access.
>>>> + *
>>>> + * To activate the logging of offsets into such a buffer, one can do:=
:
>>>> + *
>>>> + *   # echo -1 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_s=
ize
>>>> + *
>>>> + * This will create a buffer with the maximum number of entries allow=
ed
>>>> + * (DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX). A positive value can be used =
instead to
>>>> + * define a different size:
>>>> + *
>>>> + *   # echo 1024 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked=
_size
>>>> + *
>>>> + * Every write to untracked_size will cause the buffer to be reset.
>>>> + *
>>>> + * It is also possible to read untracked_size in order to get the cur=
rent
>>>> + * value.
>>>> + *
>>>> + * After enabled, the buffer starts getting filled with offsets as MM=
IOs are
>>>> + * performed by the driver.
>>>> + *
>>>> + * In order to view the content of the buffer, one can do::
>>>> + *
>>>> + *   # cat /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked
>>>> + *   0x000c4000
>>>> + *   0x0016fe50
>>>> + *   0x000c7200
>>>> + *   0x000c7204
>>>> + *   0x00045230
>>>> + *   0x00046440
>>>> + *   0x00045234
>>>> + *   0x0016fa48
>>>> + *   0x0016fa40
>>>> + *   0x0016fa5c
>>>> + *   (...)
>>>> + *
>>>> + * The order of those offsets does not reflect the order the checks w=
ere done
>>>> + * (some recently seen offsets are skipped to save space).
>>>> + *
>>>> + * Once done with it, the logging can be disabled with::
>>>> + *
>>>> + *   # echo 0 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_si=
ze
>>>> + */
>>>> +
>>>> +static int untracked_size_get(void *data, u64 *val)
>>>> +{
>>>> +        struct intel_display *display =3D data;
>>>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>>>> +        unsigned long flags;
>>>> +
>>>> +        spin_lock_irqsave(&dbg->lock, flags);
>>>> +        *val =3D dbg->untracked.size;
>>>> +        spin_unlock_irqrestore(&dbg->lock, flags);
>>>> +
>>>> +        return 0;
>>>> +}
>>>> +
>>>> +static int untracked_size_set(void *data, u64 val)
>>>> +{
>>>> +        struct intel_display *display =3D data;
>>>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>>>> +        s64 new_size;
>>>> +        u32 *old_offsets;
>>>> +        u32 *new_offsets;
>>>> +        unsigned long flags;
>>>> +
>>>> +        new_size =3D (s64)val;
>>>> +
>>>> +        if (new_size =3D=3D -1) {
>>>> +                new_size =3D DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX;
>>>> +        } else if (new_size < 0) {
>>>> +                drm_err(display->drm,
>>>> +                        "%lld is invalid for untracked_size, the only=
 negative value allowed is -1\n",
>>>> +                        new_size);
>>>> +                return -EINVAL;
>>>> +        } else if (new_size > DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX) {
>>>> +                drm_err(display->drm,
>>>> +                        "%lld too big for untracked_size, maximum all=
owed value is %d\n",
>>>> +                        new_size,
>>>> +                        DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX);
>>>> +                return -EINVAL;
>>>> +        }
>>>> +
>>>> +        if (new_size =3D=3D 0) {
>>>> +                new_offsets =3D NULL;
>>>> +        } else {
>>>> +                new_offsets =3D drmm_kmalloc_array(display->drm, new_=
size, sizeof(*new_offsets),
>>>> +                                                 GFP_KERNEL);
>>>> +
>>>> +                if (!new_offsets)
>>>> +                        return -ENOMEM;
>>>> +        }
>>>> +
>>>> +        spin_lock_irqsave(&dbg->lock, flags);
>>>> +        old_offsets =3D dbg->untracked.offsets;
>>>> +        dbg->untracked.offsets =3D new_offsets;
>>>> +        dbg->untracked.size =3D new_size;
>>>> +        dbg->untracked.head =3D 0;
>>>> +        dbg->untracked.len =3D 0;
>>>> +        dbg->untracked.overflow =3D false;
>>>> +        spin_unlock_irqrestore(&dbg->lock, flags);
>>>> +
>>>> +        if (old_offsets)
>>>> +                drmm_kfree(display->drm, old_offsets);
>>>> +
>>>> +        return 0;
>>>> +}
>>>> +
>>>> +DEFINE_SIMPLE_ATTRIBUTE_SIGNED(untracked_size_fops,
>>>> +                               untracked_size_get,
>>>> +                               untracked_size_set,
>>>> +                               "%lld\n");
>>>> +
>>>> +static int untracked_show(struct seq_file *m, void *data)
>>>> +{
>>>> +        struct intel_display *display =3D m->private;
>>>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>>>> +        unsigned long flags;
>>>> +        size_t remaining;
>>>> +        size_t i;
>>>> +
>>>> +        spin_lock_irqsave(&dbg->lock, flags);
>>>> +
>>>> +        remaining =3D dbg->untracked.len;
>>>> +        i =3D dbg->untracked.head;
>>>> +
>>>> +        while (remaining--) {
>>>> +                if (i =3D=3D 0)
>>>> +                        i =3D dbg->untracked.size;
>>>> +
>>>> +                seq_printf(m, "0x%08x\n", dbg->untracked.offsets[--i]=
);
>>>> +        }
>>>> +
>>>> +        spin_unlock_irqrestore(&dbg->lock, flags);
>>>> +
>>>> +        return 0;
>>>> +}
>>>> +
>>>> +DEFINE_SHOW_ATTRIBUTE(untracked);
>>>> +
>>>> +void intel_dmc_wl_debugfs_init(struct intel_display *display)
>>>> +{
>>>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>>>> +
>>>> +        spin_lock_init(&dbg->lock);
>>>> +}
>>>> +
>>>> +void intel_dmc_wl_debugfs_register(struct intel_display *display)
>>>> +{
>>>> +        struct dentry *dir;
>>>> +
>>>> +        if (!HAS_DMC_WAKELOCK(display))
>>>> +                return;
>>>> +
>>>> +        dir =3D debugfs_create_dir("intel_dmc_wl", display->drm->debu=
gfs_root);
>>>> +        if (IS_ERR(dir))
>>>> +                return;
>>>> +
>>>> +        debugfs_create_file("untracked_size", 0644, dir, display,
>>>> +                            &untracked_size_fops);
>>>> +        debugfs_create_file("untracked", 0644, dir, display,
>>>> +                            &untracked_fops);
>>>> +}
>>>> +
>>>> +static bool untracked_has_recent_offset(struct intel_display *display=
, u32 offset)
>>>> +{
>>>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>>>> +        int look_back =3D 32;
>>>> +        size_t i;
>>>> +
>>>> +        if (look_back > dbg->untracked.len)
>>>> +                look_back =3D dbg->untracked.len;
>>>> +
>>>> +        i =3D dbg->untracked.head;
>>>> +
>>>> +        while (look_back--) {
>>>> +                if (i =3D=3D 0)
>>>> +                        i =3D dbg->untracked.size;
>>>> +
>>>> +                if (dbg->untracked.offsets[--i] =3D=3D offset)
>>>> +                        return true;
>>>> +        }
>>>> +
>>>> +        return false;
>>>> +}
>>>> +
>>>> +void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display=
, u32 offset)
>>>> +{
>>>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>>>> +        unsigned long flags;
>>>> +
>>>> +        spin_lock_irqsave(&dbg->lock, flags);
>>>> +
>>>> +        if (!dbg->untracked.size)
>>>> +                goto out_unlock;
>>>> +
>>>> +        /* Save some space by not repeating recent offsets. */
>>>> +        if (untracked_has_recent_offset(display, offset))
>>>> +                goto out_unlock;
>>>> +
>>>> +        dbg->untracked.offsets[dbg->untracked.head] =3D offset;
>>>> +        dbg->untracked.head =3D (dbg->untracked.head + 1) % dbg->untr=
acked.size;
>>>> +        if (dbg->untracked.len < dbg->untracked.size)
>>>> +                dbg->untracked.len++;
>>>> +
>>>> +        if (dbg->untracked.len =3D=3D dbg->untracked.size && !dbg->un=
tracked.overflow) {
>>>> +                dbg->untracked.overflow =3D true;
>>>> +                drm_warn(display->drm, "Overflow detected in DMC wake=
lock debugfs untracked offsets\n");
>>>> +        }
>>>> +
>>>> +out_unlock:
>>>> +        spin_unlock_irqrestore(&dbg->lock, flags);
>>>> +}
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h b/dri=
vers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
>>>> new file mode 100644
>>>> index 000000000000..9437c324966f
>>>> --- /dev/null
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
>>>> @@ -0,0 +1,29 @@
>>>> +/* SPDX-License-Identifier: MIT */
>>>> +/*
>>>> + * Copyright (C) 2025 Intel Corporation
>>>> + */
>>>> +
>>>> +#ifndef __INTEL_DMC_WL_DEBUGFS_H__
>>>> +#define __INTEL_DMC_WL_DEBUGFS_H__
>>>> +
>>>> +#include <linux/types.h>
>>>> +#include <linux/spinlock.h>
>>>> +
>>>> +struct intel_display;
>>>> +
>>>> +struct intel_dmc_wl_dbg {
>>>> +        spinlock_t lock; /* protects everything below */
>>>> +        struct {
>>>> +                u32 *offsets;
>>>> +                size_t head;
>>>> +                size_t len;
>>>> +                size_t size;
>>>> +                bool overflow;
>>>> +        } untracked;
>>>> +};
>>>> +
>>>> +void intel_dmc_wl_debugfs_init(struct intel_display *display);
>>>> +void intel_dmc_wl_debugfs_register(struct intel_display *display);
>>>> +void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display=
, u32 offset);
>>>> +
>>>> +#endif /* __INTEL_DMC_WL_DEBUGFS_H__ */
>>>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>>>> index 81f63258a7e1..f03fbdbcb1a4 100644
>>>> --- a/drivers/gpu/drm/xe/Makefile
>>>> +++ b/drivers/gpu/drm/xe/Makefile
>>>> @@ -221,6 +221,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>>>>          i915-display/intel_display_wa.o \
>>>>          i915-display/intel_dkl_phy.o \
>>>>          i915-display/intel_dmc.o \
>>>> +        i915-display/intel_dmc_wl_debugfs.o \
>>>>          i915-display/intel_dp.o \
>>>>          i915-display/intel_dp_aux.o \
>>>>          i915-display/intel_dp_aux_backlight.o \
>>>
>>>--=20
>>>Jani Nikula, Intel
>
>--=20
>Jani Nikula, Intel
