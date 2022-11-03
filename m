Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C23CA617ABB
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 11:23:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8433510E26E;
	Thu,  3 Nov 2022 10:23:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D7489160
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 10:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667471012; x=1699007012;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wR40gVWIt5wp+6H1gVFOCLNKX3egBbi62SGysGN6Vps=;
 b=TH0CKoLH+t2gc7VR5GKdVs2hK0nWVAgOlyF61CQt5ohzaAMvok8CQ1M+
 g8J6ooc83X16vYXi5vJDjii2ntgpTCK9hRKInjQjA0pmY6xpJousZ4NQa
 CF1pWzHMKTliwcwVu4C4+7ybLGsGE+WWZvoZf/BQBEEDDgZOhBhxCXS1R
 zgYs5bHzMfe+5ELo8Y3Tv74YY7xhoxH2HoJ9hXc58cJrtosWzeEtMgyOi
 7YzfstXMbMF5p/mXDowchZHBrIUinlHm/nlmJ7Q91qhbBzME22OuLsc4t
 FpMdU4HHx8idaGsrORWno9qu8ylOZWKlkceU2J4B2x5kNjqdgVPlvpTqu Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="290032953"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="290032953"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 03:23:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="879830756"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="879830756"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 03 Nov 2022 03:23:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 03:23:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 03:23:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 03:23:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ezMHW9mzNNsnHPV2SkagGu0M6qutMT1KUshHtq2TZl9kMFDUzx4LE8KlfBM/GyhRL1qbG+G/SLKZQBvo+cSpZCf91vwANEi/HY60EWvUJ3syVLQeo0RC2vFgiwzQsbfBtC1QEePeYfYo7VZmbi0IwmF5vNiQLgw8XThE3zduD8PQm+TfOcIWBepQ6T6y2T8jzbtKAMMq9ZtiN7arOOki+kbhaqnraOqHKv1bzD/c/P142JtrR3gSoItb/QY8tzsT60qT9eu+2++a+ziIN1posb57lTw7GHctRdHy3cx8oMRsfszKwup1iHZEWEqCsHk6bVoS1dolFtlgmnURbZZr1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=saLThdajGUYnwhm6veldOoubJh2tnRQfeRl1+xA/WCM=;
 b=h9tGH7x0QqQpiFC8D4wdqSKM7VgqDV0rHrcWVtGYdDT8V92a2IeQ8Fnqb56AUpQjMBcXb6xMjt86ysCqxy4BIQq+KDlvpnSm2bf78intsYfHl2uAa4KS2Vb9O7Y4Dvdl8t1SkBEvrfFoN/aHpqVh+9o9yNpZKflTVNFG2i4at/ZRHLtpDpLqCLchPJzhzC1X9donN5k1yzx0WUWl3FmlF9jWkZ5XtvnUBlKWtpqJGS9dI+6+jXlsHAigOdxqrhnJ0yw32fPcy4y/2CMEg9B2yGChmh22Y3kbK+x8Ru9eQNd+JD/ob90G7Let2xY/QnFUk6b31bBo/BLsIlNvYgiqAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by PH8PR11MB6904.namprd11.prod.outlook.com (2603:10b6:510:227::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Thu, 3 Nov
 2022 10:23:24 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::be9d:e93e:4ec:166b]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::be9d:e93e:4ec:166b%7]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 10:23:24 +0000
