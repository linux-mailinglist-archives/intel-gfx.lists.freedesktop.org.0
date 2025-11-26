Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 591E0C8804A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 05:13:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FDD710E506;
	Wed, 26 Nov 2025 04:13:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LpoyH4jv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378D710E0C7;
 Wed, 26 Nov 2025 04:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764130379; x=1795666379;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AGkO9a710sAc6VtrBvyDIw8CPLFg97lVB3qFlQL9s1o=;
 b=LpoyH4jvw8+br/21gJM5o+2nly9QostoWC049vYOeu8jf9c7XTy0jN3x
 bfkt+mcwSkBXTd4RGDTAlAvMS05Dn+Oc/SfELubFzG+iLsTrHWV5g66l6
 teJC0NxKFCLnpSHa5EofFWm0gVpbF4kLMAeVXgUZMwIE5zYtnBiAjI6Wg
 mPIJ1ZGpLMwVOjOni8tYmjjsERI8f6GjFqinzks04UJq2LKFMFLijXWJH
 RLAJ+jfpY1lkh9xJS9aIcAwOHlyNt5ovGd83BvH0WCoghZt8ebmS+ThgI
 Lc9h+9zBrt1y1TN6W9ZQnGq7ymZayeBgBl67BHDJzpogwINkGxV19t905 A==;
X-CSE-ConnectionGUID: fp4qvgwkQESl2xLGeHWOKw==
X-CSE-MsgGUID: 3j7c+gB5QieHImTActoLBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="65162316"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="65162316"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:12:58 -0800
X-CSE-ConnectionGUID: gb3xRI5tR4OjaSdOXIaFgg==
X-CSE-MsgGUID: ASQoBDzoRNC4Z1wvNIWD5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="196981548"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:12:58 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:12:58 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 20:12:58 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.53) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:12:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CJTnLdhBTCdiA0EvdSlRBVcNVNLRN0HIG0oYmaGWQb9IJzHlM/Pm04g6iAR0mVNRXoDXLmirPq2CKrJkI9+56E3HidqiXbQICcEGE0s2QjsMt8NPuDX56WBV+C86HUzoI13AzlwkV3HklNVIlbdaq2CV/N/3u3IwzUbsYKpTQ87sFQsdQJ0DAYooW8UWsbpJAx57uQZu+2VzlF2Hsrrq0a8u35XkUEA1nHfCH4f4FaNBkef9AZt6K9Dhvtda8D0JS9BUYvh0dSZKg6EYz/O03ZAd9/h80OSLjyXdffn4Xm3c62vPnMppMb/cwWgx89pe0TsWSr/8ApBw/PGj9ioABg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xhkh+P9NvQ1iETLR6AHDj3DPeR8zq1gL9ND3xyU8Ej4=;
 b=HV9QLoT6rNh1ymhTxHXMA3gsg2BsT48FctrA1/a9jrMdtPo3TCl+wweerItDo48fQYzpZytdUYafX8IEqIpcR/WrOR8lYZjCagU+IYI/I7RU8XDRGOI4JirWw7m28e/MnOx7o02Gus9GJtrMYqxt2rpNYLj22W0L6MT16G48pfJkPTOYnu+oJFdm6kofNqqKYiLa+hUVKIE0VQe63zngI/PVPlCpY8mJCnp0cZO1MmN8sfYEOneOaVAnGiRe2MDzCyoYWGVUpdwVGm82tJJKlnX1y5oYYQGLGzFQDO0a0RhXDA57AMij0SJP2FJsP5SOpuwK1K7oZHofl7BPNp8ffw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7898.namprd11.prod.outlook.com (2603:10b6:930:7b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 04:12:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 04:12:56 +0000
Message-ID: <5f4488bf-2398-48bc-9ae9-edeb60f82daf@intel.com>
Date: Wed, 26 Nov 2025 09:42:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 08/18] drm/i915/vrr: Add function to reset DC balance
 accumulated params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251117054442.4047665-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0175.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a9::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7898:EE_
