Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 100C59849A5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 18:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D31410E726;
	Tue, 24 Sep 2024 16:31:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ETf062jL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C15D10E726
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2024 16:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727195507; x=1758731507;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=8ovqw92CGTIFY1zT4v4wtqy1rCZwC2ULtRsPisJjDUM=;
 b=ETf062jLnNG+TMGDL9jKFWl+gjqw27INYFktYkMH9BCvNxDkitwDOLGA
 3Z9//+4KkvuZ5PxtFvwKarPYGr96ZSDx9ZUMQSZSgEIbHsQ+/70wYWMsz
 l9XsrUTMF0MduDpFwd2zFoB2SZuLDD+8oGuNoIyVPrPWYGy+AsG96fhKX
 Ry2LmEQ8dq3UTFSe9gu/ZkIO0df7FOoofOR+vpTMhb9dRKtl9dYEPOj8H
 N2PZcKtgi99x14HsgNvJFodPhqqk288kpcDKp0d4ELavMsbn56umGR4z4
 tBpXij+RnUXg1gbhXConilyFCBV4flBjiCS6p5sl1OiYahmieG7rPzNvv g==;
X-CSE-ConnectionGUID: LiGdQuJSRYWyxJ//hpi9ug==
X-CSE-MsgGUID: p9RR5d/oTAuBD5Z4/WxdUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="25712789"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="25712789"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 09:31:46 -0700
X-CSE-ConnectionGUID: /6wlUHjaTZ6hqsA0IQPGqg==
X-CSE-MsgGUID: O7D0w8y4RpeRTl/GowCJmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="71620270"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 09:31:18 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 09:31:17 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 09:31:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 09:31:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 09:31:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hn+6O7JN2AndoTzJ45mGF2Lfw/OGzaAX05fFKmQ/OpVWyUd/p186kdssYTugvInTICKkCbnlQISkdp4TynAymIvwN8RGWyU7Te3aPS4GJG8VSpCutPbMlnxaUBgc1Du8YqjjtHj84CYn36GoJDrv7G1Xpd7SbNXL8jyCec+Oj1C+spGzkieOthjsSKC0gAKksHsAPAtBy0HMcTk4qEQhuxtIOpGAuzvNEeL9y1I3ojkcMRrIZtf0rFmW0veQ3reBELSTr64IZrjZ1T7+IiM9O4w9P/fRmVH7wHqffikeO39yHqxOngq9bwJju4EZcNY9xx8AQyshYN5qVrt6ArTqRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KAMio1xq2NFauKO1QbE0yOCCykuF13EfvM/vmxEoH88=;
 b=OlKDo7YIVFIwoK487Q8zM/x84qktP9+DzaJs+wvlXqiJUl4PuENs20t71Ho4ihigaJcLu8/XCBNxleqpEfw2dvN1HABJgbhA7tQYUZsHtxi9sJNf5zqTy7KRTJbr15aOIeE3davnEq6Zi6i3Q//QlAHsNTzPbVKoh6kCsYxdYmTjqVE/UsaC/4XM0BNdHQd6BG8ELO5iDxC6tOUBJyf80W1JjGXq0hqvU51P7C/qebKEIoZSHVFpiV8uFxLE/PT0aAuARQnndJqaxtuqPqLI/MQxqCdySpVhAvIb/PepHAlQn6aNBVQUnztdfI+ngPOoHE47kjm6fP3HZ/XMbzFbhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by LV8PR11MB8679.namprd11.prod.outlook.com (2603:10b6:408:1f9::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 16:31:13 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 16:31:11 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240923043205.2016070-3-jouni.hogander@intel.com>
