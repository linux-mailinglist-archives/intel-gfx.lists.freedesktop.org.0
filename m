Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D26B5F36A9
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 21:47:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F88910E4B6;
	Mon,  3 Oct 2022 19:47:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C26610E4B6
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 19:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664826451; x=1696362451;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+8p4j9zK1Mxjo8p+rV5kPC+GD6Cwty49kJQZsjd0Fmo=;
 b=Ta1LA942BrgD4/ecx91/unTXUAMJOpeVDRIQnWpTKWpX8JzhxHlRNHcG
 MJ6c9km7Eb2S4w6Ijslrbkz/ao1t6HK3DBidFF3i8vf/E4DSdb9sMhb14
 F49JLpOr1NTvjPsPKB8iJFkUbqHFI3d5VBLI45o5hjTyo7PcKKd7IHm6U
 bioowLDWR5QLAGyy6wFzcsAfy9gAYf/YCrlyHNyuaae4JkDvTs5/CPQNu
 +F7kSfaEth3PgKqhvIbfRTNKfVq7BG8h/iQQS+HGrjqmIzeVVcB504wOm
 QVGyftm4g16veyb+5ux70n1bAr0GAQsFHQ+eDAuAnj7AmLw5KluEqx4E+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="303706037"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="303706037"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 12:47:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="766074619"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="766074619"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 03 Oct 2022 12:47:25 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 12:47:25 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 12:47:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 12:47:24 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 12:47:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oMLdrRvUR/tfEKYAH/k93EtvUgSK2Lecd9k8vSVD8EPnp6ZNv3/GSagWgDLcd7J4ZEFD80dXEzH5hK39lHT2QVt0e2oL/ZPaNr9C3Lybjl6gVuvkr4q4hhNj7aBc4UxykFK1+DNjHe3F6aXQzHw8ypjEDKIfhTrr+FC0uJWYq4DSG661JDSwRIvU3I4n5a85TRsH7eLFayK0d+Zcw5R9iBngeJ89fcfJRVrGa7IM4knYqE/B5eWSNY6hDr7rhDslflJKVEEx+I2uEMYJjvlEM+0Ad5Md+MMJitd9ERoBboO7LFn0hz/CAw6lr6hIWy/MTRI7JqJ8aczXfj9n0pKIKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qDvwW2W9UqfiEAy6FCxGuC3ue01QIrLYt85UnXlHGnQ=;
 b=Cj6xtuBg8oz+RQ1MgKiGzkGAjDvxgl3HUvsW1gvjp9QvcYrxMDVT5supYMoAnMfjW/fUL1YwzX1FbmW28kVeidKWDTW6+huvTCYDmXLiHq2COrFV2OukxyD+cVaRm3+y2u891Z3bT72+VDjVx94Kq5PGMkx4Kj7/hLI9sdzJCD8Fa3ag0+etu4evNyMF6awVxMypyTpCobrcz2A9/ukve27FRhKB8o1ufQlce8jR8pPXZmF8YknAsH+iu4Ay1IcC4ySJV91AQ3VpIZMtDQgYpN4D8hm11bzaS55WCw76OjEObZSQ1baqzdlEGZzc770nNqIGn+t1SR3rP9AMB73qWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DM4PR11MB7302.namprd11.prod.outlook.com (2603:10b6:8:109::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.15; Mon, 3 Oct
 2022 19:47:22 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6%7]) with mapi id 15.20.5676.030; Mon, 3 Oct 2022
 19:47:22 +0000
Message-ID: <9703bd69-3b42-3e64-04e1-5b8fc6e9f367@intel.com>
Date: Mon, 3 Oct 2022 12:47:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-GB
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220930010507.108296-1-alan.previn.teres.alexis@intel.com>
 <20220930010507.108296-2-alan.previn.teres.alexis@intel.com>
 <49be7acd-79b8-2937-96ec-5a9728006d76@intel.com>
 <acdf464bc515f0489c70c9282dcccce1cc2e85ca.camel@intel.com>
 <0dad721a-2308-588c-8b7d-8ac98d17f3dc@intel.com>
 <2cb443945f86c2bbcfef78ca19cc4a85fdae3666.camel@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <2cb443945f86c2bbcfef78ca19cc4a85fdae3666.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0046.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::21) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|DM4PR11MB7302:EE_
