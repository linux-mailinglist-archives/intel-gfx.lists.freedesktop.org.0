Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AC794069F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 06:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A60F10E4BD;
	Tue, 30 Jul 2024 04:47:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VUv5+yY4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4375810E4BB;
 Tue, 30 Jul 2024 04:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722314842; x=1753850842;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e4QI3TMU2UNoQcVNm7ffwAAssc9bSvop1gZ89Dp1sXw=;
 b=VUv5+yY4dnlEJPUAxJa8ngThgrQ59v8Q3uoF6GfkWTYaTnGfmoe4M+uz
 /4WY9YWOj3XyN+i9G+boms4sKkIRi3E7dZx5CDHYX7S71ih3qWKajI0KL
 iUGFJSX2xKtil7P29YBso50vvRsQAgxqdPQFXF0uqujmIJ2WUgUFnKOI8
 t/yFBSZZ1bz/YEpNAbLutMPvkfQvcXIJLbG7iQw0p0kVylGRA6d1kmIDZ
 UpJgHsSrq8I9DeQ40GJkxX6DThgW6I+DPINnU8O03d/DUwr6OmBcrYRZT
 /A3amWdimxbfLUI2EpiHX+Z3nKGudxvK+fkJZnmtaRoY6MeQznnltAXGC Q==;
X-CSE-ConnectionGUID: F7k0qlOUQACVlaKZ0OTcDA==
X-CSE-MsgGUID: 5FWaJdd7TQS6DZr9Cf7m7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="42636427"
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="42636427"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 21:47:21 -0700
X-CSE-ConnectionGUID: RfpFNKV+SfSfHMLA2E6R7A==
X-CSE-MsgGUID: 01UDocF3SEO6jTQFMY4UzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="58985071"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 21:47:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 21:47:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 21:47:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 21:47:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dy7C7QBwa7f41gbiqiCGCkLIAfiSwdeq08xY3+OheF0nf5qrbtIpgqYh83ZkACCJUATeiPuiV23LDKA5Vef5rRW6RVaydZG9UrIVvyGEbZmjPFrdED9jWdwzTGk0uNzpc51Zhny6yokhMWG32qP23SkW7Pd9g+95QbQJqcjHqRMQnGDPESuw9sOCp1kgihFoHnTdkCb5g2Fl7tiOyNMIkHtG/vJ2QFRJ6aEWnL31Shv6gTSFeHhuUJ1fEsDfEY0dd5uk1Hw1ZjaJ/kkLd+dsSF6a1+z26AuzCGKjAF4UFEk/KF2OUIwNQgbxegTNqjM3Qt1gdsPSarKQBhDKfewZXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7A6gsse+XHadbNiKpA1BxerPC/HpJ3cOXmbXWN9qgGM=;
 b=mWReSQ68Cp/2uLA+n9yq0bXxL5SeKiqvPpLJ4Ew6h3IyVB/lkv90uB/oA8C/F16y9HUKicvD7u04hbK0sjAlZ7NWPy17oTZnUYAFmWG43vzm+Mc5wZtK04M66QhTqF1+3U79rzYSwbp+RGLHq36ZGWIzzsbqeAyLW9a/5ZNDbVD5h8i6DD/xW34AEcOVbUoKckSyeiw8c6cGczREDYlC5AFDoEB9g9GMkswu0/y9opgrbhc3x7gcW40mLxJv1tp9KXHneCn483+bCR70eiM0euTUw9hbIz+FZA6Vk+nd3+0oxEYrnC8hFJq45jfG89qgrECWW1esZizVnRk43rbIog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 DS7PR11MB7907.namprd11.prod.outlook.com (2603:10b6:8:db::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7807.29; Tue, 30 Jul 2024 04:47:18 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245%5]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 04:47:18 +0000