References: <20240923043205.2016070-1-jouni.hogander@intel.com>
 <20240923043205.2016070-3-jouni.hogander@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/psr: Implement Wa 14019834836
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>
To: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 24 Sep 2024 13:31:05 -0300
Message-ID: <172719546501.2700.9973827216192704924@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0075.namprd03.prod.outlook.com
 (2603:10b6:303:b6::20) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|LV8PR11MB8679:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a0fd098-2cdd-4b1c-722f-08dcdcb64c94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Yko4VGJjTit4M0RHKzZTYkRldld5T1M3VEhlVC9SbmhtVjc2TEpOUHRLSUZN?=
 =?utf-8?B?Ymd2MS9FdHdkZTdacm9iMjZqd1hnY0RoeEVNVlhac2NYQVFEYVJYTytJbFBi?=
 =?utf-8?B?MDdpeXBaWkZXbDRqZmVleWlIdEVHaTJqL1ZLd1BXMWxMQjUvVW5wZlRZeUVq?=
 =?utf-8?B?Uk04N0hxRGRLeVJjZEtNUnRwN2FRVjJnSmpUTlllb0JSRldUVzd4bkpHVFZj?=
 =?utf-8?B?UG5CMlMzK2RPb0I5SkE1WGRTdzdWWnBtbEtkOHdES1hBUUpuK3k0S25EVzdu?=
 =?utf-8?B?VW92WjR6cDFpU1FiNHJ6SEtXcUlwSW8wN3JZcmpKOFAwZjBNQS95TTdIZEtS?=
 =?utf-8?B?WmxBVnZwQkovcmpENmtoNEdKRTE1VS9lTGxrOHdobU4xa0EreGtVa1d0ZENH?=
 =?utf-8?B?akRoMGlrdGNILytPT0lUQVo1OFJKbHBSUExSYjYyZFNKdCtvUFlpeW5MS2ZH?=
 =?utf-8?B?SDUxRC9RdktoUDNCZURkRjFsOGIwRjJkbTdCSmU3QmtmcTNBYVNTNkVaTWJ0?=
 =?utf-8?B?dUp3NU5PeTdCeTg2S3pRaHphSW1IQTU2NFdKWWsrR1RPdWtuem40c1JCM2R4?=
 =?utf-8?B?NWZQbjg3U0FzLzRYTkJjRkZhNUdqMlZvYkVpdkpaUGNQRG14LzhqVUE5L3lx?=
 =?utf-8?B?SlhyRkYzclhlcEVOd1diUVhCb2dWSUlXNE44RW5IeFpsQWh3M2RSZTZNWUQv?=
 =?utf-8?B?Mk1odFQzTlRnMGQwakUwOUZ6eG1BenNGVUl0eW5zcEcwVzdlSDJnSXB5SDRn?=
 =?utf-8?B?VWlPYk9yMEVWNzVHbE5GOWRJdmdvbGowTFRFQzQwTDFaV04xMTlxUHhpa3lS?=
 =?utf-8?B?N2t3ZWZmbEQ1TmlabmFqOG9ESUpOeTRhTWM3STFyTng3U0Q5US9hNXQxaEht?=
 =?utf-8?B?UHQ5Z0xVWU1VRzhaQk1TcjdSWEloSVZUQXFyNDdTQldYeDZwYkdqOFdqVEwx?=
 =?utf-8?B?d0ZJUWNmUW9KbkpYdXQxOVhDcmVKN0hnTlppTTZ0a3JCS202MTdhWlQ2TGdp?=
 =?utf-8?B?ZUQralpHTmhya0xUR1cvbmdwU01SRkhvWHpLMGNVQnpYNEUzNnRwSEJlSFNN?=
 =?utf-8?B?SkljbkowMDkxWUc5MHg1Y09YemVhanN0eHVQMnF4QjhaVE9oWDZ0RVRTV3Z0?=
 =?utf-8?B?K2J4VTdNYngrenkvdWtPMTVuMzQ1b0dGQ1c3bkdhL1NNUzFBd0h1ZE4vR0Y5?=
 =?utf-8?B?eWpyTWFkL1B2akNER25qK0h6ckFvQ3VUVmVmMlV1LzNEZ2lSSEJpalc0QUU5?=
 =?utf-8?B?M0greEhtRlFBNys4aFVNNDRUV1R4c0k1Q1F5TlAvWGI3d3lHUU1BZ0JHZnJB?=
 =?utf-8?B?RkZxVnNKTjV0QjBSQUR1R1ErWU5tLzB1YzFoM0pPaGRFLzBVT2VSUHVpQ3ZG?=
 =?utf-8?B?YjU1ZENBUUlyeC93S1VsQ0hWemlmUFpoYi9FNmVLdnRyQ2FyY29oQjFFWnIr?=
 =?utf-8?B?SmFrSVRmNnM4UFVHMnBlWDRjUzQ4NlJUVVM0aWxIUG1KL2gyKzl6WmhxZStt?=
 =?utf-8?B?L0ZJU1NQRHlpVVBZcDJBY1JWRDNPMC9yL2xnRjc1WFZmZS8wMjFIWXdwaVNR?=
 =?utf-8?B?TWNYOW5ZeFFIamxlb3F6U3dvNUdiQkpCb0ZlZnMwOGFuUGxHdGJjTHVMb3Q3?=
 =?utf-8?B?TkNCaENmZkRSbW9JdFg3K0tpRkhpMkFQTDdCS1RJL051aGVmTXJFYmFId1FP?=
 =?utf-8?B?WlZyem1xSUpZYUVjUlFNL2FnNmVDODYrb1hseSt0M3dMczNqM2xqTG9tWlM1?=
 =?utf-8?B?T09LYzVUOHVGcml5aWVYUjRvL0k5UmtoVHdaQ3FiRU1lQkRhTklCSWpmRmUy?=
 =?utf-8?B?RFF6VE9XbHRaVklleXhMQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFE3cGVVZ1ROTWNqQW95WTVIcUtyUDA2VmRLVldYNGM3TGdldnlzRGdueUVI?=
 =?utf-8?B?M0RhdXdiL1ZxSVdMUjRmMmNZOC9nWm15ZHpIcUJVZEl1WW1ZQ0x2bEhBYmJB?=
 =?utf-8?B?RkMzV3hCMy9nK2JDaEM5eXhsTFJXREIvMDR3TSs5d01USllGVVhaYnlRK1Rm?=
 =?utf-8?B?QnQrTEt1cjNLVzFJZ2V6OWVYblNLR2U0OU40eENiQ3paN2lIL2k5V3NLbkN1?=
 =?utf-8?B?VGZ1MS9Vcyt1K0daN1kvVjlhTERjcmhpZFdjb3pNa25NL1pTWXc0T0dVdGpR?=
 =?utf-8?B?cnBiZmRnUzN4RXhuRDVmTWdLeXVZVnV1MEU1a014Rzdyamtqc25IWDZYUVpF?=
 =?utf-8?B?dk5ZRWp5T29FeW1tV3FXWHJuOXUwbkhUcE10UGovYnBNV2lqd0ZpN3QrdTAv?=
 =?utf-8?B?aGJLaldFN2x1c28zdG1ldUlyNUY5ZGtHME9nSERKNnhkeGhwV21iVGg4RGQv?=
 =?utf-8?B?L0c2UXg2RXltUUNyTEJwSDdkanJ2WEZHTUpRWENjQVNaRGdjeFJlWFJKa3RK?=
 =?utf-8?B?ZTR2VHJlWjNCTVRES2VmNEtLS0xvcWIzaXlkYnZhZDBETXIwZ0pjOHZDZjM0?=
 =?utf-8?B?QVpUbkNJUzVIelM3YzI5QUVFbXVpZE1Pc0FGZ29rYk5RWXhLRmFkSnlwb09N?=
 =?utf-8?B?VXZ5L3BlaHZtRXhTcnhWRjE2TFFrM3FJT01GMlBPNE5oK1B5cEVsenpuYnp6?=
 =?utf-8?B?Vkw4cmxMVHZDQUxBaEJNTEpVV0ZEV0twd0JLekE5Q2lhQ3JRNS9tOENKdzFP?=
 =?utf-8?B?TkQ1MFRqM2tKK2M0RUczcmZodUIrZ2ZBMmVDSWJCUEFIZ09nV1pnYmVrT1dR?=
 =?utf-8?B?YjZsOXZnWldyekVqb0tQM3JWVDVBSUxjUXFpZCthSlJVdjFXQ0xrRnJJcWZM?=
 =?utf-8?B?ZHdXMFZxRlpsRWtEN0VkSDRzVm1FOS9CbEVwVWtoUkp1Yjd1MHF6blIrcmF2?=
 =?utf-8?B?THJ3N0U1OTBhaHVZbFVFSUVJQitKdld2ejJLMjVSUDFSZzg3UUo5dEllVHB3?=
 =?utf-8?B?Z2F6UUdjODNZYVBFYWczdFU0anlVYkd0SjlNNmRzbi9Ta2VZTERVdHc2N0Zs?=
 =?utf-8?B?VU4xcGhjV0tWT0FCNHZYL2NNd2JzQzlOSktzamIvSUg2a3pPTXYycUZod0lO?=
 =?utf-8?B?ejJiMkNjc1hXQzc3MlUzclNQQmo0M0dLV0lGZitVTDBkR3hYRzRiNUd5dnNP?=
 =?utf-8?B?WG5MMW5FblY4bEVaTTU3UklyLzBKWlN4SnlhS0lSQ2RPNDRzTEpNRnp2SjJP?=
 =?utf-8?B?azREMWdBcnB0UTdmRTN6akV2b09kSWRaTndSaEduWmQ4UzU5VUF6RWlObHdP?=
 =?utf-8?B?VmhwWjdKKzJJUGEzSHFVRUw4cUtoTGZiNVpIWGE2YkJITXBwWGRXa1VKRmoy?=
 =?utf-8?B?Y3ZCQTAyYS9YeWxEWVlzZlVTSStLTXVPSjZlWFNJeTc5ZkpmQWdpemMzdlRD?=
 =?utf-8?B?dTNIaEdqZDB2VS9nYmVidGxYeXhGWnlrNWxRLzliYmhWY1ZXNWovYUt0Qytk?=
 =?utf-8?B?MS9xb2dlNUxFRnRRdkJUZFJKVFROWkx4cEcyNUh6T3JIVC9OYmQ4WmpTMVZ2?=
 =?utf-8?B?dEl3b2RhakhjU2VHMTdxUnN5Vzd2NTVSUm9GUjVoeUlTSWJmVEdrNDh6aGtR?=
 =?utf-8?B?YjhFNmlOdDVjdlZXNjVscWN2TnF3c1kxeGJ1WDZsOE1pbUxubEJDbE9RaDlU?=
 =?utf-8?B?UGVJTFFLVnZMSDZ0Q2s0ZFpTNXB6NnhVVlpndzg4dStEbEZTaitWVnMwMlNj?=
 =?utf-8?B?YzN1Z21kME1DR0Iwb3ZabmpiWlB6L2FBM3BpRkwxdW5OdG9HN1pqbjlXV0pQ?=
 =?utf-8?B?Si9Kc25sOVo4NHBVeklKci8wRmtQNmtma3VUejhPRndhb3VjWDN6Q0s1aUpx?=
 =?utf-8?B?ZmhIMDRnQWQxeDgzbko5WURoM0d2b2NXdldPcHR6ZjVJOXkyRUs2Ni9NUjR1?=
 =?utf-8?B?ZDZNREtQNjY3VnJKLzl1dVBKQzU3VDJxUnNFTEhBVktwT2plRmNJOVZHZTVL?=
 =?utf-8?B?bi83VXlIUmMvNE50TVVxK2RmdnV4anppSGxkK09zRndPKzJJV1FmM2ZrL1JZ?=
 =?utf-8?B?UGY3Kzc4ck4xUDJyckNiTndHYytTaDc3Yk05RnZsYzRUWEY3cWxNd242QTUx?=
 =?utf-8?B?QmpoWXB2d2E1cVQwVlRwUURHQ25FeUt5WVl4MEQ1a1FmNkdwdElVejJIQlAw?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a0fd098-2cdd-4b1c-722f-08dcdcb64c94
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 16:31:10.8739 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VsJ9hvUXoYs4mkup5IW28SwGEdZUbt4oribS34IQk1n+/OmXRkHuoyO2B9aY2UFkiOwu6JZXp7sltK+ZiIO6UA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8679
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