Message-ID: <467a988c-8626-3f1a-ff46-03f6217ec01a@intel.com>
Date: Thu, 3 Nov 2022 12:22:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20221102145402.617336-1-gwan-gyeong.mun@intel.com>
 <166745927571.9191.17792888246415628406@emeril.freedesktop.org>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <166745927571.9191.17792888246415628406@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P265CA0015.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ad::18) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5409:EE_|PH8PR11MB6904:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e58261b-dc98-48f8-975f-08dabd857005
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5DJsNE7KbLD/2DvLST2yd5rytdgYtXcluDYlZVIiCNr60xOmQGjUdJQ+7z2651dBmruawOlsxl9z8kW9xy2SE6y1A85PcDmVM+IaPQauHCXtYmdzUMDj5eN2FjPvdHdXcPWXSozi4G/3gp7EfB5EsY6xHwNMt4d+pX19gO9cDfdD+fZdYW4HIQR0irvgdU7/Wbdd9rUnXT6Yo/BEx9e8RB5G1Q4s2MQVjYvBG/1jV6w5TszkaBAUFf9HOwurKoz6aWtougcJbTQSrX/RURGLohau89BtYVtlzqWY8t6ABZMdjrnTqkN47a71ARESPmTcPflDCG3tLiJEiMAVrEmu9lJTd1GweC2TgDavndM3M5NobrXSS+Jh4WPtRjRCpanarpj4N303X6+WEUZbxGLkdCiH0uEg3B3KAovF4SG4FZF7l9ExORMJnRTlB7rPjAeIxtRNQQrDvHKLwwU2VF29DE0SKfkJgMS8bcHkx9ikOSrcCPTP6CzV1QU676eLvNUoGgyM1uhnYpjboMM8hpZm9kbbWH/OLC018vZzWu8aKPXJV1NArIFR57yTRvkDFZrCX9ma5+68DFC90nSTzpwynmF6rHzCMA/jYPHJquplDKk31pDK2DioCt0zBi+NoT4SKKuV3RsL5+q7AiZb8W/03HFJcm1MosFf/vcCJ+kUDOsG60UAi5+0bEtK7dAcqEiXZPRGqlj4448HU8iWRTMp/I5eC0t6OUHT1x/JgEbidB7QNkKcvRa+mz7hE6mJotEHjSLbfpqFeoq+uu3ZYt7qrx2C1YoBUQKwCUd75p3wTyLJUCkT85NUJP1lJCxdLLGNTCsSIEdMi7IKXleoxDFy5Go0z+Yw2xDMlKdDNmta3hM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(396003)(376002)(346002)(366004)(451199015)(5660300002)(36756003)(6916009)(66476007)(31696002)(6666004)(86362001)(6506007)(66556008)(8936002)(82960400001)(2616005)(38100700002)(83380400001)(316002)(6486002)(478600001)(53546011)(2906002)(186003)(31686004)(6512007)(66946007)(26005)(41300700001)(966005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a04vakNDSU9hTmJTN1BscThJZGlKYk9VUkpmUGk2bDNQQ0JId0ZsV2o1cjF1?=
 =?utf-8?B?cHIrN1lacEREL1hXclFKOG9LOE1Dcm16Zi9nNmFudnVpUlVvVTgxMEtWaktS?=
 =?utf-8?B?MXJ1U3pERnRQcnV6aVFLQWJDRHlVMklleUorM1h4U2FHYURIUkY4Zy8yVldh?=
 =?utf-8?B?R29EZERiN1JtQVlZd0JSMXQzMGU5U01vbHlJeWRrUWFaTldkUTg2ZjJHK2xx?=
 =?utf-8?B?VVdYQXFBZXNhZEUwc1lIMzJsd1Z3elhZWnNpMWhXVG9xd2pjcE9aaGk1UHB3?=
 =?utf-8?B?OWkvMmg1YnBjQU9mMHArVkZ2eGZxS0NSeWtuRkJLWDh0aktqM1NYSTZnTXhr?=
 =?utf-8?B?MG04ODE0TEJxV3FaMFVsam83VWdtWDdqUFhUbGcwUlZ6cHNxb3phZWY2aXBU?=
 =?utf-8?B?aWdQelBKWUxLMHZ0NEJHdGtkQXJ1Wk5UV3hUcW9vNENrdndXRzhBWHBpelll?=
 =?utf-8?B?KzA3Z0xNUFg4WWQvOUhqd2VvTWkwYWdETFRSQWxNVjhjVHhFczg4RVBhcitq?=
 =?utf-8?B?NC9sdzJ0RFRQTHdCMG4vdVZzcXVUMFZTNTBaaXNSckhKVnFnMXFzYkZxdEpt?=
 =?utf-8?B?RFFwV3QyVzAvdGY5czZtSEZ6d0NoQmV2Z3RnSGtEQVZqdWJUSUcwV1VwNDc5?=
 =?utf-8?B?YnJEeXdXMmhRUHRna2s1dzJWNXBnNnhQN2NYanF2NGgrS2Y4OTB2cngxMEly?=
 =?utf-8?B?cHRMRDVTVEtOVGw4UUhFVEExbDh0NERtYUliMjhSWm13K3NienF4WCt1R0s3?=
 =?utf-8?B?MjVnMjFnOUFKc21hSmZqb0FQTndDT1ZiMXVnRjk5eEdMQWlTOFFYR3UvVlpN?=
 =?utf-8?B?amxjS2ROSFRNZWpGWnlrSTA2WnBMdThCb0NtREhyV3B4V3dOVkNnTjUyYUN5?=
 =?utf-8?B?VGt3NGhEcG9WQkF2SFMvZ2F2WnlZcnR5VGdPTkE3bXl1eDBMQVZjcTZyT2FH?=
 =?utf-8?B?ZS85NzNNM1VJVHltTHZEV3N1R0I0QkZQNHVMa0wyZ1hOU0dpOHN6UFJvVVIx?=
 =?utf-8?B?MzJsazFxdXErREJWdGNNWEVoSnZSdU9tTGpNZnpWUU85YUZHdWsyVkVqSk9z?=
 =?utf-8?B?aE1NODhWbWYyZzJSMlZvZnhvTjQ1MUw5UE9VOUw3WEJSQXh4Q2todUpyMDg4?=
 =?utf-8?B?dGNkLytWVk9UWEMxWmliQVdXYmZKL0pybUpubWhWYTRLUDVJNzJqYzB4UVJa?=
 =?utf-8?B?Tnh6Z2JuMnZUNitqZGs2VGxYT0NkUW9kTkpRSXVnN0xLWFV4aUY0QU9lMGpO?=
 =?utf-8?B?RmF5dzl2VGY5Zm40OGxKRHNyaVVOOXpQQ0VUZTJjK0kwbCtGQlZhNFIrT3Z2?=
 =?utf-8?B?ZXNLclRvOFlnOWQ2U2ZneFVqQWtrK3o0SXBuY29oeDlLNG4vOFZkTHAxMEhl?=
 =?utf-8?B?bHRvUWNPU1MzMzQ2bHliRS9kT2hRRjdPYjVHS21Na0xoN2dzVUNOWUxzT3B3?=
 =?utf-8?B?d0xjRi93TWFtM05lTEVCV0E3czEyblRXR2FadThGTVJaVHYvd2YzVDNJVmNI?=
 =?utf-8?B?NTdkTk1UYk8wSkNXMVNhRUlBMnFOSTlETXFRbTFXMXRaSVdGdVp6WldnUllZ?=
 =?utf-8?B?bU9CT2oyNk9EMUlVMFlIUWVPRE1GVWd0TFBUWmhIVGZNYkRjNDREQVR4TlJB?=
 =?utf-8?B?YVBybDZES0pVYkpxZFE0RWdsZkZjeFJpTTRpeFJmaThlZE9BN05PRXNDcHgz?=
 =?utf-8?B?RkdvYjRCQVJOazl0Uy9RZmFYTVU4YTBySUFaNE9VR1c5aUsrVnJBMUpZYlps?=
 =?utf-8?B?QTFPcEtOaE5jbGJrbDRSOXdRcEtPaGU1MFZqVjZWdzNsWmRKd0VpdWR1aDlM?=
 =?utf-8?B?ZUNHM01VNGF5UGpmUG9SOW42bVRXTjZHS0l2RzR2bjNoRVJKVDBtVWppWStm?=
 =?utf-8?B?UnVnbnAzOHMxdFhadWtjTnhQVzgyeFNjLy80WHgyNzUzT1hTNU9SbHN6eWhY?=
 =?utf-8?B?b2VyMjlaTUd2blA0dExtWlNWeFJHWk00RjhHeVVINjErTmV4NjYvYm1TMHg4?=
 =?utf-8?B?VzhWSUI5dUczRmV5SUpGK3VFOVRVUHh3c0creWlISVhCWXBMQkpMRnZ0R2cz?=
 =?utf-8?B?YTkyOG1HU2gvMWdNZll4ajcwVXdwRGpobVdYSHBJMnRTN0xkNFJWN3EzL1J0?=
 =?utf-8?B?WGdDRkhYTFd6OHFPY2Fqb2tWYkthN3A3T3A2MzdteXVvclU5VHIxcW1nQzVy?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e58261b-dc98-48f8-975f-08dabd857005
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 10:23:23.9685 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FiX1Qvp1/EAFXWZAdwXgc2YMFjadxfLiMnO32WEkRS1HbfAzCBpuEk2x1eObJuY2yR4yzfTC33Oi3/XZXakMZu/RxPewPnuK2F/QCAOKHsg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6904
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?es_integer_overflow_or_integer_truncation_issues_in_page_lookup?=
 =?utf-8?q?s=2C_ttm_place_configuration_and_scatterlist_creation_=28rev2?=
 =?utf-8?q?=29?=
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



On 11/3/22 9:07 AM, Patchwork wrote:
> *Patch Details*
> *Series:*	Fixes integer overflow or integer truncation issues in page 
> lookups, ttm place configuration and scatterlist creation (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/110413/ 
> <https://patchwork.freedesktop.org/series/110413/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110413v2/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110413v2/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12333 -> Patchwork_110413v2
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_110413v2 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_110413v2, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110413v2/index.html
> 
> 
>     Participating hosts (38 -> 27)
> 
> Missing (11): fi-tgl-dsi bat-dg2-8 bat-dg2-9 bat-adlp-6 bat-adlp-4 
> bat-adln-1 bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-dg2-11 bat-jsl-1
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_110413v2:
> 
> 
>       IGT changes
> 
This patch series does not affect the code flow of issues reported as 
regression.
So the problem reported as regression seems to be the effect of code 
other than this patch.

G.G.
> 
>         Possible regressions
> 
>   * igt@i915_selftest@live@hangcheck:
>       o fi-rkl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110413v2/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_110413v2 that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_lmem_swapping@basic:
> 
>       o fi-apl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110413v2/fi-apl-guc/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o fi-hsw-g3258: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110413v2/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html>
>         (i915#3303
>         <https://gitlab.freedesktop.org/drm/intel/issues/3303> /
>         i915#4785 <https://gitlab.freedesktop.org/drm/intel/issues/4785>)
>   *
> 
>     igt@i915_suspend@basic-s3-without-i915:
> 
>       o fi-bdw-5557u: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110413v2/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#146 <https://gitlab.freedesktop.org/drm/intel/issues/146>)
>   *
> 
>     igt@kms_chamelium@hdmi-crc-fast:
> 
>       o fi-apl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110413v2/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>   *
> 
>     igt@kms_force_connector_basic@force-connector-state:
> 
>       o fi-apl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110413v2/fi-apl-guc/igt@kms_force_connector_basic@force-connector-state.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +11
>         similar issues
>   *
> 
>     igt@runner@aborted:
> 
>       o fi-hsw-g3258: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110413v2/fi-hsw-g3258/igt@runner@aborted.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#4991 <https://gitlab.freedesktop.org/drm/intel/issues/4991>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_ctx_create@basic-files:
> 
>       o {fi-tgl-mst}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/fi-tgl-mst/igt@gem_ctx_create@basic-files.html>
>         (i915#6434
>         <https://gitlab.freedesktop.org/drm/intel/issues/6434>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110413v2/fi-tgl-mst/igt@gem_ctx_create@basic-files.html>
>   *
> 
>     igt@gem_exec_gttfill@basic:
> 
>       o fi-pnv-d510: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/fi-pnv-d510/igt@gem_exec_gttfill@basic.html>
>         (i915#7229
>         <https://gitlab.freedesktop.org/drm/intel/issues/7229>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110413v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html>
>   *
> 
>     igt@gem_render_tiled_blits@basic:
> 
>       o fi-apl-guc: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/fi-apl-guc/igt@gem_render_tiled_blits@basic.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110413v2/fi-apl-guc/igt@gem_render_tiled_blits@basic.html>
>   *
> 
>     igt@gem_tiled_blits@basic:
> 
>       o fi-pnv-d510: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12333/fi-pnv-d510/igt@gem_tiled_blits@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110413v2/fi-pnv-d510/igt@gem_tiled_blits@basic.html>
>         +1 similar issue
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12333 -> Patchwork_110413v2
> 
> CI-20190529: 20190529
> CI_DRM_12333: e7d1d39c197e7f06cf4d1ee19cfd467d6b68e10e @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7038: 5389b3f3b9b75df6bd8506e4aa3da357fd0c0ab1 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_110413v2: e7d1d39c197e7f06cf4d1ee19cfd467d6b68e10e @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> c92843681a18 drm/i915: Remove truncation warning for large objects
> ab7b18a9855f drm/i915: Use error code as -E2BIG when the size of gem ttm 
> object is too large
> 4389e2689bd6 drm/i915: Check if the size is too big while creating shmem 
> file
> 084bc23a10c9 drm/i915: Check for integer truncation on the configuration 
> of ttm place
> fbf0071038b2 drm/i915: Check for integer truncation on scatterlist creation
> fbae424b451f drm/i915/gem: Typecheck page lookups
> 86dffbe22669 overflow: Introduce overflows_type() and castable_to_type()
> 