Message-ID: <550e3d0d-543b-4925-ac66-e953ccdfa0dc@intel.com>
Date: Tue, 30 Jul 2024 10:17:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 i-g-t] tests/xe_gt_freq: Avoid RPe usage in subtests
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
CC: Badal Nilawar <badal.nilawar@intel.com>
References: <20240730001721.2389519-1-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20240730001721.2389519-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0004.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::14) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|DS7PR11MB7907:EE_
X-MS-Office365-Filtering-Correlation-Id: 662de477-a3ad-4142-3c75-08dcb052b0da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MEFWTzJJTjljeWRGdk84SURROWF0ZnYrNzlHRVNBcTB1dCtqV1pucklCVWNl?=
 =?utf-8?B?dWZYMjBmTExqTTFlZ2dCOGphR1hMaWFUaGhlQVB0ZXExSDVTWnNTdytad2lJ?=
 =?utf-8?B?ckxEQ2xqZGtLSWJmT3BPd3IrdC9RY1I5NkthN0p2K0pUaTBiZUJiR2h0d2hj?=
 =?utf-8?B?dllpU21vWE5BcThtTmVTcEZDK09rQmZFRWtYREg1YjA2RThiSzRsV2JxNWNy?=
 =?utf-8?B?Z3o3TVNwMC9oUmRucS9aeS9rNUIzV3hySUhZMGVGeXNkRGhlV2tZWUQvbDR2?=
 =?utf-8?B?aEpML1orWVFEMDdQK3MvcFVyNjdkL3lwcEgrWXd4OWNNMllrclRoMk4zNjEr?=
 =?utf-8?B?YWo2dXJvdytPWm9EU3BTRVpEaDJQd1BxaUEyQ2tPT1l6WFYzbDE2N0U1UzJ1?=
 =?utf-8?B?WDZQZmY0cHN0WnZ2M243QXJwcmZ2bWk3VFBKUHpQZFBNaU9LVFJmSmNETzY0?=
 =?utf-8?B?WDZJWm9jNUtwb29LR1FqUFZxVzZDOEowOUF5ZDNYWnFLYVpaU1NWWFVkNEtG?=
 =?utf-8?B?QUpFNVlHZzE1aXk4ZnI2OTVqUmk5K1hMKzVIU3Vja1laN3V0dTVPdzFTQzc5?=
 =?utf-8?B?UGF4MklqcW5uMk9UUWpaWFVBR3JCWkFQdkpXSndoVzYzNUE1SDc3aE5xdlVw?=
 =?utf-8?B?TE05YWNyTE5oY1BveVZ1ZUVydjErQmRocllRbWphdG03emZKVEQxMVVtaSt2?=
 =?utf-8?B?c1RqaXU5bWdmaUhNWGJmMEgzK21HOWpyL0ZRcGJna29Ta09TU3ZTKzIxcjky?=
 =?utf-8?B?UThlT2V0NE5UQzY3VUJKNlVGZlRxWGV3cUVkMHJvTXpRR3BYcHRuMVFvTnVP?=
 =?utf-8?B?c2FZKzZYaHJUUWxvNkFZWFNyckpHZlRTejVFbWpXUzUwSXROVUdXd0tyeloz?=
 =?utf-8?B?ZkE5bWRSMTJnN0I0MTNKV0s1d2Y5T3pxZlF0WU9rT1Rwc0NORi8vUzBmQ1Jy?=
 =?utf-8?B?WmxldU1aU3ZJU3hWcC9ZUkU4Y0xvNlhScW5GeGt2RXdiQjJLQndCSUZTTFl4?=
 =?utf-8?B?V2RTZjFlQUpnbHZaMVgxbjFPS2s0cGpldk5GU3hlYjd2bnRqaWRjR3VFRDV2?=
 =?utf-8?B?NVpSaE5rVERybzlxVEw0NG5Sck9odmJ5NTdzcVdUWnhYa3ZETFgzYTZxYjc3?=
 =?utf-8?B?RVlvenBFc0VySEN3dklXV0dhQ1VmTjBVKzdmNjB0S2ppYmFVMlBpdEoxdXdw?=
 =?utf-8?B?NnVOT1VJcEZyejRiVERwSDlEZGNIMGE1OTczSzlDR0Eya1BveDl4L2ZhK0ZJ?=
 =?utf-8?B?Z0JRN1YxQTJjK2J3LytRbERzREk5OGtjQS80QUFOaXVyQ29MYk5LbTBRWXdi?=
 =?utf-8?B?L0JHYWxvUW1LS25vaEQyRjBVQkNXMGxEbEJBSTdpckJzVzFKSWJIcFVnYUhO?=
 =?utf-8?B?RXBFenNIaFovYy8xNDBVMnJsV2VScU9ISDFtYzhYN0V3RGZ0YXFpSG8yVWVG?=
 =?utf-8?B?Qy96SzU4amxGUHN1Zmw4QlQ1K1FPbjludGk2Mkw5ZWs3NEJyTGVFTUU1SVQz?=
 =?utf-8?B?NkxRbkxONStTcytIdkNmMWpaRDV3WHdXZHNXbXF5V2FFT212SVNoaTFhcU9S?=
 =?utf-8?B?d0RIMzZ6cEFMSVA2QkJXUld3RDQwd1ZwM0VCSnB1b01BYWZmNzhHLzhPQkFi?=
 =?utf-8?B?NFF1OWE2ampFTkhHcE9WNmdtdnlvYmc5VlZ2L3FzQlphZURFNDBycW1MYWxY?=
 =?utf-8?B?TCswN1cwQXh6TWFJWkJFZElwaG15ZjJzZWhqbk9IT1lwSUk3SFB2djN6Nkov?=
 =?utf-8?Q?+zQek3bWNXoW8OhZ3U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUpGK1Zqa2czS1ROMXBHSXZDS1RnTVBKYVBxZnVxWncwQVcvdzYwVnJpR1Jw?=
 =?utf-8?B?MTZTeDhxNWE3ckNOcEJrbVBnNkJ2L0xBdDNraFBXOHBpakszb053NWZBQitl?=
 =?utf-8?B?emU2VElJWjZ3ZXZWbGQxSHJ4eHRFUTJqblFUZlhVbnRKUzhsL3NJN25PLzBZ?=
 =?utf-8?B?ZCtwYXVMRldXODcvZVppRGY1V3dPWDMyMUpTZWJmY1RmaFpVaWhVR20va0I5?=
 =?utf-8?B?Mm1TQmN4THVISnU4clZlUXVhb2NGd0hrVTNEN0RtOW01V3dVdDhRWE1lSXdk?=
 =?utf-8?B?VVBhNWVxM3JUcWNtSTBQYnVsVEVVU0NaYVdSNXRWMXVVQ3J6RFhjQm5JS1Bp?=
 =?utf-8?B?RGNOZSt6d29GWjl2OXM2c2ZZbmd6emljdTBQdlFoOGR1UXl4ZXhOMlF3bkRC?=
 =?utf-8?B?d25BNlBqRUlnYXVYbGtMSzh2cjJrTnhYZWhnRmtibDFDUXk3R2xkMld5Qy9M?=
 =?utf-8?B?RnRNeTNpQkhtQUtOdWE0OW9SdFdoamJ0R3BOdG9KRUxZUzdKeE51VVMwNkZT?=
 =?utf-8?B?dU92QkdheUN5Wnh2bkdDOWFnTXFJZW9RekdPMmZkNzhLcHJLdGx3b3JzKy9y?=
 =?utf-8?B?OENGeTNLNjNaZUtldFNRZ0JUZGhtazlFdE1lR3lHWmxZa2J0YldTQ0dGSE5K?=
 =?utf-8?B?dnRqT3NUVitITFJ6dmR0cEZCZTUzOXVJUGJvU0NYRngrR1RQUkhxYk5rbTlY?=
 =?utf-8?B?YzhoNnlKUTFYSzRvYTN6OUVPeUw5Uk44ZDZRM1pkVk16elNGSUVhbVIzZm1y?=
 =?utf-8?B?NytpajdwRVJzcUg5cGs3YkN0RFczS1pYamVDMDg1Zm9UVFpOR3RZYlhmaDMz?=
 =?utf-8?B?QkNBSi8xRlRKV2xZN1E0cTd6VHEydG9pcnFnUXd3NEV4VmMybmV6cTQ1YmVy?=
 =?utf-8?B?eTBsQW5tQ1hCa0ZhMVcyTHJidk5SQThNQ2ZaQnlQeFc1ckpvcWI5UTBYSzM4?=
 =?utf-8?B?UDdSZUY2c1F2bzMwcnJ6OU1mTEJWMmpqMnJiQVQzNWh2YVRuYkhUWW50Zlpm?=
 =?utf-8?B?RnI4d3BiL09kbnpYQllKNVZuVnczczdmTG15clpXWmhuTDlhM3BoSmFLYVJL?=
 =?utf-8?B?Sys4YkJjZ3I3UWtYSUF4R0ZjZk9Ld2RQS1hWOWxEY1B2QktseUxSVlBwVFJp?=
 =?utf-8?B?SmhzTjhmMDh4L3g2V2p2cDhuM05GZXR5RzZ4NHJPOW5mbFhWdkxnd0ZOekxm?=
 =?utf-8?B?UU5ucFB2RTE0QURycUxyTDBnazhnRURxdmx1Y1BmNDVJd3VxTWl3N3JVMTFI?=
 =?utf-8?B?T1NTTEh3RG5sdEw3ZTl6VEVKTmdscnhCNjN5d2J4UVlpZFNFUUxteDlvNTRR?=
 =?utf-8?B?Znd1SU53a0tYdDZwTkw3Zms2OG92M1JQSmtjcVdqZTBIc1dJRnQ4a29kdEIz?=
 =?utf-8?B?QTdMa0pWQ1NPSG9hdmNCbW1ubXFrUUtFOFhsWHozNG9Dd3czUHlvQlNJTW1v?=
 =?utf-8?B?aTNzSUhMQzlPYUZwMFY1cGdHTkRwakE3UVk5enpRK1cxblJZTUFHajF2RXl0?=
 =?utf-8?B?ZzJsdkNlUEl2NExHcG1jL0wyeURRdEo3dDd5UHg4Wm5TcTFmTkh6MzRuYTBU?=
 =?utf-8?B?b21hc1dvaTBXemtlckUxc01iMHVqN055UmRrT0RpZWlqZzZqV1cwTk92dm5s?=
 =?utf-8?B?NmJtSUJSZWV1WFNzczJsa0VOcFpMZjlYYklPRXdVMFg3UXlENVhScXNDb3p4?=
 =?utf-8?B?aU1NOEU3UDN2bTNVdzk2d1plMUllNlp2bzVmZTJDdjdnb1Y3Y0o2TkhhRDdu?=
 =?utf-8?B?WHBXYkJRU2lxZUliUkxNTTFBZTEwenV2RnRGc1NpbVFPa3JJUXJIcXU4OVps?=
 =?utf-8?B?Q2pJV3M5NnllVzJ3b0VMdU51c1hNbzMyeXFmVWdyU0loNTgvSzVKZ3k2VzA5?=
 =?utf-8?B?LzRFRnJFem9vMU1IY3BHVDV5dG9tTW10TDdxcVI3R0xuM0FMdEpEb1IxeWtX?=
 =?utf-8?B?RXpHZkJkdHhyUHVQRHJRU0cxL1Y1VXU0WjhDTTV4YkhLdXBsQm02VEgyN1VX?=
 =?utf-8?B?UHpicktxOVF5ZHhCc0JQYURqQWFSUU00alAzUDZwZlhLQVNqVGU0UEkyV0dJ?=
 =?utf-8?B?MWliUGZudE9ud3VOYmF1dndCR29Wa3AyVkJybVVZUWk1WThjanZCeVo3UHN1?=
 =?utf-8?Q?kAAxQxpWQzyggRaGDS6uq11Wg?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 662de477-a3ad-4142-3c75-08dcb052b0da
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 04:47:18.4281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WVKMhT7JTZucv7ROkS5RPNEXOo/uohwIoQ09uheeT6l21Qt+U8mpIF/ikI9oZvYYAriWZshgH/E8B+VM4/cY5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7907
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

