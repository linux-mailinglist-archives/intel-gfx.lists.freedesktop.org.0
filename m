Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9639C1697
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 07:50:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6FF010E91E;
	Fri,  8 Nov 2024 06:50:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EIq0tOEc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACF3410E26E;
 Fri,  8 Nov 2024 06:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731048617; x=1762584617;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=mE6QFRGGk6RgehV768K9sJuXUP+nmNl7uv0Cwt6qB9Q=;
 b=EIq0tOEcatbDe9rFtXScaLXHckHOoMTDZB4hM4LwmqyHWSrlAq3GvNkS
 +YXEODz+/xfFe/ND1OUiGjPyRYug3DgdjOguvCscndp1hSI/M+QjeE/0I
 NZQH/DKZhZoRC4AJt4TU0THYgOlursWc+JmluNTfGoI+I9IBCHB8En2kE
 6I0DYa44h7ZNUzpU5MMdwLHnoxO1jNTadq5flX7ZLAFGXrj7ar8PJPR0H
 tCz6EEFjGASGbl6J1R8gJFXxV6Dq1UCOUoz7Lk85YzhviLY2wBuzmRQ41
 L39maRzlvXiOhHhSfl+70+TUUjQ9ElizBmsQHcMily4IHPSSKCypHOg73 w==;
X-CSE-ConnectionGUID: 8M38Hhe1QHitevM+m4Vg9A==
X-CSE-MsgGUID: 2JOoKGjkQI252u5y4f6zfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30883351"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208,217";a="30883351"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 22:50:16 -0800
X-CSE-ConnectionGUID: hlKT01YaT6GNVzazMubQMg==
X-CSE-MsgGUID: SfHIMBGNTXGEihsCr/Fo0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208,217";a="89381004"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 22:50:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 22:50:15 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 22:50:15 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 22:50:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dSAoMEZZDXqhPppJ0SPfXW/n9ETwYJj2j3DCRG7P//NeKZAvGRuSVFOAQHq6R1qoYnXtycd6oaKs9gWi4OzF1ulhQXTjLWw73dSI0lHcr7K1tvnmOOtOtzfLxd5dWoQviYOk3uriRzjY5cJvUVLLzUL3MrIzj8zffUdne9R8f8HEgvFDHmUPjt6sGKXOOi5BuDCL+q5EkhFoTVf0JwjvvuK+tZqwVJsZn5uzDnLix2g0IYxDO+StioDjYHAIyj64vXUiazYqZ+wJxNMzC7iWmwJG40O0Y5Y1ljNWK0SXrshG+8N+amBA6CEiHKuchWn0UAnI6nBwy8tt1EQiuz+YmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lvc2o3KoJTtBjbnlXVo8LfSOcef0IxcGqe8X36rPju8=;
 b=of415+5yDRIf7UJ6DPO/UszoC2qLyX9Wpd4YjovpibCLNFgVeOlJOQVGdNdu5KmNejqNcoNWQQtIqGlojP7cOzaWnNI+O1IA1O41+9QV/mqq1QoDBkSOqxAp1CUPdMGO2Cj3gpOP/TTFaESVW2ltqCxOmn1Av3ElEDSEAITvpBQ3xLFiiWvboe5YG57M4g6XNmMCBWxJgdo5S7OSinFmD7jovcoE9v6iDjG9sRHo2fTVGrlFSdkV87C7jgm8+GSAreSKtrQ8h87E1JlJydBEeEkIpdhkaOLC4R5WlccsVoONiIDbsubGyAem9Tsto1191dhsNc5rw0kJQGM0OVWLpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by PH7PR11MB6770.namprd11.prod.outlook.com (2603:10b6:510:1b4::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.20; Fri, 8 Nov
 2024 06:50:12 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%3]) with mapi id 15.20.8137.018; Fri, 8 Nov 2024
 06:50:11 +0000
Content-Type: multipart/alternative;
 boundary="------------i9A1aAKhuV4YIv0EtEUUel3H"