Quoting Jouni H=C3=B6gander (2024-09-23 01:32:05-03:00)
>This patch implements HW workaround 14019834836 for display version >=3D 3=
0.
>
>Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_psr.c | 30 ++++++++++++++++++++++++
> 1 file changed, 30 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i9=
15/display/intel_psr.c
>index f7dfd9435b589..e529132da93a4 100644
>--- a/drivers/gpu/drm/i915/display/intel_psr.c
>+++ b/drivers/gpu/drm/i915/display/intel_psr.c
>@@ -2493,6 +2493,8 @@ intel_psr_apply_su_area_workarounds(struct intel_crt=
c_state *crtc_state)
> {
>         struct intel_display *display =3D to_intel_display(crtc_state);
>         struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->=
dev);
>+        struct intel_encoder *encoder;
>+        int hactive_limit;
>=20
>         /* Wa_14014971492 */
>         if (!crtc_state->has_panel_replay &&
>@@ -2500,6 +2502,34 @@ intel_psr_apply_su_area_workarounds(struct intel_cr=
tc_state *crtc_state)
>               IS_ALDERLAKE_P(i915) || IS_TIGERLAKE(i915))) &&
>             crtc_state->splitter.enable)
>                 crtc_state->psr2_su_area.y1 =3D 0;
>+
>+        /* Rest of the function is for Wa 14019834836 */
>+        if (DISPLAY_VER(display) < 30)
>+                return;

