Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CDC59BD8E
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 12:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D1110F1BB;
	Mon, 22 Aug 2022 10:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090DE10F0D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 10:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661163945; x=1692699945;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YyslD2f/JpfDDCN2t4urt0PnyP/9cFYWyqHKuQj27z4=;
 b=jhLCATkLt5S2/CLf4jttyLyxCx8zm5mJCpaQ7sySlRSXOq9g0eCucKNt
 v86coAPl6EHz2XPOZA9JAp0yBvIYOC+PP3jdEeHqv8o6OWTlleT3s6DAw
 U0Wk10uaH0SkaD1FuzIO+KMK2BcKRnCydvPqW7E3jZHN6wN63YT0HXDOh
 uesBktuN5Yv4xPIefUjIZSHRIlf2KV1sLPvggsbKwCfu5w85KPsUtjHPQ
 HK9Ki5SnJgGhPFLMLi1GZpoLgi7rdob3f3gxcgjL3XknlUOUcq+C+2PRL
 F/ovu/KW4QE+ON6RsHMIAoloqJH+jdzuewt0ltHEs0uXJ/WsmjecT00xu A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="355108860"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="355108860"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:25:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="735055486"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 22 Aug 2022 03:25:39 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 03:25:39 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 03:25:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 22 Aug 2022 03:25:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 22 Aug 2022 03:25:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ma5McmWcLIuK7M4B0MoCOWXwUx78BdyVGNkL/cx/7q0pl2Z/gRvvwrtlgRd76vbbVCikGicPxFNCcDYIStr/f1KVa7iqnf2ZeC4ISLnQ2aI57pqjwe+Boo6pjEtp9Mb9xxJ2ZWobBh03+HXMHVnDo/42GT1ODCPiYlraoMJVYTywdV6rboYJhCRIqrfRrAW8tdxYMm6kFwFugHVG9mhUk06P26I0vCILt+IfZRzfd5BNAYxjU+8ungzpr+3+KknUH/kZMUy7TyH6l6iSDWdoOMtHE9B+cAa50S5+krh4wKB9DW5eJ2n4EjOsVAS63/njd8OJX9pBiW/ey8wNymO/8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Oh1Raq03d/eOTh7aDVqAZsop+HRzIUej89uiREV6M34=;
 b=CZaRqPuQNZQbX59tt+7anhTr4LIw0U4zEOB9N4ScqrkM8PCTyzTLkdeuAj3WLV+1RVHhMcPW6A32fvRgJD6ssZGWC4sNdN9FQGk9G+VcrHGi1qiY+vk+3M+JUAXJep5pFIDSyUWs9kG/q6y/t6EH+1tqNvdKnq7YEL7NO8y2Kj4m4ToFRH9KprG3oebUAuj5YKKsfBdn1QQP9mqtBBg38RjMJL+U5YFJg81a+T3/wULuAChDiYoL7qemAGFk8JjAiuFzCTY7KO4aM8s7MJI83YdMZXoOdw+XI+nFCX6odMvWtYzHG9VeSpdMIqUFV/GydeTaLGFYbblud0Yv7Eukug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB5987.namprd11.prod.outlook.com (2603:10b6:208:372::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.22; Mon, 22 Aug
 2022 10:25:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86%4]) with mapi id 15.20.5546.022; Mon, 22 Aug 2022
 10:25:37 +0000
Message-ID: <711ad883-894a-e371-37c0-af9744c04894@intel.com>
Date: Mon, 22 Aug 2022 15:55:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220817124516.284456-1-jani.nikula@intel.com>
 <d33e683d-3ce7-b449-6998-1b72b8fa3629@intel.com> <87wnb0mw8x.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87wnb0mw8x.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0126.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 32d7bb3e-0ecb-4f3c-2ff8-08da8428a794