Message-ID: <5b6a3491-cde8-40f3-9e58-b6e3a5825fc4@intel.com>
Date: Fri, 8 Nov 2024 12:20:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i914/watermark: Modify latency programmed into
 PKG_C_LATENCY
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <vinod.govindapillai@intel.com>
References: <20241107113240.887316-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <20241107113240.887316-1-suraj.kandpal@intel.com>
X-ClientProxiedBy: PN1PEPF000067F9.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c04::30) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|PH7PR11MB6770:EE_
X-MS-Office365-Filtering-Correlation-Id: 9626350c-7949-46d8-f40a-08dcffc19774
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QlRaS2ZVeUNZYmk0MG1jN0s2aXd4Rlg0VDhXZXNOUmtQZHpTa1h5V0QyWmZR?=
 =?utf-8?B?dnN6dm1VQUNYR21LT1NxbzhBRUtWK3BaOTgzRmJFaGNPVExiNE5sNm81U1dT?=
 =?utf-8?B?RVpHYmx6QWxtWjJ4eVo5SjJZdzJUOENsUHdzcUlYSFZzS1ZKaXVaMnB3MHhZ?=
 =?utf-8?B?ekpiR3FtUDdmYjg4QWFZNThGNEN6elQwTzAyeEVDSWFYTG96RjdwRjJGeEZx?=
 =?utf-8?B?ckFLcjQwd3ZVNnQyOVpNQ1NqRHpEeG13S0NZU2lkaFc4WXBSUU4vSVgyNzRK?=
 =?utf-8?B?T2dPaEtKanhiNCtOYXBaeTBzaGpiODJDb0xSV296bE5UcEpxZHEzaDhjZmd5?=
 =?utf-8?B?bnFjcXVlcWRNQm5TeXB4TVNYaDdDVGpoZWJJSkkyTEhKVnl3V2hyUDE2Z0E5?=
 =?utf-8?B?RFFCVVVpMmVMZGcyOWM5OUQ3NlZDWC9WR1hzVjMvVjgxdmhLVHh1Ty9tS2JE?=
 =?utf-8?B?T2ZOZE9QdXV4MWh5Z2lLdGNBMURWTHZtWVVjYnlNa3V0MnlUOEtmNE8ycFFh?=
 =?utf-8?B?YmJBSFJCUnBqK0tFYmdUTkJkRHhsV0xpVHRjeXBId2QyOG9CaXZGeWVnSjcz?=
 =?utf-8?B?YVFGQ0xiWnc2ajZXWDE5WmRaUWtaUlhYcGl1OEIzMGY3TmdHMDJCTUZxakhp?=
 =?utf-8?B?b09pLzFPTWtZZkM0dHAxdTFuQjlyaHdrNktoc29sOS9hS2hGa1NOV3dRVGJy?=
 =?utf-8?B?MzY0ZWFwN09HcS9Ib0l4NkREMVdqUU9BOVFzbktUTDJ1TWJsU2dIVjg0aXc1?=
 =?utf-8?B?SitCYm9MeWxQSk85eG5QcGpTd3NHWDIyYy8rTm9uTmliUWRkNTFsZ1Q1cHdZ?=
 =?utf-8?B?NFlmRDZaNVNWVCt4UHJJTGIxM3NFRHVNRmtqL0hOYmhha2NDczNNVFR1dThQ?=
 =?utf-8?B?cDlyTVlDU0dmY1JzWW1XRTRyd3RyNXVkWk4zcEM2RGtGdFlKR0dDTVRCSHFC?=
 =?utf-8?B?R0syUkd5ZzdqZzVXdGZLZktTS2NlamlRdU15U0R2VFRPcTR0MnNtb3lHUnpy?=
 =?utf-8?B?MGFzUTRZTUdJZ2JmREJ0aVphSFVpcVFqelZsVFVpZ2hCdFVteFdQVDdDbThZ?=
 =?utf-8?B?eUVvUFI5YmxzdklHd0oxemVQMlFMTDliYXZyOVphdFB3enpLVy9MVTFkam1Q?=
 =?utf-8?B?RktSTzhtK29CY1NpQksxb2E2UmVDNkxPRlhiK21DaG5GdEM2WDd1UTgzdmpJ?=
 =?utf-8?B?SDJmcXJIR3dHbmZidHBieW96aXhvemJPYStKZzhIMWRVdGE0Mm1ybkVta1Rk?=
 =?utf-8?B?ZlZndkQweGgwSFFJR2tTZEV6QnVVNW5xVm10VHR6dTR6czJZRmdEY3dCcmYy?=
 =?utf-8?B?S1pIZ05Wa01IVHBEQkJaUmJOaXR2Y2lZTEJhNVpUdVYybWxsQlBnQS9Jbitp?=
 =?utf-8?B?TzBiNFZxc2N5TGN1TUIzalpKaXlBaXl0S3BmeG0rSndTc1IzVVgyazBwempt?=
 =?utf-8?B?dHVOK2prd21Gb1pLT0NKRUVXT1VWRG51TklzZVlVZXJzbC81dUhKVFFoMFBI?=
 =?utf-8?B?amVLNitZNkpGL2ZGdHpoRUhKTmV5Tm9nQUxvOU9hZWRORDRndlZKSHVoRU1r?=
 =?utf-8?B?bk52VTY1Wm1DdmplT2VpMDdZWFpwZFVZMnY1bkZtN28yUmFMNWROVWNaZFVs?=
 =?utf-8?B?MVY2VkxyZHJaWnp1RWFCN1V3VFZTdkpjODRUeWlxbEg2Tm1YSndIeWF2ZjFR?=
 =?utf-8?B?dmp5ZVRmLy8wYWhMNjlJL0xENWRvdGE2aTRzU2ZOdkRSc0oweWhkNCtUME16?=
 =?utf-8?Q?DmYXbo+U7P9Yk7ZpPGeaYiSeVMz65hIqxN0FIyt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VEVVU2I4VnNjdXBPRVduWGU1S2FaTHJzYkY0aFVnejlNYXVyZE5yVnZoS0VI?=
 =?utf-8?B?Q3IrbUhpZFJzS3ZwTFJuN0hxYnlkWmNFRUdtdGxpYVVWWEZUbDdFM2RZTFlB?=
 =?utf-8?B?WnhBTURjb0xvaldIaHJvdFpXa3ZtT01XWldXRUg2emlUT0lRT0Fqb3RuYzlS?=
 =?utf-8?B?cUo5b0VYa0ZiaytwbDlmbnJyQy8xcitRYmp1Rm93cC9Jc0lNcEpMTENXbmZt?=
 =?utf-8?B?Z0lkcGUyZ3BqY2NpeFRKZ0VZT3RyZVo5TlJsR2JqQWZvOGozT1N0bHFReGMw?=
 =?utf-8?B?WkNpekVHUUhSelA5dnZiYXdFaXVPWUo5SW91ejZqV3pnNVA2Mkk4QitEUDV1?=
 =?utf-8?B?aDI5Mk9rNmFCV3F2cjNNL1R1RVR0SjFqU2hYcWxMQW1uMzIvbi9mODQwZDNX?=
 =?utf-8?B?TE1paXdUbm1FS3M2bEx3OHB4U1VtZzdTV1F5VFhqQzJycFUza2pVR1liaTEw?=
 =?utf-8?B?QzgzbVFnWVJVeFpHUTlHM1NkeEZRR0FWVVNvUGJlYnBObVZWUXNDY2ZHNTB1?=
 =?utf-8?B?SURZN2VJd0pIZXZnZCtpaHZGK2crdm1mR25WRUV3b1FCUGpPaURFVEtXRi9w?=
 =?utf-8?B?YVBQUVFsQ0Y2dHRXSlUwYmdlZU1SRkNGY2N5aFBxZ0h4aUc1ejY0KzJTNXVU?=
 =?utf-8?B?RUhWclZ5cndVZFMwL2VYSFNHQm1xSzA1OWhQVmsvZVowa0R2RW9Pelp2dEhD?=
 =?utf-8?B?VFlod0FZTFlSWUpyeW5YUk9yelZiUXhvTEkxSEdwVEhYRlJTQWN3OE9zRlZi?=
 =?utf-8?B?b0NUSjVUc2NSUFlyUG1Fc1hMVW1YVGNsUEpNU1RZY2Rqc2FDMEZMbVBianh3?=
 =?utf-8?B?Q2JjSEE4U1pZQmZiNlN2WVBDTHBiWnNCdG9GdHhxVHJaS1lPU09DcEdMZkdJ?=
 =?utf-8?B?NDdCRmFsRm1tWUl0V3dzeGVUbXEyc0tFaXhHTGN0NjU1YjJyTC84YXJpOG8y?=
 =?utf-8?B?UE10c2lZd0RNSE5hSkcwUmdPeXVFRkU1ODJUejJKYkhUM3VXdXpWcFVCK3lv?=
 =?utf-8?B?U2ZyZncrdE91RGI3WXpuajhwMUR1Y0Q0cmFaK2V3bDF4Vi9ZNGNMdVNQUGc1?=
 =?utf-8?B?MGlnTjVlaGRKMHBxeEpscHMyYUVpUUUrdkF6anRLZFVjQW9JcmlOSEVKRkhr?=
 =?utf-8?B?SmlwbUhReTc1NXRxYndLOTh6WTUwU293cTFBM3E3UEo1TXQxRDFRbU10WTk1?=
 =?utf-8?B?RW5OQjZseDlZenFNdVNIODE3VS95K1hxTzMwaHk3VFMxcGJOZjN6bzRyczh1?=
 =?utf-8?B?cDA4cyttK2ZtQ0V3MXBMMUp5czdHRk50S2pKQlpNdXNqRmV3VWRCTEc0WnpJ?=
 =?utf-8?B?U1lBckdQRDk0V05ySWxiWGtCYVBIT0ptcDFqb2p3dy9yanFyL2pEQ3N3elE3?=
 =?utf-8?B?cnQ5ZEIwT0pYSTFFRlU0VWZONmNKeVNtd04ySGVrRWYzdTZaN3BRS01lK20v?=
 =?utf-8?B?WlBrWWFxT2N2VVg1Nm42QTA5U2svUkoxZjZOZWpVRzFQSnluZ3ZDQmVQYUlz?=
 =?utf-8?B?TTRyNjk2dDI2dmtQbGRHY2RWMWl0N1ljRTducWNiWVk5QVQwYUxkSlFRWmsx?=
 =?utf-8?B?bm9pdk1yZHo0OEt4RmJTcG9veXZydk04UnNJVnRqeDVEMm51c25EaGxkT1BO?=
 =?utf-8?B?bUpxeTZJUU9oNXJYT0VtL0xiR21lUHlCS3VtVk1xZTZWNy9nL1dkMktrR2tw?=
 =?utf-8?B?VFhqOUMyd3JzeHRUaFZoSk51WVg5NFdzSjFPRkVicnhQTlpoOTljOTJxVU1t?=
 =?utf-8?B?aXhmTGNKWDNiRCtiSUI2RlhncDNiVVJYbTBwOElvNVBwN0hGUWNnZUZsa1Mx?=
 =?utf-8?B?TXBEV2Q1OGVIamU4Z3F3elpQMDZCaXJJbHUyR05wVkFhM3YxUHhTOXlQaEpR?=
 =?utf-8?B?ODJpcjJOZ0Zhc1hpZm5ENTBUNTk2R2hKdzVzTDFjaUl0aGVqKzNPZFF6MXcv?=
 =?utf-8?B?R1FsNU1Tb3F2TVlacXRGUklvaGpWbG1FSGNNeC91MWhGTzI4VmJNR0VsdHlG?=
 =?utf-8?B?M08zQldJMEFUdGlNc3IwM3hwUFU2MmVNQXppRTVMSFQxWFZaZ1NMT3lmT214?=
 =?utf-8?B?czdjdkRrV2hiVUhoOWJjdTBoaHEya0tXOXJOOUx2dlg5Si9LUFZYOW1kWXVM?=
 =?utf-8?B?QnpobUtwT1BjbGRueEIzNzc3RGVkRmhvbExheVowem16VVlnZnZBTmZGcHRE?=
 =?utf-8?Q?xr/0ERF+ishpbiCKUbmD04g=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9626350c-7949-46d8-f40a-08dcffc19774
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2024 06:50:11.8129 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /wBgk47KR2QY+sDK1n/hdS/JRz/M9UO8RZHgqLpuI5OZfLMa/BldDYgXZhVHG66xfnfeNaJlHuCsei6ibaOp3TMfK/PQCLNQOwUzEf1Daaw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6770
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

