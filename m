Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E51E89EDF0B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 06:48:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9741410E469;
	Thu, 12 Dec 2024 05:48:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PqysbCX7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D65B10E469;
 Thu, 12 Dec 2024 05:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733982525; x=1765518525;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZZyzhxEtjyiE7SlrSsMBP10nybPgdJB09vuQRWkDvww=;
 b=PqysbCX7OpFUycKdnS9CAhxzTMBo5P3h30dxDo/0WFDv3RvL4da+7OhK
 Vazax6pn+0vT3EfXaOxk7V4PR0CWrEXMmJ/kbRH2Jm8z0ut172icWZ1ce
 Y4A41t2n6WbXtzc+x3MI1ck+bTSGgoEPjQXC1/Mt6XD2JHT6PekPl89YO
 aBtM1Z4sUKdj6vjpwzqgSGE3HFtj/guC0Kw935+R0F/iROO0i6dxexuyD
 iYBd3r9DK2b+dAykCcJoCg+dk2p5yu52PfBEQN07fvPpXfdTtVndyMWa4
 L3qZqlTJWsqxzk5NRzZCY7yghyVIFzWFTRjVjjtSyX0XDo8C+4uno7+7y A==;
X-CSE-ConnectionGUID: c1rlPNEtRDy21KfRF2pUxA==
X-CSE-MsgGUID: msAvx2fOS7+W5iu11sxVGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45793075"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45793075"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 21:48:44 -0800
X-CSE-ConnectionGUID: /smnYQ53Rxu1qF4NEzl60A==
X-CSE-MsgGUID: abWKqn/ATe+4QnTJ/KM8rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119351144"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2024 21:48:43 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 11 Dec 2024 21:48:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Dec 2024 21:48:43 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Dec 2024 21:48:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dtH1T+EXhRP3PiBu3Zh7RZkIbX2ZrV1pYgALNJVNxUZb6ua0Lr2nVcqmBc6DHfc8ytmsdX2ZcXrj+EUYZqlryMgSTEPqmOw1fX48UL3mLndeGFqJHQWpfoQmFiOHeqgV9fuJnNfIS2DddL6/rnPEbLXTNFCnxNgM08YzZYh84B7ux6rYZwjQIZ7YP0fi2AM5ggA8rZUmXaOvvl7NhYuVeYLSAK1DTBBMKeDSUzDbAS66lfJFWQP7G7zzk78cmX3yBcktWDQoqeeueoRSANGsR9hhBx88kmEKUUr/7WGdWlUV4czLn6W1GubYd4uq4FlOWhvaXTagFvema2BdW0tw1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4peJDU/GnACcsnusp2xL2s/I+2+NN/a69pRRACl8Xkc=;
 b=La/Qzapb1kuTV+u1o1DoXShDtHalgZ+mFh6S7AVw8DWM1ov3qWjfneuvBm9iX1YX6vcc4x3A0BuAMY+mOCXjiM+ChaB8AxqVYA+Aj5MxPQ0TOnPa+JRtfOvYKule2ZkRfMsPoO2SCrE5gvsNQntXPucyUEyekWKk1NMWebhE2RXW+wr02+TkiQA8SMQ/HXAhHaa/d3JSXw5Vy+qWf1//jUsCT2OpNzUH9sLSIzTmfEnd+uaGwpgU+TB+vdO/6CPCJo5EzVDCwn2GgZVRZbEcet/bYDXWA97VO7UFXNozYoHxbSiRB/p9ioWA4w73nzeM0HjkG8tGtIAK1CPcAeDJ6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB8469.namprd11.prod.outlook.com (2603:10b6:a03:57b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.16; Thu, 12 Dec
 2024 05:48:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8251.008; Thu, 12 Dec 2024
 05:48:35 +0000
Message-ID: <7ac335ec-ffff-4602-9787-566d31b4cc09@intel.com>
Date: Thu, 12 Dec 2024 11:18:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/i915/display: Compute the scaler filter
 coefficients
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>
References: <20241114101825.3413688-1-nemesa.garg@intel.com>
 <20241114101825.3413688-3-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241114101825.3413688-3-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0018.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB8469:EE_
