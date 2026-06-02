Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFHkM2BhHmrCiwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 06:51:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F957628353
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 06:51:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A7C10EBB2;
	Tue,  2 Jun 2026 04:51:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ge2a4XHc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7270110E242;
 Tue,  2 Jun 2026 04:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780375901; x=1811911901;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EbHTMEYxKVfA1/NI9vnmZJ4EgLofTtc4PlRb3qL/Bbc=;
 b=Ge2a4XHcZ18FRsx9dX82wSY4Ob9NaEZBMyRMBtF/tQPNo+mIQgn3Z+jV
 nQ3HqKnR2be5djCbOXngO7Fihj74OwGpOD7mZGDD52i7xwPaV7qyhUl5Z
 yY1SLNGojM5kzKmXxPbESZZYSJPh/2u9CewzrsN/zoV/ex6yOk3dNEJrC
 ZEk+shecv26a21L/7V37GOqemEd3cVHXFf47Ov4xMRYsD/14rIfwG+OEq
 STQ5kvr9HT+8SHXUBAVbBW6lcidrGrSZK76rWaEz0Y/RYLZV2TNG7+xOZ
 8xwNh9DH9SZQ1ZNvvOkZngvzF/+wfvPZ+D8KY3pGYIKa+2RmAL7nLf65K w==;
