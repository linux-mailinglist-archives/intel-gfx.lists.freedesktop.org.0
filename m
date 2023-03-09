Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D09B6B1ADB
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 06:38:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5451710E78A;
	Thu,  9 Mar 2023 05:38:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DF8C10E0BF
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 05:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678340304; x=1709876304;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s4wXFVFNBjq+x0vMpX2yD+CDskqiHGa9qilJPs31kJI=;
 b=ezwVMHmp5axHAobb1QyFW+6YlKJ93+aaSRJ0g/GL+vR3Wi5zFxLuBm84
 UGR66ozFqw6ljqYy7U3J1ecg1yvFIFxMid0LPNNlOsUP9IMAdujqKhr+8
 AjO2MJAE978E69USJ6MI6yqaFUG7Bqykaw3wlwKYl0C8yOEcV1ee4F6mY
 jaCUB2eR+8X1wXigqtwTIbYCxvB4HP5sC1fNc7+F4yRosQB3utYw8ZRIn
 oyrII973QkqyhjLMC5LDKPoLXV1BghrbTYxjSa2SZJJaBTKqNBI6b4iYD
 Fv+NEtflW+To9ndYjk+ttuDYCGGk4IuIDkI1kHTPAx8jzQlgZM+pjiTwQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="316752888"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="316752888"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 21:38:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="677247811"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="677247811"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 08 Mar 2023 21:38:23 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 21:38:23 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 21:38:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 21:38:22 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 21:38:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZZ++6j8mwGD6cwhcQ4H9j0v/P7+3Iza2saVFIdgf9DFVIDrBSDn2xWKnnboBQNyasck2nLaB1vc1u18GHXh53CIF+kiADKBn0zwrM4o/5+rqk18/owkWoKIZmTcx1uTvZO+3Of/6xFu1ad6rLZ7tBot/+zkntolE7lfKsjoBGiBYSENlSEALY+vqYS/tA6t81DKXIMd1FzGmqYIjXvdlf5aPq/v+o5slRQvU2b6wHthqDLocea8nS6NgjttuzdioNyuwo9yRthULZ6BLmD5+bkRI6TI9yDCG8GKbaZO6ukjd/8Ews4sCt+vnTAthTu5/ZzGb/WYHFGycFC4vAVG+Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vZrHagKTdi1KuJFuTOe+5AfmYeJWrPmLzl6Vwh26XUI=;
 b=J3eDmWf2145yKYf4m98sJQ24nzK5JFwv00aJGBlJDaSM5BkzI/2+cs5kFnfS/FgGOLBVYilNJ/MDhs+0GjHlxkQw6Y6n/KPaVhSH7KVWa1xrCytVtFJqTYZ60rJe0X1EIAMw2pK3+ib6IICc9CCzKzGuIu4cf5KAYd04opsnueD6QsBDDKFpRHm8s27A9fo0XIvTSFAPxFTI52ALJkc3nH54dCNlmRHPA+Hk6srnmknyR7r3KRGSbp9v6KokSQsDswgZwY65oGyAShVYuHWTV+lMj16y+QoVcAz+COpf4JF6l5EhbZDWKY9nCdUYgArnJHLzbfYL/+4bFM508TXcfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL1PR11MB5528.namprd11.prod.outlook.com (2603:10b6:208:314::15)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Thu, 9 Mar
 2023 05:38:20 +0000
Received: from BL1PR11MB5528.namprd11.prod.outlook.com
 ([fe80::48c6:3ff7:9997:37bf]) by BL1PR11MB5528.namprd11.prod.outlook.com
 ([fe80::48c6:3ff7:9997:37bf%6]) with mapi id 15.20.6178.019; Thu, 9 Mar 2023
 05:38:20 +0000
Message-ID: <326a48de-d2aa-14b8-d718-9e20c3c6cc7d@intel.com>
Date: Thu, 9 Mar 2023 11:08:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20230308102109.2386712-1-badal.nilawar@intel.com>
 <20230308102109.2386712-2-badal.nilawar@intel.com> <871qlzcwzs.fsf@intel.com>
 <64a67a3a-c2b9-591b-221f-90944ac71e23@intel.com>
