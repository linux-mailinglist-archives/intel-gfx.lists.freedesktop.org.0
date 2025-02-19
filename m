Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5173A3BE54
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 13:41:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A1A10E2DD;
	Wed, 19 Feb 2025 12:41:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K8ixVP76";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5082110E2CF;
 Wed, 19 Feb 2025 12:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739968903; x=1771504903;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xyvS/acP/8FC879lUZVARK2qktLqAiT0P4CJN6u1NuI=;
 b=K8ixVP76PlKdXoBvA2+QUT/jsB2aG3o90DfS7caRGkv4hI+BG4ZcTPQy
 zTYB1prKHqkuWDCxuZ1Hki0d1QqtefSzn//AxC1Al/sgVUTh+hrEMTTv0
 v8rgMA8E1ja/wUDrHMh1FbGn32pay6GQn9CdwgzTv4cT8AT8ijnaCsiB5
 kmvH/zV/608QNY5UfKrFkFwdi/ZPjfs1ylfbw8lGHnDzHWqLHm7shfH8S
 3DbE35IfxaNiOBglYpwhw46yKC7+Rf94eRCoUt4stuYHWpLBjzY3q9XMX
 uAbkvR2+BnAJbWwseLEUVgSMlI2Q5B5O6KmpqIoAguB54mBj2ME7gvTJ3 Q==;
X-CSE-ConnectionGUID: 3Rp69zdGQqaJRbD0pyn6PQ==
X-CSE-MsgGUID: H21S6r/tSxuZTK2O1t4YCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="40842750"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="40842750"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 04:41:27 -0800
X-CSE-ConnectionGUID: t+4mG+yWR5q3Rqe+HLt7mQ==
X-CSE-MsgGUID: +RoQtlseRxqDogHHFwosAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,298,1732608000"; d="scan'208";a="119680404"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 04:41:26 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 19 Feb 2025 04:41:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Feb 2025 04:41:26 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Feb 2025 04:41:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gBG8jAAnRaHXRRzW0VsTTsmbgcVzELjwJA0pG9LohDqSMsIQQ1tPaoin5gIxoWFDT49h1H1D8xJK3VK5+sJ31P//BOR4ljM2EsQJ0LlumNRiSefwn44tA/Hs7q0iXyqFQthEmoxLz+o8eZTBGOCTcMl85CjVmMZcqQfl/UbHpI089Mee4igaoK9G7LzwdjHDq+yGPeMhHE0JaOlRQR7GFxWnnZxjShONKzHV2gB/55H7E/9SIk46qgfpgWQAJVZzPngXkNH3N7ETYRGzOVgeOL4HmLb32LqfDnMGPBQu0jB2DYRy76kXU6ocANVdeWrXt2niAxT9oLfCg/J9jVme/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cC2yErdO6VbXzqHct48LwH6v9zzg4vxP4Lo8uBNLD5E=;
 b=ij7v5BNkTSTJ1yEUZwuOyvZUJc++GTkZU5Z3qdv99oOgtd9DKfUJAkXgeu834YCw87tnAiB9fr3e8tSJLwrlT3mxc5RLFZlx1ZycvTg4fskG/G0x7eLhD/cYd//aUXBa08fPs22Lv8/jYd/s0cNvqXrzZK5z2/7eKHiafR0wBRAy95oxX5Y3MV6QG/bGUTCVxoLbjTTdblweZRit0BPTMROWLNVCdLY8MkkhgRjFfy4DHmP8JlqPcmCo3IVhhZLAEHFNuGr9i9nd95TO1japfqKZMsOZradM+p8k05kDYgAWhGTZC2ubTKJejIK5n+Yfw9THGic6BbVHHVB/VfnpJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB8345.namprd11.prod.outlook.com (2603:10b6:a03:53c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.19; Wed, 19 Feb
 2025 12:40:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8466.013; Wed, 19 Feb 2025
 12:40:42 +0000
Message-ID: <da0193b1-a509-4d4d-852c-bbe5c9e0d29f@intel.com>
Date: Wed, 19 Feb 2025 18:10:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/19] drm/i915/vrr: Prepare for fixed refresh rate timings
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-8-ankit.k.nautiyal@intel.com>
 <Z7N8JhVO7cFezgyI@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z7N8JhVO7cFezgyI@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0114.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::32) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB8345:EE_
