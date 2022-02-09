Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7053E4AE8B1
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 06:08:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB21910E1C6;
	Wed,  9 Feb 2022 05:08:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAC3C10E17E
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 05:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644383303; x=1675919303;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MCWdK/Eq2enjbd7VUmii0nbS9RH53sZMIFjqqj+kD5Q=;
 b=eevmgWVh6UDyZOyXXICvBFwv161aXa9kYRcyG06EiKzuS+uMJBUoafxq
 /qWJ03H7CIO24clhQwUlSu7EbWk2xPl5obyYy4C6wdhBra7KUVCVB41E2
 njywMG/qkTwGo97RzXxbfXtsR01AknqD40SouseM60wTmZ3bPf8WNtfpB
 0V8LFD30MD8LFfKNvPcEiA9LcWIic/gRAkO8nhxxg5F7dJbl9cmFsQl62
 x9xkAwUpMLXQuo33l831ks4jlnQvx76iu2xTt4abMwewKASPkb/qRwDaV
 vVMa8e8m2Y+bJNlMljjgJshmUOVB+8FHpFsDrcC47QiO2YQyvl2N4jOKG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="249067965"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="249067965"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 21:07:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="525836378"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 08 Feb 2022 21:07:28 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 8 Feb 2022 21:07:28 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 8 Feb 2022 21:07:28 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 8 Feb 2022 21:07:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F4FOD+Pf6af5WpWFJj2QzcUP9zEBNJfTqYrHdWm5munb4NZgczOo7IYFjHM1OHuX6A845fZRevJsqhSxyh3s2hfkBv2/3NFRBd0ztNjBstDT0kKhBqtL0olE1QlG8OP9zOmUZSruZYoFZvpuytGrx6q+KIBaXssosyop10p5BWYu/lbGpDgOXPjcO5CXUzNyL/kuHY6TphY+wFGi6KBUtoM//qk2uzRDN+7xG29555sO6Mzu4znBVdeiu18llutQWrTSAMGjhxFepGvbhWdBpGCzN6kPSOvi0apFeQ7uSqyfeETJfGPlFOboxNJzc6GPVjj6Av4sDhd0+MtmJYH+rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o+8ASmX1in7862PU/mZkncFchnOzVw0gP/GYkxw5L/4=;
 b=gJnS6rjj/o2mjaqeSZZFM6h8yOUtpTmIE7br9aTMlhbFJ+bZ5YMhGKotVE6xSg8uDIYpRDWvmhZSNi8bHNNyfgIg2Bf3gDtMuA2BHXl5GVytOIQr9Wym7poVFFcAYz7nmRVf2l5qOBTGR7J7seydM/tRnPIDH6oLyPkaz6neiBmnb1+sD+g/8qXsnBSYtluEP2RKPq9JD8XtgBkAs7z+J524pN9YYuZgXziWF7Oc7HuuF/f7S18EPArd8BRZ1WS/3OO/gkS8GmojlvFkT4aD57TPC4gebj1AVcB3BURFUWkZtLybluBae7SkQCBbJVjtp6aXmXj/umPxtcFO9soxQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by DM6PR11MB3116.namprd11.prod.outlook.com (2603:10b6:5:6b::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Wed, 9 Feb
 2022 05:07:23 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::b17c:48f8:6fba:4a9]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::b17c:48f8:6fba:4a9%5]) with mapi id 15.20.4951.019; Wed, 9 Feb 2022
 05:07:23 +0000
Message-ID: <b5555f27-4254-c49f-eed1-8079eb6559e8@intel.com>
Date: Tue, 8 Feb 2022 21:07:21 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220120221652.207255-1-casey.g.bowman@intel.com>
 <87mtj2rfrr.fsf@intel.com>
From: Casey Bowman <casey.g.bowman@intel.com>
In-Reply-To: <87mtj2rfrr.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0098.namprd05.prod.outlook.com
 (2603:10b6:a03:334::13) To BYAPR11MB2936.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4a561ff0-1152-484a-eec4-08d9eb8a0e8c
