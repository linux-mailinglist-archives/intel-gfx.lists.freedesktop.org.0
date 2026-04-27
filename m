Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KD6SGwz97mk42wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 08:07:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC90946D6BE
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 08:07:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29E2910E241;
	Mon, 27 Apr 2026 06:07:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fw4HZGMU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E43410E1ED;
 Mon, 27 Apr 2026 06:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777270023; x=1808806023;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jXHB5Jeg0k30WUcjPWGIgWaLAdV+Gq9bluG/mB1M+XE=;
 b=fw4HZGMUt9Wc7nT7tdyoG4M3y42Sv525oTe/A7aI48Qldr97U/I+r9eM
 UdzU5tRScrc5UaSEf2WgPTJNBmQMsxPO39eWfCPVhNKaT1IfwUDmK9W4p
 VXdio8e4bQglz9sjOppaFYPUyZDXhSydFEWSy6QVvPyjT8K2p5m70/Nxp
 RIu5ceYCa6OJPUyfsCARURVS8OKDwe9GG7ksmmlTlPUIL7RJIFdipvoOP
 rLckpircfJ21ZXRJwaURgrb9IIOo6XNI66FRP5tonWSYvSKwauDUw/x5N
 pAVqII64xHwYYBVF0CTDhBMZAmzwO7tKUQHyQlUTcMQHlvNY2GKKUNiGd Q==;
X-CSE-ConnectionGUID: qDXodGF5TpO1DyfE9DuKYw==
X-CSE-MsgGUID: iKRu3Dm0SiqG8PHMYzTdng==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="89529776"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="89529776"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 23:07:02 -0700
X-CSE-ConnectionGUID: Mf9VLW1QTbqUeBAt3dottg==
X-CSE-MsgGUID: Ez4SSrheRu+isZxeBif3mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="229221206"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 23:07:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 23:07:01 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 26 Apr 2026 23:07:01 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.57) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 23:07:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XsT94jee6az5acQCgsutgidNzbxTDR62WyGU1h3pFSu2tH/6uhZ6UYtOfMeQayBAaqzOPd4IESt/C/Ei7sao/SdOoki+nLtCWOaZOAjojroy/wLCkXY6TCtQhDeykKZ5eM3bFIHzpJXUA1pH2WPZM8Li+FiRzPVEtIvdTc4ucLjuBaIJONvpZiGip+1TEtVFUAtVOA05/TSnPeNizrk8CHdo6vDKmvwDkJDsRbc+Aw19uIAXhcmoqZR5EckbO7OdywNsXQs5uxYq0TCaATYD+fiwTVJgrDZYWs2qJ0QRBEKnFgppXQ6lRhVmDnaBUEVj/kRmlxzXJ91r2au1sHl2zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X8F3tVBd6JSty3pCRnO26Bx0pIHOW1dkmHBSpBSMkJ8=;
 b=PuQ+mz1wpMIb6GvPyNPe2hPqXApKagrz5k8ExH3LdJ2YP8PF98Qw+0rZUlQjT56dYzDvUGB1Dwb+TTtn40hmeMyYIou5PUI7doAYnLdxaK7wd2XnIE0vq5opImrh1xFCtaYoCD9ZdtOwFvwQorMBzye6vQa1KTn460qmirSV+2vKY+hnPdUhrx32VvN63qgz5mVxjlsgr6DBdN6GELoo0iQc8x4sOJxQroLUgQSCmxwLmGfmNwpLL6/HIeHPYSaGO8uDL/jbROARRv7rtA+FguiwS5KQXyrPdBPuFBXe8BqLVV0S4vV4A+vENK8BRo21agnRoWUdwHFiwzXmyahg4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by MW6PR11MB8412.namprd11.prod.outlook.com (2603:10b6:303:23a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.15; Mon, 27 Apr
 2026 06:06:59 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 06:06:58 +0000
Message-ID: <2b8f779c-d2f9-45fa-af12-da0d0d2eac3e@intel.com>
Date: Mon, 27 Apr 2026 11:36:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/13] drm/i915/display: Add DC3CO eligibility
 computation
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, <imre.deak@intel.com>
References: <20260422162622.1869831-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260422162622.1869831-8-dibin.moolakadan.subrahmanian@intel.com>
 <DM4PR11MB6360EC230948A51A577F63A1F4362@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM4PR11MB6360EC230948A51A577F63A1F4362@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0174.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::8) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|MW6PR11MB8412:EE_