X-MS-Office365-Filtering-Correlation-Id: e3a0d483-df3c-43af-fc86-08dd50e29f60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SHdkSEZXbGFTWHVNOVU5djhzdEVUNzZYSWlBbVVxY09YcDFmaFJTWjVwS0Fu?=
 =?utf-8?B?dlF1c2paVmRtSXVMTyt4Y1dmcG5nQmdwZmlXVlpUOUF2aDRUdkM3NEN1TDFn?=
 =?utf-8?B?Y0pyR0tLaGZ5VnA1M25zWmo4SDRnSlVMYmt4UDJZYjBhK202SkU5VzFJWlJX?=
 =?utf-8?B?cHFEMm9sYjNWUmJ3THNGUlpHSjhTc0pRRzZoV2g4dVNTUW1TcTBuY0FZRzFS?=
 =?utf-8?B?Vm85ZUU3UGI4KzF4ejZpV3FPaERGTHUyQU9rNFVJaTlzeVBJTXhYTi85dGFl?=
 =?utf-8?B?ZmZHNU9nRS9UN2xNTWl4S0ZQTEd2Z0MxV29MK2JTMHJya3RHbWhzNFdOb3px?=
 =?utf-8?B?a2JnMzRYZncvSHpERGd6WU5RWTdTMTVhRTVIbXNmeGR5ZnJkOTFMOFh5Y2xK?=
 =?utf-8?B?ZGFDK043bXpsNFdWZ0prS1NSZFZ1Y2dQc2N1SkUxSmlYY29RK0hNT05YZUI0?=
 =?utf-8?B?TkZTWDFWdnJGblJhZWVYYWRkMzhDQ0hEMzk0NDBLU3NaMjljM3NVVEhNMERa?=
 =?utf-8?B?ckRyM2draFhJZFJIU0NKRUNGVEtydXBiR3UzbUo0NHVyeXJtRUNCa2FCVVRV?=
 =?utf-8?B?SDMxVHorU01JMUR0YXFUeWZhaGdIeDMzRHlLY2JQUmdORkN4clFhR0hDc3dB?=
 =?utf-8?B?NEttT3dyRGloR1dFRXNlVFNLSEpWaTJnMWdwTmtWL0RVMzNpWHYxOG5iZDBp?=
 =?utf-8?B?Wi9Rek1nL2Ryd1Q5RHdnS01wejNNWG5UUDg0d3lvVFRlaXUwQVAyVklROTlL?=
 =?utf-8?B?d1FBMjNXMGg2MFJaVHNPQjFqSGZKVmptTUZqeEVDYy96L3pDeUFOc0RKaVk0?=
 =?utf-8?B?MEV4a0owcVBabVU0L0YzNjlHWHZ3UE9ZRVJyblVsajhEdllWb2cweVhsbXlh?=
 =?utf-8?B?cm8wWDRFb2RBdWZ3N0R3a3BjcEgzWVRsVU42WkdmWGovbXh5VkkrbGtPVDho?=
 =?utf-8?B?S1hZTDdXc2RBUk51MUZ6RzBCYUFKR1d3YTVFUFBubXljYnhYdElQSGFnQTlE?=
 =?utf-8?B?aUhITmNhVmVPdVNmMTJIc0F2VDQwaVVHbVMxeENjcnFPdnlycTM5dWZJbTIw?=
 =?utf-8?B?aU1zTVNBQzV3bjMrbGUrem9YcGJMb2lQYjNvV2E0Tk9PV3F4ZXJjZGlLNzFk?=
 =?utf-8?B?NDhHbm9MUXFYczFOYmFzSWtGTmNad2dzQXdodFp5V3d5UzJrRDM4L3ZwL0sz?=
 =?utf-8?B?MWpGdzM3SVBpK1ZGNnhuY0gyNWlvL3lNL3BITFNLV3FNUzVPMGdzSDJUejIw?=
 =?utf-8?B?RFpJZzhIOXNuMmVXTDI4b0FZVFlHZGZldTZkdndPWDlnWkZ4ZVZJUXQ5OTVW?=
 =?utf-8?B?NkNnUEg2eG9uNG9BWHhOM21LdWQ1bkk4eXgrYlkrYUR3dlBMaGV5ZDI1dnVW?=
 =?utf-8?B?Z0VvNzUzMnhBUEhycUhaNmY4K0x5UHNXckVTYStRazdwb21BMXI3VzJNSnFU?=
 =?utf-8?B?bkVjVFhCNlJ5akMwbWRiakxKN0l2bHJhak1tQzVtQWpNRVZrS09iQXh3WEI1?=
 =?utf-8?B?aE5QdmV5MGVhUHJBdnA3Wk9BY1k0WjZ5ajJoNDlldUZLZUxWckxPYjVoNUtN?=
 =?utf-8?B?L2xHbUx6dHNPcXpqV0pLb1dzak9ScVFrYlNqVkRXWE9KY0NiT0NZdWFtSk5V?=
 =?utf-8?B?R3BTdG5SdHB1eVk0UTljVDBhR1phWXhQMmpxOExENzVJOUxwY1ZPdGI1TC9m?=
 =?utf-8?B?bDFmekJLcitTOUN1YzUwVC9tem5yR1V1RzlmdWdOSXk1a2ZOckVybjd5MHQ5?=
 =?utf-8?B?UlRUKzNaVW5YbFIwREZTRHE5V3o1SWpGWlhIbXExNVh4dHJva0xySTEvN3g5?=
 =?utf-8?B?TFpyb0dJcHIyd0JNZEVnSHU1OFdUNFdoUm5hRlF0MGV4cExJeW9ScnBjMGVY?=
 =?utf-8?Q?oGrvDnFRfCkfe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NU5WYlRUZzBCQXJkSlNhcjgrZ011alVscU0vTlNRT0ZLeXZubFk2MitGQWF5?=
 =?utf-8?B?SThWTnFidk1tdW1jSmlYOUJ6bDB0TUxoaFZhaWk0YWtVSTdGYSsrczdySzVX?=
 =?utf-8?B?UUczcTNUK053bWhoalFTVTVPK29QeUlXRHNHa3VnK0w3N0dzOVpzTHVjWmMx?=
 =?utf-8?B?bGhNMmI3WlJzbEFZbnRkUFdRTld4UDh0Y1ZFU2QrWU1DSjM0ejVhalN0MkxZ?=
 =?utf-8?B?RkJZUk1RZXhRUzBFcndRRk54WGNTY2luWU1EVkd4WDFoK0pUK1BkZDZXelk4?=
 =?utf-8?B?K3lzYTJhdHJXTWxIdWJHanlTbG1tdUtLYTJ6RXVzZlBCZXo3dGVHN1g5WG91?=
 =?utf-8?B?d1dkOU50MkRoaTh6STdlRWcvaGxaVXNvL205TCtqQWtEVlpJeS9UYWJ6OXBP?=
 =?utf-8?B?M1RCdVdMMTU0M0lxMmlZTWJkV2xyU1RGejduaWMvaUZSTFVqMEoxUU9tV1NQ?=
 =?utf-8?B?VlZuOTFLSkpUUTI1Q09ST3hXTHY2SkNYR1ZLbnlzY2xYZ1dlWHVEancvbXB3?=
 =?utf-8?B?UG1OT244QjZERlBuU1ZuU3F1Tnc5dU5zRlpoWGlGRFRXSS9hRDdZS1FYbVlr?=
 =?utf-8?B?am05Z21iVWlrVVdNZEtPK21IckZmSXViTGlrQnU5MWttbmI2QkZZTFp6VVk3?=
 =?utf-8?B?elNBd1lBTFB1U2tRUWRjZzZQM2JjK0VIVWJjUnljZERDazFpc3M1SFNlSXlL?=
 =?utf-8?B?ZmFFVlBZU3IrNjQzT2tWY1N6OEZZYVdPWjA5OVk4dStzanRacjJLRks3cXNT?=
 =?utf-8?B?YTQ0cTVTME5jaWtxdjNVT0xPNzRCbWR1V0pGbW9pVHVZbUlLaTFpbWpsbmdk?=
 =?utf-8?B?cm1mVlE3QndQQTQ4M2tXblpCemxXSmpMVlZBQ3BncU9VMVdPK1pTTzNlL04v?=
 =?utf-8?B?TXY2Sm9FS1NjZjY3UkVtZnJ4MkRkb0lseTdyU1ZLY0NFd3oyT2hTaFhNbUNy?=
 =?utf-8?B?d05kRCtzb2VBdGZPZDNySGo4elU3dzg0NTVsUEx5eFgyejNRZVZEU0JuS2Er?=
 =?utf-8?B?endjYndFOEh6WXh2eU5NSHZOOG13a1RwMlZjWnIxWlhkY2Q1M3p1dFZOZEk0?=
 =?utf-8?B?V1lIUHZmZStDUUxCVms4UVJMeXlCTENBQ1g1Y3dzZTRSd242TW42UHBjT0dQ?=
 =?utf-8?B?QTZzV283bVdqYkNacWxiNnZaVGxqSU5oQTNqSVIzWTE3RThVakdvMUxqRGxH?=
 =?utf-8?B?bFljci9EMzN6T0FQY0drMm9oUFRzMXpsb2QvMzNJY2N3cW93ZjRkWmNtVXV0?=
 =?utf-8?B?TkdkVjFndmRLZVJhZDUzNEtrbkFMbDFUS1VIeWlQNGxvMXBrS0pUZkFGazh3?=
 =?utf-8?B?U0h3bUpySTBidy9UeitTSDZDVEZWZ1dZNlhreDRXUExoT1NpWXpFV0N6QWth?=
 =?utf-8?B?Tzk1QmVUVVgwdnBwbVBuTlNEWDlqejVTRGdtZTk2ZDdTVVV4VnduWS9UZnJV?=
 =?utf-8?B?d1Z6Wm9OY1F1ZmhqVlphNzFVWVFiYmIwK3UveUtXRkVidHV6Z2k3TDBnS3Y1?=
 =?utf-8?B?MzFjWTZKalhKWHBjRE5JdDlUVnJ2QURPOE5YQ0lvSmpWeUJIckJTZHIxUVJT?=
 =?utf-8?B?akYvb0xBdjF4cU9NNkpEU1A5N0cvdVZMZlRqZTg1WXQ0b3RhVGVVUWNkbjNx?=
 =?utf-8?B?bXVqTG9ITkNGZXJEb01XL3hPMU9waTU4N1JjMHA0UVRkdkdpQmZSTVZBN2w3?=
 =?utf-8?B?djBxU0FJSDVtODVTWkU0bmVudjUxVXMyTGRuZ2tjU1RlY0VIa3FwNjBFZkVw?=
 =?utf-8?B?cG1EVFJYOEFQbkNhZnBmaXBsR1dpRHU5YW82by81eUZ3WXBWN2VyWi9ocXpi?=
 =?utf-8?B?dC9SZERrbjRONW00ejJpc1ZFWWZadlV3alZlNWR3WlFRTDZWUmtIaWlFdUJQ?=
 =?utf-8?B?dVR3R09xdk5vZm1WdllESm54N0tUeE03c0N5bzJxZENPMGh0czloa292c3pr?=
 =?utf-8?B?NkdBU3NEVHVvMTNBT1ZLYkpKd3dCVE1vemFpZGM2bm8rU1F2WEkrM0srcjM5?=
 =?utf-8?B?OUhvZ3I1TmdlNEF4L0ROMXB0K2QwODg2bmRSN0N6cmwwWmlpYk1ZcTB4SGg4?=
 =?utf-8?B?ak1qdVZrMFZyV3l3T1RZVmUwNU5VRTgrcmV2RkYwL2VleHZaUTFVM1hMa1B2?=
 =?utf-8?B?MVhTTFJjZTdWbVhObTlNUnpMV2tGSEFIdXBsOFdRMzZoR1V0MVJQbnlmNzgw?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3a0d483-df3c-43af-fc86-08dd50e29f60
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2025 12:40:42.6974 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TD0IdsXTccU1ChXL9kSonmQ3ugveoIXv4MBFNqHY0reFsfzffRRIS+JvTiV7PNxOsmoraBzDH/vj6aj5RiySKXbt17Bd4DoUPBWmEGUVCLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8345
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


