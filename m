Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7336B84BB64
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 17:51:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF1FC112CE4;
	Tue,  6 Feb 2024 16:51:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fctvevLR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58F35112CE4;
 Tue,  6 Feb 2024 16:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707238283; x=1738774283;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zvESokC4MPg2+59I4qxu5eNk3U7tib9SIlxCUvB8SOA=;
 b=fctvevLRxM6uVQ0snoIGBD+L9zygLRMhKz+6ftqPZYdT+M0DvdNAIcBr
 BmyeHtRaLDUgEpv9Amt4VI3rKZGE3pD9B/1NzXSrRVHplp0DrsmJtxP4b
 s56OqeTFF1kK48CLWVCZU1EmL8OQ8kaxNmhK/FiTxfldUfu/U+TbLltRM
 uQnUi4P3fBG96zHjo1tinqmjP8dkjmckkcsFCIhMACTMxkhJqQ9tmH+C7
 NMAIWNqJKr2qmlnaseqzzJYqW50sNW5nslczPayDUsUxENDMiK7lbbvnv
 JKa8Kum3OYtegwMBtvUCJNqIF9m9FDB9zRiyv0rQQ18EHeUFKLNHpQk5L w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="11525387"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="11525387"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 08:51:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="1072816"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 08:51:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 08:51:21 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 08:51:21 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 08:51:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BqcxjYjKXx3u7ulyHM2bGb0o+t0/aBD3IEsfuj2OiDkY/hpXRKI5OnAtTuohhKCRCHLC3s3S8V9EDydhtxTA64gKZDdOL4Z1iSCt8RsHCtzW8Rjz4TqV7U1Z7zYxufTXMQc+FZfc6gma6+E9ZaKTmi1H44ys/nVy7o92EVRylKWX3LodNWHlYOvlnEP2hIx7angh6auSukphVcnRlLboipK+zub4Gcp3RTDRF+JMnVxpRbBwFKa37WZyL1tUJulYE11RQeRV1lfIkR2zFqjLd/yQdWKIx46FgD4rDarzGvTBRm4d65MfiW+V2dPZ0ydSbvF47edK1KimBhms3TsBew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ENb+1X4by8Q7HQURVcjCLSVaBujHfnGgEnQbhUiS/KQ=;
 b=M8/R1HXR/1JzUTLSXqcot9xJ0RjxkIRzXSTVrrLfH2Du79BfwDBkT6m7BlRMLcYFY4XzZGWiuCzNRVtllb6vZP9G8DywEixRS6zIHlwYvxd0J+Zv97y2ncyL00TR4iPrEVyjUyEbhSTUxg7tWMznncUUtFAdVQgg57Q4lgtwtXJwbyYj7Jam5gO3jE7bl40f9HGfN+r8+UAHS1goE9tnv23XHmhOw8ElphtpU2iuL9vMsmnNxYlK5lJ9RoZGTnQi43rVA3pp+1h/gwZnleeMIX5IrASUE0YeMFZ3YBL/ki60Qk+LBNgeIzLXKqG4JncrU1B70q093XO3wGzZZJIgmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by BL1PR11MB5398.namprd11.prod.outlook.com (2603:10b6:208:31c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Tue, 6 Feb
 2024 16:51:17 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03%7]) with mapi id 15.20.7249.035; Tue, 6 Feb 2024
 16:51:17 +0000
Message-ID: <46f340d2-803b-4b5f-9e41-bcffe6486e47@intel.com>
Date: Tue, 6 Feb 2024 08:51:14 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/xe/hdcp: Enable HDCP for XE
Content-Language: en-US
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
References: <20240202083737.1088306-1-suraj.kandpal@intel.com>
 <20240202083737.1088306-3-suraj.kandpal@intel.com>
 <c30a93fa-8372-43cc-8151-e660c30d4e36@intel.com>
 <SN7PR11MB67504E4A268ADB1DDB3DA211E3462@SN7PR11MB6750.namprd11.prod.outlook.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <SN7PR11MB67504E4A268ADB1DDB3DA211E3462@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR17CA0050.namprd17.prod.outlook.com
 (2603:10b6:a03:167::27) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|BL1PR11MB5398:EE_