X-MS-Office365-Filtering-Correlation-Id: eff2edea-eee1-4b81-3ab6-08dd1a709e38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NHloL1ViZDMzRHU4L3pQOXpsSWtLQ2lUQU5xa29kWG1vTlVobU5uUHAweHBm?=
 =?utf-8?B?d0NZOHQwZHcrRDdDRVFtTUlkTTBNeisvclkwTDFnc24xbFRGUmJFNHpLNW9J?=
 =?utf-8?B?Zk5OS0IxR1Y3UWJvRlRNUEloWGIvbUVuQnFOaUxWSXBoVW1zWG12Yzl6Ty91?=
 =?utf-8?B?cXJ1VXI4QWcvMndlbTVhWWR4amQ1MHYrOUZ1NWhkVGtmVjFldkpmT0VqUm5K?=
 =?utf-8?B?VW1KaDNXUDNjR01qTjBQVC9PL2lMQTU1cDJzYjgwcXA1TUZMVnVzMXdVRzd5?=
 =?utf-8?B?RnhQY0tTbFAvMU9WZkxJUWo0Ym5FTmUwLzd6amV0REM2Vm9uY1FYaGJtOS9T?=
 =?utf-8?B?amdvMG5pYmpyNWZFcEFISVdtekdzeUU0bVJ1ZTlFbTk4aGJsZkozY3RIZU1W?=
 =?utf-8?B?a09CZms4Ymw0UFpSaU05NzZyK2RTR3hvNlhPMkFtMVR4aFpLUXA5VHpFR1Ew?=
 =?utf-8?B?QThMUmJDZ0NPOFF6K3Rqek8rdmUyV1hLdFA0TlRtZmZ0ZVBiZXF0R21ZM3Fy?=
 =?utf-8?B?Qy91YUNZT0hRWFFMQVRHaXozNE5TZktKOG92MGQ2eDFNRGUya0xnRjRCV1Nh?=
 =?utf-8?B?M0JIaThicXk5dWFVc1ZaeC82S25NRHArdHcxUXNJL0tPdk9ITVlCN2VZbjUy?=
 =?utf-8?B?QllJL0JmNUdKL0NGaTBpSGZGU2VySm5DUDJlcE5XaHBTWnovS1p2Q0R3cG1I?=
 =?utf-8?B?alJlN3JXQWxUd0d1dk01a2FaVUJ5VjFXZ1c2TWpGb3FlcUJOcWxlMi90VVg3?=
 =?utf-8?B?VlFOOHpSZXBtei9FeEVoK1l2U2pCMjk4enIxWVE2VFlSSUM5NVd0V0NFa2V2?=
 =?utf-8?B?MXNRcVFTbEJxQVRjNFRPV2thZm5jVFk0L1l5cktLeFo4eThmWTN4M1JmclU2?=
 =?utf-8?B?OTROdDh3NHJjeXBLQm04T1NGRXkrT3pBNmdLVUdjMVV1RkhBWEI4OTA0YkJ2?=
 =?utf-8?B?MFpxbGlQcUtmTVBQTURheXNzYU1mZk9JbHZYS05DRzRSejhsOFRJRWFFTjF3?=
 =?utf-8?B?b0orTWU1K2wyMzBIWmFBd2Z5a05PYmh6V0JCQVgzWjlmenlzaHhqZnZZcThn?=
 =?utf-8?B?bnlaalRPVW5VMVF3SDJadkF0WFVHTXIyVGt3dFNVdC9yNUxQTUxyVG9SQmsr?=
 =?utf-8?B?akxjOElPTzg2MmVqNHliaXgvR3hDNWtTTzJlcUhzaHF6WG4za3gzWnFQR3Rx?=
 =?utf-8?B?ZllQQnZ5UEtRTzdKQ0xpVDQ2aGloajBHcE81QmFJL3ltWUFoZi95bVZPMW1h?=
 =?utf-8?B?MW15anFabXBnL2xmUkdDQlJ5ZDRiZGY2emZ2MUtzRjlxYVY1UkZwWlh1TmU5?=
 =?utf-8?B?ZlJ2eGpLaDBXajFBbk5XV3Bxalk2U3ZCbTE3RlIxV0pScWp0aFNUdTI2M1F3?=
 =?utf-8?B?TnBmNEtrSk1IZURPd0VGeUtZVTlkcjZOY09Xb0wrZTZudkRqK09QWVV2NUZW?=
 =?utf-8?B?UUEvZHYyQkZ2YVJKVS93L0FuZUZ0ek1iZ05qRW15V2plUFMxTDJQRFA0cTdl?=
 =?utf-8?B?TUwyS3hxdlZYMUs3ejZhT3F5VExRaUpFRUNFUWZ1SzFzcGlhMWI0REtMR1VI?=
 =?utf-8?B?QjBERGgvQmU2Vy9WMXNTZHpKRDlCMUMzd0dSRW14UVRwVjVnVnlmckZhTS9l?=
 =?utf-8?B?VlVpMys4T25tSEJXYjFRdUkzVE1uS3doMXVIWHdlc29GM2U3T1RHWlZoZkxY?=
 =?utf-8?B?aW0zcHhtK3FzZytRUmZFZEs0Vy9uUTJBTjBGQWNiQkhSOTRuUWNZQnVwaFly?=
 =?utf-8?B?UXVuNmNRVXJtcHZvcUxmRkQvT0xzNGJkZWZ6OWZoYWtoS3NPeDJZTUIreG9p?=
 =?utf-8?B?d25VSzBEcXFHTGtyZW5pZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RGw5bGxpVzVkYXRjOHlwK3daNVE0L2JiWksxcVZEZ3c0cWJvcXVCZ0JvMjVQ?=
 =?utf-8?B?QXpNR3F5cmFaTXdDdXYvdVBiRUpXeFFVVmZuN0libFVmWk9ITW9VR1J6SVFk?=
 =?utf-8?B?bXhrVlRKSXl0T3NkVzcza3U3LzJXanUvR3IvLytsVjRxL3RUMmNZb2JFVTJI?=
 =?utf-8?B?WFI0VXdWRjRIZDRRVmFjM2xLZDJLZjV5M2ord1JUOGdSbE5EeFpKYjZ6YTdh?=
 =?utf-8?B?K0g0cFdQUHFET1g5ZVdwT05vMTc0RXEwdG9GUVVrRFZlY0ZVQjhndlZvYkNt?=
 =?utf-8?B?UGdha2FIVFFvQjRQTm1NbnNqTWhtYmY1dnZkTGtkSkZRUjN3MGtTTXlNVlU2?=
 =?utf-8?B?ZjIxNW1KYmdlU3VMSmgzRkoyWWZUaFN6ajNGbEtveHlTSWRYL2hkdHVINVBW?=
 =?utf-8?B?U3NyUDZkMVBzRjZGeEZHaGdPN2VSTmNGZW9OR1AzVDBDYmVnWDIzblU4NHAw?=
 =?utf-8?B?M29RZVRhcTlkVFBrODByUlpTWVNraTJtYVdzUmhrampYWnFNb2Q4ZDR3UUJs?=
 =?utf-8?B?dDRDN0VRUTloakdXRXdJNVRSSHBRcVZyWTRhRi85V0MzVTRPZmdnNWx0cFlY?=
 =?utf-8?B?R0o0b09wbjM3TWF5U0duN1g0OElFYVBQaWRRTUhhTzQwSE1vNTNzWE9Gc1J6?=
 =?utf-8?B?MUJydzBYYVJVOHNuRHJhaXhUQTdYTWNmN3djaUhhZFBzZi95SmFYbk1lVWlU?=
 =?utf-8?B?N1dYcDEzVE8zRlZnajFXM2tUZ0E1M0FUakRkdmxGeTNWaE9PazF2V1pVbUlr?=
 =?utf-8?B?MVFpdURYT3g5MkRWVGxBZCtuREpWdUMyUU9oOWJqV2FDZ1NqUW52UlJyZGJG?=
 =?utf-8?B?MnRsNndGVVFVRzZjZlpMU3RWbTA0dkFpdGhLcmhMY2FOVm83cjQ0NHVnN05T?=
 =?utf-8?B?a3BMREliVHhlMWVtZnZsNjBOQ2RoM3Zqc3JwQWsrYXdVNFRJNXpkYkxybFRW?=
 =?utf-8?B?dHdzWVpubFFqVlArYTRUbHJNTnd2UURJMStGVHZTMmVNMDM5S0twaUxNY28r?=
 =?utf-8?B?QkVLSHl5T3hlVG1Lc0lkaEpkV0dya1haZlZQWFREQTZVWTl1VFJvUCtNcERE?=
 =?utf-8?B?QVhNdFVqYmZWY3FmTnpxeUJEZGFuOGV5a2dTTnc4Y3E0YkNmdnAxOEdVSHJ2?=
 =?utf-8?B?RWlnYnFZU0d3NWttTGZXMFUzbnlJSlIzR3gxRkhDTUg2YS95a01lakZkN2dU?=
 =?utf-8?B?WmpTYnhtNkRLL2xQakMybktta2JNcmdOc1M4bTFPMU5wQmxqeVAvY1d2azBo?=
 =?utf-8?B?R0M3UU5kbHdoWnNWUHdEOEhEd2p6ZDBJUlcyNHNiQ3l3cVVGM0QrZTVlc0U3?=
 =?utf-8?B?WnJxZHR1WExqSHZKcGpqTU5kdkpjVWY0elNVM3R3cVlXMkhiaElEdFVvc1Iy?=
 =?utf-8?B?d2NtOS93Yko2VG1tciswNlUvMXFDYWl4UERYWGdGRUVRcHRnMzJYTGtJRHpm?=
 =?utf-8?B?L1NPL001QTFhbEE3cjJyaW1KSGhDR1Rad3Y4R1RKMERhbHk5YzdJbnRSMHVX?=
 =?utf-8?B?V1dTM2F6V3BBU1d6MEJnRVg3dmJ6d1hHdmRnQ0J0UDRTa3FxT3hHNDBpaXh2?=
 =?utf-8?B?b0FKc3g0S0pkNmtaSk5kSEhjQ05Nc3lNSGhBRVRSb3ZNVThkZ1czaWZ0bU9K?=
 =?utf-8?B?OU1xeE9KU0p6NWFGUWM3YnREc2tRZXFDYk9yM2x6TWErakwxeG9nZ0NPL3JI?=
 =?utf-8?B?MnY0M3JVK2Z6T0lXWFJKbjdHUElYMzRmVVlSc2hHZHEvOEd5U2NRTDFQQjZp?=
 =?utf-8?B?U0NZUHQwUEwxWHdZc1BVbUJZOUh5NkFPM0NtVld6UTZ2VkRSV01MT1dkVVph?=
 =?utf-8?B?aUNjdlBDQys5eEYwQmhzd3ROdy9QZUw0eWZUdUxPTjNRWkdEaVBiOVFQVlU2?=
 =?utf-8?B?Q1pmWEYvSmRuNFZSM21HcEI5OXBPT2xxb01EeDl6a1UxVHlxY09rOWU1dC95?=
 =?utf-8?B?TFdJQVFxckxGY2dEVTI3ZXVISEFMU0kxc2lzaHdTMXA3Tml6eWc0ZzVRYzcz?=
 =?utf-8?B?ZnFuei8wM09FV05hMndYVlFtbU9NOVNBNXF4RGZCb2lDTUo0NCt4bS9KMnZ4?=
 =?utf-8?B?RUpvSmtDM3Z4OU9TZTZVRUlxelk2YlpHL2xhMkNYVVN4MXZqWUFTSXBZL2VK?=
 =?utf-8?B?clphUG5sVDJMM2ozOVJSRm9obnBHU24wbDQ3RExzZzBDU2gzeXMrKzVVekNq?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eff2edea-eee1-4b81-3ab6-08dd1a709e38
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2024 05:48:35.3276 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Km0lNnrYC2J46wv2pRToHykXZDhWYO8wNw44kw1sK2xabRNnySZx24z7QJwpiyooTsbA8ID5IHk/ULzbc9dnxh0VZgzD1SDnRptKPfXFAJI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8469
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


