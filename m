Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 244B765A9F4
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Jan 2023 13:18:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0845810E18E;
	Sun,  1 Jan 2023 12:18:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8A6E10E18E
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Jan 2023 12:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672575491; x=1704111491;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=AapHypA1EIxSlOHrhuMITM6V6IuEVx4arPD9mSNpIqU=;
 b=KFJRlvtnOGO33Z7bEmdeWk29y/wZOzF6agYUYaPS0JAzv8XYhCXfUNF8
 /c5wqlxZ2+LUxtWHZdAmxubYYVvk3cEYWMfZZpmn3GiJXaTrMPBgaxzUb
 C89gBajSv6aYm9BLpGH5UGPqIGHA5cC8vzD1YIjsVaQWoMkStuAYDpYV3
 1JdmKf4M3wYO6A+JiQu3rtPSV1ugoNKN/OAcRi8DYhUDw9zdmpalL11YM
 DasO2Z8vRtPCTdh64KaTDM1/IO3Io55ngLoduuPCHIJ2Lp2TTVFtghJsB
 22hxnzKvINtbLXI9qEAIEMixpu6pw7hRg+vSKJmijN8XqDGhKSmuXhvEY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="301070702"
X-IronPort-AV: E=Sophos;i="5.96,292,1665471600"; d="scan'208";a="301070702"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 04:18:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="656254297"
X-IronPort-AV: E=Sophos;i="5.96,292,1665471600"; d="scan'208";a="656254297"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 01 Jan 2023 04:18:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 1 Jan 2023 04:18:10 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 1 Jan 2023 04:18:10 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 1 Jan 2023 04:18:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vpy1YNRk2YOlRtXZB6GWdtAAwNOIe0cIURt5ChvO583Ys75/86vx5KZg92/Cb8ncNFdfR6gjF+WYc76o88jeAbklsuVdOklQGIsT/5pHgvHzEHijQGnfPrYsWDkQaVhBGcB3TZxGs/JMsk8aLmSMzv469sklOXTv3SD+3TWLvQSsggkw0TZPYJgkEteu7msC4iPDVJsrJzrOt3DaN9Y1r9WGOUtZZJcb9JmPWu/9SizzQ2PrguKjVk3Qn5WM2XMywss0E8oRreuImalFR6khp6juA1zzKK+hI0TeWNMKAnVzDsw/4e8g3dF15kIW0gVYrOOcla78PQLTiuMMmaNqoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sfjAA3ePdS9ajQhQne4rBGZ+iXLWMcXGbT8+9YIwLps=;
 b=XISMYkvzI1yRUxMO5Q0gKr0JwaZWqwYmL9ClBJshv1h0UqzclFLnG3ang+nLaPEdgLRe/Qibag83glLspc2sB5jPjUodLcewvwMXwjBtvbKDSsyd9dpySn5a9ibjPo0wNbIWmFRpp7aiB1Wvv1G2iTvDRmIstCGKKBFmSvouylf2SQQN+3hqER0QWTZ7pz/jXqkuDcvQJAVEz/2yubuevwmzfi5PYapABFJAs5FI6o5uLpw/cfHamamV084cc/SFXlPOg1BYdZI5P5pF/YiKSMXG0PnK940OwMmu8iN1crrcSqgOXvPMaDd084+k0+aIk/9ezzO/W9cTAyq8bzPSLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB5544.namprd11.prod.outlook.com (2603:10b6:208:314::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Sun, 1 Jan
 2023 12:18:08 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6591:f625:d30c:c35e]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6591:f625:d30c:c35e%7]) with mapi id 15.20.5944.019; Sun, 1 Jan 2023
 12:18:08 +0000
Message-ID: <d238b2f1-cce7-635f-df31-acbc46a7c8d1@intel.com>
Date: Sun, 1 Jan 2023 17:47:57 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Andrzej Hajda <andrzej.hajda@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221222063428.3052172-1-ankit.k.nautiyal@intel.com>
 <4a00986d-8041-6c90-eaff-86c6ceb0b157@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <4a00986d-8041-6c90-eaff-86c6ceb0b157@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0211.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB5544:EE_