X-MS-Office365-Filtering-Correlation-Id: bacef55e-fa60-41c0-426d-08daa57816a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JX/DZ/RCU8EQ++2h8k5PKZVJu9jSmEIm8iElNfyibKcKr2MREQvuQyZnjY2eFRuniqx0/7v8znmq02mMhBSzWzHJFbPlcYF5w3al2lSSSANh9nO0AJPDCs+IslPtbs1VGGf4sz4FGyYuvy5rvPDEM13v7czlUaZv0CQ2wfp2hHwW1Uo0s+KU1s4cRWVXgoWbUK6dAF9ZqteaEUEhP453vYJwn267e/bCBmaaq6h0zopGtx0Nz3MhjoH1F5g/ud4VfMOYQQCuiOYE2I7R9laDGtDdDsngBAecck+/HI79CZTZxITyLvwaF2xlxlZEXZPbbVtUCnWAQO9eBpqZG9AcVryRu3yJAkoNv5rFBPdHEOoFBnTQ+M8ZDwRNdp/8ZNv/PKoGEs1HooUplYH2vIg5EKga2d+2o5n9+Fu48V0Mxs70XgSWjAG5y4PhIEHLmAv7ki4hYAyewJB68H+OYK5wFFcfgjbHz9B3y9zeoOE/XGqt5CR+hRmA9wNd2a4SzB30QJJ+n3gB40DcGJG7ykYrfeFZM4OyRKstqzNEqmq5gPi7+zMMGFV1+f0+8ovRUHGsXlOrWOPGlbEQPWwg2almzd5uOaSeYUNhSDBjD5DbvQF9DNJzMKhSTRHEijTQi3Mhv5uDd1wALKBELNELyPws862D16XaHuskITb6eBALaR3s6rBKuxnulKh15LblS4XqCmdzScwnH9UNNtA4d7cRBHwh/jHkoWDL6E10TXTRD1OeUbOHpm3k7eOlyIXcfZYDUDg+OTSDx97bnjtXDnBcygIApQtNTHzMRfOQdkV/3j4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(346002)(136003)(366004)(396003)(451199015)(31696002)(2616005)(478600001)(2906002)(86362001)(6512007)(5660300002)(36756003)(6506007)(66946007)(6666004)(186003)(6486002)(316002)(38100700002)(53546011)(66476007)(110136005)(83380400001)(8676002)(26005)(8936002)(41300700001)(66556008)(31686004)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eU9USm9NbXVwRzQ2b2dpdVpCSXZHZ2NaTy9wRDJGQ1JLRFJkUGxtbmZRUEU1?=
 =?utf-8?B?cTJqbDJqeEQyUmxUR29tcm5nOVFrbzNKcnlkM0YxTlAwUDB4NzJZUGRMUDZS?=
 =?utf-8?B?VlJaejBodGx5OWFlb09NWnM4Q3NNTFpPRzJVMGNxYS9Cdlp3ZlI3VjZhSDRJ?=
 =?utf-8?B?U0I0SURncUZJM3dVTzBES1VnWThEWHp5cTZCeGlkQlI5NmJOYWs1SlMxeXFw?=
 =?utf-8?B?WkV3bVVvdnNqZFpYVXlHSzc1aHZpQSsyREVHZUtzUTlNSTE2cW0rZGRrZExF?=
 =?utf-8?B?UDh5aVBrTk9ZNGZueUljSUZoTEFzQ2JZMjBqV3doQU81V1l1SUtNTWZVWk04?=
 =?utf-8?B?T3N6eitoTlByOVlRRytJYTd2MktmdTd4SDFRelo1d2FoaVNiTVQxVk1hQjJt?=
 =?utf-8?B?a1crUjdQdENlM2lwSGpsZENsWVFhd0JGSmVIUlFleVRXWisyYXJhUGlXaEpS?=
 =?utf-8?B?RXBFYStvaXVhWTNMaWlLMmhCa2dtWFBhK2lGTjhpcVlacG41TFE2ZkRoWEVo?=
 =?utf-8?B?VWw2RW9lZ0R4WnI3Z1VVTTRhUkZCQ2xXTkF4Vy9nSUpTNjB1dzIrdCtUZHAz?=
 =?utf-8?B?MHgvYjF0VkdoNTIxWWZpWWQzeUY1ZXJjQnUxVGVURldnWVRuRG9BRlVZNmxV?=
 =?utf-8?B?aTl5T0d2ZThKRlZCU0ZBdVUxMmhRK2ozMlZCTTN2UnIvbTNWbVN0MkE1eEhX?=
 =?utf-8?B?d2JmbUlRZ3hNWkVKVGhXMkJiakFTckI1emlYOGEvOUlFRG1vaDRQRWRWNk1E?=
 =?utf-8?B?RFBjbm9MQkZ4OHp6Rm5SbExpV3ZzcW90Y2s2dGc2KzdKejM3QmN0cGh4OU1R?=
 =?utf-8?B?Y0gwcElhTDBnU0tDc3cwZ3lGcXBVSkRwYjJ5SHZDWWQ0K2FLV0EwbFhnZHdU?=
 =?utf-8?B?M0x3MFhyQnJ2aHpIQWRPRHhiR1Y5dWdud1FNWWE2RStxZkFaajNmRUdXK0k2?=
 =?utf-8?B?RlpNWjNBS09DTUpGcnR4NXVaUllkb0RaZlkvOW91K1J3N2Y0d00vV2lwaDU0?=
 =?utf-8?B?Wk9tcW1mNCtiZ2ZqUWgydTR3ODRhY2JWRU5iY2pBek9vb2tRTGVhTnhKQUJj?=
 =?utf-8?B?QjA0aFEvYU16TTRrWGMvaHFUYTdPWmUrcE1UUmU2MnhBYTBzQXQrNE5aNEJQ?=
 =?utf-8?B?aWVScHZadXN4Y3ltbFhYd1prSFkrUVBDZjBKcUptQ3MrQzhyQTRoWlI2Q3RI?=
 =?utf-8?B?Q25zdnVGWjBwR0tKU3pTay9vTG85NGhjanFUWW5sZ3hhMTU5ZE5YK285NGQ2?=
 =?utf-8?B?M1ZNMnZ5bitGYWg0STZiT2EzaW9UQnVrNjNpVkNQdE90QnV1TTNYckF1QUhL?=
 =?utf-8?B?a2s4UU5Rb0tKTkQ3NEpBVkUyMlFlUlIrOW5PUTRBUmRiTFIxMmhRdDJJZHhu?=
 =?utf-8?B?dUlyMEhwK0doejNyRFRxeHhGRkVaZDFiLzlMZTNiZ0VjWlkvemk5OTFxajA2?=
 =?utf-8?B?VGNYYittMER5Tzh2ak5FNy9tbjVUWTJsSXJ0U3B1SDMxWXBSbXpwcm9VajdD?=
 =?utf-8?B?Z1BXc3ppa2x6ei9SOERnLzNBSzhGOE5CR1NtMDBPOUQwVlRpVVcxT2dVTm1l?=
 =?utf-8?B?cHhIVmNOUENmOUxZQW10TEYyNlZXK0U2cVZhMGpvRHFxUUVNdkRZNmU5bEgr?=
 =?utf-8?B?YzlBSFpKanNURTQyZncvblpjckk5eE4xNTJlTEx6QVlWWTQvNVcvN0NTTmoz?=
 =?utf-8?B?MjdzYThGMmdzQlA1YUZHNlZORHFtZlFlNndJUmNsdTRjTEZyN21zTHdxYjMz?=
 =?utf-8?B?dFNPZ2tFRFJoU3FhaDZyK0MwRU43cnc1R1k3M2Y1eE8wVmZkUDRhVjRVQ3Nx?=
 =?utf-8?B?eVIyTWpQN3RLemtXcUZmQWVtYjZHaE1PU3Q5T1JnSVBLOHNzQVI3cFRjcTRD?=
 =?utf-8?B?MGRyTzJyMXM1cEFQTkI2aVJqNjZCcVdxT1EvaTc1dEt4eFlzU0xJU0RvRDIy?=
 =?utf-8?B?aElWSVpJN1lReDZobHA3dlYydXpaZWpKaTVYQ0JQTCs1WXV0aUFTRVlmekNO?=
 =?utf-8?B?RDlhcXlYMEFsVFdNY2Z6eldJQVNabnFnZWJXYUg5a2VkN0MvQ1U5RG13Tmxr?=
 =?utf-8?B?bU1BUUF5eGpORzJKTU5jTWo2cjBYNHlVYVN3OXl0TU4yQnBCay9SWC9XdDl2?=
 =?utf-8?B?bWFNZGp5TGRIUnU2TEZNYlVHOG4wSzBaa0MrOW8waG1VMWNweTBJZ21UNG5j?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bacef55e-fa60-41c0-426d-08daa57816a4
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 19:47:22.2274 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c/mBKOmN0FlsOs+StKGvS4gNtGooFYY8hdPTX9dvElNYja56T+9BsS/1P4keb5sSye0WCyD7jPchd5PQcZ1lD6RoJM7GZerUFe709KsuXmE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7302
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
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

