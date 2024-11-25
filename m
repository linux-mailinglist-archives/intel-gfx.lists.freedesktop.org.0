Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D13BC9D8D47
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 21:10:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F5FE10E13F;
	Mon, 25 Nov 2024 20:10:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DhjG8hIv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FE5110E13F
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2024 20:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732565452; x=1764101452;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=NFh40Zdo+0bsAg2LX3nv394niHfA5ysIWDq5ZhEioK4=;
 b=DhjG8hIvbYRFzHrZmtSjxsf8wgcdhfz16t+pUQc6P6t8E49mu6e6GZc4
 6XHmUIfwqDOXb9jhXRSCXdJlsNrqJThlJVz5XBtYwwcPhAabIz4uWDvO7
 NgefFvi9txeA99yw9t554IJOl/GPSky6EhCk1XQJr4BlLYFDdHL9/ScAZ
 0KaLY82GhjX3oIDLZW42Smc4RAOrlaRyKAkoZQ/++NtitVOGpcxGJa01l
 /xmgYp6f9knzZYu+FI1u60hrx84awg3oz/aIGmoUfT+el10d0f2gf9XjZ
 O7vYXr/WLbKsoeXVcSQ95IPXMhvtP1XqKTuanPY4Mc5NRcUc4Z5pPZc3L g==;
X-CSE-ConnectionGUID: UvBNYPR6Qiux/FoqymbAag==
X-CSE-MsgGUID: NRCMeqDRThyget/q2CNPOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="43354192"
X-IronPort-AV: E=Sophos;i="6.12,183,1728975600"; d="scan'208";a="43354192"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 12:10:52 -0800
X-CSE-ConnectionGUID: drLgMVo1SoaJyDMUzzLOoA==
X-CSE-MsgGUID: pHNwqE1nRQCC1o7tOE4fyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,183,1728975600"; d="scan'208";a="91511170"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Nov 2024 12:10:52 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 25 Nov 2024 12:10:51 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 25 Nov 2024 12:10:51 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 25 Nov 2024 12:10:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wzQDXVpgeDqk16Hc5BS0E1eOXNH6LxdjHdT9xfZM365Of9GS8fasyOJGVA3MEE8mpjYkxtLyUBLwaT/UwvwYyQIex1v+r19CJkT8UAFg8gZ7F/LAmGroQ59P7pM9YHgGp7yvWawFHs+M/0ZQpJ+2B82Qm0imM6oxJkUTCsMG31x6ZuuAOcIRY2jsteT160ujgZGR3Mw6SrR8U5moY/TXq9pA1YgyOnuT+YFdCsYkjpK/acSB2MzXKv2li7dcoUL3D9RzrshMj8bGTm6x6sujFvxSDd20649gMZBtalwjEYyexVmijnozIe9dYh9LISU0csRSSbHGbnCQ4tsboUPLuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n+BTzx7WGgfO7pU1B/7rUlx/SFkJQQYO2CP1uq3wHSc=;
 b=h3t6VizTQLAekeVOSmjViTZTLezg6HxZX9k9ZcOjew3shQN8sbKRLOxcEyYsiD2FMai1P//EmAR4bOiBTBylnTr2EUihxOFLcRIwnMmP/A1Y2q49cjvGRahUZM4NKwf49iEP0GKzNEjZV2UeqV6c+8hwTCfNbO1N+aXUOGJgkQA5r9l3szhNRdQ2CZpxXSGe/dnQO2IYbIoOylxcnfio9VK7EGQ34Az0ynqaTrX0H40y6EZRBI5tbNGc0pQ/rU6l820KfLoxb6ffu1jBR9a+X07c4QorxQbMtCJX81EeFTVNBmPmC7Ta0x/Dza7zA9cBmcXT/6LE4h/ntKaUb8xb/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by DM4PR11MB7255.namprd11.prod.outlook.com (2603:10b6:8:10d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.21; Mon, 25 Nov
 2024 20:10:47 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%4]) with mapi id 15.20.8182.019; Mon, 25 Nov 2024
 20:10:47 +0000