X-MS-Office365-Filtering-Correlation-Id: 76a76ebb-e44b-4dc9-3d02-08dea42330c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 9Tuv8+WcOr7YBUIKP21uQMcnaRn6fwpulI/aLHQMFfmGGUmgUFfMfq/KuyPgJmFlsk87qzYbydOF0OV6FLRtn/4kbULWCORcX/SSvCxRaNuVBcuRd2KVNmKdUTti24KSssa4OPtS8mPw2vh8OrxxLqUJaBu3WREcZlnPu0hwg9KyXpgp8iQtlHt4Rr1d0M+oXPqrK8tXi29kETjHRZjkyE0Qz6f6HSrdMg4pQrkdh0n7rhTDLmStd7hXANCd0yV/mB9uIiClm65759/vOCyUgSRTylFmrpElL9/O7Dl1g5JVJOIE6mJol7+fs/7RyEagH6EIBzaxJn/47fJCnLVHJ/m4iRHzhsgbATBuAeN/T0fg5ak5b3Q0OZEJhNE9KjoCEvN/lcBvnJxTKubJTdAxogLuhVJPYuUmSEBUHOe1H/o3uueghbdYghtdCO7P3nmEqe27JxSWeDSbawRDQIIx4lQVHuPtSSnIM+A+SFdPoFeZI/+Yny0vT9WBg+cRYQVISJ/4sCljBgD8wpa726Ii/t09xYG6/PxSk8ZXc+8KhM/7i9u7nCeoKu0aPvxt/bDZYSQ/n4DucroNodV3euYRmBGFIqQ1MpurBFVgpGGOHdh/A9x6TJqjaf1EOtVeRxU0FBz4I7HPhA0BKz2ifS6u4bJS/CWmqvm5Oc/cqJ/+1t3gIYB5xOk1S8L787yWnEuugOBGUH6wZNo3d49+uW/t8AhJab2UGrZgV7ryp9+z/wY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RytCdTlXOGZzbkdlS3NzeXQ5dXZ1Nkh4MFhwcTRDNHZVQ3JjSit5RmprUXRi?=
 =?utf-8?B?dWZ0a1NPdTZmT2MrUHQxT0luTGIzNHZMeWpubithVTlvb0U0ZWpObGgvSDFu?=
 =?utf-8?B?YU11SWhlZExBRVd2M2hxbjZTSVp1RTVVanppSFFkY2RyNnZyS1NRWG9ia1dX?=
 =?utf-8?B?T2FWN0ZETUQrY1FzQXNYMnZmUXlhMDE2eTZncHVjMU1JL2hscjhxbGduNUEy?=
 =?utf-8?B?WlludEd4WFhjNUg2NlByMEtXQ3g5TXFwSkZ6V1NkcllYU01SbzRCZ3pLS28w?=
 =?utf-8?B?YlNpNVlNOWlyM3VJUkgybnVjM1p3UzAyenA5TnQ5aE81RmgrTEE0UFM0QVVx?=
 =?utf-8?B?NFRvWXZkU3p3WHZ5d0JmZjgyVndrWU9nLzlSTlZFV2xCV1RlSy9XUy9MSU9L?=
 =?utf-8?B?eERvdjRBUHJXWXFFaXJ0TkhGMHBhV2tUbjU1U3d3Z1AzRWlVaitlOFFSVG5z?=
 =?utf-8?B?ckpVbTI1ckRWTnJzVkoxUkZnWnNtTHdVL2lQckVxSzVpRXpvZWpaQXQvU2JF?=
 =?utf-8?B?a0hORzdDSzJSUk5TZVVCa3RrMVAwNHpjeGoxZkd1V2NIaUFIbTFyYm5oWmxG?=
 =?utf-8?B?dmhZWmxPWEFoSHN0cU1xbCt5eGI3L09ENDN4bGMzMkFUZ0lyYmNJN0RFN3Zn?=
 =?utf-8?B?UCtEKzlqV2J4bUNZVU85M3FBYnVRaUZBQ3ViUUxNc0hXVU5pVFUvUWZFZ2Z2?=
 =?utf-8?B?Q1NJR2hyeHQ4TFU0WW9RK2w0Y1ZYODJ2RzRQTUtuYnc5SUJXWnJEb0xNVmpB?=
 =?utf-8?B?SFJRUHl0WERXUW1EMnlQM0tVNXJJeURMOEVhZmxra1lNZTRNcU43RTY0OXhy?=
 =?utf-8?B?dXpWak0weGJqYTMrbmhYUmVac3dSUjl5d0N5SGhFNW8wQ0dYczVuajllVEJO?=
 =?utf-8?B?RjRQTU91dm5jRkY1aU5wZXdSY1FMRXdGTzRXdS96QWVTL1lnamFhdENFdXRu?=
 =?utf-8?B?elRtRlhrQVBNdEt6TWU0UThidXA0YTFHbGpYM0dXV1hiQXpmcGt0bFQzWTdV?=
 =?utf-8?B?bEhqZ2VFdkQ2Tk5oY3ZMZFV2WHUzL0lCb05kL1dTMEJWNDZTT2habDVwQzg1?=
 =?utf-8?B?b1MxUWgvWTdrU3M0NTY5cUhvODM4alR6WkxtSnprTlBNV1crOWxtbXV5VjhV?=
 =?utf-8?B?VVZBSjl0WHZ5eGExbmpQalNweHJCYXhRdDBSZFVRWEE3SXJQbFhCbUlzaUlL?=
 =?utf-8?B?R3R2eW5nY1pVQXRZRHpDM05GVk1YeDhMN0xySFVaZXlpRWFLMnljWDFtQlRX?=
 =?utf-8?B?aWQzUndkeWVKV3lNM2I2MXRSSjlXSTNNT1pab3lpSFNhc3lnd09SS1VjbEZa?=
 =?utf-8?B?ZTArWmlxYkgwTHYySHhLRVMyemgwSy9QMTdYWmJIWUFBV1dEZDAwd1NXN1Y5?=
 =?utf-8?B?dFYxeE1OQUlEUWdxdWoyUFhuWkxTMVZnZWdRZlpkOGJiR3ZBYkEwZFpVMStx?=
 =?utf-8?B?Slg4dUVOb0hieXB5M0F2MjJtbmgzV2l3OFZNTUNsR09WTDRHTkdtSzRoSmo4?=
 =?utf-8?B?aWFoY1pPZ3J3MXFsTmphbE5wTHVzMVV6ckVtRFlWRWp0MGUydWJPNlo5WEdz?=
 =?utf-8?B?aDBHdE85MmxpQ3pIM3pjNXYrc0RGaUxnbjdxSithYk5yb3IycDh4R0xhTkYv?=
 =?utf-8?B?R1ZsRksrUmRvbjZlRm94UUJJczRjZEZYZi9sV2JWMkpMVUZmbTBxMEViYlJo?=
 =?utf-8?B?NFJnWmZHdDBpVXhHS1p3a3FxRHFySGNJQnlWL2VqLzVXeFRwaTBZYXo1WXpo?=
 =?utf-8?B?MUh2WjdGZ0YveVJzcDBaMlBhQlJJK1pTNm5xNjJEazE1NDRtQWh6SW5odmdr?=
 =?utf-8?B?MHVKNlUzcFRtWENzNitES2YwUVUvUk80bkNMVXljM2RJY0JYVXNaVVJVejNP?=
 =?utf-8?B?Q2paYm03Nkt4QnA1Mno1NjVwUEJCUWhZa3BQNVNrTXB3Y3l1eVlNbkh1dUc3?=
 =?utf-8?B?QjgvQm9KZnJMdytsREd4Uyt3eG9NWjFXb0xRSTZmbGh2Tit0bmtyUFdUeDYx?=
 =?utf-8?B?bzBWZmc4cHdpVHVlck5WZWtsMzlYVEFIbHV1bk1YKzIxSnFSbGd6OWVOMDVa?=
 =?utf-8?B?QnQ3M1RKVWh3VTVFVjVvNFpXenBPMUttVDRyTWMwQTQzSFgzWlFMUExLUGFw?=
 =?utf-8?B?dkdpWWlSMDBvUk5vYXBmMVpHaCs4NzJtOEJjZUFkYzAvSFo1Qk1XYzd6MzVm?=
 =?utf-8?B?TjMvdVh5Q0N3ZVpDY0NMQ09Wd256SmxFOFovMFFKUVJnamN0SlFueTlrYVpH?=
 =?utf-8?B?bXpHTXI2RmJwQzBNYnpWMFp3VGE0VjV5bldpdG5Od1lLZXoxV1FzWEgwNWxq?=
 =?utf-8?B?UTJGUGVWcnBwdjFPRHdhRXVxMmRmb0xOcFZSajdLNG9aUVBadEhZY1FFY2Vj?=
 =?utf-8?Q?MEaI6fHQXB1NVIhb7HnrykoQBTxLWqTsY3r9Q?=