X-MS-TrafficTypeDiagnostic: MN0PR11MB5987:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jvcm0eWu6qlQxUbnxdY+TjnRhovqp1G9wbLhixOCqtXDQ5OyO0igaG5CRei7HWOVi7clRHKjkdu1/HuItF8AnpSkmfe8eSGiADLI9PJo9Qh69mrkPde1fwJSk0jHlF38xHntnmFRcyIXXQlEGDsSKZjEnXsPjqplc/AEWXCpzaCLf9dH9UMBgKuZNqW4zlk/n2pV4/F4cxJ2otp9W2Kp2qOmmbJiY9kqfT7UMjl7ZL2GzsMa6BIg8cuT7P4q00+PeOvPYDHohggul0NzmljL4Kwgux/zz2BJAVl5jMxMCgmVn7P6N9ziPFJHOC3wdOeuzOmZB448tXcY/1/5m3lK4haQnB7ZZxP6MBHAWClkSiAv/dUhXg7LWlwxiKvyJwROLpbg2Kc/WAxbZP5p4C60y8f27BXSducA/z2oshJihYHHgqqmriXBr4IfIkDfN/0OZ+FlrNO0kLR0+pvYNRnd11CjN1Pdcnkw+WFUbwUPqVqeIm2gmAfEWQjEcStlq7b3ULkX7teQM5jeDZwe/F8vBXSTn+LuJcKGgJgFjyGnWuqCuuGdw78cG6Fx/1Jv+8w619kCEcrK+oOs/rQvCvgSuRKdvrFV8O8h3zJxAHqwvoCEISP9xS8fXVtBkO/ubQBm2OHVDlQR84wsE/PyHBfgCU4YINQkz6LaFkHoVMlFnqwYgP8utv6PNUMLxUOn29GUuB3z5K8GoaTqqF7kizq8iSBrsCwxGK0nAtRkifzdHl+hZwF8VV8KxFSSExdItUrLgdwNzunxwLbBUqptqERo1ZeFAEy1XLHYTENYcOj5huI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(396003)(39860400002)(346002)(376002)(6506007)(6666004)(6486002)(107886003)(41300700001)(478600001)(186003)(83380400001)(55236004)(26005)(6512007)(2906002)(2616005)(53546011)(15650500001)(5660300002)(8936002)(316002)(66946007)(66556008)(4326008)(8676002)(66476007)(86362001)(38100700002)(31696002)(31686004)(82960400001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2V4dUY1QVZJSFdVV3IyVkVRUnV2OWhPQVkyTDhZTTdOOUtyMTd4U1JPa1cr?=
 =?utf-8?B?Zy9jd0RIWlJXQXZmVm8xUmN4ZUluU3lRSWtvSEl2R1FSTURJS0xHOXZ0QWRE?=
 =?utf-8?B?M21wQXFZNWlMOFJkMG9ES1c2TlRtWDF3L0toc1VzZUVyVXFoRC9JKytobXVF?=
 =?utf-8?B?NW9wNWJ2bkVRNG4xSG5pUVJZRGJUZ2RvbFVRUFNJeWxxZU1ZeDlzc2lobHpj?=
 =?utf-8?B?NEdpQjRJN1NFVFU3d0hQSkxQZWpYeWJKTUJBWEx5WTNHQzZsbXlDSWM4Q1Zq?=
 =?utf-8?B?ZUppSVFSTmUwT1N3dnVaWk82aUNzcm1FMlNXM0R0TGNxZWpWTXVWZXBYTHI3?=
 =?utf-8?B?R0ZoSEIyU3RFdnh4cjZ6a0p4Q3FrN1V2emlwTE9ub0FEdHVhaDd0WFBkanVt?=
 =?utf-8?B?eFJiR1RTQmZUam1GNDc4a0J5NjEwVStjYVVWTlRma3FsZStsOWZRYjRwVHIr?=
 =?utf-8?B?dG5RTlhaa0JDeGR1N29NbmVYUjZjSGp4TEpHd3pudjlvd3JQL3Q1QWhSeCsr?=
 =?utf-8?B?WmVaTlk5NWIzL290VUt2d3ZFTEpHa3NhdmVpdlE3eldpTlduMytNMXpjVmYv?=
 =?utf-8?B?bjlQZ3dmTEZjVUJ3ZXA5eG5HN3cxWjd2T2IxODNkOEJnOWZiN1RkeVlkOFB0?=
 =?utf-8?B?RjcrS1FGVDRsUU92ZzhSK3BpejhiK2lLOCs3MHNmUHdUT01NRksyMWxNZFNK?=
 =?utf-8?B?eEx5TmUwaWg2RW9XZWMzdmp0UFBJaXkrWlJ5YUkwZzVEOHR4Nyt6OEJIRXBN?=
 =?utf-8?B?T1dLQllRaTdWaEJ5RHFRdHZvZWpFZzFtNnN0VnRoN09aQUhSSjZYZmtMTzdz?=
 =?utf-8?B?WnZuUnZibEpLT0g2ellxcWtwY0R3b3pwZUpLaWoweGE2UlpkRzRDcU9vOHFN?=
 =?utf-8?B?NVI5ajFERXpGemVIQ0FoZUpiNU9ZYWs1QzZndElHeFpzYzVaQXZxMy9Rdmo2?=
 =?utf-8?B?R1FZdUdIV2xEaGJPU0l2Wk8raUkzT3FDSnhKbXE3R2ltTWxxU1c4bEQ4bGxV?=
 =?utf-8?B?QXZIVDNaU3UwVi82bXZESmZyQjJSaythSy9YemhBbXgwNk51aWJ6VFpqTEYr?=
 =?utf-8?B?MFZMRkh2aGZCSC9MbXJkR3ZhdGkwck9uQWticHgrdXllcnFqU2huYWJ4TEtV?=
 =?utf-8?B?UDlQbkJNNmRYd3F4RG1mczFiaXptRm5iNmdSR2pNUHR3ZkF5WVlFM3IyWUp3?=
 =?utf-8?B?NFVNNHNuOExWRzhlOEtBVGx2emJPYkhSSFEyVnNDZHZ1ei9GK0xBTVVpN2h4?=
 =?utf-8?B?dU14V2tsZEFUODBKTVpxeFlCSjVjalBLR1dUWWk3SlpkcXdqaE5EVjRJNmJB?=
 =?utf-8?B?ZzhQUGs3ZnFwQUptYVpCaDZvd3BRTURtZDAxQ1FjdnRTemNsK0V1NkNaT2NQ?=
 =?utf-8?B?dG1EdTRjRVhyVHVlSlB3OHNsTmx0YWFDdXE2MVFicTl6bDRRWmpWK3JQdDZq?=
 =?utf-8?B?VHBYRlU3MjI4dUlERWNqZ0pPSkZ6Mm51UWUwbm1KMVlHSlJMRjVvN09McmYw?=
 =?utf-8?B?cU1WbDhPWGhGbVc0c3NPOEs1UVV5K0dvUUhUcXJ4bXBjVjlhNzhJTG1GcVpO?=
 =?utf-8?B?SFB3eXZibmlKb0JpN0tLeklwTE9PaHRhUXBXQzJNYzNiWkdxeGozOExYRlhn?=
 =?utf-8?B?Y3NRWTRNRlgxdWxOK0RpTDlVdEJMcjJQMDVpbjhlRkRWdWRwYlZNVktCVUwy?=
 =?utf-8?B?Sm1SVG5hRmZLWEk5RGx4TS9YYk96cFpXQXJaMDNoK0VRVzRvZmIxV1JOV0Iy?=
 =?utf-8?B?aUlnUmhrb2V5Vi9rTGI4VjMyWnpER2Z2dmYyMTI1VkRlL3pYQktkSXRGaEp5?=
 =?utf-8?B?bENNanladWh0YzcyNE1WbS9Rd3N0K2FZQ2xiWXQ5MjdnOXZHWkdON1lCWEYv?=
 =?utf-8?B?cTBzYlBleXNCeGl5TWVmYlRmNTVVUTRLSXBoUi9lVnE2RC9nQVg3UkFnNmtn?=
 =?utf-8?B?R2Z2VzdocTYwVGM2SWt2UXpkZExqaXQrMTJ0QTh3U1NCQTYwbHoyYTNtWUMr?=
 =?utf-8?B?TzVFdXYzSXMxbW54WlZvaEFxWVk4ZXBlUW5EdzV1UUJyTXB4bXlkNUNmZkQw?=
 =?utf-8?B?S2Y0YVRCclJrSUV1YzhKQzJmdmxJYkpOcWRWb1ZYTnZ0Y0k1UjY1cGd0U3Jz?=
 =?utf-8?B?Q3c0c2MzUytDNXlJbVpaOUNCaW0reEZWRVJOako1OHdPVlZwYkNqeXpZenFI?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 32d7bb3e-0ecb-4f3c-2ff8-08da8428a794
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2022 10:25:37.4848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5iCBHg8yRMmAfG7xzRMx9jlvNHyqbTgfKc/sw8cxqICF/PmlpRghvjYOYXygzEXB19/e2CY+3MPthb3AHs6/YQ6/gJZviQnOxEdBYJfM5r8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5987
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dsc/mtl: Update the DSC minor
 version
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


On 8/22/2022 3:32 PM, Jani Nikula wrote:
> On Mon, 22 Aug 2022, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> LGTM.
>>
>> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Thanks; does this apply to both patches?

I have given RB on the other patch separately.

Regards,

Ankit

>
> BR,
> Jani.
>
>
>> On 8/17/2022 6:15 PM, Jani Nikula wrote:
>>> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
>>>
>>>   From MTL onwards we support DSC1.2, since there is hardcoding
>>> to minor version 1, update it.
>>>
>>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_dp.c | 18 ++++++++++++++----
>>>    1 file changed, 14 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 32292c0be2bd..db5f536bde05 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -1377,7 +1377,18 @@ static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
>>>    	return 0;
>>>    }
>>>    
>>> -#define DSC_SUPPORTED_VERSION_MIN		1
>>> +static int intel_dp_source_dsc_version_minor(struct intel_dp *intel_dp)
>>> +{
>>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>> +
>>> +	return DISPLAY_VER(i915) >= 14 ? 2 : 1;
>>> +}
>>> +
>>> +static int intel_dp_sink_dsc_version_minor(struct intel_dp *intel_dp)
>>> +{
>>> +	return (intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] & DP_DSC_MINOR_MASK) >>
>>> +		DP_DSC_MINOR_SHIFT;
>>> +}
>>>    
>>>    static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>>>    				       struct intel_crtc_state *crtc_state)
>>> @@ -1416,9 +1427,8 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>>>    		(intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] &
>>>    		 DP_DSC_MAJOR_MASK) >> DP_DSC_MAJOR_SHIFT;
>>>    	vdsc_cfg->dsc_version_minor =
>>> -		min(DSC_SUPPORTED_VERSION_MIN,
>>> -		    (intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] &
>>> -		     DP_DSC_MINOR_MASK) >> DP_DSC_MINOR_SHIFT);
>>> +		min(intel_dp_source_dsc_version_minor(intel_dp),
>>> +		    intel_dp_sink_dsc_version_minor(intel_dp));
>>>    
>>>    	vdsc_cfg->convert_rgb = intel_dp->dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
>>>    		DP_DSC_RGB;