Date: Mon, 25 Nov 2024 12:10:46 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: John Harrison <john.c.harrison@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] i915/guc: Ensure busyness counter increases
 monotonically
Message-ID: <Z0TZxhw9EMfFsDZN@orsosgc001>
References: <20241118232223.53639-1-umesh.nerlige.ramappa@intel.com>
 <20241118232223.53639-3-umesh.nerlige.ramappa@intel.com>
 <a0aa30ba-cbb3-4e30-a503-1d2eb692499a@intel.com>
 <2194c21d-3656-46b4-bda3-76d82fa643d5@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2194c21d-3656-46b4-bda3-76d82fa643d5@intel.com>
X-ClientProxiedBy: MW4PR03CA0349.namprd03.prod.outlook.com
 (2603:10b6:303:dc::24) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|DM4PR11MB7255:EE_
X-MS-Office365-Filtering-Correlation-Id: 75c05321-9881-4c45-0989-08dd0d8d4031
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WWJTYWllcGJ5M2xKbDlCMHRoY0xWa2RPVTl1bTNJdk12MW0zLzJyVStYL2lD?=
 =?utf-8?B?MDNISXVqM3pFTTRSQTh1d2JDSis2NjVMR2ZwUlZXUllpd01GMEMweWxZaUtU?=
 =?utf-8?B?ZTZhcDQ3NkdPOU1tQmtZc2VnUmlmYWhsSTZTUXNWN2xyRzAwRE5OcUJMQjJn?=
 =?utf-8?B?SWI1cHlkcEpWcXhRekZRNFNIVldYY2Nma3BKbEJGZ1ZhSFRlQ2toU2lvNkcy?=
 =?utf-8?B?cFRMY2s2OEdJWUszUnpOc2tlUUlsN3RyNlM3SzdFa3VkaEVWdGV0V3EwRWlM?=
 =?utf-8?B?MVFHbU1Gci9yRnZnOCtycGQ2NmplOWc2S2pxTUppTkZVcVhBRU1tUy9kR09q?=
 =?utf-8?B?MzhsOGEyam9pS3k2eFdXbDZwdlhLVCtTWUNzcDNQVFFEQmFlbWppTGo5K0sy?=
 =?utf-8?B?OHorUmpiSGNKSThjdGVNdTVBckx4SnJhTlNhTUZUV21wVE5ZU1pPWUVlcWR3?=
 =?utf-8?B?Rmh1cjlUT0FJcDBnb1BCblFjZktVL3ZJdWVrUE9VU2RXQzUxNlJoTTN3ejRB?=
 =?utf-8?B?eGpzZUQxV1RmR0dRRFZ6ejlJSG5aT1pReEM3bWZyTWZGT0xGWXZqSTZDa2pq?=
 =?utf-8?B?cmQyQittTXkyOWZ6cHAvOFdIVWhITWtIK3MvMjhjRmpBQzJGSFZ6VnBJUWJa?=
 =?utf-8?B?Z1FORXZ4bnBRUmwvTXpaVzIxYlVDeVFtalpYQUlmU1BxZ0IzWGdGVzcwVS9N?=
 =?utf-8?B?UWI3Yk1CcDlDelpjWnFBck5TOWwxUlFvNG9hVkNidzR5TXcydUZXOElJL2Jt?=
 =?utf-8?B?bU5Mek9KVzNiQm9hTzI4RW9BbXdRTllqYXhKbkltYjhrSDE5Zm9ZN1BIM1ZE?=
 =?utf-8?B?b3l1d1RuUklKeXNFaXhIZWk0bFN3VXYvN0ZITXlTekRvZ0cycUJpM2RPamxJ?=
 =?utf-8?B?Z0VrQmNoM0dOMnM1VnVxN3lVbnEwaVkwZExsVHR4UXJlUVMxQ0JaUlFsU3Vo?=
 =?utf-8?B?TkFlMDRjNzhIaHc4Y25XUDh1TnRxajlDY2RhYzFITVR6R3BFWi8zbTJUaDZL?=
 =?utf-8?B?UElRZHBFOWYxVjFwR3JzVjBOcTJUTU1ERm9KeWd2UDRwKythbGNJZ2xmVlJD?=
 =?utf-8?B?dXROcGpqUmZtUlVHVE9LdU84SUpEZWNjVlc0ZUIvWlVLdFBQV3c3Mm5EQUtn?=
 =?utf-8?B?K2JFSFBOUXJreXl4T0lxZVBwU1JYTDJmTklUUGhJWDNwUFZqcVUyWmtvVU5L?=
 =?utf-8?B?Q1NHZnZCeDFjR2dhTE12YVRvSDJNNjc2Zy82RnQ3bkZwM2ZmN0ZidWRoRjFQ?=
 =?utf-8?B?bmdXQ3pFTDl1Ym5jZVJHNmZXRGY0bTkxM0tLSlVwQ2xOczlKTEJ6N1FoMnlm?=
 =?utf-8?B?NEw1UjNJb1BXTEZJOFM2dVp2eWo4K0YvRDFGWDNHdVRMODR6eWVvL3ZtMUlU?=
 =?utf-8?B?ZEJiUWp1WDhXUmswTk9NUklWRlg1d0JMVS9TSy9ZaEJ5c1RML3ZBNTd1eFph?=
 =?utf-8?B?L0RyWTNycnFuMlVIUUtEd0Z5WGFvNEloTVNFRktkZmN0UlRZa0swWXVnalpP?=
 =?utf-8?B?bGp3enJ2QkdwaGtYQXhSTTNQOTNmWUJHWkNoZkJYbjQrc3hJTkk5SXJGcEdW?=
 =?utf-8?B?UGFySlhudWUrQytndEpBOU02VnVVRTBMQmlUS3hXaWhieGZmd3k1TnBpaTF2?=
 =?utf-8?B?SEhTQ1NRelo4dWJZOWlTVTBjL2ZsZ3hXS0EzdCs3dEpmYU1pVHFteENKejVt?=
 =?utf-8?B?eVU0aGQzMTNaQWxrZ2R5M1Bxam5uU0hreWJSc3dub0Q3VC9ldmxjK2NaSjRq?=
 =?utf-8?B?VDFpajhFVU40U2NES3FRT1NaSFRINUJqT0IvaENKOXJPQTlJbitXemFxeVBz?=
 =?utf-8?B?V0hwSTZMRVF0RmdMNjBYZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RlJKTHV6bDJxeGxSNkRBYm4xdWk3ZkJ1ZEJQS2RZUHU1TnpxSFYzM2tud3cr?=
 =?utf-8?B?UDRCK2MzeWlVMktSNWpaaWxKdi9KYlpvWndCRURjLzBtSXdHdVhMYXJHNTNW?=
 =?utf-8?B?a1lXazZyb3VpYkhLTXFUdG43WFlsSENoZUZ0MDNIOXFoTytIdnBxYmZ3UkRp?=
 =?utf-8?B?YzFYb1BOUG11LzRVejZ3VHc3UWhFbkhuU2xmNUp3azBJdmM1UHpaQlVCVG9P?=
 =?utf-8?B?WWRmNEc3Zmt1SzFpZjdQWndhRnlEU0dQR0ZpOHNLczZRUkNCcG9vMWZSQUxp?=
 =?utf-8?B?NDR0cmRzTUI5M2lybTlMMi9Sd1dYSXRQb1NuNjBrQ01ETnJxcS9zVWNUdUFW?=
 =?utf-8?B?VDBpazRXWm1YNTA4QjhISzFFZW5jOWxramFLbkZUOU1GMGowVStNbHFwR1RM?=
 =?utf-8?B?WkJDc3dqMUt4aE9QZGdOOFJOcFFDN3gzRkFYYkJwOFZ2eDVxQ2VwYU9xTEh4?=
 =?utf-8?B?akFmWlRKakZCbVpOcnBQUmF5TXJVYWFaNytRVC8rbUJpREJieDVrTWRYcUlB?=
 =?utf-8?B?d3IxWmRVdnRZdm5SQlNjMnBLTzE1VW5Bb2hDc2xCOUZkM3lRaXFuUWNEY0pi?=
 =?utf-8?B?dzU1U3BmWFQzMmlDdXg1S243dncxaGtLVlloVjFyUExqdE9vN0NQV0x5dEFD?=
 =?utf-8?B?VVhFYUVJUnRkNDY1aTJ3UDQ2aFVEZnRIUkltamVMNE5ZV0dFcktWU0tBQXVC?=
 =?utf-8?B?WVkzd3lnVzVKdGFLRnRtYmxVVjcyd2VUVytWZmdiNk5RNEg5N1FRWTZubmNj?=
 =?utf-8?B?R0t6Mkx1cjE4WHZxZTJDdko5WHY5dHczd1pQSHJuV2lRS0RGWldiY2k3WGU1?=
 =?utf-8?B?Z2lBOHBBWG9MRXZJeVU3b1ZGZmhXNXZGSGZYLzhYUzdVQkhxcHpQSVRpcXBn?=
 =?utf-8?B?TDRvZ24reTVrcm5Uci9kYVEvWnNZTjkvMTgveG1RbmYzOVlLaGhNU0VzZ25n?=
 =?utf-8?B?SHhDYkpPcnNFTXB2ejYxa2U0empGbWlheFA0Y0ZUNGRSeGt4NGx3Vzcxemdj?=
 =?utf-8?B?RjNjMlJKMlRub0IwSGJ3am9yWmdaNFFEK1hvRE5obDZ1SS9KOXhLM01rSW15?=
 =?utf-8?B?VFA4RmtuOVNta1FkYzJHNHBvaWlFcUo1U0IvQlJTeFRtc0NRNlEwUkg4cFBW?=
 =?utf-8?B?NGF1b2Z4Sy80dlJ4R1VKNmZIU2U4OUt4QlhvWWdUcXBrNmdISEFJekdTVXNh?=
 =?utf-8?B?U2J2QXRDQW1NTTAzOHVpdHY4dnBNUnpHY3N4aVBEcXlhRnRQRWNxVEdpdXhD?=
 =?utf-8?B?amJQR2kzTDVSSklvMTEzOTNaa255enRsNTg3dzNENmJmU3pyNG1zYUNPOHhH?=
 =?utf-8?B?SUFZL2xzRFNQQlRQbG9lbHQ1QU1rUitxWThNWDgrVGxPcWh4aXV4TGpzNXA4?=
 =?utf-8?B?aWVMenJaVFYrajJ6V0Z6em9Kc0VlbWhwZjFSVXRPa0lHbUNjVVl2MUhHQnpj?=
 =?utf-8?B?WXFqQjJGbHVsejhPUWROZ29rclZxT211YjBoeTU0RlhqeDZzaGlNeVNlcFFW?=
 =?utf-8?B?eG1MSnFDZHl6MUU3TG04RGt3YzBtdFFHZGJXUytyMFlRQ3pYNUJXSTVIWFJO?=
 =?utf-8?B?NlBzNDlYaXQxanZmNzUxbmxpNjVidG4xRGQyTFZ6MWMxK29tbjFUdGdiR0Nq?=
 =?utf-8?B?UVhMcDZZY2pEaW1mdnVCanVmN3hueXlRaDk4RCtUSnpSTVQ3aVVwVVc3OHg2?=
 =?utf-8?B?VWgzZDVjZ0JHTFlvdWZ3VmIxSnRVcHBxMWZpd1lWczhuZ3B6ZnhtZ1JZZnpH?=
 =?utf-8?B?VGNSRTY4Mm1jMDhyRThhTHNuQ09sTnlRK3R6K3BZWlNGK1lqeURCZldva2tv?=
 =?utf-8?B?NHdmMy9qRnBWMkpNcUsvcHRRVm8zZmN1Y2dYS2tkc2QzRnZDNzJoRnBDVWYy?=
 =?utf-8?B?U082RXdJR2ZZQ0YvdlBxT0xnU05SekxBKzZ3SWpySlFHMGs1dlF0NTNTRmhx?=
 =?utf-8?B?SnpsQ202SGxkanpnanhuckVxWTlPK3dINkNqOUkwY2lyb0E2T1A2L2tWcGk4?=
 =?utf-8?B?b213N1lVRDlrdi9qZk41VkU2WTF2THRvS0czMFU5M3krTUdNR3JjY0tmRklO?=
 =?utf-8?B?VXlUamRNTk1ibTRjdDBUUCtFRHFSSktIeHltRlY5VVF4SlRWclErUmFubnFl?=
 =?utf-8?B?L3FTQmpOUzhZYlRrLy9wSHVJcTRRWEV3SzE2ZTJDMHJud2wvWkdrQkVVRFVh?=
 =?utf-8?Q?/ji680F4BvJBjuDz8FfENXo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 75c05321-9881-4c45-0989-08dd0d8d4031
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2024 20:10:47.6640 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IguKx+cJHFahluRNA5g3deAk1Ienv1l6DSCOMdJmKXCQ+05J77QAWt9XJRMRSdcNLD47SK5T15rfcUU+zqBN+6kXe16Y/kLPqaMTk/pJYDU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7255
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