X-Exchange-RoutingPolicyChecked: MNEqjnKZyRQyEO/lbbVXnbTSeveF5iUTvtCDR3vwYloS7DsCoTTK/USujh5dssnJ+NW7DOOeDXUHFvl3QHS/RicUjYhnshuQ94zsZTzxlw7GP3SDbi1owWpURnYVNiqDMETkkS36DIJld2IjbaPPM/7QmHHFSKVytPqBxHN2ImK9mKIAnMse1ALcyeCBiOuXvBvdCm4OeRXLdRnHoBSglrPMOBZ6zY/rrUx6xMwZK2yASpZ4snf41adpDo6dmncYs4bpO9pXMT9zT31Vi5UBkjaNZ03IzbemnFoyoDGDCRlleI6TV+1YBX3pr+yyaX9wBsF44a3kH4p8DAcrrMAwnw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 76a76ebb-e44b-4dc9-3d02-08dea42330c2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 06:06:58.6567 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZsgXrBSLdIwFzVzdrQiWrenggn1lhPulKFzUT7qzPGQ7BA1UN0ljqJg71W59n5y1kdHA+0E/Wrcc0bJMu3Ukpvgk0NEjt/EbHsgQjvZmYwgdLTPTYbfv6dxw1KwLafOG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8412
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
X-Rspamd-Queue-Id: AC90946D6BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]


