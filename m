Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB0F95A05A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 16:49:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C41E710E650;
	Wed, 21 Aug 2024 14:49:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CwciidFA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FAD810E650
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2024 14:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724251750; x=1755787750;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R3MRHYwN8JvDxf1qTsHiEtN0vrF7+FeWIcvA7yu9OMY=;
 b=CwciidFAclxQKLasK/1WSQRQknyKE3IrUuPIBleypcIDmt9nOIXRRLZY
 VUSojjss0Iru7RoCjUKgwrsPHlGb0bR9aaEerAnkpeMBpN4KbwgEC2u4h
 ZM8soW0v2dh9oRoMmQqClVWlc9xC/9PP1zv9dDCBdnF2SrthhbzL8c1MW
 b6BSF0EzBMmXvJlLo76qcmLQnpAMok8U5S/Q/yRwFb7pW76RKABpsFrhP
 /nqXRLP9dcPFbRmaYuOpRF6HppH7jrr4fJSh5zllm5i1WBz0AnyHE8XLX
 N3CTFobwRLTC2mjUUlJgtNIP1p/0F3dMK0FZHZgP7DdmEqo1IxYce9wBy g==;
X-CSE-ConnectionGUID: VAUDQAEsSI2G3ucAa9zNnA==
X-CSE-MsgGUID: Gtp1wD+OTZay+QNhc2y7Bg==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="33233723"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="33233723"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 07:49:10 -0700
X-CSE-ConnectionGUID: jYXsIUUCTtWmdOTii4XHIw==
X-CSE-MsgGUID: w1V2JCXrQbi0aE+HjVjrUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61249739"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 07:49:10 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 07:49:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 07:49:09 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 07:49:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MCp56EMegpho822cmwJHOYpTXalQo9n76Dn+wkCejAG6awxu6os5Y4vzHmbTErNqXdJ3hNcpZ9R7aXuuFKRKftrYyG+SnZUQPM1lQAR1TxktOzfxJYquowab3ZS22t5GxTZoCzibPIhBv4sYEOXpgbrHqA3Q1Mw0nSexxKykzP7BpS4XNS/QFlowHdt1899ZZGpUKtcGQxd2M6zHn00hEhzixftp/kJ8pGMz7EPsHrjvKa6c9Rac3DbUg8p/zeM8DVd9XAomwgy7upYd23uBRbPW9g4g7yC1pxHAewsJyaIvcuHcdj11CcRojQBBxX/EKJJ3QHPtcAPFex1hnBJ1Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=INvzurkGry1c/zNtWVq3TULOZkQbBVuSui/TeAZqb10=;
 b=h0KxSGjWLeCf1l+mx/DRLtfSYmOAfFIB3ndSZUEpZcM1RqSfQ4NZ7vXMTUe+cZkFTm5qB92lGyrYNxZlZu6NcoP/SJq3rYBOT39LzJ4X7yq9JO2kDnhj3LEnWPvRdHcmhAnBBv2Oepiu7oCh6RvNw+IHXenwuMxJGNjKtpxBg40wDw4gHKYHH6QEmuMQb0hCFLF1j9upG3GlX4TYQkHZuzCoG0AtUEzmI83HarIqaGEitS8h9vPc9KZ/QRMpCjlURDKUqWyWvMoDvNQvl5Qqv9njNafOvkLU6ZGgtgNmTd7UBcyQf+xu5/S+Z40OQlwcaLqxdzC+PyaJQ791M4b8yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV3PR11MB8554.namprd11.prod.outlook.com (2603:10b6:408:1bb::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.16; Wed, 21 Aug
 2024 14:49:06 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7897.014; Wed, 21 Aug 2024
 14:49:06 +0000
Message-ID: <e4f78f55-d7c5-4b06-a6b1-2367b5e1e032@intel.com>
Date: Wed, 21 Aug 2024 20:18:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/12] drm/i915: Add some essential functionality for
 joiners
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <stanislav.lisovskiy@intel.com>,
 <jani.saarinen@intel.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
 <20240718081803.3338564-6-ankit.k.nautiyal@intel.com>
 <a1d82f03-960f-412c-b693-6e2ace5e9a55@intel.com> <ZsXui4i5ddsjS0sc@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZsXui4i5ddsjS0sc@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0114.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::32) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV3PR11MB8554:EE_
