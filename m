Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F900CC393B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 15:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29FEC10E7F4;
	Tue, 16 Dec 2025 14:29:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="inn8Oeve";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF9B910E2DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 14:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765895364; x=1797431364;
 h=content-transfer-encoding:date:message-id:from:to:cc:
 subject:references:in-reply-to:mime-version;
 bh=UPam77rAKoxl8afQoebfo0TfoG+KMmreblEYbZiotC0=;
 b=inn8Oevezl/OBK2GMxUWO4WPmHV1g4ZtmPHADk633cgEP8DmiNXMhpr1
 xu6hBHmpzdb/IleXsSsOYnxr9OG62lmBZXcZbGuVt1CI/gB6ijbYCpFZJ
 pGg59Mb7hiMOMmRpmRAGhzaHrKxUjdP+qFaBnJGai78rn4xSIL19DuIGG
 R5/0mMpeMI5auqH6teTPnwx7+0NXBBHrUbTw8cCJ+ijLuAR79dVErArqT
 VzrYYLKjhl5sZD2jv1G0/NnN1L4hB5tQNgOOzwHmvKV0rvkX34PyvkYNP
 /gsCWDxib4WjA6f/56c+cLhmK324qHZT5iiI1+Qt9cmlsPP+H/v56rNtf g==;
X-CSE-ConnectionGUID: qanJ2tQDTG2mARKElJu6XQ==
X-CSE-MsgGUID: AlohlsQdRDCKAQXl3p0d7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="70392035"
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="70392035"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 06:29:24 -0800
X-CSE-ConnectionGUID: HPl2s6E+SJaO2pxrab9ISA==
X-CSE-MsgGUID: cRzucVMIT1u39kvFLSagmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="221417259"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 06:29:24 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 06:29:24 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 06:29:24 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.63) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 06:29:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JEGwDtg4TBgWmIqA8nedxJepTqIrHxLXUYYqJ3ccfyh6rdIJD4ypbw8lfKRIRmVZztBim5ljxL0Qm2wwHb+i4t+eXYei12tKVqufbBs2owMcH4aC9j5q4RqU0CIq2bP5cUbNFkUOZkhEE/VrMvV+CZLiYUykQQLUlmjzggSRfE7wcl/1XDeuuAiszZVd97GIchpTJZCzvc1S77CRF7gk2GGmkrKX8gbdUehEMojxsFsZIyFA+d8V00XpMLw7FIu9x/Psu0rLl3BgOW1xr8qBsf/EREjeCkat9XKp3stVvs9Wqiz/lWCpCJKRBu4GbJlmPf9cs9D7nCqLdHB/onyw6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nVQZ7qEAfyh7Bo4oQGy76QPQlJNytUiJybzVsWhBsE4=;
 b=A0wSsKcv5UV1RR8dceEtwxiBJqWPjn5akUffOisVbjBiVSLKoKdnaIgZHeFPwZI8Kl8dlwzMAyZka1u6jL2Rv1XID7RZa5F6ZcWHS9A9nKjk+M3oFdG8MfPvETZn7+jELzveIM2mOf4CutvKqKrlUdd+DONrGEuzgjr9Qpym24JZa9y+k+bAM1WqNMKgA71AeBKrArjx4OwkbE2lbPYII/77KCKC8bnOENxdQMuyKKe9gGecBx6WQ/ioNr4i2ONSqIJwaFjnrj/8893ABqUQ8OV+GDHjpz8oW4CYCoCmFw1It/euvezakuAdAbuNLJLDaIy8lvrv1zRvT7JKmYvTRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Tue, 16 Dec
 2025 14:29:21 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9412.005; Tue, 16 Dec 2025
 14:29:20 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 16 Dec 2025 15:29:24 +0100
Message-ID: <DEZPNV7Q1H6W.1LY5TZTH9MJZB@intel.com>
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <jani.nikula@linux.intel.com>,
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v2] drm/i915/gt: use designated initializers for
 intel_gt_debugfs_file
X-Mailer: aerc 0.21.0
References: <f662dbd6c43287ddc013fde1670653ad03d5f490.1765540658.git.sebastian.brzezinka@intel.com>
 <dektfs7tnmsyn5evuz3y6phudnqgi6eytbmwhpnlzwuxmh7qwt@hyw7zg7jrex3>
