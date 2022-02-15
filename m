Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D45A74B6340
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 07:06:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BEDA10E29A;
	Tue, 15 Feb 2022 06:06:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FCB710E1E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 06:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644905162; x=1676441162;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oGO+s/jvXZK8/hRVcTTq8dZ2LST/rJNsZ/KcCnti0oI=;
 b=FsHq6zxkbduB/nEZQSDtDFXSMpnX54gsDiEMbIqM6NLcERBq/7oIfP+/
 X5jown+kWXJeXiB9Op8M0VdovK4B3JERvau17Ly1qhRttRiRxva5WYXhE
 LmvM+XQYP9OtPeEEThob5aHBWISr8W6Xgbc/rzfBnTIyH3rk3nHysrRDb
 jpv3oVDgGQ4UZtRWFDdEcLikCvbt0kNY2hTPQMq6ENtN2pUh4DR/7GUVa
 sXZ1AQq/rxGyE7onGEd2N/5BPrZ5CaOruVAj5z/TgCTWbKPDLqtDT742m
 PP7TQvXG/GeaI1XytAfLwp0/n4R0fZbt0QsmBCPEg6gNNTXzn8eGrv+5i Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="237668000"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="237668000"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 22:06:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="496794163"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 14 Feb 2022 22:06:01 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 14 Feb 2022 22:06:01 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 14 Feb 2022 22:06:00 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 14 Feb 2022 22:06:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cRjyx0qzWrrtM6Dcn4vcHEuCIN8kkR+h48MLziTulWq3j/+eXS+o1KxX8/VwY/DK084LX0zjwad1hN/dLXs8jo7rWBwkMbIHwWFhzKK/1mZdBBywLfEzgAu7joHiCcmyUSxbHa2fjRGV4mRaCwXLxIvrxv8ifX+eQPOq4Ax5XhL7Y/5cd30xBAaz92rG8SnDU07kOlOEZtlW9hQwyxOqGH35iORAQJtXuf7b8pphIOhPhjLQYCRNQlex4pirLjyPrPRtZZ+anXIh1dEgYjG/Gt8UzUZh5JzDiGTzz60pLVA1gGbju9qMzfjjEUbUFumnntz+FXLMdpLVCQ+5R9+8kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xzfYdP+rr1BrABAhBVib7KDtBs6WruFivltfYDGyf6w=;
 b=YDA+0xGlDXOGnrKGGCdUgXzuTgUaC9aF01fGW3QqFoDezvKZvbd4XqBUq1EhNCjAxJ0VCUdtIQ1eCwePGiE3r/vDVfL7a2XHWDFgmEJbThnqAnv5bo7tbNQfQZBeF8jREmYs4N8TJPIak3dcq4FfHZ3sn/LwkzbEm0klAk7voYcGU3clM57cDU0YoQVyIaBvgsrz+Um8/9kWKoyOSjAqNqv1H1C1eVC+ldfJ6AT0M1kK5XUrXiGGYpW0Carm8EDxLAcIJ8/43M5VEg1uwPirx3MIq33fIBonkV992gHTCVTaL3Jd+AnjyrNTAIsxXOLx/k1CVGt+zjJk2mUfSk63+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by BL1PR11MB5526.namprd11.prod.outlook.com (2603:10b6:208:31d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Tue, 15 Feb
 2022 06:05:59 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::b5c7:858f:953b:daa2]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::b5c7:858f:953b:daa2%4]) with mapi id 15.20.4975.019; Tue, 15 Feb 2022
 06:05:58 +0000
Message-ID: <1189984b-46de-7bfd-1da7-2a7cbafaf8c8@intel.com>
Date: Mon, 14 Feb 2022 22:05:56 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Jani Nikula
 <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220211021510.202602-1-casey.g.bowman@intel.com>
 <87sfsp7h49.fsf@intel.com>
 <ee934ff3-c17b-6766-f6ab-d0440080e46e@linux.intel.com>
From: Casey Bowman <casey.g.bowman@intel.com>
In-Reply-To: <ee934ff3-c17b-6766-f6ab-d0440080e46e@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR01CA0026.prod.exchangelabs.com (2603:10b6:a02:80::39)
 To BYAPR11MB2936.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b49a60ad-659f-40bc-1adc-08d9f0493c71