Hi Vinay

On 7/30/2024 5:47 AM, Vinay Belgaumkar wrote:
> We are seeing several instances where the RPe, which can be altered by
> pcode dynamically, is causing subtests to fail randomly. Instead of relying
> on it, we can use a mid frequency value for these subtests and avoid these
> failures.
> 
> v2: Fix bug in the tolerance function. Remove rpe usage from freq_range*
> as well (Badal). Fix test documentation to reflect change (Riana).
> 
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2200
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2196
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2262
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2256
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2203
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2412
> 
> Cc: Riana Tauro <riana.tauro@intel.com>
> Cc: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   tests/intel/xe_gt_freq.c | 53 ++++++++++++++++++++++++++++------------
>   1 file changed, 37 insertions(+), 16 deletions(-)
> 
> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
> index 93ebb5ed0..1ada37834 100644
> --- a/tests/intel/xe_gt_freq.c
> +++ b/tests/intel/xe_gt_freq.c
> @@ -26,6 +26,9 @@
>   #include <sys/time.h>
>   
>   #define MAX_N_EXEC_QUEUES 16
> +#define GT_FREQUENCY_MULTIPLIER	50
> +#define GT_FREQUENCY_SCALER	3
> +#define FREQ_UNIT_MHZ	 DIV_ROUND_CLOSEST(GT_FREQUENCY_MULTIPLIER, GT_FREQUENCY_SCALER)
>   
>   /*
>    * Too many intermediate components and steps before freq is adjusted
> @@ -70,9 +73,14 @@ static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
>   	return freq;
>   }
>   
> -static uint32_t rpe(int fd, int gt_id)
> +static bool within_expected_range(uint32_t freq, uint32_t val)
>   {
> -	return get_freq(fd, gt_id, "rpe");
> +	/*
> +	 * GT Frequencies are requested at units of 16.66 Mhz, so allow
> +	 * that tolerance.
> +	 */
> +	return (freq <= val + FREQ_UNIT_MHZ) &&
> +		(freq >= val - FREQ_UNIT_MHZ);
>   }
>   
>   static uint32_t get_throttle(int fd, int gt_id, const char *throttle_file)
> @@ -128,6 +136,8 @@ static void test_freq_basic_api(int fd, int gt_id)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>   	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
> +	uint32_t min_freq, max_freq;
>   
>   	/*
>   	 * Negative bound tests
> @@ -142,16 +152,18 @@ static void test_freq_basic_api(int fd, int gt_id)
>   	/* Assert min requests are respected from rp0 to rpn */
>   	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>   	igt_assert(get_freq(fd, gt_id, "min") == rp0);
> -	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> -	igt_assert(get_freq(fd, gt_id, "min") == rpe(fd, gt_id));
> +	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
> +	min_freq = get_freq(fd, gt_id, "min");
Seeing the first issue after this change. Do we need a delay?