In-Reply-To: <dektfs7tnmsyn5evuz3y6phudnqgi6eytbmwhpnlzwuxmh7qwt@hyw7zg7jrex3>
X-ClientProxiedBy: WA1P291CA0001.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::12) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CO1PR11MB5089:EE_
X-MS-Office365-Filtering-Correlation-Id: 343902d7-dad2-4f67-e6fe-08de3caf8090
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N1dFMEdLWXRHdXdEK2Vxb1lGRGxIM0VRMVVFYllycEV6cUwvSW9yZU1CU0x2?=
 =?utf-8?B?VTVUMUozVGVTdlA3VUhtVzdHdGM1SVhJYjBkMTJpck1yZ0xDMmswcWRMQUhX?=
 =?utf-8?B?YzhCRXFneVdEeTdVckFMd0hCVjVDSHFPSWw1SnBoWm8yZ01MbHQyRnFmKzJQ?=
 =?utf-8?B?ZVBkL2dqYVRac2l5eWlHcmg1R3FnM0twVGxlZzJMRXZibURNQytQZXNTT3Zk?=
 =?utf-8?B?WnFaVHljNENMdnlyRTJMak9qbGdkMDRDKzJIenQ5TzMrNXZhVGh0c1g1MUpK?=
 =?utf-8?B?ZlJMYnpBakdJaWZldXRHTWRlQThpbWNaNWQxd0tBN0NkWkpzRFNkdi91dEFL?=
 =?utf-8?B?VlQzek4vL3l5bUtLMkhuQ1pQeUVzMi9KOUhKMjRjUExMMzVsN0gwV2VsWXp5?=
 =?utf-8?B?bmpLRi9KNTFxTjN4YTJMVUpXTjVFc0N1YnE1VS9Gb0FVSWxYQ2k2WUQydGNE?=
 =?utf-8?B?MEloaFV6VGs3cjNGR245bmo2VXJ2bG1JL0dwREdzU2J4MXo2cW9YNnNERk9U?=
 =?utf-8?B?OW10dXR2dDMzZlhRTFZUemVmZUtMV29XYkJ3Q3pBRkVTRUNSQU9OSVZnNHNp?=
 =?utf-8?B?OU5OLzNEOC9idE9HQjRWdmhpSjdOR09wVmhqTWZ5RHJleEJYK3hqV29jR0dU?=
 =?utf-8?B?YzJ1ZzQrUWZtcXdLWEFFd0cxTHczWjg0bXRCeFN2RWgzUkluV1dRZ1Q3M2FT?=
 =?utf-8?B?cHZDOHJzTTZ1N24vbkVWd3Nlc0lwUWFFQmdIckp4UWVOWXFOd1YzWHpscEtW?=
 =?utf-8?B?M0VtVzdVWnZFMnlWRlJzOFdhY2lLMlBtbm1zczV0d2hoQWJLcnBNZjNpUFIw?=
 =?utf-8?B?aFdjQ2ZjaTFvYUJUUHZFaUhzU2sxRzRGT3RIeVlUb3pObGRia1U1YlFIcnB2?=
 =?utf-8?B?ZCt2eGJIcVlTcDAwT3VadERyVkxWSTdHRVpmWGNEQ2JqOEFnTzk3UTNiZ0U2?=
 =?utf-8?B?QmxPZjExa1REcjhZT3FiWERQeHNCNnY1dmFIS01zcVpESFhrdnh2MlRCTkxz?=
 =?utf-8?B?YXRuTG1RcHFLSEs1RCtRd2pCdUFpVDJ4Qno2SVROU1ora1MzRTMyaTNJM0lY?=
 =?utf-8?B?WkJSN1FweW8rSjgrd0IwemVsdE9kYnFCU2YyN1VYYWR1WWdkNXV1a2lJOTdn?=
 =?utf-8?B?WmZJdFNhV0owTUh1WjRDZk9yTnF0MHZ0dHcxMkVHdUdYZlhtdDFMcVVnckZF?=
 =?utf-8?B?OVA3dVJleEVCSHJhd3JIUzBZMTVraklNTnNrSzhpN2xYeWxiaVFpTk9xSEtG?=
 =?utf-8?B?WnNHbEk3UUV5bTBuVkRiSDdQb1ZWR2VURTNqc2c4YVBqK000UDFGb3hyR0dT?=
 =?utf-8?B?bFFGQ2hySWNRV1JzYjcvUWtYNGlMRVRDZVFBdWdsQmZEbEE5NjRxRlZad2ZY?=
 =?utf-8?B?M0xVOHVDQ1F6dThsRVk2V3hiNW0xTVlraDdBdmZ0TFhzMGM5bUtPN3RNQm9o?=
 =?utf-8?B?dWwvQnlibHpaZHptSEIwSFlWckpTL2ZQMStNTUh6Y1VsNXZreThyYjVBYm1E?=
 =?utf-8?B?MTI5RTVtK0MvYWRabnBjZHJFTGNjNjdPQTFXaFRESVozb2pNRGlBTmNXZFlN?=
 =?utf-8?B?WE9BYVVGOXF6b2FqbWxIZ1VaWnNMK2dvSXc4SEowWkhkanRmQkRmMXkyeUhF?=
 =?utf-8?B?WWc2RWlwM1g5WStMSXRzWUpvT3JRRS9meS9IWloxd0w5aU94VjR2V2NXSGl2?=
 =?utf-8?B?NzBacmozZUhmc0srNUFSdHRsdGVGdk1YdWRSU3pWM1ZyazRMaXF4T2ZWeG1V?=
 =?utf-8?B?amZlUUNNQW8vbElwKy9PMDFrRk53ampsZFBDVFZRdDJtN29IMnpxbkdFeVhO?=
 =?utf-8?B?ZVE4R0NVejlSUnA4cjRZeUU1dWJOUE8rRlA1Y3VZcUp4Yk5mbDdOckpBTXFj?=
 =?utf-8?B?ckExMVdQV2FWbVp0MzF5NzZ1cmhnbk9DZFNmSy8vRnFNL2p5eG03T2N0Tmlh?=
 =?utf-8?Q?GLpRmnQj/qFjI7aj/sHJNtHuNi9yud0j?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3lMZG52OGRZcGtxYWhrcEczZmhYYk1oZ3lVY2lkQnZ1RU54TnR1c3JsR1Zn?=
 =?utf-8?B?QmVnc2pkNkl5UDNVc0lHdlZwcTV5VllGWElFcFIxSndjaDB5Z0N2YlpMWjdQ?=
 =?utf-8?B?WkJ4ZGR5N2lMT2VoOTRwT0pOWGdQc2ZuREZMTEZ2ZzBrOVBZNG9YMnlENENu?=
 =?utf-8?B?Yk5xYnA4cnA0Ukw1R0RuQXBneU5ndmFmaDdBTlVwSG5oeURtWjE2b1lJMnpk?=
 =?utf-8?B?MDJjYUZkQU1sTzBKZ083VWdXVkNvanhZZjJNNFJNSWtJYjBjL0xOMGkrYUlC?=
 =?utf-8?B?a0N0ZG9EeHN4UUdlZ2pEVVBweFU4SmE4Z2pRZmlDUzJMdTloYWxmMUR1OFZC?=
 =?utf-8?B?ckI4REViYmR4VTZwY1NkN2cwc3NGd0xKcWtCY1hzVDBDNlg2cUpvUlg0ZkMy?=
 =?utf-8?B?L05Kb1p0M0dORkUrcFErNGFqYXNaYlYwOHNHWldWTjMvR3dxODU0ekp4S3B3?=
 =?utf-8?B?RnVDZStYdHJCRVJjcm5rZjlaTHB3dkwvZjNueElvKzN2ZG56SnlCMXlKSnZw?=
 =?utf-8?B?LzhpcG12a2RJYmdaYVZldDltWSt5ZTU2VDBYT21CeU5UcTFHUm0xNm80MmFQ?=
 =?utf-8?B?WmtROGoycWROWlg2WjA1UjM2NVZVSWNqcU0vZTBzR0RSZ2FtUWZibXFxc3ND?=
 =?utf-8?B?dUpsQitjVmpHSlJScDR1YzNMUHBLa1BJeXdrTEN6dGxVMlgvVkNhMklRQmh6?=
 =?utf-8?B?RHNUQkVkWlk0dlVsRGVzU0d6dzFMb2owZ016cU9ISlhEWWJGS3d1ZVg1K3Ja?=
 =?utf-8?B?UXR6S1FaUGxJcXdOd2d4QkgwTSs1Nkd0Nmx3V2VhejFxcHVseXFlRTF5cEpB?=
 =?utf-8?B?UDB4M1FZc0ZPR21Fa2JpaEM2dEtQd2l2Q292R1hmcUFDbUI3OFp4ckphekZx?=
 =?utf-8?B?bE93bERZQXg0Z1ZSWWYrRUVmYnE4YXBqaTAyc2cwa3hVNm5PZ05UaHhCc1RI?=
 =?utf-8?B?dnAvd3c5NlBUUXpMeTJ5c0pxTzJHaGtxbzZJQy8wazNUbkd5dWVrUVZ5MG0w?=
 =?utf-8?B?aDhqMittajlxM2taaWJMeWE0N2dLS1VuNjNiWUNQb2VpTC9QQWVYcEw0d1Iw?=
 =?utf-8?B?S1NDRDJqLzVRQ0tBdFg5WXhVeXNGbGdWbGJxcmRIRXA1UVJoQVZWU2lSUWl6?=
 =?utf-8?B?TjRJMExwb0h0SndzUkFOZzNaZ1dqUXpYWHBsUWxCK1RMMzYzZHVSNlozTEZI?=
 =?utf-8?B?SXVOS0UyRlFlc1hyU2lKcmRnWVpEWU5BRzFzbEpXVm9JQktkUllPSWFVNG5N?=
 =?utf-8?B?TEJXcnhIWUlMUmNXWDFmUEhNalNCOUNlZGMzY0tzU1l3WnUvWTg0anpaQW9X?=
 =?utf-8?B?by96TS9vcGFjNDNDTEFZWmR4V0N0TGVzSWZXMlVwNWl1VU5MNFcxWkxabmYz?=
 =?utf-8?B?alBobkJzcFljZVdwL2YrelY1WSt1aStSL2IvY1ZWd1c2WHNaWDV3RzZMWC92?=
 =?utf-8?B?K0U1NGFYUTk2cmgzak1ybGVwU2ovcTVvSWlLcmpsVnUzbnk1RHBud3N1OWNP?=
 =?utf-8?B?cjgrb2hobjd2Rklxellsei9pUFNoZWN1SGpJbU9XTTVhQS9HaFRETzhDTkR4?=
 =?utf-8?B?eDJFSXpaMUxzSHJ6WFBqbjE5RG1mTisxYk9TWmVQOTZvQWZsNzlKRVZwL2sz?=
 =?utf-8?B?b1M3V1dwN0lkUUpBeXBkRmZreElNN0FJc2VieHRhdTRvSHM4eVh3ZkNlL2xR?=
 =?utf-8?B?cW81bVlPczVYNUxlVDhaZlZaT0ExWkxKVGk4SEwybU9TeXBPMTlaL2x2ajlw?=
 =?utf-8?B?eXA5UHRYNHFzWWlIUVpJWUpiSU9sZHlHKzZaSGVFVy9vb0hLV2hWV20vdWpw?=
 =?utf-8?B?bnhXSU4vanNVOFlXenVRWEZjY3RNdVBpRzBZT29BZzBZRmw0OUdiaDdWL1Ju?=
 =?utf-8?B?aFdjSDduOTF0RGNtUTFGYmVOODhZUE5yOGthMEVLS3dlS1VkakY4UWhSVkZQ?=
 =?utf-8?B?SlFJWVVvTWhqdElDdUczZTVGQTZlZjJhbTVWNGZxR1pjVHprNUpZWHRHd3hF?=
 =?utf-8?B?blBsZVdTLzlEalZWdEM3MDE0ZzMwTEl2cTZJbnNYVUIwVUJZVCt3d2ErV2Jp?=
 =?utf-8?B?T0d2alFYVEFGUTNna0VYaVBDOVRDdzZEL2pMZ3I5UzZJVzZScHF5UnVaaEFN?=
 =?utf-8?B?V3dEUGRXSkVWN1kra2FSeERJV2duNmlXWU9aT3RqcEhkKzBpTDJYOS9lNnlG?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 343902d7-dad2-4f67-e6fe-08de3caf8090
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2025 14:29:20.8477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gjum+92CtTST7cauUKYZat89nbt4NMv89A0eogckuZRb9HxBxJ+sSW7x/YbXXs4zVIGTib8TmWzYamwawuBAMjGRUUn4hkeABhiUrV0bAhg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5089
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

