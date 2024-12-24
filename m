Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 840589FC240
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2024 21:39:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A3C10E0AC;
	Tue, 24 Dec 2024 20:39:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j9LRsSYW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70AC110E0AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2024 20:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735072747; x=1766608747;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=wsbuiF6SA62VCFm0Krp50JZd6nHRpzbAoyVymEpNPuA=;
 b=j9LRsSYWsrKH8vv//oNBacKhEqfRfVCmBVJ1eMwqrBTGZ1QiyV++P7sa
 sbD+hnpM+CEe7JOb2WuKq4MFWVnGHvefKGHiq2zbsSof8WG4dwu1U0/vv
 rME0q7s01jWhjw+Z5MNlojhNQjYHMUtBS3FYn2J/4l3bLf3dp8J65ztar
 aJno/v2HdsHCCU+jkdT8mZ3EMls/05lP/Nz/LaRrZOgfWsARvDe5auDNU
 +RFBTT1N2Ksk8KUGa9C8NX4l7AYJ1IYuFlBO4cHOGHsrQX5ZS0Rm77SBR
 R3czLjpPvn2AAKWAPnUVh/LioN+DQb8lt+CUCImUGAe7RU9ybKHSboXrY A==;
X-CSE-ConnectionGUID: FSxnNQV5SzmvK/sebi8XFQ==
X-CSE-MsgGUID: 0MLZeEy4QlKMpIS+KLE7LQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11296"; a="35759081"
X-IronPort-AV: E=Sophos;i="6.12,261,1728975600"; d="scan'208";a="35759081"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2024 12:39:07 -0800
X-CSE-ConnectionGUID: bRrO3QrGT3aOf4EdItZNcQ==
X-CSE-MsgGUID: bdEoc6ZUSimldYISoSbo3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="100030740"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Dec 2024 12:39:07 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 24 Dec 2024 12:39:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 24 Dec 2024 12:39:06 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 24 Dec 2024 12:39:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AZVPkk9PrJiKATUBwrEDpJgTfkS93S5MZoEeWwcjzufXURLGboMSBgI/9BcNM87vs8WARS53VwfSk0H21FETRKcJD1DL+QXWvEdb16BLPTfuWxPer3xREz9ohQx/Gw5fPcegqnZgerKP1HNMaD97jV1BV6gZVy2iFx4XZA+S2UNqBcBvslWTPvu4H/ugIMxL+s6goaKrYGszO6AzgJXUpq+Y7AEJZCzYAieQnqmvLExXesEGOHgfNBAAQf1a4fWJvpMOcX06uEKXZPxEegXUz6XbE9ZYCieGhy0e2HRsH6EsJWJF90rE9i/Z7zEB8wJnMn8t3x+N6NhV55GPU9BgQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SnRUvzHdPBgIQuDUQleBNx3kf2IvmgulI3DgCzvxFU4=;
 b=wWVadrRMtutLHkR/f5dpxr0uxi9phiBhd4aOfoK1MSPINVEFITaoEWxxlT4MQTqCfj2QdrzdYNZ3Zqir6ZI4HFuPfDT+oOacXtj/PG0OEPTSVocNwtfe50d128epnXcuKu3AYKOhVFNpfmjrtLWt/jeXEE67feHmnWr0d/ywUMDbjkJ2B+RRO9Sew++/yUeH6KZqA9BRBsX4HJJFHa7kRXFGBOuBtDIauhkwZT3PgUdyM1iG535CXtOZf5Rnupkzb9y0H9aHbBasf083p0StIjYuPm0aWWXVQ+8j4v9IknZqUX6FCEYlHlhxq+RZaVbeUY8rTLccO0loULn1cZSXgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH3PR11MB8137.namprd11.prod.outlook.com (2603:10b6:610:15c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.21; Tue, 24 Dec
 2024 20:38:45 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8272.013; Tue, 24 Dec 2024
 20:38:45 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241219130827.22830-7-ville.syrjala@linux.intel.com>
References: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
 <20241219130827.22830-7-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 6/8] drm/i915/scaler: Pimp scaler debugs
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 24 Dec 2024 17:38:39 -0300
Message-ID: <173507271978.1822.13474225879621112042@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0061.namprd04.prod.outlook.com
 (2603:10b6:303:6b::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH3PR11MB8137:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b1be736-23e7-4755-f9ac-08dd245af612
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RGZzd2Q5RVZZSFNrWWZXY3MvNzd2bGJKaGtIZ2pHY3JyL3pKZU9CSUxZdW1I?=
 =?utf-8?B?WmxZY1dSWGI2OHBCeERhcGlxTitycGJBN05JUTVyNjlRMGtCQTVqdHVHcWxo?=
 =?utf-8?B?UDhkTjVBQlAybDJmYnRTVzI2VEIzRm5RckxBZjBsRFBVc01DM3ZTc2RCbUtj?=
 =?utf-8?B?ano1UW1mN25uM0JzYkxYT1hpbnQzRHdtSkpsMHZkY0dlTkdCNFh3ZTRvQ0hU?=
 =?utf-8?B?RVEvU0JkV1kzMkd0TEdqSWpDTkJZK0pqQ2xHazJZSU5rM2F1L09xUnBwd0RW?=
 =?utf-8?B?Yzg4K3NuYzlXekxXUVlsRU1NdmlOQ2RYMUhPUWpDR2syN2JsQ0xaUHZCOU9x?=
 =?utf-8?B?UGExNjFWcEcyRHdzMmtaYnpqbTQ4bjNUSkxDbUhlSW1NOHNvRWdxS1BsZXcr?=
 =?utf-8?B?WkF3bkZEcVkyV0k1T0pIa2NYWFlkT3ZtRDhXZG4xREJaK2hjaEM3bng5eTll?=
 =?utf-8?B?U2xNbm5WSFhKYWoycVkrdHorK3Mrb01pc3d2ZDFSQmptTXBDZlNseVdnd1RQ?=
 =?utf-8?B?VDM4NzdiNW9LaGdNam5sMTM4K0txR3g0MDgraFJ0TlBDVzRYS0g2QXo2QUx3?=
 =?utf-8?B?cmwvLzNVTlpZNXR0YXJwTk9lYktwRFBuaXJxeTdORHg0TUJrVCtSQVM1RVFO?=
 =?utf-8?B?Sk9oTE11WEoxbnRXZFU0QjNQUUFvSGdmdkVONXVKU09qRUZoN2hVZkZPdFBO?=
 =?utf-8?B?UUtrSldpZ1F4UXlwRGw3WmlhdkF4cm9KS0NYdjZxOW1SelY3Q1hsbERjZEdk?=
 =?utf-8?B?OUdPUVI2UEtRU2s2cWR2OTBzaXZGRXJKL3p2UjB0aC85MnliR2Uyb3MvdEJ1?=
 =?utf-8?B?Y1Z5VFBXVlQwNlVIbkZPRE15emtmb1R5SkZiZWN4SjdVK3pNanJvNlgxR2FZ?=
 =?utf-8?B?aVFUa1UyRmdBaUc3UHhtdWpWdU5UeGVRNXpGbGhML0g2R2ZSSTVHNzg5Vlgw?=
 =?utf-8?B?Q25CNnBncndjSHVnUlk2MDNMRkZPeVlrT0RRejhvK0VNZ0wwbFk4V3N0QjlB?=
 =?utf-8?B?VDR0NkY3aFZaSDJPZlQ4RHZtK2JnYStuT0lTMk54U0kreGxBOS9RRjBCOHZR?=
 =?utf-8?B?Y0UrQXdLLzc0akpOTWxHYmY0bk1uTFZDUjNzS3YxV0Z5VkRPdGxiMjlEOXFo?=
 =?utf-8?B?T2lzdkdXN3AvWm9qQ2xxbjNxSURRYXBUTVZ1K2dPNmV4eGJDcERoNG1Yb052?=
 =?utf-8?B?S0dDblY4V1VzeVVXMDVnRmFSK3NBc1VRd01xUFFhSlJrOU5qTVRPZ3QvbHkv?=
 =?utf-8?B?OE16VjFnM3dLM0s0VEJDS0ZhN0NtNHNpL0ZpcVB5dzF5YlF3Y2R0aTBQOUxa?=
 =?utf-8?B?YUtkQVJ1YnFqbVZ3TDBVUnhZN1lueW5VZ0tTbTVjZG82RElpUzFpVmE3M3hu?=
 =?utf-8?B?MjhEY3hkVkZHSks4M1ZoWmgvYkhFWlhZQXppblhuMTl5Q05QbW8xMExRWHJr?=
 =?utf-8?B?UGRuclEzSjJMWjgzdjBhT0ZvdmEwOXZJZnZnU2RmekFZMHB1VGQwenFoSGdO?=
 =?utf-8?B?VnJPTDVlT25TcndlQnNmaThPSzFxWnhiVzNFOHJWZkdjOUl3WmRnZldLdVhH?=
 =?utf-8?B?Zzl1bElqQnA0dDRpQ3R5eFFoWlRVdEhwcVB1NGRlTjRUUlQra3hxbWp3TzhU?=
 =?utf-8?B?bGVvSVdzOXM1MXJRcGlRaDVVZ2ZuT2hGa0VwV3BaazlEMnhtcUJzWnhMQzFu?=
 =?utf-8?B?WDl1WTh4cy8xTUYzODZ3VTVOMlBYTHFBN3QwSi8xWkhNN3U5ZTJNbExsekVt?=
 =?utf-8?B?QjF5bWVhVU1oSnVMSzUzZ1JMMFRXdzJ2OWcveU5sVFRKSUJhQStTbC84TEwz?=
 =?utf-8?B?VmxNUlEybEk5UmRXRm1IQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXJjUTMvdXpnenVacU9XM2ZCTE9ZL0JiQXRoT0NVeWxWT0hyUVVCZFBuV2h3?=
 =?utf-8?B?S0dXQk94QnZ5UU1nWE1oZ1hSK1Y2MTJPMUZ0OEE2SlNOamU2aFlUaGIxUlla?=
 =?utf-8?B?em41djhYV0lHczhSQVRORDJHMWx1dUJWRTB2aGpIVVRqWnR1TXE5ZmFZYzA5?=
 =?utf-8?B?L2tyekRWdzI4K2ZETDlMSEVXekgxOVh3dW5PaWg3aUR4Uis2UFZ0d3ZXWGpI?=
 =?utf-8?B?QWRDdldWd1QwWnpVY3lycnhJcDNlbzhKNXRiL0Y3cjZQS2FTQ2dheXU5Y0dR?=
 =?utf-8?B?c2kvVWRhWjdJQU1qY2lHTEZkQ2pDbXQ5ZjZYZ0pYTHh0ekpuZXpyWXdwajE1?=
 =?utf-8?B?TUJkV29UWlVmK1dxYmtxWG42UWZiL1JVbXF0VzRkOVBpaEMvNHNlQkpTRCt0?=
 =?utf-8?B?VU52Nmw5VzJPbk9Vc2tPRkQwUU51NE1jdzRvM1pra1ZaQ0JySjlPUjhoYVJv?=
 =?utf-8?B?U3ZJcnpjMXlnci9uUTJ4cTlGQlJMbnhsYmZWdktDamxjY1hRVlp3bTMrVTNQ?=
 =?utf-8?B?RXFYSlJrV05WYytWVVVRLzd6OGlMWXZvSVRDcWV4RFBYR2JzdkNHK1ZyL0JK?=
 =?utf-8?B?cmg5N2JUZ3lkWmtIb05ib3VtSWhTakJkb2RneW9CdHducU9hUTExRm5ZQjNI?=
 =?utf-8?B?ZFFKRFNBZHpBbGIxQ2dXQzZWNWJtUlA4QTFPKysrYnpCalRZYmN0RzZXb0hv?=
 =?utf-8?B?Sm5XSDlKNE45aHNQRmtobTJ2MmRRRStaa09vNlFwVlRWcnVreS9YNzBURHYv?=
 =?utf-8?B?dnFPdEQ0dUdSUVB6SnZOVWxnZE43dFNGZndNT0JodWd3Y3NyZU1OQnYxSCty?=
 =?utf-8?B?MU0zNzdvUHl2Mm94RiszN2FFMkRFajBsbmlVWkxQejExNnF5b3VLdkpVSWxZ?=
 =?utf-8?B?MXppZGdKb2ZBSjR3T2Vsc3RvdXUycEVjM0VwR1hNTWordGxzeVBueW0yVGEz?=
 =?utf-8?B?Slp5cG5xYjJielBURFpGMUhKbnF4SDVIdVpHY0xmY0Q1TFBSWFBsclhSWm40?=
 =?utf-8?B?YkFlWEUwMXRvNEZZSUFVTUtjbHowc2lGNit6T3B6WTdXM2hWV0RkcmRaOVZP?=
 =?utf-8?B?eVRLNDQwTkNhQXZOWlBJeDd0YlRuVHk5bjFyZFpqd3NHUFRiZVNYZnpJbjhy?=
 =?utf-8?B?K0gzQ0F0R3NOTEp4UHR6UzlWN2RVWGlWRldQeEsyZHVNM201NlhKVUFsdTlF?=
 =?utf-8?B?b1h6bUx1dmhMVUR3OGsrTkdJdkZmZWoza29tb0REZ3NLWFdJcS82UEdMYkpo?=
 =?utf-8?B?ZXRZRDJNQlk5V0RvQTFOeGhRamtpMWhSNm9pRlpoV2ttTHp4a3dKR3ZMeG5u?=
 =?utf-8?B?Z2xOejhKNlU0ZlpyVGs5WWJWT3ViQ3hURUg5dGhXZXdLbW5MWmxLczY0YXN6?=
 =?utf-8?B?SUxMTTRjVVcrVDlQTVJtY3FhOGoyT0RVV2gxZFREVU51T0xxVGl1bWlCWGVG?=
 =?utf-8?B?Zi9Vb3A4aFcwa0d1R05XcWJET0NucHlFY1dxclNKVGRvbkdSUm1kU010Tzli?=
 =?utf-8?B?RWtyODVYQjJST1gzZ0swRk9ubnpjbFBmWDlkcFlRQlBpN3VyK3hEUjdnVmox?=
 =?utf-8?B?Q0JVSzlRZ3Y2K1h5d2pubEgwODVLWm5MbGk4U0xSRjJCeEQ5ZW9OazhvcmNw?=
 =?utf-8?B?Skh2dGkyV1VqbEV4MHdvdzdzaVREK3czSkhaR0EyYXh4KzdEbzhGemp6Y05Y?=
 =?utf-8?B?RnVITmhqRGU0bWw3QWkxcTdsWDAySEFEY3hvU2RiSkcweW1NWCtxVW80dVpu?=
 =?utf-8?B?Q0xOMlRZZnNET2duN2J3VXV1OFJrS1pxOFIyQzFpZi9vUDhtbVVISFFPb0p6?=
 =?utf-8?B?VUV3UGNFMk9CeSt1Yit3RDVxa0RkRXVEUmVzWGxYWElRV2lZV1F5RHNyM3RT?=
 =?utf-8?B?NlQ5cW55d2JLMWxRZUVTY01TOStUVzdGaVlCcFlGRXZsb21TenVTV2V0UzBG?=
 =?utf-8?B?NWFKT1BxYUpoNVJZdVJFbUtPT3plWmY2bmxFVHEwdkVPNm16UGhGSUJKSHpn?=
 =?utf-8?B?K1B5eU5zR3JUbjRmdU1ubUVIc2NEcVlCOHNtUldmNFIvMXNiQytlV1ZGMWZL?=
 =?utf-8?B?VjFwa3kyWlNFb3VQb2tyeDBEVVdRNGFwZ3p2cnl1Z0l3R3g3R3h0ZlZHWkhm?=
 =?utf-8?B?bWg3K3M1K0I4d2dDSFBER3RXZ21LZVFWN1ZrV0szZ3RLM1JJN1UxVlNuTnlG?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b1be736-23e7-4755-f9ac-08dd245af612
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2024 20:38:45.4702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: laOFgv6wYnls+XHJg0Y2MD1arN8UGRJV9Rf3nasAo++7gqdylIJQrw7KiDYP5ka3jVzpvYqQxdogO35e72XSRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8137
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

Quoting Ville Syrjala (2024-12-19 10:08:25-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Include the standard "[CRTC:...]" information in the scaler debugs
>to make life easier.

Drive-by comment (and going a bit off-topic):

    $ git grep '\[[A-Z]\+:%d:%s]' -- drivers/gpu/drm | wc -l
    600

Has someone already considered creating DRM_*_FMT and DRM_*_ARG() for
those? E.g. DRM_CRTC_FMT and CRM_CRTC_ARG(crtc->base), which, IMO, would
be easier to use and arguably more concise.

I tried doing a quick search on lore.kernel.org/dri-devel, but I'm not
sure what would be good search terms to find previous attempts to see
possible arguments against it.

--
Gustavo Sousa

>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/skl_scaler.c | 25 +++++++++++++++--------
> 1 file changed, 16 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i=
915/display/skl_scaler.c
>index cbc71e44fcbb..f6d76ef1a854 100644
>--- a/drivers/gpu/drm/i915/display/skl_scaler.c
>+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
>@@ -166,7 +166,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_state,=
 bool force_detach,
>         if (DISPLAY_VER(display) >=3D 9 && crtc_state->hw.enable &&
>             need_scaler && adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE=
) {
>                 drm_dbg_kms(display->drm,
>-                            "Pipe/Plane scaling not supported with IF-ID =
mode\n");
>+                            "[CRTC:%d:%s] scaling not supported with IF-I=
D mode\n",
>+                            crtc->base.base.id, crtc->base.name);
>                 return -EINVAL;
>         }
>=20
>@@ -186,8 +187,9 @@ skl_update_scaler(struct intel_crtc_state *crtc_state,=
 bool force_detach,
>                         scaler_state->scalers[*scaler_id].in_use =3D fals=
e;
>=20
>                         drm_dbg_kms(display->drm,
>-                                    "scaler_user index %u.%u: "
>+                                    "[CRTC:%d:%s] scaler_user index %u.%u=
: "
>                                     "Staged freeing scaler id %d scaler_u=
sers =3D 0x%x\n",
>+                                    crtc->base.base.id, crtc->base.name,
>                                     crtc->pipe, scaler_user, *scaler_id,
>                                     scaler_state->scaler_users);
>                         *scaler_id =3D -1;
>@@ -207,8 +209,9 @@ skl_update_scaler(struct intel_crtc_state *crtc_state,=
 bool force_detach,
>             src_w > max_src_w || src_h > max_src_h ||
>             dst_w > max_dst_w || dst_h > max_dst_h) {
>                 drm_dbg_kms(display->drm,
>-                            "scaler_user index %u.%u: src %ux%u dst %ux%u=
 "
>+                            "[CRTC:%d:%s] scaler_user index %u.%u: src %u=
x%u dst %ux%u "
>                             "size is out of scaler range\n",
>+                            crtc->base.base.id, crtc->base.name,
>                             crtc->pipe, scaler_user, src_w, src_h,
>                             dst_w, dst_h);
>                 return -EINVAL;
>@@ -224,16 +227,18 @@ skl_update_scaler(struct intel_crtc_state *crtc_stat=
e, bool force_detach,
>          */
>         if (pipe_src_w > max_dst_w || pipe_src_h > max_dst_h) {
>                 drm_dbg_kms(display->drm,
>-                            "scaler_user index %u.%u: pipe src size %ux%u=
 "
>+                            "[CRTC:%d:%s] scaler_user index %u.%u: pipe s=
rc size %ux%u "
>                             "is out of scaler range\n",
>+                            crtc->base.base.id, crtc->base.name,
>                             crtc->pipe, scaler_user, pipe_src_w, pipe_src=
_h);
>                 return -EINVAL;
>         }
>=20
>         /* mark this plane as a scaler user in crtc_state */
>         scaler_state->scaler_users |=3D (1 << scaler_user);
>-        drm_dbg_kms(display->drm, "scaler_user index %u.%u: "
>+        drm_dbg_kms(display->drm, "[CRTC:%d:%s] scaler_user index %u.%u: =
"
>                     "staged scaling request for %ux%u->%ux%u scaler_users=
 =3D 0x%x\n",
>+                    crtc->base.base.id, crtc->base.name,
>                     crtc->pipe, scaler_user, src_w, src_h, dst_w, dst_h,
>                     scaler_state->scaler_users);
>=20
>@@ -421,8 +426,8 @@ static int intel_atomic_setup_scaler(struct intel_crtc=
_scaler_state *scaler_stat
>=20
>                 if (hscale < 0 || vscale < 0) {
>                         drm_dbg_kms(display->drm,
>-                                    "Scaler %d doesn't support required p=
lane scaling\n",
>-                                    *scaler_id);
>+                                    "[CRTC:%d:%s] scaler %d doesn't suppo=
rt required plane scaling\n",
>+                                    crtc->base.base.id, crtc->base.name, =
*scaler_id);
>                         drm_rect_debug_print("src: ", src, true);
>                         drm_rect_debug_print("dst: ", dst, false);
>=20
>@@ -430,7 +435,8 @@ static int intel_atomic_setup_scaler(struct intel_crtc=
_scaler_state *scaler_stat
>                 }
>         }
>=20
>-        drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n",
>+        drm_dbg_kms(display->drm, "[CRTC:%d:%s] attached scaler id %u.%u =
to %s:%d\n",
>+                    crtc->base.base.id, crtc->base.name,
>                     crtc->pipe, *scaler_id, name, idx);
>         scaler_state->scalers[*scaler_id].mode =3D mode;
>=20
>@@ -530,7 +536,8 @@ int intel_atomic_setup_scalers(struct intel_atomic_sta=
te *state,
>         /* fail if required scalers > available scalers */
>         if (num_scalers_need > crtc->num_scalers) {
>                 drm_dbg_kms(display->drm,
>-                            "Too many scaling requests %d > %d\n",
>+                            "[CRTC:%d:%s] too many scaling requests %d > =
%d\n",
>+                            crtc->base.base.id, crtc->base.name,
>                             num_scalers_need, crtc->num_scalers);
>                 return -EINVAL;
>         }
>--=20
>2.45.2
>