X-CSE-ConnectionGUID: AtKeKn78T4qtKO4MEGBlyg==
X-CSE-MsgGUID: WJks93whRqyoSlPBy12p8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="92263247"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="92263247"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 21:51:40 -0700
X-CSE-ConnectionGUID: TVXhQKwORnu86Jv5NeIiXg==
X-CSE-MsgGUID: uIpgvs13THyQxqqC3tdvaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="248724773"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 21:51:40 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 21:51:39 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 21:51:39 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.2) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 21:51:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yAk79mFQ7RaqTZGHuD6VGO8Kl5zE2gOZgT2ZkZzri6qeYquB9bfPcl96CDbHf3kj+mTOpmzB71Rmm/Wcty9za+05Rv6rR2oXQH0/ZRxDXWPAzOTyeZaqQxc19YBD4PZAUleHuE01SWXWd1ggfH9icQMdEScZknCJNMAVMava69C5zFEHD59gmZlxbQHWRlnajwPHg0mZM+XLhDbbz/WTSe/JPgOA5amUbN7r8yjB2Y94oYPnJdAIkXKWklR10xBR94g6qv3X+v8yphX0YLd6XVDFr2a9hsi8XSA+zQ66hbztdouLl4JvYUGAeNY4oTrgnbBqXOdtP2ONvlfcbmZAgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LxzYLP5Rf75TpZCA36V8fpODzl01qu4G1hZzRdO22ig=;
 b=n+3h5paxGXvqSDl4UUCkjjF1DGld9Ksu42P/NUqW9x1NxN7Z2Ni6dPAUdzpL/ky3VyqfjWhF4zTTXgy59TZctQE2tJ17cPBrRl/LKZetM71g/laLlhqtynf23mrGWQW+AoBCj8FnUB834cR/l8jK36wPFl/7STgrzrMUR0/PG5Eg/RMIuD73WByOBa3ZSkCYWgnxe3EJzuMh80LBRtA/wSHlwSiz92abRNYoB9TFu/MRlUVul0C+c8m3QgeWFrbE5sKSnpe1JNS58qo9IXYdHe+mY7GrgoH9qmdX/annrj/m3kCauw97EIjRG5ZxwxWPpvia6Fj8GrIaN35J1NLkuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by PH8PR11MB6779.namprd11.prod.outlook.com (2603:10b6:510:1ca::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Tue, 2 Jun 2026
 04:51:35 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0092.006; Tue, 2 Jun 2026
 04:51:35 +0000
Message-ID: <11975790-98fd-4319-9de0-0d9d2a25fb65@intel.com>
Date: Tue, 2 Jun 2026 10:21:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/display: Mask RO bits in gen9_write_dc_state()
To: <imre.deak@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <uma.shankar@intel.com>
References: <20260506130321.487414-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260601090131.1840805-1-dibin.moolakadan.subrahmanian@intel.com>
 <4e28616f97067f232226a0fab8c2039cb124b2b8@intel.com>
 <ah1xA8My6FnwZm5R@ideak-desk.lan>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <ah1xA8My6FnwZm5R@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0252.namprd03.prod.outlook.com
 (2603:10b6:303:b4::17) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|PH8PR11MB6779:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b0e21e0-7cfa-436e-0a40-08dec0629fae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: Jjbx2Hru4iPcob8eSyxtmkkfFesvtnyK524XitcPaD2l3c/gr8bdHVNLxgnQjBfBtvs8VwXSiHBuwwzXX+m+WU2nkWwx4uiFPyrraaeOFUUef5CtO5SVeAHNdz11fXX3xK6Ri1oXZElEQEiQjvzSrP6j0joOLbEkphmYo7bdndum00Ubo47jVYtUFp6uuuaGHDQsQhSA6sC7rhHnJOCRZhZDWdBTHDVgtQn9uTQfgXIQT7Ec2X03TxbO+EbmgrOve112t6qNlTEE8bF4SCeqOC4PnUj2M8LPwV+4hU707Wb5f63ZyawFtJBWoodvVh65ebFbiqcr4OmC31K6fyRRpy8u6f2XNjQVytTrhJ2vp2jikJeoZOx57vvyXs5GLHxfzTHIPp2vLabdbVCD6m5LcNRhaWH1XGY5iZ2j8xcEkv3RGDIG8NNB/xbyHsw2mh0EXQpynKDsdb2ZT4uDsGRS3PJoysajWh5GH+4T9bJoiPLpoZ8rnbOco9NVZSc1SLdIB+Sdl5Kd9c6XYxsGO5fOyj8WyBWkIFq62hK+WY3Cd3D9uPqQMOlymE8eDQIP+A1SnajhvbrAxuyg8sIq66vr0/d/U8QBPUtEHOAKs4Rf2eNaTGv01GuDyxnalvv/rhWbxPa2O1WUrcVP6u6q5y3ae9P8QXjdlXFSlV+pFvzKRFhlw/GxHOsSWPYlIBHC48N0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFpXVmo1Wnd4dmUrbDNqTEd4cFB3ZFZoRGllV3BZTnY0SXdhVEFNNkFrUjAr?=
 =?utf-8?B?a0FIM2NrdUMxUUJBd3lZdi9MNEhhL2tQUWNSQ3JQZFg4dW9HMTAzUjRsVmI3?=
 =?utf-8?B?L2M5cVB0ajVVWTY5UmRTbThyeG8zVXlqeTZSYVlyRVRubE1aSzJkNlhXQUxQ?=
 =?utf-8?B?NHhmSjE0SzdvdmtwaUkvcFg0VDZEVHVlK3hoVTN2dkJ4bzNwWmJTNWRwOWFp?=
 =?utf-8?B?WmFzZUlJUUh5NUlWT09OcC9RNmRmRGJIWHNQbnVYYzBsQmVHOVVEMTVFOHJ5?=
 =?utf-8?B?VTVVZDFGREtRVXFQQTUvMjRUUWtEaHhtU21kQzl5K2x1SHQxb01SV3BBSktG?=
 =?utf-8?B?ejZBUWJUNVBMZVFvQUdBWTdsUHgvR1pXcFVpWHJXYjBpVWIxSC9wWHBsRFRG?=
 =?utf-8?B?RWovMUNGak5ha3AzbS9YT1RXeWhCVVplUnpSaW1ObWFiT2loMmc5WS8wM2tU?=
 =?utf-8?B?ZFFjbUthRnpkUVM1K0xOTS9rMTkxNGY4L25ZTE96dmlMaTlsaVk4bzg0N0lU?=
 =?utf-8?B?RUpLeU1DeDBPTmNZYVdkQW0yVGJuY1B5cnM3SWwzNnIvM3M1WWlTYzZZZGVM?=
 =?utf-8?B?bmpYUUswMU9GdjkwUjMveFZhenA4dGNyRkJiR1B6cjlmQXpUcXliSXJodE5G?=
 =?utf-8?B?MlR3WDJBbzJGSkZER1IvN2lnU3ZDY2hGMmhrejlFck50VHkwRk40eGRWdUk2?=
 =?utf-8?B?dURoN1ZFdjFGM0hjUHZIakNCOHB5SW5SNEJLNGFyY3BBbW9SS3Ezcnova1B1?=
 =?utf-8?B?eUZ6Z1ZwRmFabzZkYjJoS2JJbTlhbzZrYWt0YlM2Y2dnejdRaXRXT29IQnVy?=
 =?utf-8?B?a2RrdkFxRDlMRnNnN1VKVEJIbEtwTW1jNzBRUVp2Y2lrbGxxejlsdEdDOTZO?=
 =?utf-8?B?V1V3ZWw4ZUFkVjdJVTBxWjl3SmtEcVNVT0ZvTk9GdzBUWG1MZ3ptZkxaZmVt?=
 =?utf-8?B?ajZjMjVRZU5ZRTJldEg4ZDJGNFpsSWZFMFIzSUhjMGt0RmlqZXlnbU8yQWp6?=
 =?utf-8?B?UzhHWHdyUEhRR0Ezdm1rby9WRFBWTFJ6WnlLREYwdTJYekRHQ3JzUWxJSUQ4?=
 =?utf-8?B?R2FRVnZsSXB3Y3YzeGorZjM0TXIrR0tiYlcxYXplbFhVQmllM1htZ3BXdm45?=
 =?utf-8?B?SEhqVjNKK1A2ZTRtZVFtUW1xWWlreEdXU3A0cDRTb1FLa3c4eWZuTlF2cHVB?=
 =?utf-8?B?MXVRbksvL3JkSVlzSXBYMlNQemFnbFhmZlNJeExXZVRiTXh4ekxVTEtqUGpo?=
 =?utf-8?B?Z29rMU5kNzBEZFhPZlF1TlUwNlVnbFNXd1pRK3pIRlJDUzVraFZwZHRtWGNY?=
 =?utf-8?B?L0hwdlVzUE5ZS0tSbmx3MUovM0F4QXhYTFo3a0VWdzI0Nk80eGVWZ2lONDlq?=
 =?utf-8?B?V0ZhUU1CUjAvSUVMV0drNFZOenhEUklsT3BmYW9nOGtFUnloOGw3bEZaL280?=
 =?utf-8?B?SGF0RkdLc3ZvRzlEY2xFYWdZYTlGYVdwTXBLdENSOFhYdkd5cUJYbGJtMlpZ?=
 =?utf-8?B?RWpEeExuaXl4NHcwbGp5NU5sZnhZYm5XaTFEU0dXcm1FeldBc2tXZUZKU3JR?=
 =?utf-8?B?OWxyWmRHRDhFN3ByRCtWdzFvMk1pNUUyUVJTd21ZRGluMmlSOVdXTWp4dG5p?=
 =?utf-8?B?b2hTd3IzbGwyNW5hL1QweEVycXBYZDM3Z2xwSitZWWFONWsyNTl1Q2lmYjVo?=
 =?utf-8?B?bVVvd0F3a0Z4WCtWRXlKU29KOUdyWkdkZDFyZDcvSkVSY2YzRXVoNFdXZnJn?=
 =?utf-8?B?ZFJZdkNwaWNGQVdPWERPV3JtQTJWUGJnUjY5S2JQdTI4c1VkT1M1aXJnMnFJ?=
 =?utf-8?B?ZkxaaE1DUjd6V29JeEJMRzFPU3VTb1lMdHpackV6NGRFcHl5YTBVUCtIQ25a?=
 =?utf-8?B?WjJUcTlRcHVkaFRXYVRBQkRJcmFuWU9ObVM1blFJdi9RREFnSWRqekYySnZF?=
 =?utf-8?B?ZFlxeEJQS0VKUVlzTnN3TXVTSkdaRnJMb3NkMGZvK3VaNXlPeS8xRkw3U3pu?=
 =?utf-8?B?a0VtSW1YN3plUWRid0ovcEIxOGsrR2lwWmdiYWVtbEJhT0VxTDNuUk41MFVD?=
 =?utf-8?B?L2FodGtNeHlKQnpjMWZrdTE2V09ib09nMm5LQjArdmJoM2N2UVhFM2FLdE0w?=
 =?utf-8?B?SDBhWStocFJZZEdacHk5YmM1TzY4bDlGMlg2YXB5WTVHME13akkrbmhrNlBY?=
 =?utf-8?B?Wmp0NnFIM2l0RjU5VHlEMTYrdUExRExwV0NmeFVaSllJOEJDWCtTU0YxN1k1?=
 =?utf-8?B?cjB1eitxT0lqWHFuaytmZkhkdFJzSW9QclhLZUpaS2liUGkvM0RoVjM3bzRL?=
 =?utf-8?B?Z0JTcTdxQnorNmhoTGRHWTJta1FuR0VDMXl2ajlyYXBjY2NVdGE2ZjhRYndz?=
 =?utf-8?Q?Gp+BTaibImem8FzgDlyDfRHsuAidpDHwilQggOtuiaV8a?=
X-MS-Exchange-AntiSpam-MessageData-1: +PCcbe4HUq3AoQ==
X-Exchange-RoutingPolicyChecked: JYI1bvHTnxfHDbo2ZlTI/xuQWLxq9Y7Bzf/bWtzpxNUUG8UZFK8JnzfRvDTrIcrr29Wrzk8Q9K6c1kiZez35w/kWvoNmX9dlrW8L2UxL62lBnfFb7HEWfE4jAbRr0spLepeDsR5CHCBFHVxYmjt1Mx+4P8iznfjdaAh2cDpotieGVmhhpygFZsxXxAHVKN0tjgmnj+ZGLh2ZnjEfYGhCrF3JLowqFZJfG5NeKmk20Lp1qfadLtNLmCjdlvAt5T1sPruHrx62Y1UCacXeUHDH/H4TCY4EhXCABV7NIEqN+V1V+IUwmNIcloigpiJeDfqUg+GxgEG8XKzHy3kuxKNoYA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b0e21e0-7cfa-436e-0a40-08dec0629fae
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 04:51:35.3646 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1iRfuuUqsAVGmUvCjvhWVc0QXhoFMVDJcNJqdWF+7HLZ363M4GTnfgCupqL7zYt11ycPNK63HF5vwSULtYzYe0SIREIwRvXfUZ7en9mEr6FTKCiq8sgejpJKNAkFDoBh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6779
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
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 3F957628353
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 01-06-2026 17:17, Imre Deak wrote:
> On Mon, Jun 01, 2026 at 12:38:31PM +0300, Jani Nikula wrote:
>> On Mon, 01 Jun 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>>> The DC_STATE_EN register has read-only status bits that are set by
>>> hardware on some platforms. These bits may cause the read-back
>>> verification loop in gen9_write_dc_state() to spuriously retry.
>>>
>>> Mask the RO bits from both the write value and the read-back comparison
>>> to prevent unnecessary retries.
>>>
>>> Changes in v2:
>>> - Rename patch from
>>>    "drm/i915/display: Use rmw in gen9_write_dc_state() to preserve non-DC
>>> bits"
>>>    to
>>>    "drm/i915/display: Mask RO bits in gen9_write_dc_state()"
>>> - Mask only RO bits rather than masking all non DC state bits
>>>    in DC_STATE_EN.  As the register has also some clear-on-write flags,
>>>    like 'Display DC*CO State Status DSI'(Imre Deak)
>>>
>>> BSpec: 49437,69115
>>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>>> ---
>>>   .../i915/display/intel_display_power_well.c   | 29 +++++++++++++++----
>>>   1 file changed, 24 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>>> index 04bd0dde5bed..4bc9e3ef738e 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>>> @@ -726,14 +726,33 @@ static void assert_can_disable_dc9(struct intel_display *display)
>>>   	  */
>>>   }
>>>   
>>> +static u32 dc_state_ro_mask(struct intel_display *display)
>>> +{
>>> +	if (DISPLAY_VER(display) >= 20)
>>> +		return BIT(10) | BIT(11);
>>> +	else if (DISPLAY_VER(display) >= 13 && !display->platform.dg2)
>>> +		return BIT(10);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>>   static void gen9_write_dc_state(struct intel_display *display,
>>>   				u32 state)
>> The caller already has the platform specific mask, please just pass that
>> in and use it.
> Imo it's better to read-back verify all the bits written to the
> DC_STATE_EN register, not only those that the caller changed. The only
> exception should be the bits that are expected to be changed by the
> firmware randomly (the read-only bits).
>
>> BR,
>> Jani.
>>
>>>   {
>>>   	int rewrites = 0;
>>>   	int rereads = 0;
>>>   	u32 v;
>>> +	u32 ro_mask = dc_state_ro_mask(display);
>>> +	u32 val = state;
>>> +
>>> +	/*
>>> +	 * Mask out RO status bits from both the write value and the read-back
>>> +	 * comparison. HW may set these bits independently, so exclude them
>>> +	 * to prevent the verify loop from retrying due to RO bits mismatch.
>>> +	 */
>>> +	val &= ~ro_mask;
>>>   
>>> -	intel_de_write(display, DC_STATE_EN, state);
>>> +	intel_de_write(display, DC_STATE_EN, val);

Thanks Jani and Imre for the review.

> I would not change what is written to the register, rather use the mask
> only for comparison.

Agreed, will use mask only for comparison.

>>>   
>>>   	/* It has been observed that disabling the dc6 state sometimes
>>>   	 * doesn't stick and dmc keeps returning old value. Make sure
>>> @@ -741,10 +760,10 @@ static void gen9_write_dc_state(struct intel_display *display,
>>>   	 * we are confident that state is exactly what we want.
>>>   	 */
>>>   	do  {
>>> -		v = intel_de_read(display, DC_STATE_EN);
>>> +		v = intel_de_read(display, DC_STATE_EN) & ~ro_mask;
>>>   
>>> -		if (v != state) {
> I.e. here instead of the above masking:
>
>    if (v & ~ro_mask != state & ~ro_mask)
>
>>> -			intel_de_write(display, DC_STATE_EN, state);
>>> +		if (v != val) {
>>> +			intel_de_write(display, DC_STATE_EN, val);
>>>   			rewrites++;
>>>   			rereads = 0;
>>>   		} else if (rereads++ > 5) {
>>> @@ -753,7 +772,7 @@ static void gen9_write_dc_state(struct intel_display *display,
>>>   
>>>   	} while (rewrites < 100);
>>>   
>>> -	if (v != state)
>>> +	if (v != val)
>>>   		drm_err(display->drm,
>>>   			"Writing dc state to 0x%x failed, now 0x%x\n",
> This could also print the ro_mask.

I will add ro_mask to print in the next version.

>>>   			state, v);
>> -- 
>> Jani Nikula, Intel