X-MS-TrafficTypeDiagnostic: DM6PR11MB3116:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB31163267EC15EBDA724236BFDD2E9@DM6PR11MB3116.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xhe/9B9AV7dbZsVT6FUkiYFA2GqkWB3X1smcHc4H2iC60bvmIZR+Z5Y0HdvFOJhOdqE9T2PXuGKcEFM2El+5PxanuRmYg9xYvdcQ6bVmseIeKPcQIXfbjE6cHyc+pBfwvRSh2sZxBYcvrLpiPNNcIElfJVGXMisnw4APLu0KU81x2ZCYtPW9MqYy8n00ocYBf/Mz9Vlx6w/A/i/LZSy6vZXvqtckfCbFj7qYq7rx5DxZQCHeMKb7D+t5CRSnHTvCLzIvpSgEx1Mj8VOILhq/1iNx6xuyF8+h8645cYdcsA8kYPxmacv66v2ktY6a1G/5FQy4/fBL5fDsPXhjFCjqDpUBufcRj41bjjR2aYMFiqMYkdL8gGYhBLT7r/+nL7ImeH3A8zU/8n5HOnT4LmhIvL+9KqcYWzIAWu2TFP7O6EXepFyMYsmGwwNCukG2uyA84EC0SL8yJ96j2XPz+xCJwUdhZx4pUIu/I7J4y+zVmY2OjqykurgDApiNV/nUYkbWnvfpWklm+VyoVl/01mmSdNc/wdozBphCfRzoPJuilVPrI0Ot3FOkEwu1No/sEMizOS+cqNph2yokRt3ZCypTTMc9I3+K3ka+32tU79geHyesqF5umqymBPZTsAis9j39OCTVOumrHIiPumJXF0gnAPGGPH0lP6ogA1J5fZOS5g2iLgEsvGvUhJv/C4i6KM3KEMoFrmIlD3hVr2N70H82dnm5DIFp/Yd2sYGrtJe3pAk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(6486002)(5660300002)(53546011)(4326008)(38100700002)(82960400001)(8676002)(186003)(316002)(66556008)(26005)(6512007)(66476007)(83380400001)(31696002)(2616005)(66946007)(508600001)(31686004)(107886003)(8936002)(2906002)(36756003)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tyt1aWxrSTdSS3J6OE52Zm9oeVY4RUZiSFJHSlZsK0FWTmIzN2ZOOW11cjNB?=
 =?utf-8?B?RFNRcjFqdnd3cEFyVHE2S1h2V1laT0grclBlY0dVUVR0cjN1bFZPdSs5bXVr?=
 =?utf-8?B?YllyZDMrUm4wbE5VU2tGSkhPcGsyUmg2SmUzYWF1aGQ3cTZiSlNKNEczeDA4?=
 =?utf-8?B?WmxTKzNzQThRVmdVb3N4TmYzRXpKMExqUFA5YS9CUGV0VE8ybVIxdjdRdHUw?=
 =?utf-8?B?MHk5SHZTUmc0Mm5IQmw1NlhRZU1TRy8vYXhtU1BZU1ZrU24wWEJnNjAvR2pN?=
 =?utf-8?B?UUxoL0ExTUpJWU1IYVBsSzc5cTVRRll6L1p1bzdkNDFOdkM3Uy9wN1NjNmgv?=
 =?utf-8?B?WEYzTkVuR1AzRm5ZWXIwTFRoc3Q2cUJreWRreUp1aWhua21HQkVGNzJ2MDJE?=
 =?utf-8?B?NE1QbENtcHk4Q3RNVkE4Z3Jhc1pYU1hLUzgzcEhMaHBXMHhib3FzS3UrYmpy?=
 =?utf-8?B?TjRRSG56Q0MwR3AxNzMxNUFDZExwUDl1bEQ1ei9oZzVXb28yaFI4bkszeEZs?=
 =?utf-8?B?VG1acnQ1dVpPcHFyakRZSkdOZHIrK2QrTmRXSEZtdEJhUi8wWkhjVVNrUTAz?=
 =?utf-8?B?N0FnNkRxd1NsV1VheS95UW1SQm1PcjNzUnk2anBUUmpqaWxJYmw3RGlQY1RD?=
 =?utf-8?B?MFlmRC85dXBJRUh4SzZqR08wUnpFNHAvZWpYVGRQSVhCenBsUzl6Q05mTDNV?=
 =?utf-8?B?cHFvN3VuSW42Q3NGTHZvWklIUysveHYzUEdETUxLaWJVSi9KMmRHTDRsWDk0?=
 =?utf-8?B?Q1RXMDh1VmZGS1NpbUs2b0xJeTVMSmtTREYyMUd5VG9ZVTdhdEMvcEJaRHZK?=
 =?utf-8?B?OVVXTGdTM1J4SHg1VzljdFZidFUzZjcydm04dE9NOHA1cDFoVk50dkRvdS8x?=
 =?utf-8?B?ejk5NzdjYVZRZVhrck9OYng2dkpVSnBUKy9zSzFhUkMvc2VjVmFSb1F5YXZn?=
 =?utf-8?B?RDEyOHRscExvVDZ4NDdYd0ZheDF0cGdITnlsYTdqOXNXcmVOKytic3dtUHNy?=
 =?utf-8?B?L1lYMnJpV3JXQUxydUJxU1NBWjlPNkdKQTlzcXMwdllYbTIxRzBqenZMQ3NV?=
 =?utf-8?B?M3ZFSllOd0ZKK1YyMmNJZ3BLY3NKOFlGVkRkZ2NZV2FJOGdqZi9mVG5JTHBN?=
 =?utf-8?B?OHhiTzA1aUI2M3MyMmYrT2ZJZmtqZ2ZZQnhzNWZsaUhvZElGeko4SmpXVGtQ?=
 =?utf-8?B?T1Y3Y1o0bmpsbDRBcEhET0p1Qkpyc0x6SWlJbVh6SjZCUFlFTEh2UmJXczRP?=
 =?utf-8?B?eFA0TDJqbGxuaW85eFVEb1dqR0htOFZBN1NWL2FOSW5iUU9qeHBxSUFWS0xO?=
 =?utf-8?B?RWM3YTFNMnNVR1FsRFhvRXJxeE9QKzRGWTdYeDVMQkg5eUcwamRCZFJPY3Ft?=
 =?utf-8?B?NWVsaWtjQlA5VVJsb1BSWWhZWlJHWi9EdUQxOGJSNFd0d1ZsckN4Y2t4SFp1?=
 =?utf-8?B?S3MrZWllTkFhSGFTYUhsVFVYL2MvU3dZSWxoSXhOQ2Y3a09KRVdlYTBTZDgy?=
 =?utf-8?B?K0ZURkl6NWxNeVdObHVVKzYvZ0lIU3dPK2tiTDZTRVRQN2JHRTRTZ2dwZnBQ?=
 =?utf-8?B?KzRMcmFFT0dBZHIrUUN5VXd2T1R6c1VnUGNvSFNNa2VVaTdlaGJGN0xYdEJy?=
 =?utf-8?B?c3BFMnpOV2R4STFtQndQZVg4RGdhaGFWUjRYTG1uc2dSbXo5WGxGU041MTFu?=
 =?utf-8?B?VHg2Y0xmSTFWa2J0aVg1UldlR2xDTEgvV1l4U2RoWUR3TW5wSTBxR0ZZdVkr?=
 =?utf-8?B?R3ZKaFlKdDd5bTROeWhBV0U4R0pXd2lkYUUxN3dYT2JDYzlnRWhVQkl5VEE1?=
 =?utf-8?B?RWdISko1VlFBa1RVcVJhR0o1blJvbE82QlVKeDRoaitPY0tqWUI3N0hqKzMy?=
 =?utf-8?B?eEMyZDQ5SDlXUVF2c2FVaVVTQnI0alZoZ2dPZ1JkODRQcllyUGNvc0UxN2xK?=
 =?utf-8?B?ZnFIMmswN2I1eC9uNGJmRG1DTkZGQ2c3Q1djN1lSTWJ5dE8rY1g2WE5HOHVT?=
 =?utf-8?B?U1VnT1VOdmtMN0JLa3hueWltTTNpU1ZCcnFMN09wd2ZlRVg1MCs2YnhNcWtx?=
 =?utf-8?B?N3kyS0Z5Z3NvNHB6Q00xeTdRcEQ2QlZ1eWJCeWVJMVF5TjB2Wm82cHBFdFA5?=
 =?utf-8?B?R0VOZE51UThsanNFMUlKMkF5enpBVjJaUXE3dUtyL3VhWFZob0M4RTRqaDVt?=
 =?utf-8?B?ODB6ckNlYXovaCt0YUVjVXd4WmtCT0gxMXNuSjlNMVY4d2dYbWw0V25aeEdV?=
 =?utf-8?B?TlNMQ2RvWjFlTkVVdXRCTk1hOVRBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a561ff0-1152-484a-eec4-08d9eb8a0e8c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2022 05:07:23.3485 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iaOUJfLardJguz29eXGr2zYAg0gt5LyKIT+YKIB1oUKMkYKA34xAEHep+s5lFqN8HqEY8Bc073eVNfyfL2HCYQESgL+9y9iivjNsXB4YHMA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3116
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH 0/1] Splitting up platform-specific calls
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
Cc: lucas.demarchi@intel.com, daniel.vetter@intel.com, ville.syrjala@intel.com,
 michael.cheng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2/7/22 05:02, Jani Nikula wrote:
> On Thu, 20 Jan 2022, Casey Bowman <casey.g.bowman@intel.com> wrote:
>> In this RFC I would like to ask the community their thoughts
>> on how we can best handle splitting architecture-specific
>> calls.
>>
>> I would like to address the following:
>>
>> 1. How do we want to split architecture calls? Different object files
>> per platform? Separate function calls within the same object file?
>>
>> 2. How do we address dummy functions? If we have a function call that is
>> used for one or more platforms, but is not used in another, what should
>> we do for this case?
>>
>> I've given an example of splitting an architecture call
>> in my patch with run_as_guest() being split into different
>> implementations for x86 and arm64 in separate object files, sharing
>> a single header.
>>
>> Another suggestion from Michael (michael.cheng@intel.com) involved
>> using a single object file, a single header, and splitting various
>> functions calls via ifdefs in the header file.
>>
>> I would appreciate any input on how we can avoid scaling issues when
>> including multiple architectures and multiple functions (as the number
>> of function calls will inevitably increase with more architectures).
> Personally I think the functionality is best kept organized by, well,
> functionality, not by platform. Otherwise the platform files will
> contain all sorts of code with the only common denominator being the
> platform.
>
> You're also likely to have static platform specific functions, which
> would needlessly have to be made non-static if the split was by files.
>
> I'd just put the implementations for different platforms next to each
> other:
>
> #if IS_ENABLED(CONFIG_X86)
> ...
> #elif IS_ENABLED(CONFIG_ARM64)
> ...
> #endif
>
> Usually the declarations would be identical and there'd only be one,
> without #ifs in the header.

