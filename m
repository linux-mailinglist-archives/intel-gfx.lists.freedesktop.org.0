Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26406C067C0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 15:26:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F2210EA49;
	Fri, 24 Oct 2025 13:26:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BnYduxkD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0B8F10EA49;
 Fri, 24 Oct 2025 13:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761312374; x=1792848374;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a8xMPq/aDo0gAE1XvSyCB5JDtIQDiSdME73IxUJ3MeI=;
 b=BnYduxkDY7dCduxehouUTbRfqoj9eGqNIKNS4AhXwlhY0rH76hVdZpDw
 f8Ch/9dDUKONmC6GFenGYlwIL7a8fL6+lB6zsgyb+lCtnLjkNCOqinMSw
 QSInLJSJdkVbhWYuukfedYWhue0itglLMenA+/0owSgVARwD9pWHwrjcx
 bQ6xgqrtAvtRLp8zMeE+5uA/yc7BfV06RkRZEstmE1CX1GsYb9CfEA/hC
 pY0BeiRLOvTv1p83GZc+Gb0wtBp1czr4o9G71diNsCRAyIWbSJBoERT4T
 KIgYWoNDTGAkvH1LeaGE3NHtNGUCnm7cZYwcdzMUnzit8KVct8cAztYth g==;
X-CSE-ConnectionGUID: G65zjlj9SnuzxaJdys3Bkg==
X-CSE-MsgGUID: N6JgsyIlQbSpgZwLZ1PApQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63196913"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="63196913"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:26:13 -0700
X-CSE-ConnectionGUID: OWPqjUddTgyVQ4j6dd+3Qw==
X-CSE-MsgGUID: ZpVSM7TYRwGnWUL57vUGSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="184350120"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:26:13 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:26:12 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 06:26:12 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.7) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:26:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LtYlIIjyCVw8aQDoLgDJkDQKOg29vfjLAbQnuC1riKGlPXfDRZnCNdJCf+2hKbanthZDwmrD99Opty4z4O+f37+NykMSbguua5XBKZYIEQ0uxuWZxqkKTwvzqgigBJX4u5BVttfNDeTkAj0gUQgMUY3EEXWiNgb2kaLQ3tqIDXjCEaavR5qLGY4x6jVriwcInUtVlihc/rYR3sg7rPhsPpONPlNMU8Ocg9GMpKevbxcuxwd8yW616HepgceN04bB/GkEPYIf00r9KNO8IUfhooigLJxrrQFbqRJzHHb4b+6W/4ovpJpAywtBN8hr0I7mRcYwZ98swCJh3udAVRDz0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=af/+WueMCxPhF9VcFHopkOx5N8/dZ9cHqeQfsiKhMbU=;
 b=ERy7XSCOq5ULxbP0eZGoNlBkgSZS/Js1TA4g1CBBYegQA0cF1ExqpufMDMj5BDrbMUKAcWJrLm34Nc0vYHwngPtwE8N2vDHeMS3cASn6oxpknmuMK+iIgCk287YgXkP0p264xC3Wme6oyIZtzsB8iCjAXn1+NjFiU74rqTA8arZdqtRYBa+H7srRlKFIoe8ix8YaauG3Qxuw4z87HCsoJTnwnUHmledYNOezsw92jwvzUrPHfxSPoUHe3DIp4MjNFbHdJmM5o+q0i9h9BnE+F1+ED7lKwwFVDOyrTM5phy92hs3axdohQapjkyOe6RSZ0i9AQEQPLIModkpnCAlypQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6369.namprd11.prod.outlook.com (2603:10b6:208:3af::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 13:26:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 13:26:05 +0000
Message-ID: <d5b70b22-8ff3-4c18-adf8-378e43abfe98@intel.com>
Date: Fri, 24 Oct 2025 18:55:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/22] drm/i915/lrr: Include SCL in lrr_params_changed()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-3-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0165.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ba::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6369:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ef22892-aca3-4762-9df0-08de1300e220
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d1ZEM0ROS2tBcUc3S1AreldSYjBZcit0VDFFT1BhRG5VVWNZNC9mMHE2UWow?=
 =?utf-8?B?VVh3WXdxOVBaTmhoMGkvSVc3S3dtNktMenc3NWVMWTIwOGVDZWU0U21zWk9z?=
 =?utf-8?B?d0RiR1ZWdDF4c2RtMzVDMlA4dW5pS2RPNWphdjdPTm05WmxBakxnVVJ2RzZK?=
 =?utf-8?B?TUxHWjhNeFhlQm1BaVcwT2xLNU5WK1JNd0VzV2ZRRzl5VkY0eWxIc1NJSUVY?=
 =?utf-8?B?SDBsbzFTZmdQVUx4VmZBMkFkSFV2Ni9Wa1VqNFd4UFc4VXF5d2hmOGV2WXp2?=
 =?utf-8?B?ZldXTlJRTUpRVFJyazE0OXVJWmUyZjFlbTN3WDhUQnN4OEdlNWRqaEpWaGpy?=
 =?utf-8?B?RGVjM1pmWmdwOWVkSmY4cFZaMDdPZHBvbjhobWtYaUJWRExRakwxVktDZEg3?=
 =?utf-8?B?U2lxRXBjYlhqM0ljTVZCV05ZUzJabFFHYnMrRGtZMG5QR3VDc0hTY2dxbUNJ?=
 =?utf-8?B?aGNpd2M5NU9JYUR6SExUWFprR2E3UDNCSXROQUFybXByYzArT1dhTnJWM01B?=
 =?utf-8?B?QVM2MkFyN3hlbER5OWJYdENPT00vQVg1YzYweW9hRU96WFc5NWlpcXB1RlRF?=
 =?utf-8?B?TlZqQWxJdjNKemNPa2dYaDN6NHRzR1YzUDZFY1lxcm9CSW1VamJIQlRnZG1Z?=
 =?utf-8?B?azN2MXB4QllXVXpCOCttNFJad0dUN3lZTDVSMkIxR3l3bUwvdjBzUllwSUU0?=
 =?utf-8?B?UkVuM0N4RzlsaTNBRFU0dCszZG5TYVFZY09PTlBvbEZaenlzRmUrRDkrdEhr?=
 =?utf-8?B?RHFNaHVHN1pVcHJZTWVPT0ducEIvSkdFL1lPbzJhaXp0Y2VVVzd3MHNKOWVn?=
 =?utf-8?B?ekJGdDRmUmFoZkF3UStJSnRUR0F0Njc5d0k3UVZDUEErVmNJNWxLOVh6NHZi?=
 =?utf-8?B?Mml1YTQ2d21BSXRqUGtnWVI5NXorazV2Q3pGSVZkRFFiMTR3VFN2TlE1WUJv?=
 =?utf-8?B?NVdXMS92My9EeXRsZmxXL0VvQzJnVTUzK3ZkK2JEN2dLaHFSalJoZytWTng1?=
 =?utf-8?B?cHdxcWJBVngyTzkvTHpXVG9qc0h3WFRNd2dQc3VFN1kwZ21ydFVHajNvYVJj?=
 =?utf-8?B?MkJXUDR6V1FFeVlIcWN0M1ZYU1BzYm9xVHFYbXlqdytyeHlqbERoUlNnRTJl?=
 =?utf-8?B?blpGd2F4UzRDTSsvWU4ydVRsM0cwQXJabHBNanF6dDNrQys0cWsyem4zTDNt?=
 =?utf-8?B?ZStXbHhrc2FidG5MQXhwVng3QllCOWtrTjh6b2c0MnozYU40M3ZndUZRNzIy?=
 =?utf-8?B?QUthRUdScTlPbEdsOEFJSXdwTitTWFNHcmxHVGYrTkNtNTJpdjB1S1d5WEUr?=
 =?utf-8?B?ZWhpNXJTVzZnVi8rUEl6ZDczZFNCRlBKUXZqNUN0WGlKVnFuRlRSdzNQTHVu?=
 =?utf-8?B?RFgzRzd0alZ1SXViL0I1cU9DWjV5S2k3UUNoWFVMVmcvR3N2OWdkdjVkU1Vo?=
 =?utf-8?B?TC9HVGtFN2JpRzlHZHFNYVBzRWdaQnJTL09yemgrREx2YjF3clVMdWt6ODha?=
 =?utf-8?B?OURRVkZ6dzZKRTh2TkdYWnBuK1VyMmYxbkw3d1BvdjR5Q3NPZUNCbmxKNTBY?=
 =?utf-8?B?eWl3MHA1SDFvS00zcklRSTZ2c2xhTE85ODBIMElVeEhHNlZnT0NsV214TnJu?=
 =?utf-8?B?amtuM0l5eUdqeFNIVWp5Qk9RUjZwRy9SVkhOdkRqK0xPbjRpZmNnZWhNdW1Y?=
 =?utf-8?B?QlhMdzJnQVRjR25MRFZzV1lUNEdORlJPTnJQT1RzSmhjNVlpYmhtb210aTVz?=
 =?utf-8?B?RzQyYWNmWlhmc1gxL245Z1MvVmZ5MHJBN3ZKV0RBay9XTjIyakl4NVRhRkdy?=
 =?utf-8?B?TDdnZzY1bTVUZFUrdkZxeHFmM1ptV296QzJQbDF3YlY0QUs4TUx4TzRiYkRM?=
 =?utf-8?B?bjROMithcWFOV2cwOVZCNUswREdtQkNDWnFJamN6cnlRVGFiRDVwdkZhNXJ1?=
 =?utf-8?Q?B6qv4mChdFYb61AuyDjFXU77KKLEc2UV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dDdXNFV0Uml5QmxycXI0V3ZEUWdYblMxYktGVHVmanpCR01DTUJrTTg5QnVU?=
 =?utf-8?B?ZDNuTkh2N2RBWkFvNFE3aEQ4T1hTOTVXV3ZtSFMwMVZCTE95TThIYUlOYVMw?=
 =?utf-8?B?VFJXSG9MRTNlNlhnZ3M1cEpPQm5qdFhodHZYajJnYVB0ak5wS2RaaEVIeVFX?=
 =?utf-8?B?MDFZMTFMWVZLbTczdXpENUNDUWpmZllUVzZEQUJhMy9YZzlLZDUyOEs3Z3pM?=
 =?utf-8?B?eE5oUjlkNzRLVEozOGRFSFgzTXhWekJsZEFEOW81Mm9JTVV6TXZZSVFHQzdp?=
 =?utf-8?B?SC9WbnhnYWx2L1p6SHcvNUpmTDkzWUhQSzg5TE14OW9RTlI1WkVJL2VwMjY5?=
 =?utf-8?B?bHk3OTJSbllPODdsS0FhK29OdEJSZkx6dFdqdmZ2TmtpY2I0SEZhQzFqOWgy?=
 =?utf-8?B?bFdCeEZtTnpNYU83Y04xQUdFWnFNakR5U0NrUHB5REN5aFpyOXg1Qm9Oby9o?=
 =?utf-8?B?THlZalNnazhVT3lNcFNqbks0ZVF5YmVXTGlYaUV4d3FabXFaM1V5RlRtS3FK?=
 =?utf-8?B?U0JEcXdHbjkwNmpLYmYzc1paOEdRaWFIOUszbjRDK29HQ2V4d3Z3VmF1dUdH?=
 =?utf-8?B?K1hIODNjQlBGUHRFSWNBVTdMUVJmNGhMWGJ0VDkvU05LLzlYcTFjNFNra3JE?=
 =?utf-8?B?RWZlenZsOHR0Ni93QTR3dDRmT0wxd1lwK3JSQzBhVHdRMjdadlZvd1dXNkI0?=
 =?utf-8?B?cUUvd2tFSjZiOUJEaG9KdlNIQ0ozcVUwSXo1SEJ0aWZSVktWdnZJR1RzNGxr?=
 =?utf-8?B?NlFWdlYvdVVaeGpXaFMyaHNrNUppZlZ2bFN4VGpsVGJIZEgrQWVYNGQwREhD?=
 =?utf-8?B?QW4zeEJXakZ1U3VwSEJ4YW5DaWpURHp3L1lsZGY2dWQraGdjOU96VnBhbjlJ?=
 =?utf-8?B?bnRpd3ZsT1hqK0tnTFJZSzJ4WExLMUFnRGo1VTY2UTdjWGZJVUZsMmtIY29r?=
 =?utf-8?B?eU9GdE5Vd3RheEk2QjAvekV4M1pyQVVxUFhFRTl4OEdZOW5RWjFBNGg0N3dU?=
 =?utf-8?B?QzRuRnp6VmRpSWhoS0hONFg5Qkp2ZWoveXNKMHNSSEVNalRXVS9XbDB4Zmp3?=
 =?utf-8?B?RFByVjBpS2wxL3ZjbnZ2b0JGZVd2TkV5RWp1UDRaMUg4UDRBZS9BZFY3cFVa?=
 =?utf-8?B?YTlhSmd1ajdNWm5mMC84UUpoMTNuWHh6bHBrWFFLV0hCRHQreGtmRXJEK1RH?=
 =?utf-8?B?ekIva1Y1dGpHaFNGNi9ZUy9MUzdvRDR3NnFWR2pTNWJvNVdyM05uR3dWVFFF?=
 =?utf-8?B?amEyUlNpT0RsSzBPb0hielR0dWl4clpQNnFUam1mU0ZSZjlTY2FwZzRSS0pu?=
 =?utf-8?B?TDFPS3NsNGFKRWpGZCs1MjZpV054TzV3UVArbUdvZEZDOU5SUkNZcmtpTEVu?=
 =?utf-8?B?cVNYU2VoeFltTTZjekRYUWdpcWNVWkZIU1doTjE3ZUJFUElFSkp6Q0xMeXY3?=
 =?utf-8?B?S3hVbjlmL1pOcFVNSEdMcUlhbE5GUE1GY2JubnEzWFBZTmhWQU1ybzUwZGFu?=
 =?utf-8?B?WVNFUXZUZ1RSSEZyTkI5YUdsWWZZQnRlbmZicXR1enJlNm96S3FxQXJkazdC?=
 =?utf-8?B?RlpYY2trNlVXeVpQN1dmTGRha243bCtVR3o3elpibG1TbTJhT05OL3RnVXhG?=
 =?utf-8?B?eFFobmNBVjk0YWFTSElWdUp1bnNCRERRWUl5MDc4dXRkbFVKSldMVy9tZXp2?=
 =?utf-8?B?VDhMYVREYmRXN29wVm5KaXNiaDVidlRFZXI2bE1rK3lPeUhObFVUSmJDTWx5?=
 =?utf-8?B?M05ZbWdUbXI3U0ptcEErRmhuS1pPR3R1b1lza214VjRWQkdpK0RNekxqOS9P?=
 =?utf-8?B?MGhaUHpDU0wzd1RNK0gzbWRCdUp0YmVrUzNncmlTOW1SdEZ5S3N3MTNWT2xv?=
 =?utf-8?B?ZVYrYm1yUXVKWWk5Lzg2T1Y2V2xxdGhSRTFITkdIWW1mQkM3dXhKZEFBdUhz?=
 =?utf-8?B?WGtmT2ZHS2ttUFk1YkhoanFLYWY5TTNpblJua3dXYkk2NXBuUkZoQy9GVVk2?=
 =?utf-8?B?QTZYSGkzL0o1TlhHYy9SUUhhdnhTbld0MmIrNU1EYlJvaTIvaHhHU1NoejVK?=
 =?utf-8?B?TnBCaEFjSVdxdVJsZ0RTUlYyTnloendvNnljalNSc2pObzJzRk9aaDU1NkNy?=
 =?utf-8?B?SUw4ZmsyTUJjWTJZY0FUTlNBSmRXY0R4NnM1L01SQmh4M3FVT3JxN0VkaVQw?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ef22892-aca3-4762-9df0-08de1300e220
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 13:26:05.4755 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HHdtIegmeB6KvKJ0A7qHjpcR6K/emRSX4Sa+wGGmwlxXDGwSnDvG+nvBQ1h8Qczc/FdCDPeRovkkDeI9SpCas9OaWJYSoHM8SNBa6JWsQ6w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6369
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> If SCL is changing we need to take the LRR codepath to update
> it during a fastset. Account for that in lrr_params_changed().
>
> The current code will only notice the SCL change if the position
> of the delayed vblank also changes. But that might not happen
> when using the VRR timing generator because the delayed vblank
> is then defined by the guardband instead of the SCL.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 13 ++++++++-----
>   1 file changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 09d3eb422ad4..490b4f2907e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5711,12 +5711,16 @@ static int intel_modeset_checks(struct intel_atomic_state *state)
>   	return 0;
>   }
>   
> -static bool lrr_params_changed(const struct drm_display_mode *old_adjusted_mode,
> -			       const struct drm_display_mode *new_adjusted_mode)
> +static bool lrr_params_changed(const struct intel_crtc_state *old_crtc_state,
> +			       const struct intel_crtc_state *new_crtc_state)
>   {
> +	const struct drm_display_mode *old_adjusted_mode = &old_crtc_state->hw.adjusted_mode;
> +	const struct drm_display_mode *new_adjusted_mode = &new_crtc_state->hw.adjusted_mode;
> +
>   	return old_adjusted_mode->crtc_vblank_start != new_adjusted_mode->crtc_vblank_start ||
>   		old_adjusted_mode->crtc_vblank_end != new_adjusted_mode->crtc_vblank_end ||
> -		old_adjusted_mode->crtc_vtotal != new_adjusted_mode->crtc_vtotal;
> +		old_adjusted_mode->crtc_vtotal != new_adjusted_mode->crtc_vtotal ||
> +		old_crtc_state->set_context_latency != new_crtc_state->set_context_latency;
>   }
>   
>   static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_state,
> @@ -5742,8 +5746,7 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
>   				   &new_crtc_state->dp_m_n))
>   		new_crtc_state->update_m_n = false;
>   
> -	if (!lrr_params_changed(&old_crtc_state->hw.adjusted_mode,
> -				&new_crtc_state->hw.adjusted_mode))
> +	if (!lrr_params_changed(old_crtc_state, new_crtc_state))
>   		new_crtc_state->update_lrr = false;
>   
>   	if (intel_crtc_needs_modeset(new_crtc_state))
