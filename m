Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eLGmKraHV2p/WQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:14:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E9575E895
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:14:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=kfPQRrQ6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D771F10E1B7;
	Wed, 15 Jul 2026 13:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8641B10E1A2;
 Wed, 15 Jul 2026 13:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784121267; x=1815657267;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4QXrDZUN/5DokiTURiMiKxN2GqgI549FeqoiA+hykFw=;
 b=kfPQRrQ6mrvNeyaUqezIaxADu1SQPyCq6/Ar6c4eYAvVqqSudPTIahZz
 1jI2vSVcb9Vd+/lBK+zvLWwMGIbPO0mPh1t9WjsvDmYNsdA7llN92RyAX
 L0Sq4VvlwsIEviJWhn8xuave4eqbsPn+YNyYuZk/gQO/HQHre6P8sSkx2
 LYnIQY/UauC/XLhPpNOD8SQCpoo0ZB5LPMN5oamYFKc3JAZ2wpUkzMLuR
 50vEmuVQHuyPMurutXMEa40RXTfszPtvO5uBWMXC8CbwLTqm6WCn/NVP2
 LJHxUgpG4Y30KEIaOGaXAertrDQGngmBUsVZx5EbWaKNGGwyb3zmkotOs A==;
X-CSE-ConnectionGUID: R4VTvVyoQleRHzAsLCoAWQ==
X-CSE-MsgGUID: gkknNHAmR02XPggPulQxyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="83877555"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="83877555"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:14:26 -0700
X-CSE-ConnectionGUID: xDSAp84jRyehqEmqEU/s9A==
X-CSE-MsgGUID: fRR31FKNSwqkgXJ9AesIQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="260481030"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:14:24 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:14:23 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 06:14:23 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:14:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Phrz72TieV7xvob3QtD0kH0UjQOl8V5q1Ti1Of+LOnXj7D5SHLK8+0adVawOP6pxqXwR74E/kzvVy/mkjWptj7+5WFZ2lkew3VzU3NUCQlppV9UXUnU0TWQ38EI+XmT+bfUVW2fXjZgUYmrzBWj2MJvvSNtUf8/lFkPAjm2LWN2NzAMyf7YXV9IiXMdgPMDCSJkf9IjovggcdEJdc8MXd8Fk70ByI8GvCdlk6uKs5C+pFQOlrXcTxDWM838wD9Whpkr+lCG7f453P/hlTr+g9e61tHhRg+i5qlngydjiuNhnuolkNjMQ8eIgX5NlZE0bqriCniV4nsl4R+HTRapJaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dt4jD38uPnNWTJwQy9VVzX69yN/ElfFygN6Gynruxu4=;
 b=q2X8k09U8PeU+YXxGmwjI/cTxAhHieaIaPptuGn1nzG1ulRA8xEthTKgv/ra3UDumGHewEa7wfv9T+1u4DEPPWMF5SRreriUyAuVmXMgq10zM3JNRPgdIUy2OWqwInsTwgZn2e+uybLLYukfqn3K6exZEmLiaMZJAiciU97qadV3mDyfMZMoaC4E56MqSJiuc6CX6BHgmMG6LcbMw/givvyKSmshRCTMMgWiRR9fOJHxBpVtQ3V9/E6eTdB/IWOkS9qJVen+5d5lkiLnt+xEX0kDhVC7ROw4Djz8BsM51VlB3VWSatPgo0ig80FeF36IAa8PFo92yOfuRprBl6hOvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by SA1PR11MB5779.namprd11.prod.outlook.com (2603:10b6:806:22b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.12; Wed, 15 Jul
 2026 13:14:17 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 13:14:17 +0000
Message-ID: <2f104777-ac27-4a83-8a9e-196fd97e5f0e@intel.com>
Date: Wed, 15 Jul 2026 18:44:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/8] drm/i915/vrr: Compute CMRR fractional timings
 generically
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ankit.k.nautiyal@intel.com>
References: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260714103938.2371448-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260714103938.2371448-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0085.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::6) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|SA1PR11MB5779:EE_
X-MS-Office365-Filtering-Correlation-Id: 1812032c-6163-44bf-9976-08dee272f963
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|10067099003|11063799006|4143699003|56012099006|3023799007|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: MyCKZGmOIbR5FstUdp7klxmAZBtzN27pYMEPNIwC1g16NHsSBxACIXw6+/PsSKR6KWerRc96LSV7IjO5gDVG7q9OJ2PCbuYG7wohbpZrFhoBjaXkI3pESAdzOXf2fyVYpILjDDH2GUoC1LK4ulOFO5MJL/sp578/xAVqVO1bL+szm/q3VZ6o8RKA7tHl8CwWLMUtDtEDVm6gwBtdThcAKK+RtfWXvQh+RAZwHnn4ebAV9sEs49U9wd4+CjxRWXwre+8hUCzv5N2AatrQ3eFc/tKSoAfZWf1fx+ZRl22+A8ZyHoZ4+rPPc+XUZeF+OYJhS+MCh8Kfj2MK6DOdWbg2jvkYg3nqdY8erp2vsI49to6lGaPmsfd2/Y8T6lDfUdFTOZ3dlKREJvkfXtVIjM56c9HaGtPkl5GO/qLTfe+ybP4Sy8b9nNLs86X2LnhdLkbkMz7+RZ4EUL44+hhSeZzs+wqnYQ2dXSQ9oVZBp8ub9Te5bSHCZMB9EiyYg8kgOW2G5w0+a9vUe0/xjDvkth8WY6ltrCdxvT0c/4kPmSQWJ/ZGG//SGrp0P831OvA8fVqKXrfXPdhuYmSAWsdVTOVfW11HO0bmLu1lQrpHh81YZz6lyb/MbPEOCcjuyg6cLQBSAnFc6OfC/r5IkbC/fnUCrtTyqrjowXqaHLWnAdeuYgU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(10067099003)(11063799006)(4143699003)(56012099006)(3023799007)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2M5VlZnSGtYOSt6R1gwMWVRbW9Pc29lRVN2MTZTcjJJQWdDbVc4KzFNNWdU?=
 =?utf-8?B?YWdlcUcyK3UxczRLa3NVZ3dqR0xHR2RPcWljbnVPQ0hwcVNoQUZJWUhTVWg3?=
 =?utf-8?B?NEw3Rm5uR0pva1BVZnpLUm5JQVJlOTRJdU1NOXdSeFE2VVFGaFR0WE5OeThU?=
 =?utf-8?B?dGN4Z1hDeEJ0RHJNZ0E5WDRINEpZcGdLUEJwaFB4T3Z6aWtVVmxxVFRod1ZE?=
 =?utf-8?B?N1lXSTgvK1J5RUlYTSt3NGF6THhZaXpwcEhWbWFDRm1qWFpXSEUxNGlOM20r?=
 =?utf-8?B?TTdlZE5QMzUxZlkvb1UrWUptZHVaOWVvNEV2TDlmcGpPdlJEN05VZS9XdGw5?=
 =?utf-8?B?dE1La2YzNXhBcVFCU3YrUlNXRW44UXloV3RkK2djTHpiaHptUko4WTZDNUFi?=
 =?utf-8?B?RHZmcFFLYmttcE9OcXhZNks0TEhSMmRLaEFycWpncDBPWU5TeDd4bjJrb3pq?=
 =?utf-8?B?RTdNekg2WGV4b2hiU2pHYzl1QlFrVGhiWXVNQzd2dmRVZFFzV0FXL001M0ND?=
 =?utf-8?B?S25LVmwxcXFCRUs5RTRiNWRvdmFYZjBaaGRyc1RGSnY1aXVCdTNxVGtac2c4?=
 =?utf-8?B?dTlKdklXVlg0dGczNTJtdkRWajFCL0ZtSWtLL2hLdzBZMm4vOU5SekFOK2VT?=
 =?utf-8?B?MUExVFpjNllZdng0UFBleDJYWjFrcTl4TXpIVEpTaG02WXJvanpPY2dsMVhu?=
 =?utf-8?B?N1NYbXZjNWxZOThDY3dBUUlWWHljV2VnZFlmeHVGaFgzU1NhYjFzVDh2bXIx?=
 =?utf-8?B?akdYTVVzYk5rTzBFOFdPeE1COTF3ZGZNYStpWUNIQ045b2l5RkQzZjlLTzgr?=
 =?utf-8?B?MlViQmVwVmkvaW4zR21WdUNlZjYyU2lqU0xCcnhhZTdieVY4OHFtNlFsWjAr?=
 =?utf-8?B?UEszNEJkdGtvNE1tSnp5THJCaFJBaGZhZzl0OTJtT2FOZ1h4cW8vYTYwUy85?=
 =?utf-8?B?OExLRUduVmxaaTljem4wOXZzZmdGeTNRY1JnODBZWVdkQXJidzdMTUdZZEVW?=
 =?utf-8?B?eStZcGxBRGsxTkM0TVdNUGRFVlNyYlFxbFl1SE5NTnBVTml6N2FEQkM3OUtx?=
 =?utf-8?B?NE5HSStneEYwTWFqUFRpVW5XN0dPRE51MkFyNnB5VHlUSEdva0JIWXFGVkxN?=
 =?utf-8?B?UGtGdEJ1NUx6YU5FbFlkU1R1ak9TQzNVdGlZQzM4elp1UVl5TDV5UkVRY1Ey?=
 =?utf-8?B?SmhmRVNVVFdEZ3BOV0tLSVFSc1VEYjQxNnI1OHJ2SGJIWEJUaFN2RUZJdHo3?=
 =?utf-8?B?bDNkSUZvMTZJSm1PNUlpU3N0UDZyUkg4dm9EZDE4TFpnemJyRGQyamlidkNL?=
 =?utf-8?B?cDhMdzJ6MTJDQjdOYUJ4Zjh1VjVTMXl6WjhqUnVVWHQxbm1sdlo0a3NGK2Vj?=
 =?utf-8?B?ZTNWeTFHVXhFWW9oeXdxemJZVU5kMmxRUzlLTi9ZdUtjclljQzI5dDdhTzNa?=
 =?utf-8?B?UnRqbVJhQjBvbFhTTFpLS0kwZEVrNHViTi9lNW5TdG12Uko4dGRRS1pTSWRJ?=
 =?utf-8?B?Y2l5Qkh4d3E2ZnJGdm5kc1FINnpkVVVUL2U0VXh2d1E2MG9jN2tRZTJWVy9i?=
 =?utf-8?B?TEo1R1BhN0FGdXlaekF4cnAyeE5Dd2NoVUF3OWJwd01zSG43UnpHbmNPWDlj?=
 =?utf-8?B?cXBYZUJVMG9OOTNYYzNDSUZOenk2UU9Ib2NYZEdKNk1yamx2RVpDay9CV3g1?=
 =?utf-8?B?b1RXd1VYTnhtQzBXM2xzUUp2ejhhbzhPeGd1U1VMR2lDUGVuSEFwL1ljdFI4?=
 =?utf-8?B?R2lyT1FZd251UjJKOXRGSGVndllrSExxeUQ5UFgvaDI0WThrVFpuKzFjTGZP?=
 =?utf-8?B?NU4ycVI4T0ovbmI2N2FyNnkyZlQwKzhDcDdLNFVjU3FIZHJUY2EwR2J5b3gz?=
 =?utf-8?B?dmIrbk41bkF2MFhyOWVFRUxiSFU1SjY3UCtPNXdDTTBsRXlXc21LKzZSd21p?=
 =?utf-8?B?aC9lR2Q1RWlWcU1kUG82RGRxVjNJYzVKQ2pGVkpvQjZCMDh5akpsV3d4TGE3?=
 =?utf-8?B?dVRiVzJIMjhaeUdPUm40MFVaczRFUjhKVjVQU1YzWlZrNEZlcktUTkZNNDNw?=
 =?utf-8?B?Z3p2cXFwUDlYbUJCdUYvMldBclRmelF2cDdXQTRveDVyeWpCRFFVZkdSTVht?=
 =?utf-8?B?RGk1QTJuZFVRaWRQWWhoOUI5eDhSNlVjMHFqUW5jSldjQlorSUNDcWI5L3Vu?=
 =?utf-8?B?TEJTNmIxVXRranBOUiswSTBzL3VuRTVHZGpGUFFyOHd2K24yNFFqWmVud2ZO?=
 =?utf-8?B?T1VheGNsQWNjc0xMYnVEc1JRUHY3WVJ3OHM4Yy8ySjBBM3BXc3NwL3YvN1hL?=
 =?utf-8?B?TFRlYzhpVlVEaFhhNlZ3Ym1PZEpiaFRRbGVqLzN5YTZteUNMTUg1VU5acjVn?=
 =?utf-8?Q?Ck1n1lyLSuAFhY4rty/Hce5QC5FJVLjuUn43F?=