On 11/14/2024 3:48 PM, Nemesa Garg wrote:
> The sharpness property requires the use of one of the scaler
> so need to set the sharpness scaler coefficient values.
> These values are based on experiments and vary for different
> tap value/win size. These values are normalized by taking the
> sum of all values and then dividing each value with a sum.
>
> v2: Fix ifndef header naming issue reported by kernel test robot
> v3: Rename file name[Arun]
>      Replace array size number with macro[Arun]
> v4: Correct the register format[Jani]
>      Add brief comment and expalin about file[Jani]
>      Remove coefficient value from crtc_state[Jani]
> v5: Fix build issue
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> Reviewed-by: Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile                 |   1 +
>   drivers/gpu/drm/i915/display/intel_casf.c     | 128 ++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_casf.h     |  16 +++
>   .../gpu/drm/i915/display/intel_casf_regs.h    |  19 +++
>   drivers/gpu/drm/i915/display/intel_display.c  |   3 +
>   .../drm/i915/display/intel_display_types.h    |  14 ++
>   drivers/gpu/drm/i915/i915_reg.h               |   2 +
>   drivers/gpu/drm/xe/Makefile                   |   1 +
>   8 files changed, 184 insertions(+)
>   create mode 100644 drivers/gpu/drm/i915/display/intel_casf.c
>   create mode 100644 drivers/gpu/drm/i915/display/intel_casf.h
>   create mode 100644 drivers/gpu/drm/i915/display/intel_casf_regs.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 31710d98cad5..b3ca13df8c58 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -283,6 +283,7 @@ i915-y += \
>   	display/intel_pmdemand.o \
>   	display/intel_psr.o \
>   	display/intel_quirks.o \
> +	display/intel_casf.o \
>   	display/intel_sprite.o \
>   	display/intel_sprite_uapi.o \
>   	display/intel_tc.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
> new file mode 100644
> index 000000000000..d186dea75cbf
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -0,0 +1,128 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2024 Intel Corporation
> + *
> + */
> +#include "i915_reg.h"
> +#include "intel_de.h"
> +#include "intel_display_types.h"
> +#include "intel_casf.h"
> +#include "intel_casf_regs.h"
> +#include "skl_scaler.h"
> +
> +#define FILTER_COEFF_0_125 125
> +#define FILTER_COEFF_0_25 250
> +#define FILTER_COEFF_0_5 500
> +#define FILTER_COEFF_1_0 1000
> +#define FILTER_COEFF_0_0 0
> +#define SET_POSITIVE_SIGN(x) ((x) & (~SIGN))
> +
> +/**
> + * DOC: Content Adaptive Sharpness Filter (CASF)
> + *
> + * From LNL onwards the display engine based adaptive
> + * sharpening filter is supported. This helps in
> + * improving the image quality. The display hardware
> + * uses one of the pipe scaler for implementing casf.
> + * It works on a region of pixels depending on the
> + * tap size. The coefficients are used to generate an
> + * alpha value which is used to blend the sharpened image
> + * to original image.
> + */
> +
> +const u16 filtercoeff_1[] = {FILTER_COEFF_0_0, FILTER_COEFF_0_0,
> +FILTER_COEFF_0_5, FILTER_COEFF_1_0, FILTER_COEFF_0_5, FILTER_COEFF_0_0, FILTER_COEFF_0_0};
> +
> +const u16 filtercoeff_2[] = {FILTER_COEFF_0_0, FILTER_COEFF_0_25,
> +FILTER_COEFF_0_5, FILTER_COEFF_1_0, FILTER_COEFF_0_5, FILTER_COEFF_0_25, FILTER_COEFF_0_0};
> +
> +const u16 filtercoeff_3[] = {FILTER_COEFF_0_125, FILTER_COEFF_0_25,
> +FILTER_COEFF_0_5, FILTER_COEFF_1_0, FILTER_COEFF_0_5, FILTER_COEFF_0_25, FILTER_COEFF_0_125};
> +