On Thu, Nov 21, 2024 at 04:34:14PM -0800, John Harrison wrote:
>On 11/21/2024 16:31, John Harrison wrote:
>>On 11/18/2024 15:22, Umesh Nerlige Ramappa wrote:
>>>Active busyness of an engine is calculated using gt timestamp and the
>>>context switch in time. While capturing the gt timestamp, it's possible
>>>that the context switches out. This race could result in an active
>>>busyness value that is greater than the actual context runtime 
>>>value by a
>>>small amount. This leads to a negative delta and throws off busyness
>>>calculations for the user.
>>>
>>>If a subsequent count is smaller than the previous one, just return the
>>>previous one, since we expect the busyness to catch up.
>>>
>>>Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats 
>>>from GuC to pmu")
>>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
>Actually, does this need to be cleared in 
>__reset_guc_busyness_stats()? If there is a reset and the live value 
>is returned to zero then you won't get any more updates until it gets 
>back to where it used to be.

We don't return the live value. We just accumulate the deltas from live 
values into stats->total_gt_clks, compare it to stats->total and return 
the one that is monotonically increasing.

The stats->total_gt_clks and stats->total are retained across resets, so 
we should be good.

Thanks,
Umesh
>
>John.
>
>>
>>>---
>>>  drivers/gpu/drm/i915/gt/intel_engine_types.h      | 5 +++++
>>>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 5 ++++-
>>>  2 files changed, 9 insertions(+), 1 deletion(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h 
>>>b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>>index ba55c059063d..fe1f85e5dda3 100644
>>>--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>>+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>>>@@ -343,6 +343,11 @@ struct intel_engine_guc_stats {
>>>       * @start_gt_clk: GT clock time of last idle to active transition.
>>>       */
>>>      u64 start_gt_clk;
>>>+
>>>+    /**
>>>+     * @total: The last value of total returned
>>>+     */
>>>+    u64 total;
>>>  };
>>>    union intel_engine_tlb_inv_reg {
>>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>index c71aedcbce43..56be9f385270 100644
>>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>@@ -1378,9 +1378,12 @@ static ktime_t guc_engine_busyness(struct 
>>>intel_engine_cs *engine, ktime_t *now)
>>>          total += intel_gt_clock_interval_to_ns(gt, clk);
>>>      }
>>>  +    if (total > stats->total)
>>>+        stats->total = total;
>>>+
>>>      spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>>  -    return ns_to_ktime(total);
>>>+    return ns_to_ktime(stats->total);
>>>  }
>>>    static void guc_enable_busyness_worker(struct intel_guc *guc)
>>
>