https://intel-gfx-ci.01.org/tree/intel-xe/IGTPW_11490/bat-adlp-7/igt@xe_gt_freq@freq_basic_api.html

Thanks,
Riana


> +	igt_assert(within_expected_range(min_freq, rpmid));
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>   	igt_assert(get_freq(fd, gt_id, "min") == rpn);
>   
>   	/* Assert max requests are respected from rpn to rp0 */
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>   	igt_assert(get_freq(fd, gt_id, "max") == rpn);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> -	igt_assert(get_freq(fd, gt_id, "max") == rpe(fd, gt_id));
> +	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
> +	max_freq = get_freq(fd, gt_id, "max");
> +	igt_assert(within_expected_range(max_freq, rpmid));
>   	igt_assert(set_freq(fd, gt_id, "max", rp0) > 0);
>   	igt_assert(get_freq(fd, gt_id, "max") == rp0);
>   }
> @@ -168,13 +180,16 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>   	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
> +	uint32_t cur_freq, act_freq;
>   
>   	igt_debug("Starting testing fixed request\n");
>   
>   	/*
>   	 * For Fixed freq we need to set both min and max to the desired value
>   	 * Then we check if hardware is actually operating at the desired freq
> -	 * And let's do this for all the 3 known Render Performance (RP) values.
> +	 * And let's do this for all the 2 known Render Performance (RP) values
> +	 * RP0 and RPn and something in between.
>   	 */
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
> @@ -190,17 +205,19 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   		igt_assert(get_freq(fd, gt_id, "act") == rpn);
>   	}
>   
> -	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> +	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
> +	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
> -	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
> +	cur_freq = get_freq(fd, gt_id, "cur");
> +	igt_assert(within_expected_range(cur_freq, rpmid));
>   
>   	if (gt_idle) {
>   		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
>   			     "GT %d should be in C6\n", gt_id);
>   		igt_assert(get_freq(fd, gt_id, "act") == 0);
>   	} else {
> -		igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
> +		act_freq = get_freq(fd, gt_id, "act");
> +		igt_assert(within_expected_range(act_freq, cur_freq));
>   	}
>   
>   	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
> @@ -232,15 +249,17 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
>   	uint32_t cur, act;
>   
>   	igt_debug("Starting testing range request\n");
>   
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> +	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
>   	cur = get_freq(fd, gt_id, "cur");
> -	igt_assert(rpn <= cur && cur <= rpe(fd, gt_id));
> +	igt_assert(rpn <= cur && cur <= rpmid + FREQ_UNIT_MHZ);
>   
>   	if (gt_idle) {
>   		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
> @@ -248,7 +267,7 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   		igt_assert(get_freq(fd, gt_id, "act") == 0);
>   	} else {
>   		act = get_freq(fd, gt_id, "act");
> -		igt_assert(rpn <= act && act <= rpe(fd, gt_id));
> +		igt_assert(rpn <= act && within_expected_range(act, cur));
>   	}
>   
>   	igt_debug("Finished testing range request\n");
> @@ -262,17 +281,19 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   static void test_freq_low_max(int fd, int gt_id)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
>   
>   	/*
>   	 *  When max request < min request, max is ignored and min works like
>   	 * a fixed one. Let's assert this assumption
>   	 */
> -	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> +	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
>   
>   	/* Refresh value of rpe, pcode could have adjusted it */
> -	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
> +	igt_assert(within_expected_range(get_freq(fd, gt_id, "cur"), rpmid));
>   }
>   
>   /**