This has some styling and indentation issues.

For better readability, lets have first line end with '{' and start the 
members from new line with proper indentation. End with '};' in new line.


> +static int casf_coef_tap(int i)
> +{
> +	return i % 7;
> +}
> +
> +static u16 casf_coef(struct intel_crtc_state *crtc_state, int t)
> +{
> +	struct scaler_filter_coeff value;
> +	u16 coeff;
> +
> +	value = crtc_state->hw.casf_params.coeff[t];
> +	coeff = SET_POSITIVE_SIGN(0) | EXPONENT(value.exp) | MANTISSA(value.mantissa);
> +
> +	return coeff;
> +}
> +
> +void intel_casf_enable(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	int id = crtc_state->scaler_state.scaler_id;
> +	int i;
> +
> +	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(crtc->pipe, id, 0),
> +			  PS_COEF_INDEX_AUTO_INC);
> +
> +	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(crtc->pipe, id, 1),
> +			  PS_COEF_INDEX_AUTO_INC);
> +
> +	for (i = 0; i < 17 * 7; i += 2) {
> +		u32 tmp;
> +		int t;
> +
> +		t = casf_coef_tap(i);
> +		tmp = casf_coef(crtc_state, t);
> +
> +		t = casf_coef_tap(i + 1);
> +		tmp |= casf_coef(crtc_state, t) << 16;
> +
> +		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(crtc->pipe, id, 0),
> +				  tmp);
> +		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(crtc->pipe, id, 1),
> +				  tmp);
> +	}
> +}