On 27-04-2026 08:40, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Wednesday, April 22, 2026 9:56 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>
>> Subject: [PATCH v2 07/13] drm/i915/display: Add DC3CO eligibility computation
>>
>> Compute DC3CO eligibility during atomic_check based on pipe/port constraints
>> and runtime triggers and store result in display->power.dc3co.
>>
>> When DC3CO is allowed, request DC_STATE_EN_UPTO_DC3CO and reduce the
>> DC entry delay. Otherwise, retain the existing delay and set default
>> DC_STATE_EN_UPTO_DC6 .
>>
>> Changes in v2:
>> - Move dc3co state from intel_atomic_state to display->power (Uma Shankar)
>> - Use #define bitmasks instead of enum for DC3CO triggers (Jani Nikula)
>>
>> BSpec: 75253
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c  | 92 ++++++++++++++++++-
>> drivers/gpu/drm/i915/display/intel_display.h  |  1 -
>> .../gpu/drm/i915/display/intel_display_core.h |  3 +-
>>   .../drm/i915/display/intel_display_power.c    | 30 ++++++
>>   .../drm/i915/display/intel_display_power.h    | 22 +++++
>>   5 files changed, 141 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 674a4ece6d0f..de493d04a622 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5870,6 +5870,69 @@ static bool intel_pipes_need_modeset(struct
>> intel_atomic_state *state,
>>   	return false;
>>   }
>>
>> +static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
>> +					     const struct intel_crtc_state
>> *crtc_state) {
>> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> +	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>> +	enum port port = dig_port->base.port;
>> +	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
>> +
>> +	return num_pipes == 1 && pipe <= PIPE_B && port <= PORT_B; }
>> +
>> +static void intel_dc3co_compute_state(struct intel_atomic_state *state)
>> +{
>> +	struct intel_display *display = to_intel_display(state);
>> +	struct intel_crtc *crtc;
>> +	struct intel_crtc_state *crtc_state;
>> +	struct intel_encoder *encoder;
>> +	struct intel_dp *intel_dp;
>> +	int active_pipes = 0;
>> +	u32 trigger = DC3CO_TRIGGER_NONE;
>> +
>> +	if (!HAS_DC3CO(display))
>> +		return;
>> +
>> +	for_each_intel_crtc(display->drm, crtc) {
>> +		trigger = DC3CO_TRIGGER_NONE;
>> +		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
>> +		if (!crtc_state)
>> +			crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
>> +
>> +		if (!crtc_state || !crtc_state->hw.active)
>> +			continue;
>> +
>> +		active_pipes++;
>> +
>> +		if (active_pipes > 1)
>> +			goto done;
>> +
>> +		for_each_intel_encoder_mask(display->drm, encoder,
>> +					    crtc_state->uapi.encoder_mask) {
>> +			if (encoder->type != INTEL_OUTPUT_EDP)
>> +				goto done;
>> +
>> +			intel_dp = enc_to_intel_dp(encoder);
>> +
>> +			if (!intel_dc3co_port_pipe_compatible(intel_dp,
>> crtc_state))
>> +				goto done;
>> +		}
>> +
>> +		if (crtc_state->has_lobf)
>> +			trigger |= DC3CO_TRIGGER_LOBF;
>> +		if (crtc_state->has_panel_replay)
>> +			trigger |= DC3CO_TRIGGER_PANEL_REPLAY;
>> +		if (crtc_state->has_sel_update)
>> +			trigger |= DC3CO_TRIGGER_PSR2;
> These values will get updated even if active pipe count is 2. Please check once.

trigger is initialized with DC3CO_TRIGGER_NONE at the beginning for loop.
For the second active pipe, trigger will be set to DC3CO_TRIGGER_NONE
and the loop will break before trigger update here.

>
> With this fixed,
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>
> Note: Would be good to get feedback from Imre as well.

ok.

>
>> +	}
>> +
>> +done:
>> +	intel_display_power_dc3co_update(display, !!trigger, trigger);
>> +	drm_dbg_kms(display->drm, "DC3CO allowed=%d trigger=0x%x\n",
>> +		    !!trigger, trigger);
>> +}
>> +
>>   static int intel_atomic_check_joiner(struct intel_atomic_state *state,
>>   				     struct intel_crtc *primary_crtc)  { @@ -6544,6
>> +6607,7 @@ int intel_atomic_check(struct drm_device *dev,
>>   	if (ret)
>>   		goto fail;
>>
>> +	intel_dc3co_compute_state(state);
>>   	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>>   					    new_crtc_state, i) {
>>   		intel_color_assert_luts(new_crtc_state);
>> @@ -7415,6 +7479,7 @@ static void intel_atomic_commit_tail(struct
>> intel_atomic_state *state)
>>   	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
>>   	struct ref_tracker *wakeref = NULL;
>>   	int i;
>> +	int power_async_delay;
>>
>>   	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>>   		intel_atomic_dsb_prepare(state, crtc); @@ -7621,11 +7686,28
>> @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>>   		 */
>>   		intel_uncore_arm_unclaimed_mmio_detection(uncore);
>>   	}
>> -	/*
>> -	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
>> -	 * toggling overhead at and above 60 FPS.
>> -	 */
>> -	intel_display_power_put_async_delay(display,
>> POWER_DOMAIN_DC_OFF, wakeref, 17);
>> +
>> +	if (intel_display_power_dc3co_allowed(display) &&
>> +	    intel_display_power_dc3co_supported(display)) {
>> +		intel_display_power_set_target_dc_state(display,
>> DC_STATE_EN_UPTO_DC3CO);
>> +		/*
>> +		 * Use minimal re-enable delay to allow DC3CO entry on
>> +		 * the next idle frame, unlike the 17ms guard needed to
>> +		 * prevent DC5/DC6 toggling overhead at 60+ FPS.
>> +		 */
>> +		power_async_delay = 1;
>> +	} else {
>> +		/*
>> +		 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
>> +		 * toggling overhead at and above 60 FPS.
>> +		 */
>> +		intel_display_power_set_target_dc_state(display,
>> DC_STATE_EN_UPTO_DC6);
>> +		power_async_delay = 17;
>> +	}
>> +
>> +	intel_display_power_put_async_delay(display,
>> +					    POWER_DOMAIN_DC_OFF, wakeref,
>> power_async_delay);
>> +
>>   	intel_display_rpm_put(display, state->wakeref);
>>
>>   	/*
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
>> b/drivers/gpu/drm/i915/display/intel_display.h
>> index 1e76a455d7c4..2795e4b9e799 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -521,5 +521,4 @@ bool assert_port_valid(struct intel_display *display, enum
>> port port);
>>
>>   bool intel_scanout_needs_vtd_wa(struct intel_display *display);  int
>> intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
>> -
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index c5a07090cba6..13e9b986b6fc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -535,7 +535,8 @@ struct intel_display {
>>
>>   	struct {
>>   		struct i915_power_domains domains;
>> -
>> +		/* DC3CO eligibility state */
>> +		struct intel_dc3co_state dc3co;
>>   		/* Shadow for DISPLAY_PHY_CONTROL which can't be safely
>> read */
>>   		u32 chv_phy_control;
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
>> b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index f626803bbd88..ff1915be59c9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -372,6 +372,35 @@ bool intel_display_power_dc3co_supported(struct
>> intel_display *display)
>>   	return (power_domains->allowed_dc_mask &
>> DC_STATE_EN_UPTO_DC3CO) == DC_STATE_EN_UPTO_DC3CO;  }
>>
>> +void intel_display_power_dc3co_update(struct intel_display *display,
>> +				      bool allowed, u32 trigger)
>> +{
>> +	struct intel_dc3co_state *dc3co = &display->power.dc3co;
>> +
>> +	if (!HAS_DC3CO(display))
>> +		return;
>> +
>> +	mutex_lock(&dc3co->lock);
>> +	dc3co->allowed = allowed;
>> +	dc3co->trigger = trigger;
>> +	mutex_unlock(&dc3co->lock);
>> +}
>> +
>> +bool intel_display_power_dc3co_allowed(struct intel_display *display) {
>> +	struct intel_dc3co_state *dc3co = &display->power.dc3co;
>> +	bool allowed;
>> +
>> +	if (!HAS_DC3CO(display))
>> +		return false;
>> +
>> +	mutex_lock(&dc3co->lock);
>> +	allowed = dc3co->allowed;
>> +	mutex_unlock(&dc3co->lock);
>> +
>> +	return allowed;
>> +}
>> +
>>   static void __async_put_domains_mask(struct i915_power_domains
>> *power_domains,
>>   				     struct intel_power_domain_mask *mask)  {
>> @@ -1051,6 +1080,7 @@ int intel_power_domains_init(struct intel_display
>> *display)
>>   		sanitize_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
>>
>>   	mutex_init(&power_domains->lock);
>> +	mutex_init(&display->power.dc3co.lock);
>>
>>   	INIT_DELAYED_WORK(&power_domains->async_put_work,
>>   			  intel_display_power_put_async_work);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
>> b/drivers/gpu/drm/i915/display/intel_display_power.h
>> index 05880e9da89f..0b1a06f88ae5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -131,6 +131,25 @@ struct intel_power_domain_mask {
>>   	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);  };
>>
>> +/*
>> + * DC3CO enabling triggers (bitmask).
>> + * DC3CO may be enabled when at least one of these triggers is active.
>> + * Additional constraints may still apply.
>> + */
>> +#define DC3CO_TRIGGER_NONE		(0)
>> +#define DC3CO_TRIGGER_PSR2		BIT(0)
>> +#define DC3CO_TRIGGER_LOBF		BIT(1)
>> +#define DC3CO_TRIGGER_PANEL_REPLAY	BIT(2)
>> +#define DC3CO_TRIGGER_ALL		(DC3CO_TRIGGER_PSR2 | \
>> +					 DC3CO_TRIGGER_LOBF | \
>> +					 DC3CO_TRIGGER_PANEL_REPLAY)
>> +
>> +struct intel_dc3co_state {
>> +	struct mutex lock; /* Protects allowed and trigger fields */
>> +	bool allowed; /* DC3CO eligibility result */
>> +	u32 trigger; /* Bitmask of active DC3CO triggers */ };
>> +
>>   struct i915_power_domains {
>>   	/*
>>   	 * Power wells needed for initialization at driver init and suspend @@ -
>> 187,6 +206,9 @@ void intel_display_power_set_target_dc_state(struct
>> intel_display *display,
>>   					     u32 state);
>>   u32 intel_display_power_get_current_dc_state(struct intel_display *display);  bool
>> intel_display_power_dc3co_supported(struct intel_display *display);
>> +void intel_display_power_dc3co_update(struct intel_display *display,
>> +				      bool allowed, u32 trigger);
>> +bool intel_display_power_dc3co_allowed(struct intel_display *display);
>>
>>   bool intel_display_power_is_enabled(struct intel_display *display,
>>   				    enum intel_display_power_domain domain);
>> --
>> 2.43.0
