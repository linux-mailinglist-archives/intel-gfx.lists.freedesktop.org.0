Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8585C9D351A
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 09:14:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C1B510E3A8;
	Wed, 20 Nov 2024 08:14:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MViRi8jH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A7610E3A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 08:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732090440; x=1763626440;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=As3TgLX8Q6NItaEGYXQB3FTR7p5JSZpTlU9vF2ecu1g=;
 b=MViRi8jHNFz7h7aPL8NIUs7Ie9kZ5AO2qPf98t2Qwe/QM21Xk+6xl829
 tBmCbAZE4QWLJE0wHfIek1z2BqOb1LHVYKdf9w0T+JuT5A3cULIn5I9Bv
 HbtYd/97HIXqSOk5CEQ3aZ1WTTPK6MeZUmkEKZCKJCDvs4BpvMS8cOqIO
 G7z9ot55HknGY9CIoaA9zNBNdXhkHL2HXrB7Jh7ZzUh3ZcYCd5b3TITwo
 HSqtNrZAOyHBY/yRZ88kyrANvzzMg9qz25+1aWvhNg9+NOCMuCsClyYuY
 MIkO9aTJ5h1P6O9TRI1RTWj9JEobgfiugUibLIC6A24Fw0nwo7dm+mpm6 g==;
X-CSE-ConnectionGUID: R+C7Rw76TIWz0nW1Sv5sXg==
X-CSE-MsgGUID: ykMqL2MqSXqUyxM0KpheSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="49562126"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="49562126"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 00:13:59 -0800
X-CSE-ConnectionGUID: RB7r5EfOTz+B5wzmZqClmw==
X-CSE-MsgGUID: ouPG3YBOT9aXuh/RZMfF7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="120778740"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 00:13:58 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 00:13:57 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 00:13:57 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 00:13:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hPMLkwuYagU+Bn0sQ1gkBMBMOQqW7if+6/JonAbXkNOmLgnu+co++1IXwKXrBJhocIckJZmRQIMR5foWoj6os0ad5mb2GnM4w4p12nmem83hj10vDwnpMwufopCGWtO35MbT5b9IWHdkgJE3qga5AAetNIt9AfzPkJI1NEOBpK5q2dgxM2iU5/3rWbPFfZFA1DpEYLfxfbZmPlAsqQMwFfADYHtqsxmc+3lUIoaVaEc57lQQB7cxuVphwRWSt+4SkMwXp0aI171xNZCBiPCeEUdta+mblX4DC0oY8D2LuD/zUlrzedklLYkOf3Un4GSGVDae94OBvu6mp6I9Lg9OAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NZCNp5FLACi+Msv6CZ8dU626/+Zh0HuQuqUzWvJbypM=;
 b=pk+NgzAtN0R+SbFpea89+gGReLnwouSn89TEDxjgX6DeyGo5BUrEE2wtQOkBtagIHR09XICbT1FM5IuWKXGgvDOMl08UZa+4FDvzmCFr8cveWfREaMShcxPk5SzE8JPLeOtqIsVOvpWdmd/YqSM9DSJgz3SirO5iQb5LEZb8X6lzIA9sTtnTELl7ppTeiNuSSX5AHrjUV4BIGR4k3H1by1KsPNGd8oxEZ6ZSvt/xYZd6Q6k1NcI1GtGmcJyMQEUBqoxpgwH8c9Ju7oGv52wPGnYKKf5UYukLLANEOD1O1fvX1/haCaeJq0/g4STsXCKVq1YYh6rLdaP/PG0t12wzeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by SJ0PR11MB5103.namprd11.prod.outlook.com (2603:10b6:a03:2d3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.25; Wed, 20 Nov
 2024 08:13:54 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%4]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 08:13:54 +0000
Message-ID: <1c2f4bf1-daa8-43bd-8870-304b2d7989e6@intel.com>
Date: Wed, 20 Nov 2024 13:43:40 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6] drm/i915/selftests: Implement frequency logging for
 energy reading validation
