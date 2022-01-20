Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEFC494505
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 01:45:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4669A10F2FC;
	Thu, 20 Jan 2022 00:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54D7E10F2FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 00:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642639538; x=1674175538;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=Wgr1os9SDBP5+fCat+muce/xpK0Uf/7vRInw0PsCNZs=;
 b=bQVI58CzIz96rTNC7iUR1n7KWsix+oDvsA3wmxyLoWhKQibBiP14+OkH
 LRk0PEthh8y/1+cukvaeg9nG/Tj3qWF+VkJGP3HBr/pErXL1c2rOWdZ6h
 qYnukKZBud4R5ghf+DwNDQCCakhN7xiZqwBdy9FoMNvvL0lBhb0PP4d9i
 myFvK4JoFfWtE6g8QECDp9oV+6J3Rx26b5L7CVIFJw92BnIbeJuQhKZdt
 SdYfzK+/ZEYp8i6/3gcYvAjFPSmdZ8ykai+nYofm14wgVMvtItwjj1XYm
 Uusl9D9qaVcRYRefxZ5nl8mb7yS+Y3ATHHucjJAQSfpfRWe6PIjD2Mpu9 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="242799044"
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; 
 d="scan'208,217";a="242799044"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 16:45:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; 
 d="scan'208,217";a="765143214"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 19 Jan 2022 16:45:30 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 19 Jan 2022 16:45:29 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 19 Jan 2022 16:45:29 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 19 Jan 2022 16:45:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=COYFJXhJWsrysNMFE0X3+2jyK/VhBHqUerxxlNTkXPpdnT8K58ZUfURFXOJvHK8j5ZHhlaCr3OC52Ywist+mAOP0Ic5OzXSA5dgtmOQCV7k9ahgrh7Vf2yLfGgPIS5nDsSktTJ1oLXLSvd4Xv/ztipKmck29VdKmsO0ZW+ED8FcBacCWksblbCs7YRqe8oR6F0arKco91gD5nYnVjcCGK73DImSMmq4k0kcxS3qnZ24hi2eNsFFl3WtBGxiwnxN6FQx/hAKwJ7Yo9bPy9p1K0rTjVm5uUrTqrFMfXpi/tp2rLE3ILplgLR/JarEjdPrR2uy398pRTN6pcrOs4yN1ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y1Q2OiytBom9XTGBgf7gVndEIC8K6wcOOKCQ1B7QGIg=;
 b=Z/3G5TJp68BTToh06Po4DJXMUHQyjMmmM8NvkLnD4hc5pXe2CqI88eU0cysPJqpWnSeR9qdSkOvkheKaFi4ctUWIGYEh0zoQWBV/faqiVT9wUpY/Q4mGqmU7xW07hDR9Y/uz+r3xNX06ieqN3hz8OoAy2SkqGFLYUW4KGbLV5InZzis0bf2aQrxyId6iCDTh2h6nJLvzR1pQg2dD35Txno4ypRpvQeEOV88Rf4q8+Vj3UYSa3PALhu/77egXa0IAJ8QcQxPblDjXjFhHz2HCImUdlJMMVZXPFBzP7NOXkvFJ1WtCKYTX9iTtYCYBd84Bs2YsxmhcTmy3GLE7Q3xF9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BN6PR1101MB2338.namprd11.prod.outlook.com (2603:10b6:404:9c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.7; Thu, 20 Jan
 2022 00:45:26 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5%5]) with mapi id 15.20.4909.008; Thu, 20 Jan 2022
 00:45:26 +0000
Content-Type: multipart/alternative;
 boundary="------------vxXeGXETjCpB29lHVhOebR8k"
Message-ID: <3370507d-cbc5-5942-391a-0f3a7f739116@intel.com>
Date: Wed, 19 Jan 2022 16:45:23 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.0
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20220119203541.2410082-1-John.C.Harrison@Intel.com>
 <164263936995.22536.13083861687462207488@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <164263936995.22536.13083861687462207488@emeril.freedesktop.org>