Thanks for the feedback, Jani.

I think this is the proper takeaway for future functions that do have
separate implementations for differing architectures.

As for null behavior, as in the example I gave, I think Tvrtko is right
about run_as_guest being a tricky example. I think I need to
re-evaluate that function and think of another solution altogether
for that instance.

I think this will also be the precedent for null cases, where we will
need to rethink implementations for cases that don't really have
some arch-specific implementation other than returning null
(though some exceptions may exist).

>
> BR,
> Jani.
>
>> Casey Bowman (1):
>>    i915/drm: Split out x86 and arm64 functionality
>>
>>   drivers/gpu/drm/i915/Makefile              |  4 +++
>>   drivers/gpu/drm/i915/i915_drv.h            |  6 +---
>>   drivers/gpu/drm/i915/i915_platform.h       | 16 +++++++++++
>>   drivers/gpu/drm/i915/i915_platform_arm64.c | 33 ++++++++++++++++++++++
>>   drivers/gpu/drm/i915/i915_platform_x86.c   | 33 ++++++++++++++++++++++
>>   5 files changed, 87 insertions(+), 5 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/i915_platform.h
>>   create mode 100644 drivers/gpu/drm/i915/i915_platform_arm64.c
>>   create mode 100644 drivers/gpu/drm/i915/i915_platform_x86.c