To: Sk Anirban <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <karthik.poosa@intel.com>,
 <sai.teja.pottumuttu@intel.com>
References: <20241113095004.2441052-1-sk.anirban@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20241113095004.2441052-1-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0089.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::7) To BL1PR11MB5528.namprd11.prod.outlook.com
 (2603:10b6:208:314::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|SJ0PR11MB5103:EE_
X-MS-Office365-Filtering-Correlation-Id: c90e7c70-21b1-4080-decf-08dd093b45a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MkdHK1E1b256ZENVTW9PR3U4dGxuYVdnaGlVZjA3aEJYOHhNTEF6RVc5V3l4?=
 =?utf-8?B?YzZ4RVVzNkJLSys2Q2REdVVOTjdNWC9qcXBNYWs5YnN0azBiZWEyWUs4USti?=
 =?utf-8?B?Z3lwNXRwVEpFc0Q5ajE2dkV5aHpodlhZdFJKdk1ETlRTRnFEcEtlVnQrN0dW?=
 =?utf-8?B?YkxLc1VaQ2dMWTkzMk40TGJqaUlsWHhKNDBQVVMxdUEvZzlvVGtIVWQ4cDdQ?=
 =?utf-8?B?azBXNC83RmM4TWloQjRWaWV3aHIzK3hlTXVwRzNUNG1Jd3JuOWpPUXM0SGNv?=
 =?utf-8?B?b2dYa1dSVVYxMEQ5akRCbityTURZbDBvYWVXcTh3aWxOdUJQT294Q1hKRTJv?=
 =?utf-8?B?Ly9MbVYrbVpaMEc2YmZpbHJxK0QwSE9aV3k1aEdFdndsNmNlM1pvYkJGM3JI?=
 =?utf-8?B?dXpyZmJhSE92bHdjK01sZVNRb2wwZlhud00yL2NTYzRvOEdqWUs3RU1vczg3?=
 =?utf-8?B?ZWo0T1lZc0RGT1dXSFlHNVZSSWEwQzJGWW5jSXBZWW51bWFUWWtDSXlWNGt3?=
 =?utf-8?B?dGlDeFBLd1pSMFU5RWhGRmpnU1diWHpHZVZvSWpFZW9FUFhBYUg1akRiT00v?=
 =?utf-8?B?UHM3OVV1eVJWWWY5RkE0S0xSZUNIVDV5UXUrSWhGMC9PYXZLYlJFSVZDVDBV?=
 =?utf-8?B?YkoxT2tvY280Q2Fjb2pNYW51ckIxSDBBOEtSd0ZONHM3UVVOZmxQVFlaV0gr?=
 =?utf-8?B?SnBmeWo5bjVaWC9YbUlQcll3cit6d2cvTFhlWUo3b2d4ZlNKMWJpWlNOZTZ2?=
 =?utf-8?B?YWpnU3h4WGJjT2kwSW4rN1RRSWJYVmJNY3B6QzlLMVcyY0gvNUc5QjVMYVVQ?=
 =?utf-8?B?QjVMMFlKZW1LZ0Y0U0d1Yy81WElXd3lGZVhoQnUrcS9vNHRNZlVDWFJZWmNK?=
 =?utf-8?B?bWNXKzI0R3Z2U05IeWY2VzdVUkFVT0cwQkhJdFZQamRiT0F2K0N3SUt6T0g5?=
 =?utf-8?B?MG9aa0JYTnZmZCtMdWd4K1hrUVJIRDNmNkVpSDh5OEdrOGJubFVZdlRXY3cz?=
 =?utf-8?B?TnVwdkcxUHI2d2pST1FqYjMwZiszWlRsR2FuRllQd1hzWGhabjJmM01MdFZy?=
 =?utf-8?B?RTFsS3BUQkdlRDZDWmtUb0Fzek1mR3VuS3ByTFdudG9Dc0t0SjhUYk1hNjMw?=
 =?utf-8?B?a0JaUnB5aklVT3lKekVwWEhpN0l5aXFlZStGdmhYYlF4c0ZveFFxU1lwZHln?=
 =?utf-8?B?ejUyT2k0VUFuczJBT25zYlhaVTVleFdyS0kvOXJGbzFOZ2xuQXdKMkczbXpJ?=
 =?utf-8?B?eEV0UUFFTnhsSk5tL25ZbTNkbGRTdVNYWGRKemdnVmtlTUtwN3lhUmMzYzJv?=
 =?utf-8?B?UkkwMlkrdjIyMkVuVlR6MGJtRVpRU3BiYmlvVklqdGowZEhpbC9zMlQ5bnhR?=
 =?utf-8?B?UllQdUhTYVJOK2NBU1BPelZMZ3o1S0pLRkxIajI0RUdUelNzSUxyRE5FYjZK?=
 =?utf-8?B?ZTBoWTVLRkdqVHgzMWpCVzRCcUdDNk95SVdoVU5EOHNnYTVPeUt5ek4rSlpP?=
 =?utf-8?B?VjZDN2dmRjU2UVZyZmwreE5VN0tIM3FDMit0N1dyVHpMSmdnRFgyb0srRVcz?=
 =?utf-8?B?TmdkOGdjbTQycFFQNy9ZQUpaT2NsTU9nQjJwQnVJNUtqbkg2RVJuME9Tdmp2?=
 =?utf-8?B?THNBdzh2L083R0tSeXNVSVRuaDducWdWVDdlZjFONkdXZWhmTk1jNFBsaEFy?=
 =?utf-8?B?Yk8xNkFwbURRdWUzZlgxN0ZycHJlMyswU0tIVlNNQnIwRWpNeXhTKzUzcVZD?=
 =?utf-8?Q?NUFHxTOC/oqjLFicvazDSjNRDPvHscIYfYeG2g7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWcva3JLcUk0MDJEQ0NYZDFjSys0RFNBRnNBWmJDUnhhc2FPTjdsWmFuS1Iw?=
 =?utf-8?B?SS94RUgwbVdpbkxDRHY1emtmcENqZXNacGF4blgyNnB3VS9wU3pTbFBaWHZP?=
 =?utf-8?B?UWZwVjl1ZEU3b0FCcmY5SkFmY0dJd08zUU5XQ1JiODl3NHlDdnNCY1dhSHdj?=
 =?utf-8?B?Tmc0cGFBdVdlRnJpeGIyc2JGRFhnM3lFMTVLemxwUktsdUZkU3pNWURaMUNM?=
 =?utf-8?B?ZGpOK05zMlBUdU1jM2U2blRaRGRBdllXK3VYZFd0WXFZYUhTYW9uUGRWQVBW?=
 =?utf-8?B?TWhwbHM3ZjlUT3hWRDRON1d5Y2s5NjlJeldSWVZTcTYyeXU0dnNpenNZQUg1?=
 =?utf-8?B?c2E0Z1kxMW1SNzJFdjV0ZFZmWlA2RlJDYTVrNk5VZnl2NVBXMnFMa0VBMllJ?=
 =?utf-8?B?VUpkT0lmNmtJaVdVa0FBU2NFQXFaNjNlNkJqbklLM2hhOWZzMlR0TWZjamZ4?=
 =?utf-8?B?TzFlWUFkZldPVWlSVEpIU1dMT2tQaVlleXVMZU92alZXV0NHOExkUUtHOTQx?=
 =?utf-8?B?djdvWHJKblhIOWtSU0VwWXdmR05PVFhQUlB5NXREc1RCV2ZUZDZXRWdnZjNT?=
 =?utf-8?B?ZmQ4N2lmU1ljN05SOEUyTWlQWmNVNjlERENEbWJKYitRY0l1VUJMYXRsa0VO?=
 =?utf-8?B?Vi8rZzhKMHdhMEg4clUvQ2pXVXpTTTE3c29pNWRoN1BUUXYrSVdEQzVGeTV6?=
 =?utf-8?B?MjdGeFk5Vi90SFpLTm9GZ0xxK1JIaHJYZWs5WVo5dTVPYStPVHRJTUZnbjUz?=
 =?utf-8?B?aUxIaHZJMHdnRGc0QlNIS2Y1cm0xNHgyRHRJNDRDeXpORXY4ODI1SWJpZGU0?=
 =?utf-8?B?RkJjMmM0akZCZU5jbkJmaUlCaGljYVFZZUFablJGZ2Y2MG9HdTI5MTBxWjhh?=
 =?utf-8?B?c2p5YlJ5V2FYREpsTHRwR1ZaVUxoa2xsWVhEaGcrTFBOT3VYQndJWkVWZUEz?=
 =?utf-8?B?RGRXQUZSZlorb3Z3Tm5YbEFnaFBnQmY3R1J5eDNtZ2Jxc0tuSHhxM1crT3dC?=
 =?utf-8?B?SWVaTkVnR1U3b0dEamd4UGs4d0h3eU83VnpDV1BVc1hiM2hydmpnZytXUFZy?=
 =?utf-8?B?bXJJMEZXWU40VXlZbkZOOXNMR1hXWjRGTlVOb0tzNkt2c3NKSVVTUGJYYi8x?=
 =?utf-8?B?TTVwSTR5WE1ES1MzUkNxS0F4eXdmM0JiVmc0ZzJJMVR6TytBenJtRy9hY3lj?=
 =?utf-8?B?UUdrQ0g2UUtaNy9yR3VVMUZhVkk1cmI0dVJvODJja29UQTVXRGIrdDJsMWFR?=
 =?utf-8?B?cUxTSEhDMWU5SFRpVzRaY0NkZ3IyUnZkZXpOWkw0TWhVNEZETkFvWk9xRWVy?=
 =?utf-8?B?NEM2c0tVVWdnck1pb0FQSkdNbFZJdEMwWnY5OExRbVZORXp3eDBmbEo3NkND?=
 =?utf-8?B?UVZmbU9aT09FUmNDMTB4c3NIYm5BdXZPTDFwNWsrYU5wVUZNTVdVS3gvSjZX?=
 =?utf-8?B?YzlYSXZjNXNjVnJMZE9kb2ZocGFrYXBNWEZFZ3FJRDdTTjUyb1ExeEJFUVRK?=
 =?utf-8?B?M0xKejlhcVVDRmZIc05BV1IxQy9wOXRwSjZBclRlVUNxSXRwTTFsdC9KOFo1?=
 =?utf-8?B?V3dVNGZtbS9QdDdnazFzNXkxVDJUK0JFbWF6amhVTEVjeDNqa1gzdlYxZzlN?=
 =?utf-8?B?enJLZjlIWUNJcHBCSC9FSDZNOFFOWENCa09sc3NWdENvNW9taEhJYmZ2M1NW?=
 =?utf-8?B?aERuWnNyWHRIZFJRdXJ0c2FsWnloa0hrcEowYjllcG55cVdYSTUva3lTMStm?=
 =?utf-8?B?N0ZoVzFBRnNzNERZUzJIR0lWS3lIemtLSmtrZk94NGR3dEVNa0R0VXZmdGh2?=
 =?utf-8?B?cHozcnR5Q3BiMllCdmRqcmtkUTl3MFp5cmwvR0ZhRkxFajV6c2FDVU96Zitq?=
 =?utf-8?B?ZkVyT2Z5dlp5RlpDMjZTSE85TWFHOU9aZjFuY2FWalllTGNCaXVrdkoyeE43?=
 =?utf-8?B?cERjakV6UnF5Sjk0aFJkRDZZMkRGNWZvdVNHQUJ5VUZlMUN5TERnUTVnVDVK?=
 =?utf-8?B?eFFDZjBsbVdDMm1RK2NCb21XTkJnclozaVpLdDZOeXY0by9mNlYrZGpUaGN4?=
 =?utf-8?B?VXFrbnhiRkJZWmtEOC9nQksxbWVyeVByV3B0SlJ5UWcvVEZqbzg0Yjc3bDMx?=
 =?utf-8?Q?8LWk5uIm0Cow2SJl9m9gnPVrz?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c90e7c70-21b1-4080-decf-08dd093b45a7
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5528.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 08:13:54.0402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o3slU7xXptedWzvxtVSXvADTt6qF6YVCUrVtkZGpPktYBbDz1gLtnrT7FCvFCstpbf6PdmQsS7DwiZ4POqq/CA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5103
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



On 13-11-2024 15:20, Sk Anirban wrote:
> Introduce RC6 & RC0 frequency logging mechanism to ensure accurate
> energy readings aimed at addressing GPU energy leaks and power
> measurement failures.
> This enhancement will help ensure the accuracy of energy readings.
> 
> v2:
>    - Improved commit message.
> v3:
>    - Used pr_err log to display frequency (Anshuman)
>    - Sorted headers alphabetically (Sai Teja)
> v4:
>    - Improved commit message.
>    - Fix pr_err log (Sai Teja)
> v5:
>    - Add error & debug logging for RC0 power and frequency checks (Anshuman)
> v6:
>    - Modify debug logging for RC0 power and frequency checks (Sai Teja)
> 
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rc6.c | 15 +++++++++++++--
>   1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 1aa1446c8fb0..a8776f88d6a1 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -8,6 +8,7 @@
>   #include "intel_gpu_commands.h"
>   #include "intel_gt_requests.h"
>   #include "intel_ring.h"
> +#include "intel_rps.h"
>   #include "selftest_rc6.h"
>   
>   #include "selftests/i915_random.h"
> @@ -38,6 +39,9 @@ int live_rc6_manual(void *arg)
>   	ktime_t dt;
>   	u64 res[2];
>   	int err = 0;
> +	u32 rc0_freq = 0;
> +	u32 rc6_freq = 0;
> +	struct intel_rps *rps = &gt->rps;
>   
>   	/*
>   	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
> @@ -66,6 +70,7 @@ int live_rc6_manual(void *arg)
>   	rc0_power = librapl_energy_uJ() - rc0_power;
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
> +	rc0_freq = intel_rps_read_actual_frequency(rps);
>   	if ((res[1] - res[0]) >> 10) {
>   		pr_err("RC6 residency increased by %lldus while disabled for 1000ms!\n",
>   		       (res[1] - res[0]) >> 10);
> @@ -77,7 +82,11 @@ int live_rc6_manual(void *arg)
>   		rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
>   				      ktime_to_ns(dt));
>   		if (!rc0_power) {
> -			pr_err("No power measured while in RC0\n");
> +			if (rc0_freq)
> +				pr_err("No power measured while in RC0! GPU Freq: %u in RC0\n",
> +				       rc0_freq);
> +			else
> +				pr_err("No power and freq measured while in RC0\n");
>   			err = -EINVAL;
>   			goto out_unlock;
>   		}
> @@ -91,6 +100,7 @@ int live_rc6_manual(void *arg)
>   	dt = ktime_get();
>   	rc6_power = librapl_energy_uJ();
>   	msleep(100);
> +	rc6_freq = intel_rps_read_actual_frequency(rps);

I think intention of reading frequency here is to know if device was not 
in RC6 when there is failure. But for the platforms below gen12 reading 
act frequency will cause gt wake as GEN6_RPSTAT reg requires forcewake. 
To avoid wake when device is in RC6 read actual frequency without 
applying forcewake.

Additionally add delay, may be delay of 1 seconds after re-enabling RC6 
manually and forcewake flush.

Regards,
Badal

>   	rc6_power = librapl_energy_uJ() - rc6_power;
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
> @@ -108,7 +118,8 @@ int live_rc6_manual(void *arg)
>   		pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
>   			rc0_power, rc6_power);
>   		if (2 * rc6_power > rc0_power) {
> -			pr_err("GPU leaked energy while in RC6!\n");
> +			pr_err("GPU leaked energy while in RC6! GPU Freq: %u in RC6 and %u in RC0\n",
> +			       rc6_freq, rc0_freq);
>   			err = -EINVAL;
>   			goto out_unlock;
>   		}