I think you just need to expose intel_casf_enable and 
intel_casf_compute_config.

This function should be static function intel_casf_write_coeff called 
from intel_casf_compute_config.

So in subsequent patches we are filling intel_casf_enable and 
intel_casf_compute_config.



> +
> +static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
> +					  u16 coefficient)
> +{
> +	if (coefficient < 25) {
> +		coeff->mantissa = (coefficient * 2048) / 100;
> +		coeff->exp = 3;
> +	} else if (coefficient < 50) {
> +		coeff->mantissa = (coefficient * 1024) / 100;
> +		coeff->exp = 2;
> +	} else if (coefficient < 100) {
> +		coeff->mantissa = (coefficient * 512) / 100;
> +		coeff->exp = 1;
> +	} else {
> +		coeff->mantissa = (coefficient * 256) / 100;
> +		coeff->exp = 0;
> +	}
> +}
> +
> +void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
> +{
> +	const u16 *filtercoeff;
> +	u16 filter_coeff[SCALER_FILTER_NUM_TAPS];
> +	u16 sumcoeff = 0;
> +	u8 i;
> +
> +	if (crtc_state->hw.casf_params.win_size == 0)
> +		filtercoeff = filtercoeff_1;
> +	else if (crtc_state->hw.casf_params.win_size == 1)
> +		filtercoeff = filtercoeff_2;
> +	else
> +		filtercoeff = filtercoeff_3;
> +
> +	for (i = 0; i < SCALER_FILTER_NUM_TAPS; i++)
> +		sumcoeff += *(filtercoeff + i);
> +
> +	for (i = 0; i < SCALER_FILTER_NUM_TAPS; i++) {
> +		filter_coeff[i] = (*(filtercoeff + i) * 100 / sumcoeff);
> +		convert_sharpness_coef_binary(&crtc_state->hw.casf_params.coeff[i],
> +					      filter_coeff[i]);
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
> new file mode 100644
> index 000000000000..8e0b67a2fd99
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_casf.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_CASF_H__
> +#define __INTEL_CASF_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_crtc_state;
> +
> +void intel_casf_enable(struct intel_crtc_state *crtc_state);
> +void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
> +
> +#endif /* __INTEL_CASF_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_casf_regs.h b/drivers/gpu/drm/i915/display/intel_casf_regs.h
> new file mode 100644
> index 000000000000..0b3fcdb22c0c
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_casf_regs.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_CASF_REGS_H__
> +#define __INTEL_CASF_REGS_H__
> +
> +#include "intel_display_reg_defs.h"
> +
> +/* Scaler Coefficient structure */
> +#define SIGN				REG_BIT(15)
> +#define EXPONENT_MASK			REG_GENMASK(13, 12)
> +#define EXPONENT(x)			REG_FIELD_PREP(EXPONENT_MASK, (x))
> +#define MANTISSA_MASK			REG_GENMASK(11, 3)
> +#define MANTISSA(x)			REG_FIELD_PREP(MANTISSA_MASK, (x))
> +
> +#endif /* __INTEL_CASF_REGS__ */
> +
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e790a2de5b3d..86d5f916dfe1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -111,6 +111,7 @@
>   #include "intel_psr.h"
>   #include "intel_psr_regs.h"
>   #include "intel_sdvo.h"
> +#include "intel_casf.h"
>   #include "intel_snps_phy.h"
>   #include "intel_tc.h"
>   #include "intel_tdf.h"
> @@ -6193,6 +6194,8 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
>   		if (ret)
>   			return ret;
>   
> +		intel_casf_scaler_compute_config(new_crtc_state);
> +
>   		/*
>   		 * On some platforms the number of active planes affects
>   		 * the planes' minimum cdclk calculation. Add such planes
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 339e4b0f7698..19a671848f42 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -909,6 +909,19 @@ struct intel_csc_matrix {
>   	u16 postoff[3];
>   };
>   
> +struct scaler_filter_coeff {
> +	u16 sign;
> +	u16 exp;
> +	u16 mantissa;
> +};
> +
> +struct intel_casf {
> +#define SCALER_FILTER_NUM_TAPS 7
> +	struct scaler_filter_coeff coeff[SCALER_FILTER_NUM_TAPS];
> +	u8 win_size;
> +	bool need_scaler;

Lets introduce need_scaler in next patch where we are using it.


> +};
> +
>   void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
>   
>   typedef void (*intel_io_reg_write)(void *ctx, i915_reg_t reg, u32 val);
> @@ -949,6 +962,7 @@ struct intel_crtc_state {
>   		struct drm_property_blob *degamma_lut, *gamma_lut, *ctm;
>   		struct drm_display_mode mode, pipe_mode, adjusted_mode;
>   		enum drm_scaling_filter scaling_filter;
> +		struct intel_casf casf_params;
>   	} hw;
>   
>   	/* actual state of LUTs */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 7a35be56b7ef..2458bad38e74 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2203,6 +2203,8 @@
>   #define   PS_VERT_INT_INVERT_FIELD		REG_BIT(20)
>   #define   PS_PROG_SCALE_FACTOR			REG_BIT(19) /* tgl+ */
>   #define   PS_PWRUP_PROGRESS			REG_BIT(17)
> +#define   PS_BYPASS_ARMING			REG_BIT(10)
> +#define   PS_DB_STALL				REG_BIT(9)

Its not clear why do we need this, also not used in this patch.


Regards,

Ankit

>   #define   PS_V_FILTER_BYPASS			REG_BIT(8)
>   #define   PS_VADAPT_EN				REG_BIT(7) /* skl/bxt */
>   #define   PS_VADAPT_MODE_MASK			REG_GENMASK(6, 5) /* skl/bxt */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index a93e6fcc0ad9..fbc45a66b429 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -260,6 +260,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>   	i915-display/intel_psr.o \
>   	i915-display/intel_qp_tables.o \
>   	i915-display/intel_quirks.o \
> +	i915-display/intel_casf.o \
>   	i915-display/intel_snps_phy.o \
>   	i915-display/intel_tc.o \
>   	i915-display/intel_vblank.o \