X-MS-Office365-Filtering-Correlation-Id: 59a03a2a-9c84-4285-1646-08dcc1f06844
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UVRWZm1nSUYvVkF2ZWhNWGxocE82dnZLdWczUWg4M1JKdTlNdkZhWEg0ZjZR?=
 =?utf-8?B?RHlLQU5jTXhTMjBsYWx5a1FFRE5MQ3kvQ08vQXUzN1Vxck9pY0l1VW1RaG1v?=
 =?utf-8?B?NUtpVUNxNFYvYzV4WlhTR2YxZVNUcmFSRTd4SXRlc3hnSFB2RCtLMnRINjEw?=
 =?utf-8?B?cS9rODV3cWtuZWM0cDdLQmZyeVZCeDM0N09SNXVXT3puRnVtRXlWbnZBZGU2?=
 =?utf-8?B?eFU1KzYzOTlTNXoxT1FBcmpxRm5tcklTQWZxSURXZHU5VWhiNWFZWGRQWU5n?=
 =?utf-8?B?ZC9QSXFyMjZLMkY3U2hZaU5DSzU0UWcxK2ZVcDNmZk9KcEdwWW1pNkJmbE94?=
 =?utf-8?B?N0daRHQ0QkdDTE9EQXlTaXRrc1ZqRVBFREhpY0pjazNJRGVEQVdxRXhhSmd3?=
 =?utf-8?B?MU1SOHVBR0Q0dEdDSnZNRWJpcmlTOU0yeTZDNWU2TjVKcFo4aXk0S25NbVg3?=
 =?utf-8?B?a0swSisrNHZKbFJ5b3kyVFI3RUo3U0EvQ1pJVWY0VHJKeUxuSmVwT1Q4YjJV?=
 =?utf-8?B?VjZEUE1yVkRaK3dtNWxvZTF3Q1FaUUNrOFRDOXhob1NkT2lMd0EvcjZPNXU0?=
 =?utf-8?B?cjc4VnVGaGw1WDNRUlYvOFdURksxM0hkL0FabTFpUlIvUWtFTk1LTkkyY2Zj?=
 =?utf-8?B?c1FETCtlT0JsT2RPSDlRaWJ6Zk1FY1M2NnFaaEhWQ0lYekxzeTBmWERJY3o0?=
 =?utf-8?B?ZHFFRExnTXl1UzltSjh1QjhuaXZ4T1lsREpIcDNUVFNMWWRKSWJ1ZTNrUTR0?=
 =?utf-8?B?SzBDaWltYzUzelI1R2Y3WWhTYnh3bnlJSWdGNm0wZlNmYzQya2xRc0h6ZHc0?=
 =?utf-8?B?SWNOODhNWWdUV0dIT1lvQzJJSEMvQS9qd24yN2VpOTlrbTBqYVNHOTN3L1Rw?=
 =?utf-8?B?ZDJ5Z1lQeFhqejlsdGJHWmVQZTFVVEcvdHhycEpLcFRRYVVqMzE5MjVGZE14?=
 =?utf-8?B?ZkZic2lPanhqTGF4M3hhSXBrS0lzanlMdmJmNjUvakRudkMxQkhXQzZvWnNY?=
 =?utf-8?B?c21BS1MrbjlaaWRyVDl1b1ZLei9NS0VoQ1FacXFFVC9icTZaOUZVUTNGWVh6?=
 =?utf-8?B?aVVyWDdLbjd6eFFsSUhoczM0dEpXUTJNSnhYSmEvNVdnVytYK1h3RWFqWkFH?=
 =?utf-8?B?VVNIWnI4TkloSFIzVGZlcENRckVIeVF2bVc0Zi92dVEyTlowYnY2djBubUoz?=
 =?utf-8?B?OVk1eXpBVVpvdVMwNW9rYjh0SnE2L09hOHB3WmRVOFhDWXdiSkxwL05DYVJN?=
 =?utf-8?B?eXJKNW5xMGZRV2kxb1BUNUZlREx1Q01vdlpSL1JGbTZEM1F1OXlmblVPLy9E?=
 =?utf-8?B?OFNJY2xMcEp6NXg5blcwTGNFZjZIUTYwcm1aNVUwMStaRkZ4UjlWTEZMdElX?=
 =?utf-8?B?YlVXK29SWlRyTXhXaWpZV2tLRGl3a2wxS0dBejFSY3pzbmYrZC9aQlkyMVJL?=
 =?utf-8?B?K0FsMys0R3RFalFqVTdGYS8zTjc0QlZvMExxR004Y045Qnc5OFdNdFNXWTZZ?=
 =?utf-8?B?NHk5b0RzVjRUMjhBWjc4VXlER2x6azhYU09rYVljT2ZvNnN5eCttM3czRDF6?=
 =?utf-8?B?WHlZeVJueEtQc1FXRENpN3pwR004ZTVPZEltMHg0Vzh2TTlGd2h6Z1F1R0pD?=
 =?utf-8?B?MHBCSGJObmJsSG94bHZ6ekV6ZVZqSm5oTDI0TStlU1FPdHlHVkZpdGUzNTEx?=
 =?utf-8?B?Z3J3WWFLS3ZFNlVyRTBFVDhIc0FNaHdDMjVSMm9mK3h3SHBocEo1eXNzRjZD?=
 =?utf-8?B?WWlLLzl3bGg3bkwvZk5hZ1BLa0lPYlNWL2J3czVKbWh3alZ6UnJwTEVRY0JZ?=
 =?utf-8?B?cVBKWlNWSEI0aVFJdklEQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dE5ITkh3OVdmdUVrdUEvOGQwdTFKVzZpWklDMWxUcHdxM2xkL1lRMXd2UktY?=
 =?utf-8?B?RDVMQlV0dC8yQXlCR0xaZERmbmFiS3VxNjNFVWF4b21WNWc0VWNid09MRkk2?=
 =?utf-8?B?S1ZTN2NEejZkWlB4UzkrdjVLbHZIOEpKSXIwRFJxTzJoRkYrdlhCclh1ME9E?=
 =?utf-8?B?bHF4NjRHcE9GcmZ4bmV5VUhlNytOVldPZStwcVQ5MXpzMVRXVjJPZlN5V0c5?=
 =?utf-8?B?cWRnc3JCRmwxUjZOS1VYUHlCWVdGRUsrSTFiVVdiZHd5NzgwYklOQzhJaU11?=
 =?utf-8?B?UU15M1NOSDc1Tkh0a2ZWVXhmTmJIdVM1RXZWdGE2RDByRmNqVWlwdXN2aGlx?=
 =?utf-8?B?a3h6MkM5b08wQnlFQUJoQXJabVFnZ2Z0eDhyK1dkNHhEbEFRSlhzeUJNdGJT?=
 =?utf-8?B?VjVkdVV3ZHpZOGlPSkp1K2U5R0FFZFF0dzczVDlnUE5iRUxuQ1JXeEg0NGdp?=
 =?utf-8?B?ZGFmL3o5amtFeFlGNFBucjFWWTF5R1RSa2RCbjFOU2dEZHVSWndJNVZUdXhp?=
 =?utf-8?B?aWl6aFRJNXhyc21ZeEN2RmhDRFYvZ3R2c1pEZ2xRL1R6RWtpRzJBRE5OSldW?=
 =?utf-8?B?NEovQkNONjllb3Rjcm53a0MweFE1NHdzSEplSnpveERycWVqR0h0TUhlR1hz?=
 =?utf-8?B?allSVzVXNTZRQjZ6RTc5U1BYQVErK0VZaEJpQmdRUk9LS1gzZkwxZXZFd1Mz?=
 =?utf-8?B?QWd5L0JGNG1EK0VoL0JySlQyRU84UHVoMjkwM0tPMmNMaENUZnpqcG9FTnZH?=
 =?utf-8?B?MFlaY0JPOE40cGF5WlZzQldjUVdaYzhseUlnaGxWYzNPYjRQK0x1U2NMQm81?=
 =?utf-8?B?U2tSMERZOWxIOGp2UW9zYW9XdExzb3NLbkJtSU1xRDhKNHl3c3FhVGNZVHZh?=
 =?utf-8?B?dENJSFVNOXRoTERjaDVsdFFkSlYxd0RmUlJCT09BUXBiZHhjUXhJM04rb1Uv?=
 =?utf-8?B?ODNpdDN0R1M1dTYrUzRpVHp6bTdEa0RsbmdOSHNrWS9HZnhMTzNNMFQ3WmpO?=
 =?utf-8?B?ODVnaXdpZDdEZVZnaGVMYk41bEc3SXVuMVVQWHFDbUtlcXJ5aVAwam13TlNI?=
 =?utf-8?B?bzRwL1Rwa3dTQ1BmSHBaSk1VOFhnQ0pWYXFxWHc4b2FWWjdCK0o3TFcvekg3?=
 =?utf-8?B?UEdBVnNMdnBwQnF1MHNROFd0Q2JxRk9JeWY2dUhyL2p0YXBiaU1LREQ5MGNG?=
 =?utf-8?B?cGEwdlA1V1BXU0c3cFltdG80bVZ1VFdETXBmb3JzdnlLb2p3ZlBWcjJtb0ll?=
 =?utf-8?B?ODAvMmxRaGhIWXZYSjhMUE9JSEpvQU1OajhNOEFneitra2FXSDNuRy9hakhI?=
 =?utf-8?B?NU9vQ2p1TFkzL0JYVUFUMmNTaTVJamllSWlsS1M5S2RYSGY0ZUJDTlNwdFRj?=
 =?utf-8?B?ZngzT05RTHBHTFZnVms4VlB2aytLS2RtcmNUdTFZTTZFVzFucVBIb0VoUllO?=
 =?utf-8?B?U0NTZkIyZjZEaHNzV09sMGRMY2EyN1ViL2JtRFF0L0VIcmpCRHlZUHZxSWQr?=
 =?utf-8?B?dVFNaTNUUmdzOGFTcGtOc3VqQWpuOVhURHBicXpDMFltSHMrSys2aWxRUkUy?=
 =?utf-8?B?QWZmK2pTOHVkcWpYdkdWSFgxbW1HZDZxdGNQZXZNYytPZFluTkJlZUszSDcv?=
 =?utf-8?B?T0RuU1NDSXI1OXdRVnBWWmVoN2Y5VDhTYUNEYTYzVXo5Q3czOTQ2eTc1dFY1?=
 =?utf-8?B?MFBZekJPSEh4K2thN09IYyt2ZU1BQk1CSFMwdlg2azF6YmQ5ZVNVSnNCRVd2?=
 =?utf-8?B?bE5iZ1RZWHBGNG5oeUw4bDAzYmJ0MVAvZ3FKWG1jYm5ucTRlSkN3SnltdmxO?=
 =?utf-8?B?czZBcWlobXJ4KzJGZEpENVNrdElwejBzaW10TUF4OTd0STd6NFFxRWRUZE96?=
 =?utf-8?B?VERRMGRjcW1zemgzZEQ5S3FMQ3k2QTkxeHQwblVLUkRsV0Z0NGt3RlJ3Tlp1?=
 =?utf-8?B?REh3UFlQb0p5TnlCdlF6YStxTXo5T3dueGdicVpPVlhTYXM0K0ZVcDd2b0FZ?=
 =?utf-8?B?TTYxMDRjUGdPZ2Y4U1kxWU5LYlR0YWF4bGlLdmxuZk9aSCtEeEErMWxUWVk1?=
 =?utf-8?B?OVlVQ0QxVXlLRDErVk9qQURwbk11aVo4K3pJbmdieDVYeFZPZytQSlE4ZWpP?=
 =?utf-8?B?Y3JLU0Q4RHg5YWRiUUFNRXRBVWNCS1kzd2xkSGt5dDdnS056ODBxVm5hUGVM?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 59a03a2a-9c84-4285-1646-08dcc1f06844
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 14:49:06.6226 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ea44BOQUgzih6y981s6cK8ywkCCeU3uYMrpje6GfO78DljV06DNw69CmPVg7x/7cJdRvp+NVgJARRKNs3y7oKF1aztk2WO0hmvRdD5QdJPs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8554
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