X-MS-TrafficTypeDiagnostic: BL1PR11MB5526:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BL1PR11MB5526F45B848C7515AE999AFBDD349@BL1PR11MB5526.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 49XLcmhthwOFrO28o/ysVfl/AOewTMyGfjYtVCAR/dus0VinVRy7hS5bf6p7pd1hLTeLSGGdGt1pWeemU59wEkHnC1zFcA2+tUEIUSSfuuydJHgxaUBR83984mcUKNtRDKBrMppXW/sHjoBxXxdwVS39WJfTcoo0Ai5aQOBUZQUa7nLU8D6XXRxItVyxsF7/ug1H6c2S/GOLqcu9qQfmirS9olb/UQ7cuX2Wj/FJrxgBc0rRZ4bVLu3v4pnDOXahIZQO+QouNRR+y6JZ2G2jq6eHUEiIT+j+TxPYRk3RNiU5EdZdHTlMYhD9Gg1t6cH2lvFBdEQA/mU1epak2aSahjKg7JUbXG0T3R0cY4aayBPM3CQaq5+kS5o9Eb3QD+BD/Cfy3ZMRqolVs0KBatKJjYNsr/iEdgBIepanFclWgVPADif5ht/M6yww69KHCFxlqEiFErEl0jtcMnjMmzdEUl/awuKYIlo50PmP2Cv2pobpbe15gIUWCcQMtKwskKY0saJHNIuNY56je9lO/0bdT+PWAeT8IVT06DtTjxkkUwvTlLcZEHkR6sPt6N1hTtpTpiwrtx+1et2URh704wmVQ3Pr6exMj+sv9WmH6P44U04cSE2yb1EwIYExeHSWVKdLVCPKMHjYPk3BQoyfBOL0Se18AN55pttBYWWmmhEOvVm3MYiGuGTRGtwfoHiIyfm9IFujFVZRIVfLEpYebFJBIk11ITMFljUskgPTEGNHupg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(53546011)(38100700002)(8676002)(82960400001)(4326008)(8936002)(86362001)(31696002)(6506007)(2906002)(186003)(26005)(2616005)(110136005)(6512007)(36756003)(6486002)(316002)(66476007)(66556008)(66946007)(508600001)(31686004)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QUt5UE5zS1E4cTMrMHc0Z2ZzK3Y4eFRrbk9Fazd1UkwwWWRUQmdVWUNqTTRo?=
 =?utf-8?B?QWQ1SXRxWks2VlZXZWdhUXFlYjVMY21yelBMd0txbXpzdm14R3NmL3IrYTBT?=
 =?utf-8?B?T3hPZVpFYk9KWFdQa1FvSXVkVDVOLzZnQ2ZsM1FvZ1J4a1luaUdER2RmMmFY?=
 =?utf-8?B?SWxBaFpHY051TVl6ZHlQSXE4MTRVOGh4VEJDRkNFNDR5T0tEVVdvcENxdWNL?=
 =?utf-8?B?QUo1ZnYzR1VhSSt3bmxKOHVxNVZwdnM5UjZnaHlTUlNwNGhZSzU1bHI0Y3Bq?=
 =?utf-8?B?cUlwZFdOeXlFeHN6UG15NE5rZ21qcXRxeTNVVDMyUEYweW9CbUJGTU53eUdV?=
 =?utf-8?B?QlA3cytJNlZ4WnRTeFJVbEpsdTNQV2w2TTVuNUpvYWN2WGpGaE5OVzFmamNX?=
 =?utf-8?B?UG9GQ0NMbi9NcjFGSTNXWjFGaGpVRDFueFFsa00rVUlJSlhsMk93OURYV0R2?=
 =?utf-8?B?ajU2b2NYZys0cm5LcVlCSXlsa21XOERhUGVqLzJCMGpsT3lZRU1IQkdVc1Ar?=
 =?utf-8?B?QkRXWHRKZys5V2pqLytXUXZ0K0swLy9oTzFDMW1hOXI4YXU2WFVydE56MFJI?=
 =?utf-8?B?Q0RLV25hSXEyVEFWenBML0VWOW9LMFpCd1dvWjcwUmx5WWhtcDNpckh2N1Nv?=
 =?utf-8?B?RW9JWjd3dEpkSmZRNnE3ZjRzSHJTM0RlaXZlTi9QQkNwYmFLN1Z5ejl3eHNu?=
 =?utf-8?B?Sk9qc2lMOW5jSjExNWFpeFBFQ2hzbGUrSURwTGdwNUVITDFBZ0VFdEZYbkJ2?=
 =?utf-8?B?RmRuaExpUXpoZi9KOW9ka1pNMHBVaEh2RjZFbFBhV1pMdUZ5SkRjcXdmdjJD?=
 =?utf-8?B?TkFiL1hFczg3SENtejQ5VVE4VTN2STdYbEg1c1ZHeHNzcHNWbElEZ1R6Y2dQ?=
 =?utf-8?B?SVlpVm5Ra3VPODFpZkE1UHQyUGU4dlZGbHRjK1lsRlAxQUlOd0xtQTNVYytV?=
 =?utf-8?B?WlVCWENhYllYYVZGbitkVmpjWHI0M21NNmgwUXV0QjBocU5WakJWeklmcTRD?=
 =?utf-8?B?SWRPeXVuYjVNdXZZMExpaEp2bkhOaFJpSlNVZlhCWnMxSUVtM1M2MmtLWmNs?=
 =?utf-8?B?djBlaTlWYzZCSXJpK1o0dVJDbXZaZUJBQzZjdUMwVUQ4aTBHaUV3REFOQWdS?=
 =?utf-8?B?b1ZWNFhEd0dZR0lIQzdYN0RRYlI4RDQ5cW1TZlhUTjFSK05hQ2U4ckppOEl0?=
 =?utf-8?B?dVg0TVZhTzVyNDNBeFJGTXVIRVFVQXVnSUlOUWU3TGt0dDUwUVczNDBad2tK?=
 =?utf-8?B?V09tVDJJU0Iva1ZXVHEyOW9hUXkyS1k0Wml0K1plTTYzdnZjRU1lQ1c2QXlJ?=
 =?utf-8?B?V1dwMVEyTk40OTViNEd3SmhFRmpLWVFXT2F0dm9SMUwzRnQ1NEo5bVl3WDdI?=
 =?utf-8?B?YTdOa3BNU2hLckpMdDFiZHBka082cGttNitSVVhYTlVtSlhmaXVpRlB1OFl5?=
 =?utf-8?B?eHlLc3pzdCt3ZDRQODJud0lEbzc4dDdaSjlKQkQ4UThhNzZ6aXpQSDFlUHZx?=
 =?utf-8?B?WjAzM2NNMTBWZlJud1JsL2tUVmxoZ1ROZ2Y5cTFUNlBtM2oycGlvcW9hbVpw?=
 =?utf-8?B?THVIUXlnOEV5MVA3RmRxckJFbGRTcDlSWXRZMzBTdytLdVh5SnFycU5RVE9h?=
 =?utf-8?B?SWZ1MkUvcjJRazduZEhTL1RTaU1FYk9kdEhwbzc1QjViS1J2eU9mdU1mTVFF?=
 =?utf-8?B?RGtyOTE0MXFmTFdFTGh6bmdWUGVBZlRuUzZ4dDVoV1Vxa0ZSNHFuRHRUU1N1?=
 =?utf-8?B?alptbTJ5VVJxZGtNa29pd1pMcUtrN0VDbHVXQlR6eGQwWjRhVGxUcDk4VUpF?=
 =?utf-8?B?VUU1ODlnY0F6V2lXQ0d2ZFpkY0Y2WERwcTc4elFTT1VEV2dQNTlLZW5sbEtm?=
 =?utf-8?B?dUFIV1dFU0xGQThOcnR4S3dXeUlrSXY4VzJSVzhISlFyQkpUdGZBN2N4YXd1?=
 =?utf-8?B?aWpGS3NNMTljSUY1RmJIQnJxc2FWR0ZUN3hsZjB6TG1xeEx1WXdZVXEvN0hC?=
 =?utf-8?B?a3FjZ25vZ1p3RWxCeU1ieXRwL3hIL094Nmt5MWp3UlEvVmpYSk1qUXl6TmxF?=
 =?utf-8?B?L2hKNkgyQWE2bTU5UnBsZ29mTENEdnh4azF0d01VQ2pRQWJaenZYdngza1Rn?=
 =?utf-8?B?aGlJcy93RlJ0SVpNVEdDK0VtcURNQXBFNThHeEZWU2FvMUxua0ZIeEFKRDBY?=
 =?utf-8?B?TTlNSW4yRGRMQTh1VW9URUFSYmxQQ1hVYWwvRHZkQTlsaFNyNi9tYjhZSTRw?=
 =?utf-8?B?dHRMMTh1VEZ3V0lKaXI3V1RFZUJRPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b49a60ad-659f-40bc-1adc-08d9f0493c71
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2022 06:05:58.8678 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LJzF+9gTOjeN4k6TTHDuegXTJRBpWev0v+DMrocys0nDiYh3fm/1HQWi6g7Ttg4iabXrOREOdDgdatWymIqnneQEKBgefhBhbD3tJUeHpcc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5526
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH v2 0/1] Splitting up platform-specific
 calls
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
Cc: lucas.demarchi@intel.com, michael.cheng@intel.com, daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2/11/22 05:51, Tvrtko Ursulin wrote:
>
> On 11/02/2022 11:55, Jani Nikula wrote:
>> On Thu, 10 Feb 2022, Casey Bowman <casey.g.bowman@intel.com> wrote:
>>> In this RFC I would like to ask the community their thoughts
>>> on how we can best handle splitting architecture-specific
>>> calls.
>>>
>>> I would like to address the following:
>>>
>>> 1. How do we want to split architecture calls? Different object files
>>> per platform? Separate function calls within the same object file?
>>>
>>> 2. How do we address dummy functions? If we have a function call 
>>> that is
>>> used for one or more platforms, but is not used in another, what should
>>> we do for this case?
>>>
>>> I've given an example of splitting an architecture call
>>> in my patch with run_as_guest() being split into different
>>> implementations for x86 and arm64 in separate object files, sharing
>>> a single header.
>>>
>>> Another suggestion from Michael (michael.cheng@intel.com) involved
>>> using a single object file, a single header, and splitting various
>>> functions calls via ifdefs in the header file.
>>>
>>> I would appreciate any input on how we can avoid scaling issues when
>>> including multiple architectures and multiple functions (as the number
>>> of function calls will inevitably increase with more architectures).
>>>
>>> v2: Revised to use kernel's platform-splitting scheme.
>>
>> I think this is overengineering.
>>
>> Just add different implementations of the functions per architecture
>> next to where they are now, like I suggested before.
>>
>> If we need to split them better later, it'll be a trivial undertaking,
>> and we'll be in a better position to do it because we'll know how many
>> functions there'll be and where they are and what they do.
>>
>> Adding a bunch of overhead from the start seems like the wrong thing to
>> do.
>
> I don't see it adds real complexity, which would normally be 
> associated with over-engineering. As a benefit I see it helping with 
> driving the clean re-design (during the porting effort) in a way that 
> it will be easy to spot is something is overly hacky, split on the 
> wrong level, or incorrectly placed.
>
> And it moves run_as_guest outside of intel_vtd.[hc] which IMO shows 
> immediate benefit, since it has nothing to do with intel_vtd.
>
> I suggested to add clflush as well, since I think going for 
> drm_flush_virt_range everywhere is a bit lazy given how it is a clear 
> regression for older platforms.
>
> But after that I indeed don't have a crystal ball to show me how many 
> more appropriate low-level primitives would be to use the pattern.
>
> So my vote would be to go with it, although the main thing is probably 
> to solve the conflicting asks and let guys focus on the port. Put it 
> to voting then? :)
>
If we can get someone else to weigh in here to break the tie, that'd be 
helpful :)

Regards,
Casey