--------------i9A1aAKhuV4YIv0EtEUUel3H
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 07-11-2024 17:02, Suraj Kandpal wrote:
> Increase the latency programmed into PKG_C_LATENCY latency to be
> a multiple of line time which is written into WM_LINETIME.

The commit subject prefix should be drm/i915/watermark (its i914 currently)

> WA: 22020299601
> Signed-off-by: Suraj Kandpal<suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 26 ++++++++++++++------
>   1 file changed, 18 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index d3bbf335c749..856b20a683fd 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2848,9 +2848,11 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
>    * Program PKG_C_LATENCY Added Wake Time = 0
>    */
>   static void
> -skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
> +skl_program_dpkgc_latency(struct drm_i915_private *i915,
> +			  bool enable_dpkgc,
> +			  u32 max_linetime)

Nit: This ^ argument can fit in the line before.

>   {
> -	u32 max_latency = 0;
> +	u32 adjusted_latency = 0;
>   	u32 clear = 0, val = 0;
>   	u32 added_wake_time = 0;
>   
> @@ -2858,18 +2860,23 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
>   		return;
>   
>   	if (enable_dpkgc) {
> -		max_latency = skl_watermark_max_latency(i915, 1);
> -		if (max_latency == 0)
> -			max_latency = LNL_PKG_C_LATENCY_MASK;
> +		adjusted_latency = skl_watermark_max_latency(i915, 1);
> +		if (adjusted_latency == 0)
> +			adjusted_latency = LNL_PKG_C_LATENCY_MASK;
> +
> +		/* Wa_22020299601 */
> +		if (IS_DISPLAY_VERx100(i915, 2000, 3000))

This wa is applicable only to IP versions 2000 and 3000. So, shouldn't 
we be limiting this to only those IP versions instead of the full range?

> +			adjusted_latency = max_linetime *
> +				DIV_ROUND_UP(adjusted_latency, max_linetime);
>   		added_wake_time = DSB_EXE_TIME +
>   			i915->display.sagv.block_time_us;
>   	} else {
> -		max_latency = LNL_PKG_C_LATENCY_MASK;
> +		adjusted_latency = LNL_PKG_C_LATENCY_MASK;
>   		added_wake_time = 0;
>   	}
>   
>   	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
> -	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
> +	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, adjusted_latency);
>   	val |= REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
>   
>   	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
> @@ -2882,6 +2889,7 @@ skl_compute_wm(struct intel_atomic_state *state)
>   	struct intel_crtc_state __maybe_unused *new_crtc_state;
>   	int ret, i;
>   	bool enable_dpkgc = false;
> +	u32 max_linetime;