X-MS-Office365-Filtering-Correlation-Id: 375b99e1-9ee9-4216-9c1c-08dc2733d633
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +v9gMt/6fkvMJpDVCVE5xemJcCepJ0P2WzbdFwXNNjFMFRVToZKYCIDVla7sCx6YIOs9BmfjdD+Vprc3saGL2zJAg2l4mzM9n3/OM5nGLzczeyNhkiXB9DJx2HnE5TZNZhWnV+qncR91tjpVIKpfCkrKCjQ+d79Vdy90KNLSes5Q7EWGQuhD0uR1SAneq+HIA1/wNu4wLqyLlbwnI7jHQJWRAASyLmy+mDWP8az5pJwH/PmJXqwJzEVn1uM5rVZN0PFKPqk1V11mt69/RULYhbOcwixf7kF0pCLLv2I4KGqzDDrty+X28oB8lPTJn9JimD8ErMKb+J8s4JQAXW6yWfSMYLdNmTW8zJ2fBxotRiIvjiO7r7o/j2v2lhcvP5Zhq55NoUnA4OlZqOw/PZIqSDP7JNniEV5fyQn1l8cFMBHy7nimVvkN4gRaN1CeU0D1EEY7uYbUAl+n1Rb75YyjKK5vctmt5wZmQgS7zY9DlI/3atyQJiIxDqi6BUtWF4Jx2gveWMpvLUonlrnkhMSj1tUsw5L59rkPVAeObv/f8vR+rfdLMdXz3TAtHEceGpzzrbejdn0SRUy8RQ+oOuQFk3OC20UP/AtJOS70JyhWlLjnE010W3ccjLg0p1RsJWOWscYZkqvqDK9mBjP/KH7x5w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(376002)(39860400002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(41300700001)(31696002)(8676002)(450100002)(4326008)(86362001)(8936002)(30864003)(53546011)(5660300002)(6486002)(36756003)(107886003)(478600001)(6506007)(2616005)(6666004)(6512007)(110136005)(26005)(54906003)(316002)(66946007)(66476007)(66556008)(2906002)(83380400001)(31686004)(38100700002)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmEvbWwyaTlWWkw5azdDOEZwLzhseDFkcGtncnU5MTRKUzlGak81ZGx6VEJx?=
 =?utf-8?B?eDRQM0NTU0gxVFFod2txWjBZa0hHVHI5dFdPVi9TbkJzdG1NN2Zhd1I2R1c3?=
 =?utf-8?B?ZVh0VWhlZE1aOUdQTEFYekJNTlRVTE1jSTBWYkpZQWVtWEI5dmZOcmRnQkNM?=
 =?utf-8?B?OWtTd3lWQWxjbCtOZHJWQTlNRHdhWjdiLzBOKzhUREpHajJHQ3huRU51Q0Nt?=
 =?utf-8?B?N1pmcFppVzhQdXFIc0xnUUU1a2YvRHdCYk1Ebi8xRmdSMUQ3QnQrbDZrelow?=
 =?utf-8?B?dEtHTGhVbmxxVCtSa0h0STk0TWMwZytaOCsyS2ROaGJHZnhTOW1hV29pVWVP?=
 =?utf-8?B?K3ByUHAvMGJ5V0FNQm4rZ1U2WjY0NC8zcDQ4YlBHV1IxaVJhSGtXOEVKUFQx?=
 =?utf-8?B?Q2VvV0VUUDJYVUR4MEdJMzh1TFplVE91RGFoQ2pRT3RzeWUydG10bXI5c1Fh?=
 =?utf-8?B?aENYbS9DRzdKMFZrUVpVcUpLR05yVWtFRFpWZFAvc1I3N3VvVE5vUG1OOCsw?=
 =?utf-8?B?WFk4Y3NKK0QzYWdyVjJ2WndGZ0tKdTBJdWFVRlIwd0JlMGVoZmhzV3RFbzlq?=
 =?utf-8?B?Y25WbnZ2ZHh1VG1WRUwwQk5xNUpzaVFvc3REa2VhczdIK0NrenE1dDVRUlBV?=
 =?utf-8?B?aGU3N2YxKzRuaEhBUEJBY3M0RUpwYnE4OGtlRFZ0MnkzZ2NPb3NBUXNtdUdm?=
 =?utf-8?B?L0hVVlJvM1JBdFBSMHJnc0gzMmV0ZjRwaUllaHhKK2krZzBWQ3FFL2lDUG52?=
 =?utf-8?B?Z21ZSnJtR0QzcUxlMTR5cVlzc2ZVcm15c0lDSzBVaXdjQkFJRXg2dUFnZVVn?=
 =?utf-8?B?RlRFVGpOSmQrVHk1NWRwenNZOW9LWkNqeHhWUmJkT1pVSHNSVmVqSVpoZmlp?=
 =?utf-8?B?YzNNYzFCOE84d3ppRGpMVGZ0UzY0RVdaOHhRdkszcnRRMDQwMzRvQnBWNVNG?=
 =?utf-8?B?cmxXaDEwd3AyY0cvZnRNcjdIb1FCY2xJaWpONHRtSFdNOGRqcVduT3NkYStj?=
 =?utf-8?B?MVdpL04zZVNoSnJNY2E3VDRTamxhbGVVQ0V6WlF5ZEdCeWd2TFpaT05wU0V1?=
 =?utf-8?B?amZ1U0ErTHFJUDlKUnhVU0xLZm5mYVJjdUhaYWU5NFhralV4MGlnU2o1cHps?=
 =?utf-8?B?M2dFOFVuaTRsTHMzdUhqQmFZQW1qUHpualR1WDVodVBpckp1aGZicjVSNDBF?=
 =?utf-8?B?dXZaaU5DQ2V4RGhheU5LZUlVbDA1aGkrc2dRalpkdWtxNEpwWHdmd1FZTEIx?=
 =?utf-8?B?clFkSS81NFA0UEFlUW9oTmVvTlZGQWE0V0pSTHVaYVhWblJPbXZ3WldDU2VN?=
 =?utf-8?B?VzZOQVpMUHF2N2V5TFB4TTA1a1Vkbk84MmVocUttb3ZEeDByOU82VU5TOGlp?=
 =?utf-8?B?eDhHSnFzNEdoYTVHWjFuV21URFE4TW14UVByZ1N2Q2d0cGRGczFqUXN6Y283?=
 =?utf-8?B?bDlubFdCTzRnVWhKYnZVM3B1RDVGT2ZpSnlnZHNhZ1JId3RPMXM0U0lPL2s2?=
 =?utf-8?B?NTl4V2tGaVpPQVNrSW92bUF2TGEvS0xDSG5WZytENWx6cTN4OVJDVlovOTNH?=
 =?utf-8?B?SXRjMkU4dE5ib1FxekNKdmJQbzZpZWtXZTk5LzhuZzhMSkZPV2JXMUxTejFV?=
 =?utf-8?B?Yytxdzd0bWpDakNPR3dIdWpOTHRCS291Ri9IZWNmaDJyL2tzT3d4U1ZDRkRQ?=
 =?utf-8?B?eEI2WThKQllIWWxMVmdDTmc5dEtkMzU1cENMbFVObXpDUlAzVnBaQllRY1ZN?=
 =?utf-8?B?M1RDcXhyRFBXMmphdzBPK1htUGF1TjZiS2I1a3dkS1pHNkpCUmVXKzluOWlm?=
 =?utf-8?B?eUxickhvN0lnUElOeUNqd1hkNUZhdlQxL2RaM281WHErV05XcVl1WGNxSFJL?=
 =?utf-8?B?d0lPaG01ZFJWajNUaWVvNHhFQ05Wa0RpSkYyYlFEbEFpVTdQQ25ReGxXNkRs?=
 =?utf-8?B?TDNGTVVod2VHeWVYUUUrQTdMYWNaRFJiSmlEVXlJVlpQNm9CMWMvMVhIYnB5?=
 =?utf-8?B?ei9jOUMxd3ZGZk5BS2JXMk1WclFhaVJFNXJnUzk4OUdqNUtxTW1xclRSUUpy?=
 =?utf-8?B?aHpIQUpjYml6V1JVT0cralJsaVN5KzBYU0M0N2lXVktXK0JQVkRZeTkwQlRS?=
 =?utf-8?B?ckxLOWhpU3FkWHoyU3dKM1pDb0E4SkZNci9KSWhSTGtJMnBWWXZDTXhlTXpZ?=
 =?utf-8?Q?feevQbAyN5r3x5EJWbCE1GU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 375b99e1-9ee9-4216-9c1c-08dc2733d633
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2024 16:51:17.1440 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8qw/9ayz1tLTdtRlQJVMTPmJ5tU34x0v8uwb1GduzObP3BKaHr/JkdyTtucWDcof8WUv0PeaGcmTQ8wL/az/6d3BPuD4a3rxyyITIpi5qBU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5398
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



On 2/6/2024 8:24 AM, Kandpal, Suraj wrote:
>> Subject: Re: [PATCH 2/3] drm/xe/hdcp: Enable HDCP for XE
>>
>>
>>
>> On 2/2/2024 12:37 AM, Suraj Kandpal wrote:
>>> Enable HDCP for Xe by defining functions which take care of
>>> interaction of HDCP as a client with the GSC CS interface.
>>>
>>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>> ---
>>>    drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 188
>> ++++++++++++++++++++++-
>>>    1 file changed, 184 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>>> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>>> index 0f11a39333e2..eca941d7b281 100644
>>> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>>> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>>> @@ -3,8 +3,24 @@
>>>     * Copyright 2023, Intel Corporation.
>>>     */
>>>
>>> +#include "abi/gsc_command_header_abi.h"
>> My original idea was for the users to not include this header and rely on the
>> size provided by the emit functions. I see you use the check the input size,
>> which I didn't do on the proxy side because the buffer is sized to be big
>> enough for all possible commands. Overall not a blocker, just consider the
>> option.
>>
>>>    #include "i915_drv.h"
>> Do you actually need i915_drv.h? You shouldn't be using any structure from
>> i915 here. If you just need it for the pointers to struct drm_i915_private, just
>> add a forward declaration for the structure.
>>
> Right
>
>>>    #include "intel_hdcp_gsc.h"
>>> +#include "xe_bo.h"
>>> +#include "xe_map.h"
>>> +#include "xe_gsc_submit.h"
>>> +
>>> +#define HECI_MEADDRESS_HDCP 18
>>> +
>>> +struct intel_hdcp_gsc_message {
>>> +	struct xe_bo *hdcp_bo;
>>> +	u64 hdcp_cmd_in;
>>> +	u64 hdcp_cmd_out;
>>> +};
>>> +
>>> +#define HOST_SESSION_CLIENT_MASK GENMASK_ULL(63, 56) #define
>>> +HDCP_GSC_MESSAGE_SIZE sizeof(struct intel_hdcp_gsc_message)
>> this define is unused. Also, intel_hdcp_gsc_message is not the actual
>> message, but just contains a pointer to the object that holds the message.
>>
> True will get rid of it
>
>>> +#define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
>>>
>>>    bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
>>>    {
>>> @@ -13,22 +29,186 @@ bool intel_hdcp_gsc_cs_required(struct
>>> drm_i915_private *i915)
>>>
>>>    bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915)
>>>    {
>>> -	return false;
>>> +	return true;
>> Shouldn't you actually do a check in here?
> Not sure which function would check if gsc and gsc proxy is loaded or not
> Any idea?

gsc_proxy_init_done() in xe_gsc_proxy.c . It's not exposed right now 
because there was no user outside of the file.

Note that, differently from i915, Xe is very explicit with pm and 
forcewake management, so you'll have to take both a pm and a forcewake 
ref before calling that function.


>
>>> +}
>>> +
>>> +/*This function helps allocate memory for the command that we will
>>> +send to gsc cs */ static int intel_hdcp_gsc_initialize_message(struct
>>> +drm_i915_private *i915,
>> Having a drm_i915_private here that is actually an xe_device is really weird. I
>> understand that the aim is to re-use most of the display code from i915, but if
>> you need to different back-ends maybe just have the function accept a void
>> pointer and then internally cast it to drm_i915_private or xe_device based on
>> the driver, or use struct intel_display and cast it back to i915 or Xe with a
>> container_of. I'll leave the final comment on this to someone that has more
>> understanding than me of what's going on on the display side of things.
>>
> I understand it looks weird but display code seems to be following this convention for now
> till a decision is made on how display code redundancy is removed maybe Ankit can further
> back this design or comment on it.
>
>>> +					     struct intel_hdcp_gsc_message
>> *hdcp_message) {
>>> +	struct xe_bo *bo = NULL;
>>> +	u64 cmd_in, cmd_out;
>>> +	int err, ret = 0;
>>> +
>>> +	/* allocate object of two page for HDCP command memory and store
>> it
>>> +*/
>>> +
>>> +	xe_device_mem_access_get(i915);
>>> +	bo = xe_bo_create_pin_map(i915, xe_device_get_root_tile(i915),
>> NULL, PAGE_SIZE * 2,
>>> +				  ttm_bo_type_kernel,
>>> +				  XE_BO_CREATE_SYSTEM_BIT |
>>> +				  XE_BO_CREATE_GGTT_BIT);
>>> +
>>> +	if (IS_ERR(bo)) {
>>> +		drm_err(&i915->drm, "Failed to allocate bo for HDCP
>> streaming command!\n");
>>> +		ret = err;
>>> +		goto out;
>>> +	}
>>> +
>>> +	cmd_in = xe_bo_ggtt_addr(bo);
>>> +
>>> +	if (iosys_map_is_null(&bo->vmap)) {
>> this can't happen, if the bo fails to map then xe_bo_create_pin_map will
>> return an error.
>>
>   Ok got it
>
>>> +		drm_err(&i915->drm, "Failed to map gsc message page!\n");
>>> +		ret = PTR_ERR(&bo->vmap);
>>> +		goto out;
>>> +	}
>>> +
>>> +	cmd_out = cmd_in + PAGE_SIZE;
>>> +
>>> +	xe_map_memset(i915, &bo->vmap, 0, 0, bo->size);
>>> +
>>> +	hdcp_message->hdcp_bo = bo;
>>> +	hdcp_message->hdcp_cmd_in = cmd_in;
>>> +	hdcp_message->hdcp_cmd_out = cmd_out;
>>> +out:
>>> +	xe_device_mem_access_put(i915);
>>> +	return ret;
>>> +}
>>> +
>>> +static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915) {
>>> +	struct intel_hdcp_gsc_message *hdcp_message;
>>> +	int ret;
>>> +
>>> +	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
>>> +
>>> +	if (!hdcp_message)
>>> +		return -ENOMEM;
>>> +
>>> +	/*
>>> +	 * NOTE: No need to lock the comp mutex here as it is already
>>> +	 * going to be taken before this function called
>>> +	 */
>>> +	i915->display.hdcp.hdcp_message = hdcp_message;
>>> +	ret = intel_hdcp_gsc_initialize_message(i915, hdcp_message);
>>> +
>>> +	if (ret)
>>> +		drm_err(&i915->drm, "Could not initialize hdcp_message\n");
>> Don't you need a kfree in this error path? alternatively you can use
>> drmm_kzalloc so that it is always automatically freed.
>>
> Let me have a look at this
>
>>> +
>>> +	return ret;
>>>    }
>>>
>>>    int intel_hdcp_gsc_init(struct drm_i915_private *i915)
>>>    {
>>> -	drm_info(&i915->drm, "HDCP support not yet implemented\n");
>>> -	return -ENODEV;
>>> +	struct i915_hdcp_arbiter *data;
>>> +	int ret;
>>> +
>>> +	data = kzalloc(sizeof(*data), GFP_KERNEL);
>>> +	if (!data)
>>> +		return -ENOMEM;
>>> +
>>> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>>> +	i915->display.hdcp.arbiter = data;
>>> +	i915->display.hdcp.arbiter->hdcp_dev = i915->drm.dev;
>>> +	i915->display.hdcp.arbiter->ops = &gsc_hdcp_ops;
>> Does this patch compile on its own? As far as I can see gsc_hdcp_ops is
>> added in the next patch.
> No it needs the next patch separated them for reviews will squash them and send it for merging

ok. Also, I just realized that you're accessing i915->display, which is 
incorrect because the i915 pointer is actually an xe_device object under 
the hood and therefore can have its display substructure at a different 
memory location. You need to cast it to xe_device and do xe->display, 
otherwise you might be accessing the wrong memory location.

Daniele

>
>>> +	ret = intel_hdcp_gsc_hdcp2_init(i915);
>>> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>>> +
>>> +	return ret;
>> Here as well missing the kfree on error
>>
> Will fix this
>
>>>    }
>>>
>>>    void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
>>>    {
>>> +	struct intel_hdcp_gsc_message *hdcp_message =
>>> +					i915->display.hdcp.hdcp_message;
>>> +
>>> +	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
>>> +	kfree(hdcp_message);
>>> +
>>>    }
>>>
>>> +static int xe_gsc_send_sync(struct drm_i915_private *i915,
>>> +			    struct intel_hdcp_gsc_message *hdcp_message,
>>> +			    u32 msg_size_in, u32 msg_size_out,
>>> +			    u32 addr_in_off, u32 addr_out_off,
>> Those 2 variables are unused.
> Will clean that up
>
>>> +			    size_t msg_out_len)
>>> +{
>>> +	struct xe_gt *gt = hdcp_message->hdcp_bo->tile->media_gt;
>>> +	struct iosys_map *map = &hdcp_message->hdcp_bo->vmap;
>>> +	struct xe_gsc *gsc = &gt->uc.gsc;
>>> +	int ret;
>>> +
>>> +	ret = xe_gsc_pkt_submit_kernel(gsc, hdcp_message->hdcp_cmd_in,
>> msg_size_in,
>>> +				       hdcp_message->hdcp_cmd_out,
>> msg_size_out);
>>> +	if (ret) {
>>> +		drm_err(&i915->drm, "failed to send gsc HDCP msg (%d)\n",
>> ret);
>>> +		return ret;
>>> +	}
>>> +
>>> +	ret = xe_gsc_check_and_update_pending(i915, map, 0, map,
>>> +addr_out_off);
>> This returns a bool, so you can call it directly inside the if statement instead of
>> casting the return to int.
> True let me update that
>
>>> +
>>> +	if (ret)
>>> +		return -EAGAIN;
>>> +
>>> +	ret = xe_gsc_read_out_header(i915, map, addr_out_off,
>>> +				     sizeof(struct hdcp_cmd_header), NULL);
>> Note that here you're only checking that the message is at least as big as
>> struct hdcp_cmd_header, but if there was an error and the only thing in the
>> message was the header it'll still pass. This links with a comment below.
>>
> This was changed in my latest patch series that you had reviewed in which now readout header also checks the status .
>
>>> +
>>> +	return ret;
>>> +}
>>>    ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8
>> *msg_in,
>>>    				size_t msg_in_len, u8 *msg_out,
>>>    				size_t msg_out_len)
>>>    {
>>> -	return -ENODEV;
>>> +	const size_t max_msg_size = PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
>>> +	struct intel_hdcp_gsc_message *hdcp_message;
>>> +	u64 host_session_id;
>>> +	u32 msg_size_in, msg_size_out, addr_in_off = 0, addr_out_off;
>>> +	int ret, tries = 0;
>>> +
>>> +	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size) {
>>> +		ret = -ENOSPC;
>>> +		goto out;
>>> +	}
>>> +
>>> +	msg_size_in = msg_in_len + HDCP_GSC_HEADER_SIZE;
>>> +	msg_size_out = msg_out_len + HDCP_GSC_HEADER_SIZE;
>>> +	hdcp_message = i915->display.hdcp.hdcp_message;
>>> +	addr_out_off = PAGE_SIZE;
>>> +
>>> +	get_random_bytes(&host_session_id, sizeof(u64));
>>> +	host_session_id = host_session_id & ~HOST_SESSION_CLIENT_MASK;
>> Can you move this host session code to a dedicated function in
>> xe_gsc_submit.c? that way we can re-use it for PXP.  You can also drop the re-
>> definition of HOST_SESSION_CLIENT_MASK because that's already in that file.
>>
> Will get this done
>
>>> +	xe_device_mem_access_get(i915);
>>> +	addr_in_off = xe_gsc_emit_header(i915, &hdcp_message->hdcp_bo-
>>> vmap,
>> Note that this function does not return the input offset, but the next writable
>> location (that's why I called it wr_offset in other code)
>>
> Yes aware of that will rename the variable to avoid confusion
>
>>> +					 addr_in_off,
>>> +					 HECI_MEADDRESS_HDCP,
>> host_session_id,
>>> +					 msg_in_len);
>>> +
>>> +	xe_map_memcpy_to(i915, &hdcp_message->hdcp_bo->vmap,
>> addr_in_off, msg_in, msg_in_len);
>>> +	/*
>>> +	 * Keep sending request in case the pending bit is set no need to add
>>> +	 * message handle as we are using same address hence loc. of header
>> is
>>> +	 * same and it will contain the message handle. we will send the
>> message
>>> +	 * 20 times each message 50 ms apart
>>> +	 */
>>> +	do {
>>> +		ret = xe_gsc_send_sync(i915, hdcp_message, msg_size_in,
>> msg_size_out,
>>> +				       addr_in_off, addr_out_off, msg_out_len);
>>> +
>>> +		/* Only try again if gsc says so */
>>> +		if (ret != -EAGAIN)
>>> +			break;
>>> +
>>> +		msleep(50);
>>> +
>>> +	} while (++tries < 20);
>>> +
>>> +	if (ret)
>>> +		goto out;
>>> +
>>> +	xe_map_memcpy_from(i915, msg_out, &hdcp_message->hdcp_bo-
>>> vmap,
>>> +			   addr_out_off + HDCP_GSC_HEADER_SIZE,
>>> +			   msg_out_len);
>> here you are copying msg_out_len, but you haven't checked if the GSC has
>> actually written that much, you only checked that you had struct
>> hdcp_cmd_header.
> So normally hdcp messages return variable messages even for the same cmd depending on the key being already stored or not so as long as I have minimum size and status does not indicate error it should be fine.
>
> Regards,
> Suraj Kandpal
>
>> Daniele
>>
>>> +
>>> +out:
>>> +	xe_device_mem_access_put(i915);
>>> +	return ret;
>>>    }