On 2/17/2025 11:42 PM, Ville Syrjälä wrote:
> On Fri, Feb 14, 2025 at 05:41:17PM +0530, Ankit Nautiyal wrote:
>> Currently we always compute the timings as if vrr is enabled.
>> With this approach the state checker becomes complicated when we
>> introduce fixed refresh rate mode with vrr timing generator.
>>
>> To avoid the complications, instead of always computing vrr timings, we
>> compute vrr timings based on uapi.vrr_enable knob.
>> So when the knob is disabled we always compute vmin=flipline=vmax.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 54 ++++++++++++++++++++++++
>>   1 file changed, 54 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 3bcf2a026ad3..a4ed102a2119 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -263,6 +263,35 @@ int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
>>   			intel_vrr_real_vblank_delay(crtc_state);
>>   }
>>   
>> +static
>> +int intel_vrr_fixed_rr_vmax(const struct intel_crtc_state *crtc_state)
>> +{
>> +	return intel_vrr_fixed_rr_vtotal(crtc_state);
>> +}
>> +
>> +static
>> +int intel_vrr_fixed_rr_vmin(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +
>> +	return intel_vrr_fixed_rr_vtotal(crtc_state) -
>> +		intel_vrr_flipline_offset(display);
>> +}
>> +
>> +static
>> +int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
>> +{
>> +	return intel_vrr_fixed_rr_vtotal(crtc_state);
>> +}
>> +
>> +static
>> +void intel_vrr_prepare_fixed_timings(struct intel_crtc_state *crtc_state)
>> +{
>> +	crtc_state->vrr.vmax = intel_vrr_fixed_rr_vmax(crtc_state);
>> +	crtc_state->vrr.vmin = intel_vrr_fixed_rr_vmin(crtc_state);
>> +	crtc_state->vrr.flipline = intel_vrr_fixed_rr_flipline(crtc_state);
> Same comment as to the previous patch: vblank delay is not a thing
> at this point, so this needs to just use the actual timings without
> any adjustments.

Will just make:

         crtc_state->vrr.vmax = intel_vrr_vmin_flipline(crtc_state);
         crtc_state->vrr.flipline = intel_vrr_vmin_flipline(crtc_state);


Regards,

Ankit

>
> The rest of the patch looks fine.
>
>> +}
>> +
>>   static
>>   int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
>>   {
>> @@ -343,6 +372,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   		intel_vrr_compute_vrr_timings(crtc_state);
>>   	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>>   		intel_vrr_compute_cmrr_timings(crtc_state);
>> +	else
>> +		intel_vrr_prepare_fixed_timings(crtc_state);
>>   
>>   	if (HAS_AS_SDP(display)) {
>>   		crtc_state->vrr.vsync_start =
>> @@ -514,6 +545,13 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>   	if (!crtc_state->vrr.enable)
>>   		return;
>>   
>> +	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>> +		       crtc_state->vrr.vmin - 1);
>> +	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>> +		       crtc_state->vrr.vmax - 1);
>> +	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>> +		       crtc_state->vrr.flipline - 1);
>> +
>>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>>   		       TRANS_PUSH_EN);
>>   
>> @@ -527,6 +565,20 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>   	}
>>   }
>>   
>> +static
>> +void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +
>> +	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>> +		       intel_vrr_fixed_rr_vmin(crtc_state) - 1);
>> +	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>> +		       intel_vrr_fixed_rr_vmax(crtc_state) - 1);
>> +	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>> +		       intel_vrr_fixed_rr_flipline(crtc_state) - 1);
>> +}
>> +
>>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(old_crtc_state);
>> @@ -541,6 +593,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>   				TRANS_VRR_STATUS(display, cpu_transcoder),
>>   				VRR_STATUS_VRR_EN_LIVE, 1000);
>>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>> +
>> +	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>>   }
>>   
>>   static
>> -- 
>> 2.45.2