On 8/21/2024 7:11 PM, Ville Syrjälä wrote:
> On Fri, Aug 16, 2024 at 01:53:20PM +0530, Nautiyal, Ankit K wrote:
>> On 7/18/2024 1:47 PM, Ankit Nautiyal wrote:
>>> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>>
>>> In most of the cases we now try to avoid mentioning things like
>>> "bigjoiner" or "ultrajoiner" trying to unify the API and refer
>>> mostly to all this functionality as "joiner".
>>> In majority cases that should be way to go.
>>> However in some cases we still need to distinguish between
>>> bigjoiner primaries and secondaries(such as DSC register programming).
>>>
>>> Create correspondent helper functions and start using them,
>>> in order be prepared for adding ultrajoiner functionality.
>>>
>>> v2: Fixed checkpatch warnings (Ankit)
>>>
>>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>    .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
>>>    drivers/gpu/drm/i915/display/intel_display.c  | 75 ++++++++++++++++---
>>>    drivers/gpu/drm/i915/display/intel_display.h  |  8 +-
>>>    .../drm/i915/display/intel_modeset_verify.c   |  2 +-
>>>    drivers/gpu/drm/i915/display/intel_vdsc.c     |  4 +-
>>>    5 files changed, 76 insertions(+), 15 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>>> index e979786aa5cf..9862d0339e6a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>>> @@ -724,7 +724,7 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
>>>    
>>>    	if (new_crtc_state && intel_crtc_is_joiner_secondary(new_crtc_state)) {
>>>    		struct intel_crtc *primary_crtc =
>>> -			intel_primary_crtc(new_crtc_state);
>>> +			intel_joiner_primary_crtc(new_crtc_state);
>>>    		struct intel_plane *primary_crtc_plane =
>>>    			intel_crtc_get_plane(primary_crtc, plane->id);
>>>    
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index 26e4b0c2e9f7..38e7c6811bf3 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -252,6 +252,68 @@ static enum pipe joiner_primary_pipe(const struct intel_crtc_state *crtc_state)
>>>    	return ffs(crtc_state->joiner_pipes) - 1;
>>>    }
>>>    
>>> +int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	return hweight8(crtc_state->joiner_pipes);
>>> +}
>>> +
>>> +bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	return intel_joiner_num_pipes(crtc_state) == 4;
>>
>> On having a re-look, I think we need to change this. Currently there is
>> no way of knowing if its 2 set of bigjoiners or 1 ultrajoiner.
> There is no such thing as 2 sets of bigjoiners on one crtc.