max_linetime should be initialized to 0 I believe so that the max 
comparison works correctly below.

Thanks
Sai Teja

>   
>   	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>   		ret = skl_build_pipe_wm(state, crtc);
> @@ -2911,9 +2919,11 @@ skl_compute_wm(struct intel_atomic_state *state)
>   		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
>   		    !new_crtc_state->vrr.enable)
>   			enable_dpkgc = true;
> +
> +		max_linetime = max(new_crtc_state->linetime, max_linetime);
>   	}
>   
> -	skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc);
> +	skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc, max_linetime);
>   
>   	skl_print_wm_changes(state);
>   
--------------i9A1aAKhuV4YIv0EtEUUel3H
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 07-11-2024 17:02, Suraj Kandpal
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20241107113240.887316-1-suraj.kandpal@intel.com">
      <pre wrap="" class="moz-quote-pre">Increase the latency programmed into PKG_C_LATENCY latency to be
a multiple of line time which is written into WM_LINETIME.</pre>
    </blockquote>
    <p>The commit subject prefix should be drm/i915/watermark (its i914
      currently)<span style="white-space: pre-wrap">
</span></p>
    <blockquote type="cite" cite="mid:20241107113240.887316-1-suraj.kandpal@intel.com">
      <pre wrap="" class="moz-quote-pre">