X-MS-Office365-Filtering-Correlation-Id: 06ec55c1-d368-4500-faf4-08daebf23dc4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bVmKfJ+VJI2B7HPQeMC0lwlSArLFnwsOr7mEqBlrl8vveNs/fR8grg8G4sS6VpiyZitGjlmm0RX4Ty55/1irYHYBkkXlWf6rKl16Iq4YVeOp6IrwmK+VJ2pNxcE8Xk2/6Ypucwlx3BRnkOXRB2Z9T5XGZzwTzg8TZfcdtL4EACZ+OWH55pH5TT3r0tIb+jOKE9qqdVSao0ngTuitrudjGyv7mIXMiSHMH5R/D8tplzJ2EwB+ODik9LtJe6nSkx1vQFKXvhZWtcGemSt0USZKaFsq5LRxwlB9kPIpIMRWhudDGHqotIqgm6ZWhLSOBeBajHgrPkiwsh5mj0ZS7cUPGmVVsHrkSoC3wXd5iRzs/pUdUiy4DuoCM0OvX198Rwd3wC7X87dZf+XybuVS8oYIFZ9kDN0WBxWcVfBHgEqOOQvpzpDr3/KFKh1C8fPpkg7S09kjK0xsLQXsf0uqwAPIdHK+WeK007QrU+737J47EJntG4KiNkt06n8LUpBe3u1zSh40QfWDuUXggDfvARnr5/zK47ro9295CPTVo+AFOVLBPmmpAjLqfUM8eCgiJWuhhBJrZ2hGkihTtsxGmRwd3zaMVfp5wdW3DLj8DZ5g6RqFwcyq3/U4cMD8ogXBT35CxS61NxpNd+1blFUyk5dxQz81O++Pqp5w6ARqmk6E8jUuXtUh9VFyeXzptHI7TEbyOikJV91hV1iz1gHj5ekGaknJcJUsJQtpy2uSVn9yBzFq4P2mo/KLKjkV3hyYXTqW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(366004)(396003)(346002)(376002)(451199015)(316002)(2616005)(31696002)(6486002)(6512007)(26005)(186003)(478600001)(36756003)(86362001)(6506007)(53546011)(55236004)(31686004)(41300700001)(6666004)(8936002)(2906002)(83380400001)(5660300002)(66476007)(66556008)(66946007)(82960400001)(8676002)(38100700002)(22166003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFErYk55eW9VRVp4N0RWNjAzcE5BQ2U2Q0xKcmsvcGpVTlU3dDc4bVR6SVFD?=
 =?utf-8?B?bUF3alZVN3ZKc05YNEhaWUZKY3oxcjJYTXdCV1B3RENnWXhtVHdQTnNQbWp5?=
 =?utf-8?B?Ny9WbE5kbldQVHVOQWVZM0lmaFZzaldQcmNqeEhuYjIrMXlJdkZBVHpkdlM0?=
 =?utf-8?B?MXc1d2p5Z2JNb0JZSm9UR056UDl5UkRjTXMyMlM4ZTZoQWh1WXNXcFR1bHJ1?=
 =?utf-8?B?cDZpOG41MTdlYUZjUDRicUpjWk1QZjVmSStaWkxIaE9aUjJDMmd5RUk1RzZ2?=
 =?utf-8?B?TVpIMDc2bEo5T0VaWVNHRjdjbVlLb3ZSSU5VbVB1VjVYSGRTNzNrMVdvaUUz?=
 =?utf-8?B?UEprMlRqeFhJWTF3bHV3RTFTa29XL2pKWERSUElzZzZSM3ozNk1qMkZmVEp3?=
 =?utf-8?B?RmdIaWlJNVpOY2pKUHFsTWdSdjZ2emY2bUczRlhWcjl3b2JHOUZFVWExZTYr?=
 =?utf-8?B?cThtYVh6UW1ZUmMra0I4bmRqOHc2K2syNEptTUh4VG44aHppRW9OK29KQ2VF?=
 =?utf-8?B?R1c1b1hZdUF2T3hoemJpR2UvUGo4aTUzZ2ZYV0NtUmZsSGJWQVdkbGhIRDhy?=
 =?utf-8?B?bEhmVDF5Y0pac1BreFQzSU4xVUlQejMyK3NZNHNyVGNZcnB4a1hJeUVndjdJ?=
 =?utf-8?B?dDlVS1NMQWozMkkzazd1YTVleVlVSFo4QldwNkNkbjdkcE83T25xelhmN0Zj?=
 =?utf-8?B?WWd4alVMYmwyUFlEZnFid0VpOWprQTB5V0EwQUk3bUNRZjE2QnBmRmZEcVkz?=
 =?utf-8?B?TytxVjU5WjJkWDdMclA4OFZ0T0d5M29uVUN1K08yeTNQL05rc3ZBOEdkK1Jh?=
 =?utf-8?B?V3MyN3BXSDRaS3YzcW1Icmg2TGtjbkZRbC9VT2VkZTU2b3g5RUM0SHpBNVBJ?=
 =?utf-8?B?VXVzTXNmaC9jS3lBakUyRFIzd1BHcUNPSzcxWWYyTlU1YWt0R2lydFpPOHFx?=
 =?utf-8?B?V1JkREFxYVRTNE5IeDZCVHRINWRmWXJJdXVUUUl0aGpSem12M2NaMjg3enBG?=
 =?utf-8?B?UW05SFBYNWdxdlV2ZEVac0NXcVJzbW5lMnQwZUU3Q0E3bXh3NmUweXVXSmZZ?=
 =?utf-8?B?RmhkVG45TDYyU3ZGMHkrOVlWUi8xZnRFSi9rVkxWeE1ySmxST2F0a1Y2SGRa?=
 =?utf-8?B?dEp6QTl6T2x0SFh4V0grWEQ1Ykl1K1RCSGZYSTBPODI4NEtNbzdEMGRqZVpz?=
 =?utf-8?B?a2V4UG1nb0hzWm1EeGpRSWRFTEhEUXpyM0VZR0FvYVVEK0ZOL0p0ZHNMSnpS?=
 =?utf-8?B?TUR6RVhJWWI1cEV4NXBSYjh0NlFRTmQ5T3YxQmJhcUhjMlhRdjZCOTBGVUFX?=
 =?utf-8?B?YTBUczNlOFgvTXNaNHhNa0NnWldlbGNpSlR1Q201aWpySTMzWTg3T3NIdnlM?=
 =?utf-8?B?bjd5M0lXUzJkck1qdVpocDBOQkwwUmRPZkZGU3JmZmdmRkQxeHFjd1lTYU9u?=
 =?utf-8?B?d1lBcVRPbG16Q2VneDArdnp3UDhaZXdaVk1nTkxPQnN3TmZJQldRSWZYd1NB?=
 =?utf-8?B?YmdmNDVTd3FBYmp3TDUrdm5Wb3FFTDR0SmdhM2JUeVk2bWh4Y25YR1RiL1l2?=
 =?utf-8?B?MmsvbVNuZXh2dzdWM1J4djVBbE9NclpQVUMvbDBlMjMrdEd6NGtSQXU5N0cz?=
 =?utf-8?B?aUFiWnlMekkyZ3hoUllyVnlXdUJ6cUhPZm90RVFsZXBWS2c5Q3ZjSEE0Wkxn?=
 =?utf-8?B?bERKaGZSV2F4ZVo2S1JndlUwZnRsclJLSytmMzgwV2tjdTgza0lNZTNHUzZH?=
 =?utf-8?B?OWlhQ0h2cGhzK1pBb05oNWNPS2REUmJ2RGJTdXZRQkR3R0FZc09IVVBXTWh5?=
 =?utf-8?B?TjY2MmVEKzVnRHlrcFNneWJiWVJONmFTb3BReEphbmZvbEZ4dnBEMEltUngz?=
 =?utf-8?B?RnQwY0JEY0QwdjNMUVhoU09XV3d1QXYvQzdTb0N4cGtiZlRRbjNjN3FlNmNP?=
 =?utf-8?B?MGNiZ2FIZHdqMFFib0lHZGFRbVJsZnhzQzhxcEhtWjduK3dGNUcweGU0UFBB?=
 =?utf-8?B?MWIzOHVwbUVZS1pOU1oyeTZaWnM5UlhEa3BrZHN4NHRST0l5OTNoUndMaEt2?=
 =?utf-8?B?SXNNQXMvUUhaUEhPeVdQdWt5dWJYdFM3YTZxZjJQWmtlMzhFMGpxaFFwQ1pm?=
 =?utf-8?B?aWs2OVNVNHBMQWZ6MFg0eW9SSGFIMDBMS051ejhyMk9xSTBtZG9tbHZrdklE?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06ec55c1-d368-4500-faf4-08daebf23dc4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jan 2023 12:18:08.0873 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: id1rr3oNWw/T/ViSsRu8/dR3o+Qv0fAohfAJFfWJOrzn9nFknb/FYuzmxbEorBe16gkGI7se7jlPON4oVV2ORV3KQpv/3TPs6jOL9VAZ5Qg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5544
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: Remove check for dsb in
 dsb_commit
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


On 12/29/2022 4:51 PM, Andrzej Hajda wrote:
> On 22.12.2022 07:34, Ankit Nautiyal wrote:
>> The dsb context should be already checked for NULL, before dsb_commit 
>> gets
>> called. So remove the check for dsb inside dsb_commit.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dsb.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c 
>> b/drivers/gpu/drm/i915/display/intel_dsb.c
>> index 3d63c1bf1e4f..ce1f8e0c2cd9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -228,7 +228,7 @@ void intel_dsb_commit(struct intel_dsb *dsb)
>>       enum pipe pipe = crtc->pipe;
>>       u32 tail;
>>   -    if (!(dsb && dsb->free_pos))
>> +    if (!dsb->free_pos)
>
> Alternative would be allow passing NULL dsb, ie. removal of check on 
> the caller.


Thanks Andrzej. Yes that can be a way, I just went ahead with, what is 
followed in other function.

Like most of the other dsb functions, we are already using dsb context 
to get crtc in the first line, so this check at later stage is not useful.

Thanks & Regards,

Ankit


> Anyway:
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
>
> Regards
> Andrzej
>
>>           return;
>>         if (!intel_dsb_enable_engine(dev_priv, pipe, dsb->id))
>