X-ClientProxiedBy: MWHPR10CA0017.namprd10.prod.outlook.com (2603:10b6:301::27)
 To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 20c60267-9c28-41e0-40b4-08d9dbae2639
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2338:EE_
X-Microsoft-Antispam-PRVS: <BN6PR1101MB23386F8B6C36E2316909C9A8BD5A9@BN6PR1101MB2338.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +lM/gqmn88BXeYGNmEqrWoUp1TxL4UoSM3Ayjk0iISHoKKcLGoIuRQ1uGn6UkMV8DuRsnTEmofvRfi4oOiqfbYAgfhfbNYztosGJuN7HJsjsAnEsw5RjIujLxEt6fUVf72sPpyoV7pxdBU+SXvWmC8sFjZG0OMhqZWyGYqDVxYEJgPvn/udL5CGyHB8Q6Tis0/aX6D+zu9tfr7yXddEl7BVwmZNQqasMMe3N+IiVfGxGxDzzr+WAeVYNSnydSij0BXu+3akV6y5LVpCw5rGn//YeqYco3RFEzT4j93SSbB17QEaSZrQ9W4YW7F4iEq9UWm0BSTFR9kaixLNZBJyBDRVGWHgRVXQgzelI1WBY5q6Jl4ST0mBDMqGUSQu/BtdDqaGZU9SgVg1Cq7sIkFXhkot/VgmO34aQ3f+T/GoY9/p0t/gLFSsS8jBQ6AmnuMIrOnqw6iLCZyzVdqYWFyhSoi0G8pY6PMOS6qqLxfh3eUOKNCRwZ6zCMZcVTW6DTUNHIYc498/wIFwGfgQXLAXS2p8HuKrFJwXnvm+EAKoGqTgFHYfJ4kqgf47Gj9LpkReWcx2UYW3AoCvuqYGDDR0cHo/tODQmxv48yqGdjXdbyHqT2oxuIATTEl1esYC9z7vW0zwwtr2exCzTA6tTVO6AyD+S8HV/Dk5iJzrHKaP/fr4v9lrwhqeLUqz0otMxW0QN+Gf/vAtFJzh7SFVpEdlVvtcOni1KlhzfCA50SShLofXKa7z8ouPoUsfIIcunU7pCcQuSipKmDAn3VmdRSft94bDMsLf3N1QxdrXFxPKouM5awjCegUyVLTdsmpTYFGQoUthzx+stVUrAeu4YWQfnqiheH2rH4Bd/QzOhODuJCiU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(40265005)(21615005)(508600001)(36756003)(82960400001)(86362001)(30864003)(2906002)(66556008)(316002)(186003)(6506007)(66946007)(6486002)(66476007)(6916009)(5660300002)(53546011)(166002)(26005)(31686004)(2616005)(966005)(6512007)(8936002)(38100700002)(6666004)(33964004)(83380400001)(31696002)(43740500002)(45980500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUhnczNpeDhoTzY5bmpRK090NXNYbk9mYUNjY1o4cUtaUWdxdmxwUmkzNVhI?=
 =?utf-8?B?Y3pVQ1gyK1oxT3FQZDNuNXBpckZCc2p6ekNtbGJvQWFYRlMrUDUxRFVVZXZP?=
 =?utf-8?B?c1NwM3JTaEpXWVhQZzJ1bGpGeTgxcVY1bTJMVWV4K0pVVjhPcjhZK2pHVm1i?=
 =?utf-8?B?T0dSVyt1NE5UK01xRFo0UHg3cExZRnpwVDNjNlQrNjhoVVAzZVk3a2puQUtk?=
 =?utf-8?B?K1lja2ovNEFXc1J5blVtQmNyblE5R3UxQWV6SHNsaUhPbS9nL0x1c2pCT3d4?=
 =?utf-8?B?TWZZeTZnQ2F4TGFhSzRaV2tVTEtLdEpMNlJSSXZvTFFqYTVxWnRyMGRsR2s4?=
 =?utf-8?B?a3NqVXRKa0NQWFAwcEcyZ2l6SlhteDRXTlk1WVJsRldtYTlNZVpZQ1lxZWI5?=
 =?utf-8?B?RGhXOTJLM2J5dCtnc1ZGVjNwbkg2eVJ6dWhMNVBkRnoraUI5Zjdza2V0cW0v?=
 =?utf-8?B?clN4Qjl0R1prMXpxS0EzOUFUV3d2ZnhkNldrMnFaOTJmVEtJdXNoY3Y2NHov?=
 =?utf-8?B?RXhkS0lxbHVpSENBMWQ1SWVuNXhyUW1jT2wwbUR3VjEwTEFMeDRBaU5KVGs1?=
 =?utf-8?B?aitWRS9SRzFRc25RNGNDNmt5Ylp4MUxKZW1MZjJIOFlnNUEvdlZhdzlwWnlJ?=
 =?utf-8?B?cDdjcTR6M0l2aDZRS3hWeDdhVVBnTXA3bjJGUUp6Nlk4bC9yeVZyaWJodE1Z?=
 =?utf-8?B?ZXlhekNGWWFMTG9NcVNsaFdINlVwNlp3RHNPRXRGZXBGMXZSVU5Sb1FXNEVS?=
 =?utf-8?B?bjREWEZwNWRHQ0cxdVNzdUs3N0JabDEzY1JpWVBCOXFKNmd4ZnVDbmhXbEJ1?=
 =?utf-8?B?YTNSMWRQWUZVSXRKOWdBMDJKKzlzN3l1U1Jhbkk4TklnWkRWV1p0aHI2eGpa?=
 =?utf-8?B?T3dyRGNrZ2IwQnU4cStYVVU4K2lvdHZiWjBnTGYxOEdEUmZmNUhMSE9HTWhT?=
 =?utf-8?B?VExrODFJNVo1OGlOdkJQaDhZdFlsRW5UZ0hLbU9OWFJYdnhkcXA2dXFxS3Rw?=
 =?utf-8?B?anhlUTN4bmUweDhHendqSjlLM1dhS3JBS1lPeDBqYzMxWXBvZURWRmRKYUQw?=
 =?utf-8?B?SDJEVjJza0xMcm5oR0FhaE5DZFh5bkNxVFNOU0owakRKNEFPOUlxOGVlVDVO?=
 =?utf-8?B?azd6ZjgyT0g0ZUl4eThzVWRaYVp4RTVUNi81VTNxaVpiaTM4S0VsNk13ZEds?=
 =?utf-8?B?UU85YjRzcFliQUJCTzRXclgvRkZ4NHRBRWlyU3d4TDIzenVGbEFxSFgvTUdX?=
 =?utf-8?B?NlZ4UjJmNlFMSkYxQjRubFE5dWd1NnlYVVk1dFZDNW41aXd6T25WT2Ntd3Vr?=
 =?utf-8?B?UDFWMHNiRE0yU3phTnJPRlNoZ0c5SjQ1amluUUt1cjBBUENXNENQRDdDclJD?=
 =?utf-8?B?QmtjUWJoYWRIMUNDK0FMaFhkb0FEL25waE0rMlpkYjNZYVlFUGZMTEhETmlp?=
 =?utf-8?B?RERqdk0wVFcrdkJOOWZ1T2RsRW56RVlrdnJyN2VsamRiYTc1WUxEUFNkdVZP?=
 =?utf-8?B?dWYwOFRwQ0lEKzMrdDl2QTVkSTUzZHhNMzJyTGp3cG9wWFM5Vyt4MTMzY1NM?=
 =?utf-8?B?OG1oOHNvci92dklZNjhYNysweFhNeE5pS0lhbmdmZ1FWOVdvSjhvekxrS0Yz?=
 =?utf-8?B?U01ibkVMeEpKZS9LZGpSNW8wNmZEUzNsamlYQVJNNk0zSko0aWp4S0lMNmNN?=
 =?utf-8?B?NUtvalAxQU9hcnltOStFblZHY2VaWTJESm9qNEdsS095WnJnTmpmK2Q2bjJ3?=
 =?utf-8?B?U2xFKzN6Y2kxZ0tJR2NGSXhvT3pHTFZ0aVh1WUZtVWFmZElCZXVFYmZxQmE4?=
 =?utf-8?B?bDBwYzZvOURTZ0x4bUsrV2hQTlppeTZyV0JlUHBBd0NmTW9CcjBoQmprMVFk?=
 =?utf-8?B?clpKNGV2NWplOHVSN1FPWXV0Z0lmUUwrS0JwNkVadWtsempTeDhqTG1XeERW?=
 =?utf-8?B?Q2JmUkxWWFFzd0EzT3hZbkJjVzdBWEtKUEhSenlocDh4eGpleGZKT0JaRTlU?=
 =?utf-8?B?WTdYTGYzS1pEWUFMSmxKdGtPZEdUMXdGaEFiblV3RjNBN2c2bk1rQ1RYY0hu?=
 =?utf-8?B?ZDY1RmdNbFhhQThLY3VFQzk5VkFtOGpIcUVBUUNhdmkveFVZK1hhaERpWFNv?=
 =?utf-8?B?NlNWUG1VUXN5dWJHanJ5d2ZyK011bXpEVUtsNXN3cnNWZTVweUVuOUIxcm9Y?=
 =?utf-8?B?a0oyekhOS1JseXpUR2VLNURBSEl5RnNycEhHWDVvbmdEb3BjMVlvcVh5bzhT?=
 =?utf-8?Q?Sf+buT9qkOOT9MKy+mXXyhuAfY1Lxdav/0kMGhq9MA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20c60267-9c28-41e0-40b4-08d9dbae2639
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2022 00:45:26.4370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rPCzysBTkPfVrZ8Sd3cTTIkfO/XpejdxhtlxYi5zUV390+mJXSvswhv7KtR/hbG9rHVEVIv5RrFkga2npAK4XWD1IO9OC2V1pPbTxzKIriY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2338
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_support_for_querying_hw_info_that_UMDs_need?=
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