WA: 22020299601
Signed-off-by: Suraj Kandpal <a class="moz-txt-link-rfc2396E" href="mailto:suraj.kandpal@intel.com">&lt;suraj.kandpal@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 26 ++++++++++++++------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d3bbf335c749..856b20a683fd 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2848,9 +2848,11 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
  * Program PKG_C_LATENCY Added Wake Time = 0
  */
 static void
-skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
+skl_program_dpkgc_latency(struct drm_i915_private *i915,
+			  bool enable_dpkgc,
+			  u32 max_linetime)</pre>
    </blockquote>
    <p>Nit: This ^ argument can fit in the line before.</p>
    <blockquote type="cite" cite="mid:20241107113240.887316-1-suraj.kandpal@intel.com">
      <pre wrap="" class="moz-quote-pre">
 {
-	u32 max_latency = 0;
+	u32 adjusted_latency = 0;
 	u32 clear = 0, val = 0;
 	u32 added_wake_time = 0;
 
@@ -2858,18 +2860,23 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 		return;
 
 	if (enable_dpkgc) {
-		max_latency = skl_watermark_max_latency(i915, 1);
-		if (max_latency == 0)
-			max_latency = LNL_PKG_C_LATENCY_MASK;
+		adjusted_latency = skl_watermark_max_latency(i915, 1);
+		if (adjusted_latency == 0)
+			adjusted_latency = LNL_PKG_C_LATENCY_MASK;
+
+		/* Wa_22020299601 */
+		if (IS_DISPLAY_VERx100(i915, 2000, 3000))</pre>
    </blockquote>
    <p>This wa is applicable only to IP versions 2000 and 3000. So,
      shouldn't we be limiting this to only those IP versions instead of
      the full range?</p>
    <blockquote type="cite" cite="mid:20241107113240.887316-1-suraj.kandpal@intel.com">
      <pre wrap="" class="moz-quote-pre">
+			adjusted_latency = max_linetime *
+				DIV_ROUND_UP(adjusted_latency, max_linetime);
 		added_wake_time = DSB_EXE_TIME +
 			i915-&gt;display.sagv.block_time_us;
 	} else {
-		max_latency = LNL_PKG_C_LATENCY_MASK;
+		adjusted_latency = LNL_PKG_C_LATENCY_MASK;
 		added_wake_time = 0;
 	}
 
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
+	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, adjusted_latency);
 	val |= REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
 
 	intel_uncore_rmw(&amp;i915-&gt;uncore, LNL_PKG_C_LATENCY, clear, val);