X-MS-Office365-Filtering-Correlation-Id: 716ec64a-db14-4b61-d1c1-08de2ca213b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TlZVaTZnNDZ4cERoWjVxZkFnV2VmOVhJeXpObjYxOFA4T3lGRFRObkNWa0FJ?=
 =?utf-8?B?VVdrcjM4YUtXOWZtZ3lKdUJQVnpveGRSa0VuZVdBSitaTnBPdGFaMUs0WGxq?=
 =?utf-8?B?UHh1RU1mN3lOY2doeXZJWmxwQ0ZEekxlTEJadGNSZ01va0FBbElaWDJYcCtl?=
 =?utf-8?B?NmtFQ0loRnRZM2xhMXJCMUhYTlJJVmtMU1d5bmswMHo4Ujh0YUhCRkZBWU9j?=
 =?utf-8?B?and6SHg0MGVlTUw4WktoMExRNkdRd3hSU1dSNG1FTENBVDNQaEJENndhcHg1?=
 =?utf-8?B?TkthOGdDWFBwM3ZJREhESW0vMnN1Q2FMMVdFY2JqcC83NUdVc0Z2R24veE5L?=
 =?utf-8?B?QkJ3dVprdjI4Z2g3ZWJ2VmNDTC9BbmpuM29SV3d4L0twMERJaDY4eWZlZkhl?=
 =?utf-8?B?SC8rbmJTRkltRHRtUFM2cHN2aGY2eUZGeW9WejRwSGpYdlAxTkVpRWsxNndj?=
 =?utf-8?B?TWF0Ukh0ZjdMVE1WeVRXOTJXUlRoQW9IR25UUEJQMlRJWGc5dDJ1OEIrUkZJ?=
 =?utf-8?B?RHk3L1IxSmZQWTAveStxV3lEY1c1WmZQTTh0N2RudS9tcjRMck8zVTRkU05V?=
 =?utf-8?B?WDcxSlRyc09TMVZBaEFkVlJObzhXWUZxNXBVbmRjSHd5SGR0S3JQRDJZMnp3?=
 =?utf-8?B?eVNTVjYyR3FIUzZONHhDRGx3cEk2MGZsd1Jtc2lGcFVtVEVVUVd3NVVWWDY3?=
 =?utf-8?B?NlE5Zmc0NEJsTW1nNkJBQnVQQnp0N0VPTTFLRjFiU2pORmZpMjl0Sk04UGxq?=
 =?utf-8?B?ZUtwMTM5Nk54cXRldllUK3pWc1Q4d3hFQVdUMm9ZemVFRXh0d0N5Tlg2bGNS?=
 =?utf-8?B?RnAzcmtJOTJNUFlvUWRFdWFTWkZ4Nk5icU1jd3BkVUlZRkx0R2ZHeEdCaEdT?=
 =?utf-8?B?WkZyMFpscjJYWnhQUXB5dzBYb3QvRHAybW5Fa0ZXbWozTDdRVjVYSDl5aWZm?=
 =?utf-8?B?MVMvako5R3p1QnhtOEtXRnpUd01uUkJXTktLRVNNUVZaQWNCWFZaa1dqV3Zk?=
 =?utf-8?B?SlFUZUk2STdUTDZQL0ttRGlEVG1sb0k5TXRCaWVZaGdLVDNVZE5oRmlNYStk?=
 =?utf-8?B?ZlVTYnFtYWFFbzJadjJkdHZGWWlwTXJpMUdwVlNjdGM1MGhTOUZNdjZJSEFQ?=
 =?utf-8?B?Y01qcDd3ZjZLcGltUE1pRjdmbUhzUTk1TEJoRWx6QVpTUjZwUzZzTUM1b0FI?=
 =?utf-8?B?TXN5RFlJdmVuWXZFc2IrOHBac0hxUUZqNkhRLzdxRS91WCs4SnNSdEkvK3dZ?=
 =?utf-8?B?WXR6V3p6aXgzUWpEWGNZWWl2Q2RaaWV2cE40cDNhNFV2bEpvbzJma0NQbHg3?=
 =?utf-8?B?SFphUW9IRlYxL1JCWVQ0em1XV2g3K2p0SGhVOTNZRXpDWi9BWUczaXRnazNJ?=
 =?utf-8?B?S3NqeFJoOHZLTWdxUkhqTjFnYU5mL0FiZW41RWE0ZE9KdjJRVlhMRXhKMlZk?=
 =?utf-8?B?TVFkK0UyeTBLbUhQRjBBSGpzb2JYVWI2NDlqbDFYSStoa1pFNmR2eitlZXda?=
 =?utf-8?B?SEtaUzZJR1ZXczdQQXJPQldtUnVDMFBZYmpXU2I4aVE1TWQwRThmR21rNTdp?=
 =?utf-8?B?WXRmbmxHZkVKbGpGSjBqQ2FJNlRmZlY3a0NxVkQ1dzVMZzFmTDNQQmY2by9s?=
 =?utf-8?B?bHJyTERNck9jYnI4MjY1am5zOE1ubjJ3THh0b0xKcmN2eVA3clRaTit6cWM3?=
 =?utf-8?B?MVFQblIvQTJwd1hyamk2VFg4VlM1NTBNL1lkY0xtRVg3SmJxeFp3UjZOZExi?=
 =?utf-8?B?Rkk2OFdwSTAyRmM0Z2ErR2NuOStvQ2JTTThXYmFVRjJNV05yUXpLelRuMk5p?=
 =?utf-8?B?WHRUVzRPSkVLME5QUWdGMi8wYm1jT2cvNWxpemg3b2UwY2tnZm80WnM3WUx3?=
 =?utf-8?B?VDloME1yMG5NcnZPM3FEMERxQSsrYnhUZDlZUGd4eXNURmpqNWdWMEFVcU42?=
 =?utf-8?Q?+mP8Ekh8J1U6G3B5Y8lBMunCtfjOCESU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEFKdFoyYnUra05haVZGWXEwVlQ2RFVObmV6a1l2cnFwTHlXOWRKTndGWVF2?=
 =?utf-8?B?dlJOaFpmR0VOTDkrd3VBaTNsRzVCTHRRRk5zU05XU01qbmozeU8rdzFTMGxG?=
 =?utf-8?B?bjRkdFRVeVQzTGRUTXN1VDBqZDF0OUxIMTd6TWN3Smxpei8yUktodXBQVzM4?=
 =?utf-8?B?a042dlAzNGw5S28yZ2txc2ZtQnFvRVBnejlISmRGTTNtbVhHNWFPNDRmb2s1?=
 =?utf-8?B?bmdHMTBhTnE0ekFOb3BuVEd3WHMzVm9nRWZKaE1aYjBkY3JCazRQdG0vZVBp?=
 =?utf-8?B?eE0yZzJkNWpWVkZHeXREUHlmSTFGYVZ2VFZxSlNLeWpka08zVGxPTGlMK0R1?=
 =?utf-8?B?Sm42TGRCNWlqZGNCVHJKOVlTYmJWaGdtaDU4Qk5id3hzcGZhSlhQWDZtU3hr?=
 =?utf-8?B?cUhVZHI5MkdPNDA1Z05GSCtTdFhWZmtBOXEzYjJmamZYeHVBYjUxRW1rWGlY?=
 =?utf-8?B?bXAvSkRlbzljbXU0VnZjOHRqMkRhTjJoTThsalZULzNNdFBRK09oaG02bFhw?=
 =?utf-8?B?YThieHRBTE91QzNxajJrSzIrQlVYakFWOEp5NjBjTmQrc0p4aEhmcmdiVytk?=
 =?utf-8?B?TFJxclNrNHovdERYVDNiYUdoeUdXRURybWFKUmFzTDVBNnZRSnE5ZHlKd2N5?=
 =?utf-8?B?akluQlNCdzVHT3IxMVY4OVhFNGdhc25VY3JPT0drYnl0Q1l5M3RRQ1IzajdV?=
 =?utf-8?B?Z0xvMzdYeHhWVEo3QWJjRzRSbUpPby9pYWpVd3J5NU0rcHd6TmtpV0VoQUx4?=
 =?utf-8?B?UU8zdVpEUHBzUTZ1TG90ZDVjQk9VMldKZXlGNjRucnN4SEt0Z21hOUVxNjZz?=
 =?utf-8?B?T0NHQ3I4S01xd1NRbUl0aHM3MkhIYVhwMFdOd3FyWDZxdkYramhacXJiTHMx?=
 =?utf-8?B?NnM1UTJEaFVPR2NobkJYZ2l5U3lPalQ2VWgzSTByZVFwYlM3L3V4WFo3c3BS?=
 =?utf-8?B?SkorTU42VzBNdjU4cXppcWtqL0lKYzNJVzFKSFRhUitGUmgxa1ExU1NqQ2Nm?=
 =?utf-8?B?VlBlUG44Tkd4WVpMWXFVUldKNzFNbUJBdzE0eEtlQ2lUZjlnSFRrM2FJd0FL?=
 =?utf-8?B?Q3R4Sk11MjVCSjA5b1VTMWc1WGJvMG9lMTZoR05DYjFPV0dmaUFoVlVucUdL?=
 =?utf-8?B?T0Fsbm9JaUs3d1phTWIrejJWbzlaTnA4RmIzMXJCYk9zQ2NhU0FLUXFON3g4?=
 =?utf-8?B?R1dLRnJPalJUZEZuZTFYd3grQWIzS3dFMUthSWVlMi9jb1FxZzZlQUs2N2Yr?=
 =?utf-8?B?ZkhBR29zbnkwcXVjVGJBMW1BcS9XZEl6TVgwWUVlbDQvQTdBc2pUVEQ1M29p?=
 =?utf-8?B?MFM4eVFnMmc0QnRXeEJCM2xYc09IUUdjbGhRbFUwSWtSS2JUaGZjTXV6MGx0?=
 =?utf-8?B?WkllaHVPZ3VxSEhKKzgrdWxZK0J5OW1yUmt1Y2pLeWNBMGo5TFJVVjVpaFFS?=
 =?utf-8?B?OUV1akREd0l6MTdqZmIrRDk0ckNxOVFPOVlLWkhxUEpTQ3VWNkhEc0swNDVO?=
 =?utf-8?B?VGdwYmxIUGNKa0xqUWpGQkRwb1lvRTQ0d3hSSGJlcGlQYU1pd2tlSnQ0MkJa?=
 =?utf-8?B?ZGFieGZpOGI1Q285NGo1cVN0ajdnaFROY2h4MlE1QytWazNOVmtFSzU5TE5E?=
 =?utf-8?B?d0VQNnJXUDRCU0pXTlRSTUxkWFpEQjZBbjFxOFhQem84em1JMEh6TWtSc2Yw?=
 =?utf-8?B?ak9ZMXR3OVlUY1g4U3pVQW8vN3NtWE10emNKektpa0JtYWZsODJkWEY5TGdk?=
 =?utf-8?B?NXpNVi9lbGxKYlc4bnFSd0orU21xeml2aFF1WVdtVENJL0JFTTBrbXd3YTRa?=
 =?utf-8?B?cTI0dTJ3WTFWLzZ4Nkp0L3M0Sjd3ZURwZDZCTVpuVERUdUtJUDJIdFBXNTBE?=
 =?utf-8?B?M0pNc1VNSXNoK0Q2b09QMCtVOG02cTFQeDZ6Z0t3b3FMSDgvNXA4TXNuc01E?=
 =?utf-8?B?Q29jOUFQdjJvQkRGd0hXem9VYjJXTHhwVEtrMVJkald0aEhVZUtQVnJPKy9u?=
 =?utf-8?B?dEhSQUNtV25JVVF1WHZiM3kxMWhOVFFpOWU5ZXBOZzlmSlVZdHBiWmQyZ0Zu?=
 =?utf-8?B?dVFqVkRnd3NnSDllSUVNQ3JCYkRoQ3lPQlhJZ0pmK1RZdGQ2dmVQMHgzemV6?=
 =?utf-8?B?aS96VUppOE55OTE3OGN6Q3VlN0F0NXlpQXFaUmxJdGV4bnBGQVprU1hKUXdG?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 716ec64a-db14-4b61-d1c1-08de2ca213b5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 04:12:56.3257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AeIb6x+lJ6kE+gQbeM8Y7Zs36KuIxuvR9kk3wVNa2/a0TVMfpuGoPej7zhyHDe/KrkrDymU7p2ONe0p2SCEmToWlyR6iaqxXSEVQaWeeTjg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7898
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