--------------vxXeGXETjCpB29lHVhOebR8k
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 1/19/2022 16:42, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Add support for querying hw info that UMDs need
> *URL:* 	https://patchwork.freedesktop.org/series/99060/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11110_full -> Patchwork_22027_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_22027_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22027_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (10 -> 10)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_22027_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     {igt@i915_query@hwconfig_table} (NEW):
>
>      o
>
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb6/igt@i915_query@hwconfig_table.html>
>
>      o
>
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb4/igt@i915_query@hwconfig_table.html>
>
Expected. The table only exists on ALD-P and later. So TGL/ICL will be 
skips.


>  *
>      o
>
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-tglb8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html>
>
Not related to this change.

John.

>  *
>
>
>     New tests
>
> New tests have been introduced between CI_DRM_11110_full and 
> Patchwork_22027_full:
>
>
>       New IGT tests (1)
>
>   * igt@i915_query@hwconfig_table:
>       o Statuses : 7 skip(s)
>       o Exec time: [0.0] s
>
>
>     Known issues
>
> Here are the changes found in Patchwork_22027_full that come from 
> known issues:
>
>
>       CI changes
>
>
>         Issues hit
>
>   * boot:
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk1/boot.html>)
>         -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk2/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk6/boot.html>)
>         ([i915#4392])
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_ctx_persistence@process:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-snb6/igt@gem_ctx_persistence@process.html>
>         ([fdo#109271] / [i915#1099]) +2 similar issues
>  *
>
>     igt@gem_eio@in-flight-contexts-10ms:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-tglb6/igt@gem_eio@in-flight-contexts-10ms.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html>
>         ([i915#3063])
>  *
>
>     igt@gem_eio@unwedge-stress:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-iclb1/igt@gem_eio@unwedge-stress.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb5/igt@gem_eio@unwedge-stress.html>
>         ([i915#2481] / [i915#3070])
>  *
>
>     igt@gem_exec_balancer@parallel-out-fence:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html>
>         ([i915#4525]) +1 similar issue
>  *
>
>     igt@gem_exec_fair@basic-none-share@rcs0:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         ([i915#2842])
>  *
>
>     igt@gem_exec_fair@basic-none@vcs1:
>
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html>
>         ([i915#2842])
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842])
>  *
>
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-apl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         ([i915#2842])
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2842])
>  *
>
>     igt@gem_exec_params@secure-non-root:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb6/igt@gem_exec_params@secure-non-root.html>
>         ([fdo#112283])
>  *
>
>     igt@gem_exec_whisper@basic-contexts-forked-all:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked-all.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked-all.html>
>         ([i915#118])
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl4/igt@gem_huc_copy@huc-copy.html>
>         ([fdo#109271] / [i915#2190])
>  *
>
>     igt@gem_lmem_swapping@heavy-random:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-kbl7/igt@gem_lmem_swapping@heavy-random.html>
>         ([fdo#109271] / [i915#4613]) +1 similar issue
>  *
>
>     igt@gem_lmem_swapping@parallel-random:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl2/igt@gem_lmem_swapping@parallel-random.html>
>         ([fdo#109271] / [i915#4613])
>  *
>
>     igt@gem_pxp@reject-modify-context-protection-off-3:
>
>      o
>
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb2/igt@gem_pxp@reject-modify-context-protection-off-3.html>
>         ([i915#4270])
>
>      o
>
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb2/igt@gem_pxp@reject-modify-context-protection-off-3.html>
>         ([i915#4270])
>
>  *
>
>     igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb4/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html>
>         ([i915#768])
>  *
>
>     igt@gem_softpin@allocator-evict-all-engines:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk2/igt@gem_softpin@allocator-evict-all-engines.html>
>         ([i915#4171])
>  *
>
>     igt@gem_userptr_blits@dmabuf-sync:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl8/igt@gem_userptr_blits@dmabuf-sync.html>
>         ([fdo#109271] / [i915#3323])
>  *
>
>     igt@gem_workarounds@suspend-resume-context:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-kbl3/igt@gem_workarounds@suspend-resume-context.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-kbl7/igt@gem_workarounds@suspend-resume-context.html>
>         ([i915#180])
>  *
>
>     igt@gen9_exec_parse@secure-batches:
>
>      o
>
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb3/igt@gen9_exec_parse@secure-batches.html>
>         ([i915#2856])
>
>      o
>
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb2/igt@gen9_exec_parse@secure-batches.html>
>         ([i915#2527] / [i915#2856]) +1 similar issue
>
>  *
>
>     igt@i915_pm_dc@dc6-dpms:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl3/igt@i915_pm_dc@dc6-dpms.html>
>         ([i915#454])
>  *
>
>     igt@i915_pm_dc@dc6-psr:
>
>      o
>
>         shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb4/igt@i915_pm_dc@dc6-psr.html>
>         ([i915#454])
>
>      o
>
>         shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb6/igt@i915_pm_dc@dc6-psr.html>
>         ([i915#454])
>
>  *
>
>     igt@i915_query@query-topology-unsupported:
>
>      o
>
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb1/igt@i915_query@query-topology-unsupported.html>
>         ([fdo#109302])
>
>      o
>
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb1/igt@i915_query@query-topology-unsupported.html>
>         ([fdo#109302])
>
>  *
>
>     igt@kms_big_fb@linear-8bpp-rotate-90:
>
>      o
>
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk7/igt@kms_big_fb@linear-8bpp-rotate-90.html>
>         ([fdo#109271]) +36 similar issues
>
>      o
>
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb1/igt@kms_big_fb@linear-8bpp-rotate-90.html>
>         ([fdo#111614]) +1 similar issue
>
>  *
>
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html>
>         ([i915#3743]) +1 similar issue
>  *
>
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-apl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>         ([fdo#109271] / [i915#3777])
>  *
>
>     igt@kms_big_fb@y-tiled-64bpp-rotate-90:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb8/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html>
>         ([fdo#110725] / [fdo#111614]) +1 similar issue
>  *
>
>     igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb8/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html>
>         ([fdo#111615]) +1 similar issue
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777]) +2 similar issues
>  *
>
>     igt@kms_busy@extended-modeset-hang-newfb:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl2/igt@kms_busy@extended-modeset-hang-newfb.html>
>         ([fdo#109271]) +173 similar issues
>  *
>
>     igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>
>      o
>
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-apl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +5 similar issues
>
>      o
>
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +1 similar issue
>
>  *
>
>     igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb3/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109278] / [i915#3886]) +3 similar issues
>  *
>
>     igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb2/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html>
>         ([fdo#111615] / [i915#3689]) +2 similar issues
>  *
>
>     igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-kbl7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +6 similar issues
>  *
>
>     igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl4/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +8 similar issues
>  *
>
>     igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb3/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_ccs.html>
>         ([i915#3689])
>  *
>
>     igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html>
>         ([i915#3689] / [i915#3886]) +4 similar issues
>  *
>
>     igt@kms_color@pipe-b-ctm-negative:
>
>       o shard-skl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl4/igt@kms_color@pipe-b-ctm-negative.html>
>         ([i915#1982])
>  *
>
>     igt@kms_color@pipe-d-ctm-blue-to-red:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb2/igt@kms_color@pipe-d-ctm-blue-to-red.html>
>         ([fdo#109278] / [i915#1149])
>  *
>
>     igt@kms_color_chamelium@pipe-a-ctm-0-25:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-snb5/igt@kms_color_chamelium@pipe-a-ctm-0-25.html>
>         ([fdo#109271] / [fdo#111827]) +3 similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-kbl1/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html>
>         ([fdo#109271] / [fdo#111827]) +10 similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-c-ctm-0-25:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-apl1/igt@kms_color_chamelium@pipe-c-ctm-0-25.html>
>         ([fdo#109271] / [fdo#111827]) +5 similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-c-ctm-max:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb2/igt@kms_color_chamelium@pipe-c-ctm-max.html>
>         ([fdo#109284] / [fdo#111827]) +2 similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-d-degamma:
>
>      o
>
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk6/igt@kms_color_chamelium@pipe-d-degamma.html>
>         ([fdo#109271] / [fdo#111827]) +3 similar issues
>
>      o
>
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl3/igt@kms_color_chamelium@pipe-d-degamma.html>
>         ([fdo#109271] / [fdo#111827]) +16 similar issues
>
>      o
>
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb1/igt@kms_color_chamelium@pipe-d-degamma.html>
>         ([fdo#109284] / [fdo#111827]) +6 similar issues
>
>      o
>
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb1/igt@kms_color_chamelium@pipe-d-degamma.html>
>         ([fdo#109278] / [fdo#109284] / [fdo#111827])
>
>  *
>
>     igt@kms_content_protection@atomic:
>
>       o shard-kbl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-kbl7/igt@kms_content_protection@atomic.html>
>         ([i915#1319])
>  *
>
>     igt@kms_content_protection@uevent:
>
>      o
>
>         shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-kbl1/igt@kms_content_protection@uevent.html>
>         ([i915#2105])
>
>      o
>
>         shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-apl4/igt@kms_content_protection@uevent.html>
>         ([i915#2105])
>
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-512x512-random:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-512x512-random.html>
>         ([fdo#109278] / [fdo#109279])
>  *
>
>     igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html>
>         ([i915#3359]) +1 similar issue
>  *
>
>     igt@kms_cursor_crc@pipe-c-cursor-suspend:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>         ([fdo#109271]) +15 similar issues
>  *
>
>     igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen.html>
>         ([fdo#109279] / [i915#3359]) +1 similar issue
>  *
>
>     igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html>
>         ([fdo#109271]) +81 similar issues
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html>
>         ([fdo#109274] / [fdo#109278])
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html>
>         ([fdo#109274] / [fdo#111825]) +2 similar issues
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         ([i915#2346])
>  *
>
>     igt@kms_cursor_legacy@pipe-d-single-move:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb3/igt@kms_cursor_legacy@pipe-d-single-move.html>
>         ([fdo#109278]) +11 similar issues
>  *
>
>     igt@kms_fbcon_fbt@fbc-suspend:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#180] / [i915#636])
>  *
>
>     igt@kms_flip@2x-plain-flip-fb-recreate:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb1/igt@kms_flip@2x-plain-flip-fb-recreate.html>
>         ([fdo#109274])
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@b-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html>
>         ([i915#79])
>  *
>
>     igt@kms_flip@flip-vs-suspend@c-dp1:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html>
>         ([i915#636])
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html>
>         ([i915#2587])
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu.html>
>         ([fdo#109280]) +9 similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html>
>         ([fdo#109280] / [fdo#111825]) +12 similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-kbl6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html>
>         ([fdo#109271]) +146 similar issues
>  *
>
>     igt@kms_hdr@bpc-switch-suspend:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html>
>         ([i915#1188])
>  *
>
>     igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html>
>         ([fdo#109271] / [i915#533])
>  *
>
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         ([i915#180]) +4 similar issues
>  *
>
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>         ([i915#180]) +1 similar issue
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>         ([i915#265])
>  *
>
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         ([i915#265])
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html>
>         ([fdo#108145] / [i915#265])
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html>
>         ([fdo#108145] / [i915#265]) +2 similar issues
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html>
>         ([i915#265])
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html>
>         ([fdo#108145] / [i915#265]) +1 similar issue
>  *
>
>     igt@kms_plane_lowres@pipe-a-tiling-y:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk3>
>         ([i915#118] / [i915#1888])
>

--------------vxXeGXETjCpB29lHVhOebR8k
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    On 1/19/2022 16:42, Patchwork wrote:<br>
    <blockquote type=3D"cite" cite=3D"mid:164263936995.22536.13083861687462=
207488@emeril.freedesktop.org">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Add support for querying hw info that UMDs need</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/99060/"=
 moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwork=
.freedesktop.org/series/99060/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22027/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetex=
t">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/index.html</a><=
/td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11110_full -&gt;
        Patchwork_22027_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_22027_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_22027_full, please notify your bug team
        to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (10 -&gt; 10)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_22027_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>{igt@i915_query@hwconfig_table} (NEW):</p>
          <ul>
            <li>
              <p>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-tglb6/igt@i915_query@hwconfig_tabl=
e.html" moz-do-not-send=3D"true">SKIP</a></p>
            </li>
            <li>
              <p>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-iclb4/igt@i915_query@hwconfig_tabl=
e.html" moz-do-not-send=3D"true">SKIP</a></p>
            </li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Expected. The table only exists on ALD-P and later. So TGL/ICL will
    be skips.<br>
    <br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:164263936995.22536.13083861687462=
207488@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
            <li>
              <br>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-asyn=
c-flip:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11110/shard-tglb8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-ro=
tate-0-hflip-async-flip.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-tglb7/=
igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html" =
moz-do-not-send=3D"true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Not related to this change.<br>
    <br>
    John.<br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:164263936995.22536.13083861687462=
207488@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>New tests</h2>
      <p>New tests have been introduced between CI_DRM_11110_full and
        Patchwork_22027_full:</p>
      <h3>New IGT tests (1)</h3>
      <ul>
        <li>igt@i915_query@hwconfig_table:
          <ul>
            <li>Statuses : 7 skip(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_22027_full that come
        from known issues:</p>
      <h3>CI changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>boot:
          <ul>
            <li>shard-glk: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11110/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk9=
/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk8/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11110/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk8/boot.h=
tml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_11110/shard-glk7/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1111=
0/shard-glk7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk7/boot.html" moz-=
do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_11110/shard-glk6/boot.html" moz-do-not-send=3D"true">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-g=
lk6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk6/boot.html" moz-do-not-se=
nd=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11110/shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk5/boot.=
html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11110/shard-glk5/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_111=
10/shard-glk4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk4/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11110/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-=
glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk3/boot.html" moz-do-not-s=
end=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11110/shard-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk2/boot=
.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11110/shard-glk2/boot.html" moz-do-not-send=3D"tr=
ue">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11=
110/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/shard-glk1/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11110/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS<=
/a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2027/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk9/boot.html=
" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22027/shard-glk7/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2027/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk8/boot.html=
" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22027/shard-glk9/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2027/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk1/boot.html=
" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22027/shard-glk1/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2027/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk2/boot.html=
" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22027/shard-glk2/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2027/shard-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk2/boot.html=
" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22027/shard-glk3/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2027/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk4/boot.html=
" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22027/shard-glk4/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2027/shard-glk4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk5/boot.html=
" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22027/shard-glk5/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2027/shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk6/boot.html=
" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22027/shard-glk6/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2027/shard-glk6/boot.html" moz-do-not-send=3D"true">PASS</a>) ([i915#4392])=
</li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_ctx_persistence@process:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-snb6/igt@gem_ctx_persistence@process=
.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [i915#1099]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@in-flight-contexts-10ms:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11110/shard-tglb6/igt@gem_eio@in-flight-contexts-10ms.html" moz=
-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22027/shard-tglb8/igt@gem_eio@in-flight-contexts-10=
ms.html" moz-do-not-send=3D"true">TIMEOUT</a> ([i915#3063])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@unwedge-stress:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11110/shard-iclb1/igt@gem_eio@unwedge-stress.html" moz-do-not-s=
end=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22027/shard-iclb5/igt@gem_eio@unwedge-stress.html" moz-do-no=
t-send=3D"true">TIMEOUT</a> ([i915#2481] /
              [i915#3070])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-out-fence:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11110/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-iclb6/igt@gem_exec_balancer@parall=
el-out-fence.html" moz-do-not-send=3D"true">SKIP</a> ([i915#4525]) +1 simil=
ar
              issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11110/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html"=
 moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-iclb4/igt@gem_exec_fair@basic-none-=
share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> ([i915#2842])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none@vcs1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-iclb1/igt@gem_exec_fair@basic-none@=
vcs1.html" moz-do-not-send=3D"true">FAIL</a> ([i915#2842])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11110/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html"=
 moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-tglb7/igt@gem_exec_fair@basic-pace-=
share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> ([i915#2842])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-apl4/igt@gem_exec_fair@basic-pace-so=
lo@rcs0.html" moz-do-not-send=3D"true">FAIL</a> ([i915#2842])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11110/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html" moz=
-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22027/shard-glk6/igt@gem_exec_fair@basic-throttle@r=
cs0.html" moz-do-not-send=3D"true">FAIL</a> ([i915#2842])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_params@secure-non-root:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-tglb6/igt@gem_exec_params@secure-no=
n-root.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#112283])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11110/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked-all.=
html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22027/shard-glk4/igt@gem_exec_whisper@basi=
c-contexts-forked-all.html" moz-do-not-send=3D"true">DMESG-WARN</a> ([i915#=
118])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-skl4/igt@gem_huc_copy@huc-copy.html"=
 moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [i915#2190])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@heavy-random:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-kbl7/igt@gem_lmem_swapping@heavy-ran=
dom.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [i915#4613]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-skl2/igt@gem_lmem_swapping@parallel-=
random.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [i915#4613])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
          <ul>
            <li>
              <p>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-iclb2/igt@gem_pxp@reject-modify-co=
ntext-protection-off-3.html" moz-do-not-send=3D"true">SKIP</a> ([i915#4270]=
)</p>
            </li>
            <li>
              <p>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-tglb2/igt@gem_pxp@reject-modify-co=
ntext-protection-off-3.html" moz-do-not-send=3D"true">SKIP</a> ([i915#4270]=
)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-iclb4/igt@gem_render_copy@y-tiled-c=
cs-to-y-tiled-mc-ccs.html" moz-do-not-send=3D"true">SKIP</a> ([i915#768])</=
li>
          </ul>
        </li>
        <li>
          <p>igt@gem_softpin@allocator-evict-all-engines:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11110/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.htm=
l" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22027/shard-glk2/igt@gem_softpin@allocator-ev=
ict-all-engines.html" moz-do-not-send=3D"true">FAIL</a> ([i915#4171])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@dmabuf-sync:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-skl8/igt@gem_userptr_blits@dmabuf-sy=
nc.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [i915#3323])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_workarounds@suspend-resume-context:</p>
          <ul>
            <li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11110/shard-kbl3/igt@gem_workarounds@suspend-resume-context.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-kbl7/igt@gem_workarounds@suspend-r=
esume-context.html" moz-do-not-send=3D"true">DMESG-WARN</a> ([i915#180])</l=
i>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@secure-batches:</p>
          <ul>
            <li>
              <p>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-iclb3/igt@gen9_exec_parse@secure-b=
atches.html" moz-do-not-send=3D"true">SKIP</a> ([i915#2856])</p>
            </li>
            <li>
              <p>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-tglb2/igt@gen9_exec_parse@secure-b=
atches.html" moz-do-not-send=3D"true">SKIP</a> ([i915#2527] /
                [i915#2856]) +1 similar issue</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-dpms:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-skl3/igt@i915_pm_dc@dc6-dpms.html" m=
oz-do-not-send=3D"true">FAIL</a> ([i915#454])</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-psr:</p>
          <ul>
            <li>
              <p>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-iclb4/igt@i915_pm_dc@dc6-psr.html"=
 moz-do-not-send=3D"true">FAIL</a> ([i915#454])</p>
            </li>
            <li>
              <p>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-tglb6/igt@i915_pm_dc@dc6-psr.html"=
 moz-do-not-send=3D"true">FAIL</a> ([i915#454])</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_query@query-topology-unsupported:</p>
          <ul>
            <li>
              <p>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-iclb1/igt@i915_query@query-topolog=
y-unsupported.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109302])</p>
            </li>
            <li>
              <p>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-tglb1/igt@i915_query@query-topolog=
y-unsupported.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109302])</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
          <ul>
            <li>
              <p>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-glk7/igt@kms_big_fb@linear-8bpp-rot=
ate-90.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271]) +36
                similar issues</p>
            </li>
            <li>
              <p>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-tglb1/igt@kms_big_fb@linear-8bpp-r=
otate-90.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#111614]) +1
                similar issue</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip=
:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html" moz-do-not-send=3D"true">FAIL</a> ([=
i915#3743]) +1 similar
              issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</=
p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-apl4/igt@kms_big_fb@x-tiled-max-hw-s=
tride-64bpp-rotate-180-hflip.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#=
109271] /
              [i915#3777])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-iclb8/igt@kms_big_fb@y-tiled-64bpp-=
rotate-90.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#110725] /
              [fdo#111614]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-tglb8/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-180.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#111615]) +1
              similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p=
>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#=
109271] /
              [i915#3777]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_busy@extended-modeset-hang-newfb:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-skl2/igt@kms_busy@extended-modeset-h=
ang-newfb.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271]) +173
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>
              <p>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-apl6/igt@kms_ccs@pipe-a-ccs-on-anot=
her-bo-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#1=
09271] /
                [i915#3886]) +5 similar issues</p>
            </li>
            <li>
              <p>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-glk6/igt@kms_ccs@pipe-a-ccs-on-anot=
her-bo-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#1=
09271] /
                [i915#3886]) +1 similar issue</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-iclb3/igt@kms_ccs@pipe-a-random-ccs=
-data-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#10=
9278] /
              [i915#3886]) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-tglb2/igt@kms_ccs@pipe-b-crc-primar=
y-basic-yf_tiled_ccs.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#111615] =
/
              [i915#3689]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-kbl7/igt@kms_ccs@pipe-b-random-ccs-d=
ata-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#1092=
71] /
              [i915#3886]) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p=
>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-skl4/igt@kms_ccs@pipe-c-bad-rotation=
-90-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#1=
09271] /
              [i915#3886]) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-tglb3/igt@kms_ccs@pipe-c-crc-primar=
y-basic-y_tiled_ccs.html" moz-do-not-send=3D"true">SKIP</a> ([i915#3689])</=
li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_cc=
s:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-tglb1/igt@kms_ccs@pipe-c-crc-sprite=
-planes-basic-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> =
([i915#3689] /
              [i915#3886]) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@pipe-b-ctm-negative:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-skl4/igt@kms_color@pipe-b-ctm-negati=
ve.html" moz-do-not-send=3D"true">DMESG-WARN</a> ([i915#1982])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@pipe-d-ctm-blue-to-red:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-iclb2/igt@kms_color@pipe-d-ctm-blue=
-to-red.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109278] /
              [i915#1149])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-snb5/igt@kms_color_chamelium@pipe-a-=
ctm-0-25.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [fdo#111827]) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-kbl1/igt@kms_color_chamelium@pipe-a-=
ctm-blue-to-red.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [fdo#111827]) +10 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-apl1/igt@kms_color_chamelium@pipe-c-=
ctm-0-25.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [fdo#111827]) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-iclb2/igt@kms_color_chamelium@pipe-=
c-ctm-max.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109284] /
              [fdo#111827]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-d-degamma:</p>
          <ul>
            <li>
              <p>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-glk6/igt@kms_color_chamelium@pipe-d=
-degamma.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
                [fdo#111827]) +3 similar issues</p>
            </li>
            <li>
              <p>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-skl3/igt@kms_color_chamelium@pipe-d=
-degamma.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
                [fdo#111827]) +16 similar issues</p>
            </li>
            <li>
              <p>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-tglb1/igt@kms_color_chamelium@pipe=
-d-degamma.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109284] /
                [fdo#111827]) +6 similar issues</p>
            </li>
            <li>
              <p>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-iclb1/igt@kms_color_chamelium@pipe=
-d-degamma.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109278] /
                [fdo#109284] / [fdo#111827])</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@atomic:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-kbl7/igt@kms_content_protection@atom=
ic.html" moz-do-not-send=3D"true">TIMEOUT</a> ([i915#1319])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@uevent:</p>
          <ul>
            <li>
              <p>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-kbl1/igt@kms_content_protection@uev=
ent.html" moz-do-not-send=3D"true">FAIL</a> ([i915#2105])</p>
            </li>
            <li>
              <p>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-apl4/igt@kms_content_protection@uev=
ent.html" moz-do-not-send=3D"true">FAIL</a> ([i915#2105])</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-512x512-random:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-iclb1/igt@kms_cursor_crc@pipe-a-cur=
sor-512x512-random.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109278] /
              [fdo#109279])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-tglb1/igt@kms_cursor_crc@pipe-c-cur=
sor-max-size-offscreen.html" moz-do-not-send=3D"true">SKIP</a> ([i915#3359]=
) +1 similar
              issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11110/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html" =
moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-skl2/igt@kms_cursor_crc@pipe-c-curso=
r-suspend.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271]) +15
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-tglb2/igt@kms_cursor_crc@pipe-d-cur=
sor-512x512-onscreen.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109279] =
/
              [i915#3359]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-snb6/igt@kms_cursor_edge_walk@pipe-d=
-128x128-right-edge.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271]) =
+81
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-iclb3/igt@kms_cursor_legacy@cursorb=
-vs-flipa-atomic.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109274] /
              [fdo#109278])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-tglb1/igt@kms_cursor_legacy@cursorb=
-vs-flipb-atomic.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109274] /
              [fdo#111825]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varyin=
g-size:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-iclb7/igt@kms_cursor_legacy@flip-vs=
-cursor-atomic-transitions-varying-size.html" moz-do-not-send=3D"true">FAIL=
</a> ([i915#2346])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@pipe-d-single-move:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-iclb3/igt@kms_cursor_legacy@pipe-d-=
single-move.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109278]) +11
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@fbc-suspend:</p>
          <ul>
            <li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11110/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html" moz-do-not-=
send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22027/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html" moz-do=
-not-send=3D"true">INCOMPLETE</a> ([i915#180] /
              [i915#636])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-iclb1/igt@kms_flip@2x-plain-flip-fb=
-recreate.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109274])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11110/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22027/shard-skl1/igt@kms_flip@flip-vs-expired-=
vblank@b-edp1.html" moz-do-not-send=3D"true">FAIL</a> ([i915#79])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
          <ul>
            <li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11110/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html" moz-do=
-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22027/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.ht=
ml" moz-do-not-send=3D"true">INCOMPLETE</a> ([i915#636])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rc=
ccs-downscaling:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-iclb6/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html" moz-do-not-send=3D"t=
rue">SKIP</a> ([i915#2587])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw=
-mmap-cpu:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-iclb6/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu.html" moz-do-not-send=3D"true">S=
KIP</a> ([fdo#109280]) +9
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw=
-render:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22027/shard-tglb6/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-indfb-draw-render.html" moz-do-not-send=3D"true">SKI=
P</a> ([fdo#109280] /
              [fdo#111825]) +12 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-kbl6/igt@kms_frontbuffer_tracking@ps=
r-rgb101010-draw-mmap-wc.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#1092=
71]) +146
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-suspend:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11110/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html" moz-do-not=
-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22027/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html" moz=
-do-not-send=3D"true">FAIL</a> ([i915#1188])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:<=
/p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-skl6/igt@kms_pipe_crc_basic@nonblock=
ing-crc-pipe-d-frame-sequence.html" moz-do-not-send=3D"true">SKIP</a> ([fdo=
#109271] /
              [i915#533])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes=
:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11110/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspen=
d@pipe-a-planes.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-apl3/igt@kms_p=
lane@plane-panning-bottom-right-suspend@pipe-a-planes.html" moz-do-not-send=
=3D"true">DMESG-WARN</a> ([i915#180]) +4
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes=
:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-kbl6/igt@kms_plane@plane-panning-bot=
tom-right-suspend@pipe-b-planes.html" moz-do-not-send=3D"true">DMESG-WARN</=
a> ([i915#180]) +1
              similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-skl1/igt@kms_plane_alpha_blend@pipe-=
a-alpha-transparent-fb.html" moz-do-not-send=3D"true">FAIL</a> ([i915#265])=
</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-apl6/igt@kms_plane_alpha_blend@pipe-=
b-alpha-transparent-fb.html" moz-do-not-send=3D"true">FAIL</a> ([i915#265])=
</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-kbl6/igt@kms_plane_alpha_blend@pipe-=
c-alpha-7efc.html" moz-do-not-send=3D"true">FAIL</a> ([fdo#108145] /
              [i915#265])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-skl10/igt@kms_plane_alpha_blend@pipe=
-c-alpha-basic.html" moz-do-not-send=3D"true">FAIL</a> ([fdo#108145] /
              [i915#265]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22027/shard-kbl6/igt@kms_plane_alpha_blend@pipe-=
c-alpha-transparent-fb.html" moz-do-not-send=3D"true">FAIL</a> ([i915#265])=
</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11110/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha=
-min.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_22027/shard-skl7/igt@kms_plane_alpha_=
blend@pipe-c-constant-alpha-min.html" moz-do-not-send=3D"true">FAIL</a> ([f=
do#108145] /
              [i915#265]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_lowres@pipe-a-tiling-y:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11110/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html" moz-=
do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22027/shard-glk3" moz-do-not-send=3D"true">DMESG-FAI=
L</a> ([i915#118] /
              [i915#1888])</li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
  </body>
</html>

--------------vxXeGXETjCpB29lHVhOebR8k--