X-Exchange-RoutingPolicyChecked: kiVWv9k3KHMyeMJEikQ9udgu8pffHzboM7hHJ7uSB1OL4AvdAWTX9lpcUIR1mRbebhIe44qjTVTr+lyYYt/9fANtxLPlITw9+yQzqOrVEvooVeCvqTqRPOgkNfFeZAaChVFAZT3TJrXpW4u/5brdVWXfPRf2v5jLziVmh6LFYFbKs4H2cquY0EU3UB58OYlTWPFIgaHRl0DfUVyGNM3OCLZT5aZVzcWVykHF3C5StgX1dUHjrJVHwbV29qk4uICcawUBKwlOfgPSLzZENPFaahXmjtal4AVq+6Dmhvu3UvgJs4IxagmiYCWGGKjvQM4Rh4HTa0DYcSHAxGpd00B1tw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1812032c-6163-44bf-9976-08dee272f963
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2026 13:14:17.4796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XHeiU3gpOeYYxBrcqFL71B7oFoac/WyiRwj/ETuzd7oski3AmrMvAnDD7FaEvSD5YxEIPRdYgVnurOVfJClLdaFTcKwORVca4UsyPrOWzfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5779
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 05E9575E895
X-Rspamd-Action: no action



On 7/14/2026 4:09 PM, Mitul Golani wrote:
> Rework the fractional-CMRR computation into a generic,
> transcoder-agnostic helper driven by an explicit per-CRTC debugfs
> target, replacing the previous disabled, eDP-only code path. Compute
> CMRR_M and CMRR_N timings based on the video mode requirement. Note the
> CMRR enable path is wired up separately; this patch only lays down the
> generic computation.
> 