Should we really have the expectation that this workaround would extend
to future display IPs? Maybe it might be better to use an equality check
here, just so that we do not accidentally apply this to a future display
release that might have the bug fixed.

In that case, I would have the workaround logic in a separate function
and call it only for DISPLAY_VER(display) =3D=3D 30.

--
Gustavo Sousa

>+
>+        if (crtc_state->psr2_su_area.y1 !=3D 0 ||
>+            crtc_state->psr2_su_area.y2 !=3D 0)
>+                return;
>+
>+        if (crtc_state->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420=
)
>+                hactive_limit =3D intel_dp_is_uhbr(crtc_state) ? 1230 : 5=
46;
>+        else
>+                hactive_limit =3D intel_dp_is_uhbr(crtc_state) ? 615 : 27=
3;
>+
>+        if (crtc_state->hw.adjusted_mode.hdisplay < hactive_limit)
>+                return;
>+
>+        for_each_intel_encoder_mask_with_psr(display->drm, encoder,
>+                                             crtc_state->uapi.encoder_mas=
k) {
>+                struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>+
>+                if (!intel_dp_is_edp(intel_dp) &&
>+                    intel_dp->psr.panel_replay_enabled &&
>+                    intel_dp->psr.sel_update_enabled) {
>+                        crtc_state->psr2_su_area.y2++;
>+                        return;
>+                }
>+        }
> }
>=20
> int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>--=20
>2.34.1
>