On 10/3/2022 11:28, Teres Alexis, Alan Previn wrote:
> On Fri, 2022-09-30 at 15:35 -0700, Harrison, John C wrote:
>> On 9/30/2022 14:08, Teres Alexis, Alan Previn wrote:
>>> I disagree because its unlikely that all engines can reset all at once (we probably have bigger problems at the at
>>> point) and if they all occurred within the same G2H handler scheduled worker run, our current gpu_coredump framework
>>> would just discard the ones after the first one and so it wouldnt even matter if we did catch it.
>> So min_size is not actually the minimal size for a meaningful capture?
>> So what is? And remember that for compute class engines, there is
>> dependent engine reset. So a reset of CCS2 also means a reset of RCS,
>> CCS0, CCS1 and CCS3. So having at least four engines per capture is not
>> unreasonable.
>>
> Alan: min_size is a meaningful size for the worst case scenario of collecting the guc-report. However due to gpu-core-
> dump, its not meaningful in terms of reporting that information out to the user. Thats not a limitation of this
> subsystem.
I'm not following what you mean about gpu-core-dump. The point of the 
warning is to let the user know that the interface they want to use 
(error capture via sysfs) might not be complete in the majority of 
cases. If there is some catastrophic worst case scenario that overflows 
but 99% of instances are fine then that's what the drm_notice about 
'spare_size' is for. But if the 99% of instances of a capture are going 
to overflow then that is what the drm_warn about 'min_size' should be for.