On 11/17/2025 11:14 AM, Mitul Golani wrote:
> Add function which resets all accumulated DC Balance parameters
> whenever adaptive mode of VRR goes off. This helps to give a
> fresh start when VRR is re-enabled.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c |  1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 13 +++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h     |  3 +++
>   3 files changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 22565351b2ba..df5d1554538d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1158,6 +1158,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>   
>   	if (intel_crtc_vrr_disabling(state, crtc)) {
>   		intel_vrr_disable(old_crtc_state);
> +		intel_vrr_dcb_reset(old_crtc_state, crtc);
>   		intel_crtc_update_active_timings(old_crtc_state, false);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 7cb484dd96df..5e24ac3e6c75 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -624,6 +624,19 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>   }
>   
> +void
> +intel_vrr_dcb_reset(const struct intel_crtc_state *crtc_state,


Use old_crtc_state as the variable name.


Regards,

Ankit

> +		    struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum pipe pipe = crtc->pipe;
> +
> +	if (!crtc_state->vrr.dc_balance.enable)
> +		return;
> +
> +	intel_de_write(display, PIPEDMC_DCB_BALANCE_RESET(pipe), 0);
> +}
> +
>   void intel_vrr_send_push(struct intel_dsb *dsb,
>   			 const struct intel_crtc_state *crtc_state)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 66fb9ad846f2..1a11d288dfb4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -11,6 +11,7 @@
>   struct drm_connector_state;
>   struct intel_atomic_state;
>   struct intel_connector;
> +struct intel_crtc;
>   struct intel_crtc_state;
>   struct intel_dsb;
>   struct intel_display;
> @@ -39,6 +40,8 @@ bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_dcb_reset(const struct intel_crtc_state *crtc_state,
> +			 struct intel_crtc *crtc);
>   bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>   int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