@@ -2882,6 +2889,7 @@ skl_compute_wm(struct intel_atomic_state *state)
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
 	bool enable_dpkgc = false;
+	u32 max_linetime;</pre>
    </blockquote>
    <p>max_linetime should be initialized to 0 I believe so that the max
      comparison works correctly below.</p>
    <p>Thanks<br>
      Sai Teja<br>
    </p>
    <blockquote type="cite" cite="mid:20241107113240.887316-1-suraj.kandpal@intel.com">
      <pre wrap="" class="moz-quote-pre">
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		ret = skl_build_pipe_wm(state, crtc);
@@ -2911,9 +2919,11 @@ skl_compute_wm(struct intel_atomic_state *state)
 		     new_crtc_state-&gt;vrr.vmin == new_crtc_state-&gt;vrr.flipline) ||
 		    !new_crtc_state-&gt;vrr.enable)
 			enable_dpkgc = true;
+
+		max_linetime = max(new_crtc_state-&gt;linetime, max_linetime);
 	}
 
-	skl_program_dpkgc_latency(to_i915(state-&gt;base.dev), enable_dpkgc);
+	skl_program_dpkgc_latency(to_i915(state-&gt;base.dev), enable_dpkgc, max_linetime);
 
 	skl_print_wm_changes(state);
 
</pre>
    </blockquote>
  </body>
</html>

--------------i9A1aAKhuV4YIv0EtEUUel3H--