In-Reply-To: <64a67a3a-c2b9-591b-221f-90944ac71e23@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0013.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::9) To BL1PR11MB5528.namprd11.prod.outlook.com
 (2603:10b6:208:314::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5528:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: 0289ffdd-b1fb-4c62-3795-08db20607d91
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z3429jvXVerLE2iUILiAdfYTwWlI3d+2Qdk1VzcuojTvgltV7a7f1pvR3titR08ctHgqw1VyxFh/8S0Wv/WUOOFzR4RzcjqUc7aCcEWxrTGn5ZJV0lX8ldRu2fpMJOnHiu93SS0sDdMblAsWdKel62XfhHnAIg4u8uZq4TOCR7PTyqvAKdWbtdtMcdi4EKHkAd74lmQEbAOFwC5qK2i3y7pFWzedfjDbOUN0fBtW/xQXOwBg87q499s8svEXE4YxiIHa28oyi6U7UGd6+pL026uNOhmvBmqf/JdoeZ52KoTKHg93k4LZopN4MXONlT1mjdIEE0ASlH5/u+e6Q4ALJEDtmNmYFBdT9AquDvNSuPn4FZbZgsgBu8tfFnk1qGhfxNr4oLWpqp1mJu///tffQrHwU+on/8aT2qppto5zEARQeyIZFW5LFW2VxJn/hoPh78ujdXizzR3IbjpNR9Wjt0lTqBq+vcESD0xyA3Eum6BhTv7CXSDa+71fnzMm05OkNB5EuSozhJZ3fIfDBK3v5cf1rFsb3E6YliMfdsTtvtnHl6VWpBdVJg+j6O8JMxv7LBs4IAcAF0BbyYxQqVNCNdrcw2CMz7MgeQZO3TjTCusPLNqfvz0cV40JTl0Yttzgp9ajhqVfM0D+JUJC49+5l4X/mUeqLRnkm3LRrNvVYyc3uawpz5JnJ9Ym7LGMr4YmFvdUUhzUjag1lT0QAx2NxRnyE/x9wizKCnAjVZX8oUw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5528.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(39860400002)(396003)(366004)(346002)(136003)(451199018)(8936002)(36756003)(5660300002)(8676002)(26005)(53546011)(6512007)(6506007)(38100700002)(82960400001)(6666004)(83380400001)(186003)(2616005)(6636002)(86362001)(316002)(31696002)(41300700001)(110136005)(66946007)(4326008)(66556008)(66476007)(6486002)(478600001)(31686004)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVZpZ0x6VkVQQ3dmbTVYUXVKSVAxTGdVWDRyMnVCTEhNRVhSd0JUZU11SFRz?=
 =?utf-8?B?b1lMMGpjUkRLOHM2Rld1TW12LzdML0tpUWhObUUwbDR6TmxORFFDaXBWaTdq?=
 =?utf-8?B?dWFDckxTNTAyTjRFb3U3ZG0xOWJNZGtGbXBiVEZodmdINUllcWdaMStTZGxG?=
 =?utf-8?B?Sm40aW1Ed1lUcG1lWE1wR2p1RFZCOFErcnVvNm5aaE0vdUlkamNXSTJIQ3B6?=
 =?utf-8?B?N1VDTXJRanV3UzQvclhYWUFLOEsweHNCSStFbGErQ0hDLzFKTktkbnlpeDdP?=
 =?utf-8?B?V0dGcVdyTmdFQlU0L3VDUlRpbFFrRnVzbHNqS0tMcjZ1WmxyM0kwQW9ULzRw?=
 =?utf-8?B?WTk3aDhpVWpOaUt4SXpsRXJKWXdiMnB5SUcyVzkvWEw3b0lsN3ZPLzZzeWY3?=
 =?utf-8?B?V2dZYjNZejFZODAySlRBVXEyMzZNa2hWcXlmRXArSjdzamtZNE9wcmkwSVhT?=
 =?utf-8?B?WEJPUG10SlJFRXFIbnJxTFlndVJKdnhKY2ZqazUrMGVKYm02S1U5dVFGNUVC?=
 =?utf-8?B?UWMyVllCR093dktva0ViMHBod2Rhb2h2bWJJOWNlNkw3d2x6b0VjQVd3S2tV?=
 =?utf-8?B?dCtra1FSK0J0S2oxdWkrMHkyWC8rSG9HMVdwRzBkOHAzTTAyRUwxVHNlUnpj?=
 =?utf-8?B?UkxabVZIa1E5VHdqNDYvc01pbmF4WW16STBoZ3lQZnZrRVNpSlVVN2JGbjBV?=
 =?utf-8?B?SEJCWjVuUWRIaEppZU1tNUtLNFVlaUdVRjVRd01VRmJBRkRnVFBScTVoajV2?=
 =?utf-8?B?TUIrNlo5UXY2UWZucFhleEhud0RGVnlNdHltREcwcEVNMUt6QVRXM0dkMVAy?=
 =?utf-8?B?L3RPSHFMYUZKYUVJWllITlE4eGZhWGhDVWVhMzlEb1ArVjJ5OEo5TVl6L0Qr?=
 =?utf-8?B?SXlodGJURUgxcWJkYTFRSkEzS0IweUpUU2k5R1dFWnNQTTM1S2FJWVRwZm5s?=
 =?utf-8?B?am1mNTdXeHhZdXNBUnRKRmpSRm1GSGhsZFhGNzM3WVBPNitHdWd1VHlrUXpM?=
 =?utf-8?B?dFR1QjdvY1FvelJGYTRkMWpOTlJzN1JiMWkrQU54bURSU2dDK0JYZGV5aUt4?=
 =?utf-8?B?UWxtbTNaRDRrRytpVTNUUDEwbDBSQUpGbmxZY3VTSlRFY2lySlppdy9mMjJK?=
 =?utf-8?B?U3Q1dytXbk1ZZU8wWGdDbmxadXoyUFlKNnFIV003YU84M3hzNmh3U1dmZlVy?=
 =?utf-8?B?bHhCcDhXcEx0bU1ldkZ1MDU3bDl4L3RMSUpYME5ENzJpcEdJcGdlMzhtTE9H?=
 =?utf-8?B?Wlc3aFNtdTFaQVBBQUpqOW1nTnN5SWg3Q1hzMmxNbnFkZk5YRkZ5YmxWRyt0?=
 =?utf-8?B?d3c2d2dEOUIvY2Z0VXBsR2ZBT2RsU0dTQmFESVJvanM5YUdxMEp0THM1eHk4?=
 =?utf-8?B?dTVHSFoxcDVwcGIvTWorQ0QzUjZNSWl1Q25reXpxQTRDOGJlL24rQVlUWDgr?=
 =?utf-8?B?Q1Vqc0R2cEI0TE4xS1FmMzNxdEUyRXdzTiszbHhxTTJEdjB5QnlvSUcxaEhq?=
 =?utf-8?B?eXVSVDdGdXlxWEtoT0xvNU50M0VIUUxud3c2aExxVEtQVUZCOXoxejNrODIy?=
 =?utf-8?B?azI2clpqTWxLUlVLS00vOFVkMGhVbklwOVVJZndJVlFNd0c0NlhMUFVxRm1n?=
 =?utf-8?B?NFNmSlBpZFFFb0FqaHI2Mk42d09OaUdiRVNvLzNaT0g4UjZieTZhY2FodXJJ?=
 =?utf-8?B?TVNMdFhIcnM2bElRRDgzMGxaUE10ZHVVTHoxdDVIcHpKYjRlKzlrZ3hYdW9K?=
 =?utf-8?B?Mmo5TW1MZDgwazBIVVVYS0dLYVgzV0NZSWs0TTRlSUN5WEpjeTg4RkVwRHFt?=
 =?utf-8?B?Q29DTUNOazRHV25kVDRqZUhGTHd3TXdtOHRQWDJ0L2wyOWRWZm5MdUxSU0hV?=
 =?utf-8?B?NWxYU1VvQVdDbndCUkh6ZUtKZlFBWTJTeXhMb3dXQTJTTXJCeGRldmJwUUoz?=
 =?utf-8?B?WHpDUTkva2t0ZnpraGNUVXNGUnNRQWFUeG02OXlkRE82NEMyR3pWTjBveWcw?=
 =?utf-8?B?TWo2bklrUkMzdjlaOUpZcXNUSnRjUk9uQWk1cnVTdHhzUUVHR0VCM2hSYU11?=
 =?utf-8?B?WitEaXV3bXNKcUNRZnd1RUNMUWlJMkk0SkFCNmpsMEl1QmRFdnU0aE11eElz?=
 =?utf-8?B?OW4rMEV4RmwwdGtndzVkeHpuVzl0MVVIcnJxUVhmTmFlRnl0MFRlZVM3L1lB?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0289ffdd-b1fb-4c62-3795-08db20607d91
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5528.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 05:38:20.0706 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +rc7Dova/KbA6o41mrW/kaXa400B469z9RGZ0GaLdFqvUpHo+4k+5u5UMBVnJFmLib7xAjHn4Aac2Nwuash62Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] Revert "drm/i915/mtl: Add
 Wa_14017073508 for SAMedia"
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
Cc: gregory.f.germano@intel.com, hima.b.chilmakuru@intel.com,
 srikanth.nandamuri@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 08-03-2023 20:55, Nilawar, Badal wrote:
> Hi Jani,
> 
> On 08-03-2023 16:48, Jani Nikula wrote:
>> On Wed, 08 Mar 2023, Badal Nilawar <badal.nilawar@intel.com> wrote:
>>> This reverts commit 8f70f1ec587da0b0d52d768fd8c3defbc5e5b55c.
>>
>> Reverts need a commit message too. The why. The cover letter is not
>> recorded in git history.
> 
> I will add commit message.

Is it ok if I squash both the commits?

> Regards,
> Badal
>>
>> BR,
>> Jani.
>>
>>> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 27 -----------------------
>>>   drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c | 13 +----------
>>>   drivers/gpu/drm/i915/i915_reg.h           |  9 --------
>>>   3 files changed, 1 insertion(+), 48 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c 
>>> b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> index 85ae7dc079f2..e02cb90723ae 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> @@ -20,31 +20,10 @@
>>>   #include "intel_rc6.h"
>>>   #include "intel_rps.h"
>>>   #include "intel_wakeref.h"
>>> -#include "intel_pcode.h"
>>>   #include "pxp/intel_pxp_pm.h"
>>>   #define I915_GT_SUSPEND_IDLE_TIMEOUT (HZ / 2)
>>> -static void mtl_media_busy(struct intel_gt *gt)
>>> -{
>>> -    /* Wa_14017073508: mtl */
>>> -    if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
>>> -        gt->type == GT_MEDIA)
>>> -        snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
>>> -                  PCODE_MBOX_GT_STATE_MEDIA_BUSY,
>>> -                  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
>>> -}
>>> -
>>> -static void mtl_media_idle(struct intel_gt *gt)
>>> -{
>>> -    /* Wa_14017073508: mtl */
>>> -    if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
>>> -        gt->type == GT_MEDIA)
>>> -        snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
>>> -                  PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
>>> -                  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
>>> -}
>>> -
>>>   static void user_forcewake(struct intel_gt *gt, bool suspend)
>>>   {
>>>       int count = atomic_read(&gt->user_wakeref);
>>> @@ -92,9 +71,6 @@ static int __gt_unpark(struct intel_wakeref *wf)
>>>       GT_TRACE(gt, "\n");
>>> -    /* Wa_14017073508: mtl */
>>> -    mtl_media_busy(gt);
>>> -
>>>       /*
>>>        * It seems that the DMC likes to transition between the DC 
>>> states a lot
>>>        * when there are no connected displays (no active power 
>>> domains) during
>>> @@ -144,9 +120,6 @@ static int __gt_park(struct intel_wakeref *wf)
>>>       GEM_BUG_ON(!wakeref);
>>>       intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
>>> -    /* Wa_14017073508: mtl */
>>> -    mtl_media_idle(gt);
>>> -
>>>       return 0;
>>>   }
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c 
>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
>>> index fcf51614f9a4..1adec6de223c 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
>>> @@ -12,20 +12,9 @@
>>>   static bool __guc_rc_supported(struct intel_guc *guc)
>>>   {
>>> -    struct intel_gt *gt = guc_to_gt(guc);
>>> -
>>> -    /*
>>> -     * Wa_14017073508: mtl
>>> -     * Do not enable gucrc to avoid additional interrupts which
>>> -     * may disrupt pcode wa.
>>> -     */
>>> -    if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
>>> -        gt->type == GT_MEDIA)
>>> -        return false;
>>> -
>>>       /* GuC RC is unavailable for pre-Gen12 */
>>>       return guc->submission_supported &&
>>> -        GRAPHICS_VER(gt->i915) >= 12;
>>> +        GRAPHICS_VER(guc_to_gt(guc)->i915) >= 12;
>>>   }
>>>   static bool __guc_rc_selected(struct intel_guc *guc)
>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h 
>>> b/drivers/gpu/drm/i915/i915_reg.h
>>> index f2ce4bde6a68..b177cdeee1ec 100644
>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>> @@ -6469,15 +6469,6 @@
>>>   /*   XEHP_PCODE_FREQUENCY_CONFIG param2 */
>>>   #define     PCODE_MBOX_DOMAIN_NONE        0x0
>>>   #define     PCODE_MBOX_DOMAIN_MEDIAFF        0x3
>>> -
>>> -/* Wa_14017210380: mtl */
>>> -#define   PCODE_MBOX_GT_STATE            0x50
>>> -/* sub-commands (param1) */
>>> -#define     PCODE_MBOX_GT_STATE_MEDIA_BUSY    0x1
>>> -#define     PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY    0x2
>>> -/* param2 */
>>> -#define     PCODE_MBOX_GT_STATE_DOMAIN_MEDIA    0x1
>>> -
>>>   #define GEN6_PCODE_DATA                _MMIO(0x138128)
>>>   #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT    8
>>>   #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT    16
>>