Oh right, sorry for the mixup and confusion.

In case of 2 bigjoiners AB and CD, for pipes A and B the joiner_pipes 
will read 0x3 and for C and D it will read 0xc.

In case of ultrajoiner, for all pipes the joiner_pipes will read 0xf.

Regards,

Ankit

>   
>
>> Perhaps need one more bit for ultrajoiner or a different flag altogether.
>>
>> Regards,
>>
>> Ankit
>>
>>> +}
>>> +
>>> +static bool intel_is_joiner(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	return intel_joiner_num_pipes(crtc_state) > 1;
>>> +}
>>> +
>>> +static u8 bigjoiner_primary_pipes(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	int lsb = ffs(crtc_state->joiner_pipes) - 1;
>>> +	int msb = fls(crtc_state->joiner_pipes) - 1;
>>> +	int i;
>>> +	u8 bigjoiner_primary_mask = 0;
>>> +
>>> +	for (i = lsb; i < msb; i += 4) {
>>> +		/*
>>> +		 * Regardless of how joiner_pipes mask is set, currently
>>> +		 * we always assume, that primary pipe bit goes before secondary
>>> +		 * pipe bit. So in each set of 2 bits, least significant bit is
>>> +		 * bigjoiner primary pipe and most significant bit is secondary pipe.
>>> +		 */
>>> +		bigjoiner_primary_mask |=
>>> +			((BIT(0) | BIT(2)) << i) & crtc_state->joiner_pipes;
>>> +	}
>>> +
>>> +	return bigjoiner_primary_mask;
>>> +}
>>> +
>>> +bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> +
>>> +	if (!intel_is_joiner(crtc_state))
>>> +		return false;
>>> +
>>> +	return BIT(crtc->pipe) & bigjoiner_primary_pipes(crtc_state);
>>> +}
>>> +
>>> +bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	if (!intel_is_joiner(crtc_state))
>>> +		return false;
>>> +
>>> +	return !intel_crtc_is_bigjoiner_primary(crtc_state);
>>> +}
>>> +
>>> +bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> +
>>> +	return intel_crtc_is_ultrajoiner(crtc_state) &&
>>> +		(crtc->pipe == joiner_primary_pipe(crtc_state));
>>> +}
>>> +
>>>    u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
>>>    {
>>>    	if (crtc_state->joiner_pipes)
>>> @@ -276,11 +338,6 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
>>>    		crtc->pipe == joiner_primary_pipe(crtc_state);
>>>    }
>>>    
>>> -int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
>>> -{
>>> -	return hweight8(crtc_state->joiner_pipes);
>>> -}
>>> -
>>>    u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
>>>    {
>>>    	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> @@ -288,7 +345,7 @@ u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
>>>    	return BIT(crtc->pipe) | crtc_state->joiner_pipes;
>>>    }
>>>    
>>> -struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
>>> +struct intel_crtc *intel_joiner_primary_crtc(const struct intel_crtc_state *crtc_state)
>>>    {
>>>    	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>>>    
>>> @@ -808,7 +865,7 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
>>>    	int num_encoders = 0;
>>>    	int i;
>>>    
>>> -	primary_crtc = intel_primary_crtc(crtc_state);
>>> +	primary_crtc = intel_joiner_primary_crtc(crtc_state);
>>>    
>>>    	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
>>>    		if (connector_state->crtc != &primary_crtc->base)
>>> @@ -4527,7 +4584,7 @@ copy_joiner_crtc_state_nomodeset(struct intel_atomic_state *state,
>>>    {
>>>    	struct intel_crtc_state *secondary_crtc_state =
>>>    		intel_atomic_get_new_crtc_state(state, secondary_crtc);
>>> -	struct intel_crtc *primary_crtc = intel_primary_crtc(secondary_crtc_state);
>>> +	struct intel_crtc *primary_crtc = intel_joiner_primary_crtc(secondary_crtc_state);
>>>    	const struct intel_crtc_state *primary_crtc_state =
>>>    		intel_atomic_get_new_crtc_state(state, primary_crtc);
>>>    
>>> @@ -4547,7 +4604,7 @@ copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
>>>    {
>>>    	struct intel_crtc_state *secondary_crtc_state =
>>>    		intel_atomic_get_new_crtc_state(state, secondary_crtc);
>>> -	struct intel_crtc *primary_crtc = intel_primary_crtc(secondary_crtc_state);
>>> +	struct intel_crtc *primary_crtc = intel_joiner_primary_crtc(secondary_crtc_state);
>>>    	const struct intel_crtc_state *primary_crtc_state =
>>>    		intel_atomic_get_new_crtc_state(state, primary_crtc);
>>>    	struct intel_crtc_state *saved_state;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>>> index bf665f947b97..35e68e4cc712 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>>> @@ -424,10 +424,14 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
>>>    bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
>>>    bool is_trans_port_sync_master(const struct intel_crtc_state *state);
>>>    u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
>>> -bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
>>>    bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
>>> +bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
>>> +bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
>>> +bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
>>> +bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state);
>>> +bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state);
>>>    u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
>>> -struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
>>> +struct intel_crtc *intel_joiner_primary_crtc(const struct intel_crtc_state *crtc_state);
>>>    bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
>>>    bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>>    			       const struct intel_crtc_state *pipe_config,
>>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
>>> index 3491db5cad31..b53b810c6470 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
>>> @@ -193,7 +193,7 @@ verify_crtc_state(struct intel_atomic_state *state,
>>>    			"transitional active state does not match atomic hw state (expected %i, found %i)\n",
>>>    			sw_crtc_state->hw.active, crtc->active);
>>>    
>>> -	primary_crtc = intel_primary_crtc(sw_crtc_state);
>>> +	primary_crtc = intel_joiner_primary_crtc(sw_crtc_state);
>>>    
>>>    	for_each_encoder_on_crtc(dev, &primary_crtc->base, encoder) {
>>>    		enum pipe pipe;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> index b9687b7692b8..11058bb37d5a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> @@ -761,7 +761,7 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>>>    	u32 dss_ctl1_val = 0;
>>>    
>>>    	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
>>> -		if (intel_crtc_is_joiner_secondary(crtc_state))
>>> +		if (intel_crtc_is_bigjoiner_secondary(crtc_state))
>>>    			dss_ctl1_val |= UNCOMPRESSED_JOINER_SECONDARY;
>>>    		else
>>>    			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
>>> @@ -790,7 +790,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>>>    	}
>>>    	if (crtc_state->joiner_pipes) {
>>>    		dss_ctl1_val |= BIG_JOINER_ENABLE;
>>> -		if (!intel_crtc_is_joiner_secondary(crtc_state))
>>> +		if (intel_crtc_is_bigjoiner_primary(crtc_state))
>>>    			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
>>>    	}
>>>    	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