Hi Andi

On Tue Dec 16, 2025 at 2:35 PM CET, Andi Shyti wrote:
> Hi Sebastian,
>
> On Fri, Dec 12, 2025 at 01:01:57PM +0100, Sebastian Brzezinka wrote:
>> CONFIG_RANDSTRUCT may reorder structure fields, which makes positional
>> initializers unsafe. The i915 GT debugfs tables were using positional
>> initializers for `struct intel_gt_debugfs_file`, and on configs where
>> the layout differs (e.g., presence/absence of the `.eval` callback),
>> this can lead to fields being initialized incorrectly and trigger
>> randstruct warnings such as:
>
> nit: leave a space here.
>
>> ```
>>   drivers/gpu/drm/i915/gt/intel_gt_debugfs.c:75:51: note: randstruct:
>>   casting between randomized structure pointer types (constructor)
>> ```
>>=20
>> Switch all the GT debugfs file arrays to designated initializers. This
>> binds each value to the intended member regardless of structure
>> reordering or optional members and removes the warning while preserving
>> the intended initialization.
>>=20
>> No functional change, only initialization style is updated.
>>=20
>> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
>> Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
>
> ...
>
>>  	static const struct intel_gt_debugfs_file files[] =3D {
>> -		{ "drpc", &drpc_fops, NULL },
>> -		{ "frequency", &frequency_fops, NULL },
>> -		{ "forcewake", &fw_domains_fops, NULL },
>> -		{ "forcewake_user", &forcewake_user_fops, NULL},
>> -		{ "llc", &llc_fops, llc_eval },
>> -		{ "rps_boost", &rps_boost_fops, rps_eval },
>> -		{ "perf_limit_reasons", &perf_limit_reasons_fops, perf_limit_reasons_=
eval },
>> +		{ .name =3D "drpc", .fops =3D &drpc_fops },
>> +		{ .name =3D "frequency", .fops =3D &frequency_fops },
>> +		{ .name =3D "forcewake", .fops =3D &fw_domains_fops },
>> +		{ .name =3D "forcewake_user", .fops =3D &forcewake_user_fops},
>> +		{ .name =3D "llc", .fops =3D &llc_fops, .eval =3D llc_eval },
>> +		{ .name =3D "rps_boost", .fops =3D &rps_boost_fops, .eval =3D rps_eva=
l },
>> +		{ .name =3D "perf_limit_reasons", .fops =3D &perf_limit_reasons_fops,
>> +		  .eval =3D perf_limit_reasons_eval },
>
> For consistency, keep it in the same line, even if it goes over
> 80 (or 100 (remembmer that 100 is accepted)).

```
-                 .eval =3D perf_limit_reasons_eval },
+               { .name =3D "perf_limit_reasons", .fops =3D &perf_limit_rea=
sons_fops, .eval =3D perf_limit_reasons_eval },
        };
=20
        intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt)=
;
[sbrzezin@soc-5cg4303qqt drm-tip]$ ./scripts/checkpatch.pl -g HEAD
WARNING: Missing commit description - Add an appropriate one

WARNING: line length of 116 exceeds 100 columns
#21: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:597:
+		{ .name =3D "perf_limit_reasons", .fops =3D &perf_limit_reasons_fops, .e=
val =3D perf_limit_reasons_eval },

total: 0 errors, 2 warnings, 9 lines checked
```

In this case its is 116.

--=20
Best regards,
Sebastian