mention the logic behind removing the MODE_FLAG

> --v2:
> - Derive video_mode locally instead of caching it in persistent
>    struct intel_crtc state (Jani, Chaitanya)
> - Fix numerator unit in comment: milli-Hz, not kHz (Chaitanya)
> - Fix "reqirement" typo and clarify CMRR is not yet enabled in the
>    commit message (Chaitanya)
> - Fix precision issue while computing M/N ration (Chaitanya)
> - Multiplier_m and n naming update to increase readability. (Chaitanya)
> - Compute vtotal as it is required to deither as per algo
> implementation. (Chaitanya)
> - Replace misleading adjusted_pixel_rate to dividend which is somewhat
> relatable.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 128 +++++++++++------------
>   1 file changed, 63 insertions(+), 65 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b36026183399..25ce56d48bb1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -27,9 +27,6 @@
>   #include "skl_prefill.h"
>   #include "skl_watermark.h"
>   
> -#define FIXED_POINT_PRECISION		100
> -#define CMRR_PRECISION_TOLERANCE	10
> -
>   /*
>    * Tunable parameters for DC Balance correction.
>    * These are captured based on experimentations.
> @@ -191,69 +188,72 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
>   	return intel_vrr_vmax_vtotal(crtc_state) - crtc_state->vrr.guardband;
>   }
>   
> -static bool
> -is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
> +static void
> +intel_vrr_cmrr_compute_config(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> -	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	u64 dividend;
> +	int requested_refresh_rate, current_refresh_rate;
> +	int rr_multiplier = 1, rr_divider = 1;
> +	bool video_mode;
>   
> -	/* Avoid CMRR for now till we have VRR with fixed timings working */
> -	if (!HAS_CMRR(display) || true)
> -		return false;
> -
> -	actual_refresh_k =
> -		drm_mode_vrefresh(adjusted_mode) * FIXED_POINT_PRECISION;
> -	pixel_clock_per_line =
> -		adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
> -	calculated_refresh_k =
> -		pixel_clock_per_line * FIXED_POINT_PRECISION / adjusted_mode->crtc_vtotal;
> -
> -	if ((actual_refresh_k - calculated_refresh_k) < CMRR_PRECISION_TOLERANCE)
> -		return false;
> -
> -	return true;
> -}
> -
> -static unsigned int
> -cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
> -{
> -	int multiplier_m = 1, multiplier_n = 1, vtotal, desired_refresh_rate;
> -	u64 adjusted_pixel_rate;
> -	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	if (!HAS_CMRR(display))
> +		return;

We compute CMRR for DISPLAY_VER >= 20 (gated on HAS_CMRR), but looking 
at later patches in the series, CMRR only gets enabled when 
intel_vrr_always_use_vrr_tg() is true, which is DISPLAY_VER >= 30. On < 
30 the CMRR_ENABLE bit gets armed via the TRANS_CMRR_N_HI write but is 
then cleared by the subsequent TRANS_VRR_CTL write in 
intel_vrr_set_transcoder_timings() (it carries neither VRR_ENABLE nor 
CMRR_ENABLE), and intel_vrr_tg_enable() never runs to restore it since 
vrr.enable isn't set for CMRR. So CMRR ends up computed but inactive on 
< 30.

This needs a closer look.

>   
> -	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
> +	/* No CMRR ratio configured through debugfs */
> +	if (!crtc->force_cmrr.numerator)
> +		return;
>   
> -	if (video_mode_required) {
> -		multiplier_m = 1001;
> -		multiplier_n = 1000;
> +	/*
> +	 * The numerator encodes the requested refresh rate in milli-Hz, so the
> +	 * requested refresh rate in Hz is numerator / 1000. It must match the
> +	 * refresh rate of the current mode.
> +	 */
> +	requested_refresh_rate = crtc->force_cmrr.numerator / 1000;
> +	current_refresh_rate = drm_mode_vrefresh(adjusted_mode);
> +
> +	if (requested_refresh_rate != current_refresh_rate) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] CMRR requested refresh rate %d Hz does not match current mode refresh rate %d Hz\n",
> +				crtc->base.base.id, crtc->base.name,
> +				requested_refresh_rate, current_refresh_rate);
> +		return;
>   	}
>   
> -	crtc_state->vrr.cmrr.cmrr_n = mul_u32_u32(desired_refresh_rate * adjusted_mode->crtc_htotal,
> -						  multiplier_n);
> -	vtotal = DIV_ROUND_UP_ULL(mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_n),
> -				  crtc_state->vrr.cmrr.cmrr_n);
> -	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_m);
> -	crtc_state->vrr.cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->vrr.cmrr.cmrr_n);
> -
> -	return vtotal;
> -}
> +	/*
> +	 * A 1:1 ratio (denominator == 1000) means no video timing is required
> +	 * Any other ratio (e.g. 1000/1001) requires the video timing.
> +	 */
> +	video_mode = crtc->force_cmrr.denominator != 1000;
> +	if (video_mode) {
> +		rr_multiplier = 1000;
> +		rr_divider = 1001;
> +	}
>   
> -static
> -void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
> -{
>   	/*
> -	 * TODO: Compute precise target refresh rate to determine
> -	 * if video_mode_required should be true. Currently set to
> -	 * false due to uncertainty about the precise target
> -	 * refresh Rate.
> +	 * Let pixel_clock_hz = adjusted_mode->crtc_clock * 1000.
> +	 *
> +	 * cmrr_n = requested_refresh_rate x htotal x rr_multiplier
> +	 * cmrr_m = (pixel_clock_hz x scale_m) % cmrr_n
> +	 *
> +	 * where rr_multiplier/rr_divider = 1000/1001 when the
> +	 * video timing is required, else 1/1. The integer vtotal
> +	 * term is tracked in SW (it is the programmed mode vtotal)
> +	 * while the fractional part represented by cmrr_m/cmrr_n
> +	 * is tracked in HW.
>   	 */
> -	crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
> -	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
> -	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
>   
> -	crtc_state->vrr.cmrr.enable = true;
> -	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +	crtc_state->vrr.cmrr.cmrr_n =
> +		(mul_u32_u32(crtc->force_cmrr.numerator, adjusted_mode->crtc_htotal) *
> +		rr_multiplier) / 1000;
> +	dividend = mul_u32_u32(adjusted_mode->crtc_clock, 1000) * rr_divider;

By only using the numerator here you are never calculating the desired 
refresh rate.

> +	adjusted_mode->crtc_vtotal = div64_u64_rem(dividend,
> +						   crtc_state->vrr.cmrr.cmrr_n,
> +						   &crtc_state->vrr.cmrr.cmrr_m);
> +
> +	return;

redundant

>   }
>   
>   static
> @@ -429,8 +429,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	struct intel_connector *connector =
>   		to_intel_connector(conn_state->connector);
> -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> -	bool is_edp = intel_dp_is_edp(intel_dp);
>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>   	int vmin, vmax;
>   
> @@ -464,12 +462,17 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   		vmax = vmin;
>   	}
>   
> -	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
> +	if (crtc_state->uapi.vrr_enabled && vmin < vmax) {
>   		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
> -	else if (is_cmrr_frac_required(crtc_state) && is_edp)
> -		intel_vrr_compute_cmrr_timings(crtc_state);
> -	else
> +	} else {
> +		/*
> +		 * CMRR is a fixed average Vtotal mode and is only computed on
> +		 * the fixed refresh rate path. It is generic across transcoders
> +		 * and gated on platform support and a valid debugfs ratio.
> +		 */
> +		intel_vrr_cmrr_compute_config(crtc_state);
>   		intel_vrr_compute_fixed_rr_timings(crtc_state);
> +	}
>   
>   	if (HAS_AS_SDP(display)) {
>   		crtc_state->vrr.vsync_start =
> @@ -1136,11 +1139,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   
>   	intel_vrr_get_dc_balance_config(crtc_state);
>   
> -	/*
> -	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
> -	 * Since CMRR is currently disabled, set this flag for VRR for now.
> -	 * Need to keep this in mind while re-enabling CMRR.
> -	 */
>   	if (crtc_state->vrr.enable)
>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   