>> It seems pointless to go through a lot of effort to calculate the
>> minimum and recommend sizes only to basically ignore them by just
>> whispering very, very quietly that there might be a problem.
>>
> Alan: I already responded that i will re-rev as per your recommendation and switch back to drm_notice.
>
>> It also
>> seems pointless to complain about a minimum size that actually isn't the
>> minimum size. That's sort of worse - now you are telling the user there
>> is a problem when really there isn't.
>>
> Alan: the min size is accurate - but whether we report to the use about them possibly facing a problem is where it gets
> a bit unclear because of the limitation in the gpu-core-dump framework. We could drop the message completely if you like
> - but then we'd have to remember to re-add it if we fix gpu-core-dump in future. For now, as i mentioned in the last
What limitation in the 'gpu-core-dump framework'? What is the fix required?

> reply, i have already changed it back to "notice" as per your last comment. Perhaps you should have looked at rev2 which
> was posted before your responses above. As mentioned in last reply, i disagreed but i am committing to your request
> which was fixed in rev2 as per your request.
The point of a code review is not "I say X so you must do X, immediately 
post a new revision now". I asked some questions. I stated my opinion 
about what the end user should see. If you think your implementation 
already matches that or you disagree because you think I am basing my 
comments on incorrect information, or even just that you disagree with 
my reasoning, then you should not blindly post a new revision saying 
"here are your changes, I don't like it because Y but just r-b it and 
I'll merge". You should reply to the comments with your thoughts and 
suggestions. Maybe the reviewer is wrong!

>> IMHO, the min_size check should be meaningful and should be visible to
>> the user if it fails.
>>
>> Also, are we still hitting the minimum size failure message? Now that
>> the calculation has been fixed, what sizes does it come up with for min
>> and spare? Are they within the allocation now or not?
>>
> Yes - we are within the allocation with this patch (the fix of removing the redundant register-struct-size
> multiplication brought the number down significantly).
Bringing in comment from other thread:
 > Some context: with the calculation fix we are allocating 4MB but we 
only need 78k as min-est.

Wow! That is quite a big smaller. And much more plausible! So if 
min_size is 78KB, what is spare_size now?

Sounds like we can drop it down to a 1MB allocation. And even if 
min_size is not the absolute minimum but quite a bit more worst case 
kind of size, it still seems reasonable to keep it as a warning rather 
than a notice. Given that it is so much smaller than the allocation 
size, if it does somehow overflow on some platform/configuration then 
that sounds like something we should know about because it likely means 
something is broken.


>> John.
> So how would you like to proceed? Could we reply on rev2 btw?
I would like to answer the questions/concerns before jumping in to 
writing/re-writing code.

Why split the email thread? The discussion is already happening here. 
There is no point splitting a single discussion across multiple patch 
sets just because a new patch has been posted if that patch does not 
actually change the discussion.

John.

