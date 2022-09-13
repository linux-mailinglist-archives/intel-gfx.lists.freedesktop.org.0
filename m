Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EF85B67A6
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 08:14:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9800F10E59B;
	Tue, 13 Sep 2022 06:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CAE610E59B
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 06:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663049619; x=1694585619;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ssSm8wAk0Kr+Bxd+x7Jb72mc8dNlTHAjYTJRMP+TEHY=;
 b=OUifUpwX3XbqcvLteDU1UnsdeDDoQygNZoMN/9wFwd6ByVxhF3tVJtkk
 a4uCWa4BubIctjRRetNpUGEmtmn+PhIbL7QGIabCUWFj65Yr6uMgwuLDE
 RFUZIwM0w1yyK3u4k3hUh7Zz9w7d+mrX6RatVGzuJv1FJ6Up5eIb57Wvf
 NWszHjdqXCWUAM1OBVMqpsOCIIkH3E3CvuA7Cr2vgTIKvZnO0bK3aMEL8
 tYgq2CQNNVKNa1Gg9ONlVvG016/JvQy7QLMnEyC6es7DK/GU+U2uWWoOt
 o1bP/p6aH86eenfJrIjDON1tmeZ5vDzlad1A00WIwA2zaTP+2NHbFoR6t g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="299387209"
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="299387209"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 23:13:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="646787255"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 12 Sep 2022 23:13:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 23:13:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 23:13:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 12 Sep 2022 23:13:38 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 12 Sep 2022 23:13:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aQHGmaerbaXqVENneTIqdNf2Ngmg2/vBJ47Q0oN3K4UG8dxXRJzVQjbeD2RmPilUxAA7ja7wDLc59LdFUonkjyXe5Qjk3Ozpv1GdbsBH3V/p0YlK9ePPwB2IafdaO45yNJDP16uLR45Xl8vAq6NXZgvXmix7v1sooQ7w8KqKT6gcGPkHJiXNBiuJs/pqIJiPUoyHXzVyT0HVdSi65j1NgL+2YBHvgOou32m0hL/QapIV+1Zr1pQoMst7Z7zuAHgnVs30nIZe0oTULA182mPRAVMu+mX/5eon9NyRNt9Uq8Hrh2ZjqnOfsjA8QyBlhw7Nbm9T9UKTrwSa6RTN2q8uEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nMnH2KwLDxSHUPZHIkQ6LZAjOxB3xn3iwqrZtI2jmVY=;
 b=XznJRLtb+zCL0DFp6Aa3A+LC4tPg55XXa8NsBzLDicOFKQa8pLBlquNUBgBYXB2osmTiDEVBzMPx2Ii/siBRDjmx4CDZqp6F0k+ttZpE3atpwYDcV+cMKDWQFQQexT9Rs43rQxw2KEgjWju9IRQqJlq9aj3dAZ8XgvjR2ftwnJmf7TMsZyypNLqJgfnOKSnQGMas8aQdpSgTujjaExvlr6NC/dIKPGKWe9OexgHAR6dxgzt4emefRGa9NF7j+4fzpE2JXe6mPgZnZ7mD3gvzA9ttJzWuRvv3n4cmyk+Ia3LLnJnTFuf4EVsVvvqFnXzXCkOKGckD+RDom9ZTnf4EZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7078.namprd11.prod.outlook.com (2603:10b6:303:219::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Tue, 13 Sep
 2022 06:13:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86%4]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 06:13:29 +0000
Message-ID: <d4d1590e-17df-4ed6-0eed-bdf237ddf7db@intel.com>
Date: Tue, 13 Sep 2022 11:43:18 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.1
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
 <20220901060101.1000290-8-ankit.k.nautiyal@intel.com>
 <Yx+A+XHRzxJevOKr@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Yx+A+XHRzxJevOKr@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0038.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7078:EE_
X-MS-Office365-Filtering-Correlation-Id: 875cf667-1c3d-470c-8ef9-08da954f13f6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Cy408L9V7juiVvBzenZ74D7uVG/LVOLl7xVJPSC8T0VP8NQGXnBTZBe4RtN2oYdh2kO3aoHV0ssBQN5iiR0dvE+LjvmgkUUE3K/6MlGzrorQGQW/lPeWHENHClml9QQADhz6HK0sTf1cBKwWgPptsR/+LDzGhZNOcvWjIhAOkSdt8POa5IZwc9vV6mpHscd7+A9TXdS4tuXfNszg7j0RxQpBuqqWlmWMnragNem6nt+pszsFLDZHGBfVvXhipV0f7Fa475JO8XtmziFGD79MVuNGA9RN357lH8wdBh7lbWdNOIuvBW3S+i3bmARtObYakgmIQv7DF6JSZ9aDimC4c5mDzN1ojfyClOeM3vMnR2KmMzPhh8y1l/NeyGAlzMhlG5SRCZlUd6+7c4Bn6R878mpJgSwsJYTXwATnyIEqf3r0QJ7+8B9N7hcrZymgH5l9rZXm5PihCmQQG5Oxl++vH/H52SqxtE5PBOjAECEjneulhAyPf54wYZ2bT4cC8mVOyf8PHndnz1MJyk3Y+4A1k2BXz/1DmsSE3Su176tgLdOulN950vpUDqxDg/Ch/q+KzkJhlDKjN31Q9HXUO9/dwmzpBeygpgYGn84xwZv9gm1SUlPmAH5KBXL9D6RR7YQVeGhuBjT1JX6ciK9owaXC0f1ym+ed6kAVxjUrj1sQKBrn98ynP2dxUHv5OeizWzIJ3o+2rIjkeGr3QH3qBn5KAOTMo+yKxulW05SleN1QyMmpYRaXXco2ZXrYTEnK/IYzrxQnnV2KyeyDtoKcAfmwtgolyqEtp281yk8tBzHib/s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(396003)(346002)(376002)(366004)(451199015)(36756003)(6506007)(478600001)(6666004)(66556008)(2906002)(66476007)(8936002)(8676002)(53546011)(4326008)(5660300002)(41300700001)(2616005)(82960400001)(31696002)(38100700002)(55236004)(26005)(66574015)(31686004)(86362001)(6512007)(6486002)(66946007)(83380400001)(316002)(6916009)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFVXYllhMnZ3dU9jMUNWUHRkOEFUdm9YR2EyOFlFSlgyeWY4dFcwWHRteVZX?=
 =?utf-8?B?OEtaUHRiajJxZnFDOFBIOEZKTTFVVVp4Z1ZueE5mM3p4TCtORzh1NmRTbFRq?=
 =?utf-8?B?WU9yVFpGNkRoUkxwckYwTkJ2TGEwS0JhODNmVU9rUmhQdGplZjFFeDJVK2RL?=
 =?utf-8?B?b25acVhUZDE0T05ubGo1a3hOaEdQa2hxa2MvcG02YnFDTGp5d2dLNUZBVWps?=
 =?utf-8?B?WHJYYTNyR3E4YjVGc2UyWGZMcHd2RU1lMkZOWU1XQXdSNkt3ckJiVHJGdU1K?=
 =?utf-8?B?OGMrR3g1a083UVdiRVRCR1l4Q2k4NTZNYkhVSUxZVGJDQ1haSVpaZnEyREZX?=
 =?utf-8?B?T080ZUxXQk9IdVFLOFJuZGFWQXhsb0R3TlhjaHBRNEJpd0l1MTBjYUxQTDRs?=
 =?utf-8?B?dit4Z1hMYkZmM1BNbkNrS3Y4RENhcytGVTRaQm1WSXU4T3pHd3lDMWJCVUVw?=
 =?utf-8?B?bDNUQ2ZhcmRtUjVqdVZ0WWwrOFN2ZVFKQVczblppZUxlQkluUUJ2Z0NhWW15?=
 =?utf-8?B?ZzYwSjkwdUxESUU1LzZCWllvS2UzWFowa1owRFFGa25HTHZ1MTk4djBVRmNJ?=
 =?utf-8?B?SXgxNGpqdnRDeG1wd2ExbVFDcE9KWkxxTlU1SWwxVnlkdHJUUkZsSWJ1QmNU?=
 =?utf-8?B?ajR2dmR1UTZVTGpLQnlDOWF5TGtpZEVtR1RjcCtkdHZkR2ZLUGhEWTlyYngr?=
 =?utf-8?B?bDc4YkxsZmcxR1pnT2pIWENUQTJ1K0o0VlhpdHRJMG5XcFg3M3FMdXhLLzJO?=
 =?utf-8?B?Rm1YYTVwS3ArWWFYaDlPSVRUVVhoN3hwdUR1cG04aFNVOTlZMU00YksveVZz?=
 =?utf-8?B?dnJMZWJSZUZXdjFVK0F6RldCTmJSTTJCOHRIcjJNKzIyTUpLVGNuc0ZxNzV5?=
 =?utf-8?B?ci8yZHhLSUNMdW1ZSFByVk84MFdYQ0xUV3BYTXI5dCs2WHZ6UkFBM3ozc01L?=
 =?utf-8?B?L2hETlE4L2g5c3JEa3VNd1Y5SG9jS0UvUXhDME5UTnB3OWZqdzViR3JSV3hv?=
 =?utf-8?B?QjJ5VmRrREZpczFuVlhpWDNVQktmZ2pnbWVycE9IVlBnSU9Zam1hcTR6SFYv?=
 =?utf-8?B?djYzSUpxQWUwU3Mwa0NVOUZCNUlvODNNOGVRQjhUUmJpcVd5WjNIa0pUWWdi?=
 =?utf-8?B?NmRVRXNHUldKTndhQ3AyMHlGSEpsWVZCajRnZTlCTmhhZDU5elljVjVNdDBP?=
 =?utf-8?B?R2lqUytHeHVOR0dURUg5Z1BNdDJ0eWoyRFVha0tLYVB5TkZjUUxFQ2Q2ek1E?=
 =?utf-8?B?SklBSmo3eGdvNTdYbEdsdCtoRjlheStDcWtTN0xqNzJlTjNyVW5oSncwV2Zx?=
 =?utf-8?B?TXA2NlM3SzdIeGs1SWp1ZVRtekllRmpZTVhkeHBveEtuU3ViMmV1aWNWVHhh?=
 =?utf-8?B?U2dJWjhOaVZKSHdyemN2eGJhUS92aDhIb0ZSTm5zZENyZU9RNjlEWm9SRFU5?=
 =?utf-8?B?VzBKMnQySno4WlI4LzVCQW12R0t6L3RCUXcrOXhCYnpOeG05eDFiS1R2dzFr?=
 =?utf-8?B?eXBsempnbVBSTFVsN3hNeCtyenlwZUkzbkEvNEYxS0kvdW5oMklDdHlHM0ht?=
 =?utf-8?B?TzVHRk9hMHR4MU1ka2ZISXZXcTZBT2VxTnYwajdsOEhaRENUeEhHcGVNZTZM?=
 =?utf-8?B?WGRnMWd1YlNjbE8wdVYwR1hRdmZWNjVUVUVEWVprWHNXQmU3K2w2dFRGYytD?=
 =?utf-8?B?OWZYMHl4ei9KcWlJbXYyNkVGK2pJWmJod1NndXAxRlVHV3JDZkhBMXI1a2Q1?=
 =?utf-8?B?TVh6Q0pBT2ZmMjROS3VoRTdoY0poOWIyaW9xUUE1VXdTdm1tTkV3Um43MlFz?=
 =?utf-8?B?ZXg3UzdtY1VhMDFVaWdNUkR5VUVVZXRMcFB4SEFtaHJKUk9ZdHNvRVJqVEFG?=
 =?utf-8?B?a1Q4NmZ4dk9HMWNPc1VmeTR4d2tOUEcrOW1UcnVzTWNjQmg1Vythc0xTdFh5?=
 =?utf-8?B?eWEvM2lCd0g1WG5najh2S0tRY2NUbjQ2d1dYZTV0UE1IZ3hGU1Y2YUg0dmdZ?=
 =?utf-8?B?d2NmK0hienJzTjB6aTdlMTJOMk12TjlHelpLeUJocXl2Z3k5ak9JZTZKb1N4?=
 =?utf-8?B?SDVHTUM4NVR2dVJ6T2U3QWlWVHE4bVJQQ2VaeHVUQWFWNkxSQUtEWFZUcDNF?=
 =?utf-8?B?bzB2ZkwyRHRSZUpPM1Zaa1dzb3d1dFJjZ2J3QkpqWSs0bVhnVkJ3WGpJdHZF?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 875cf667-1c3d-470c-8ef9-08da954f13f6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2022 06:13:29.7335 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /o39EtOsi+z/+f1eHRYF5RHUpyL+VH5tEvQb98Pr+4m8ChvmWjhNJEy19wqU6k89svKAfDZezdGDMwet9MKht4tiP7gmu55fMAQhmzbzESw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7078
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 7/9] drm/i915/dp: Replace intel_dp.dfp
 members with the new crtc_state dp_dfp members
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 9/13/2022 12:26 AM, Ville Syrjälä wrote:
> On Thu, Sep 01, 2022 at 11:30:59AM +0530, Ankit Nautiyal wrote:
>> The decision to use DFP output format conversion capabilities should be
>> during compute_config phase.
>>
>> This patch uses the members of intel_dp->dfp to only store the
>> format conversion capabilities of the DP device and uses the crtc_state
>> dp_dfp members that are computed earlier, to program the
>> protocol-converter for colorspace/format conversion.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 46 +++++++++----------------
>>   1 file changed, 17 insertions(+), 29 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index f3c2aeda0c1d..409bd9cdf450 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -805,6 +805,7 @@ intel_dp_output_format(struct intel_connector *connector,
>>   		       bool ycbcr_420_output)
>>   {
>>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>   
>>   	if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
>>   		return INTEL_OUTPUT_FORMAT_RGB;
>> @@ -813,6 +814,10 @@ intel_dp_output_format(struct intel_connector *connector,
>>   	    intel_dp->dfp.ycbcr_444_to_420)
>>   		return INTEL_OUTPUT_FORMAT_RGB;
>>   
>> +	/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
>> +	if (DISPLAY_VER(i915) >= 11 && intel_dp->dfp.ycbcr420_passthrough)
>> +		return INTEL_OUTPUT_FORMAT_YCBCR420;
>> +
>>   	if (intel_dp->dfp.ycbcr_444_to_420)
>>   		return INTEL_OUTPUT_FORMAT_YCBCR444;
>>   	else
>> @@ -2698,8 +2703,8 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>   		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
>>   			    str_enable_disable(intel_dp->has_hdmi_sink));
>>   
>> -	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
>> -		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>> +	tmp = crtc_state->dp_dfp_config.ycbcr_444_to_420 ?
>> +		DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>>   
>>   	if (drm_dp_dpcd_writeb(&intel_dp->aux,
>>   			       DP_PROTOCOL_CONVERTER_CONTROL_1, tmp) != 1)
>> @@ -2707,7 +2712,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>   			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
>>   			    str_enable_disable(intel_dp->dfp.ycbcr_444_to_420));
>>   
>> -	tmp = intel_dp->dfp.rgb_to_ycbcr ?
>> +	tmp = crtc_state->dp_dfp_config.rgb_to_ycbcr ?
>>   		DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
>>   
>>   	if (drm_dp_pcon_convert_rgb_to_ycbcr(&intel_dp->aux, tmp) < 0)
>> @@ -4563,7 +4568,7 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>>   {
>>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>   	struct intel_connector *connector = intel_dp->attached_connector;
>> -	bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420, rgb_to_ycbcr;
>> +	bool is_branch;
>>   
>>   	/* No YCbCr output support on gmch platforms */
>>   	if (HAS_GMCH(i915))
>> @@ -4577,38 +4582,21 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>>   		return;
>>   
>>   	is_branch = drm_dp_is_branch(intel_dp->dpcd);
>> -	ycbcr_420_passthrough =
>> +	intel_dp->dfp.ycbcr420_passthrough =
>>   		drm_dp_downstream_420_passthrough(intel_dp->dpcd,
>>   						  intel_dp->downstream_ports);
>>   	/* on-board LSPCON always assumed to support 4:4:4->4:2:0 conversion */
>> -	ycbcr_444_to_420 =
>> +	intel_dp->dfp.ycbcr_444_to_420 =
>>   		dp_to_dig_port(intel_dp)->lspcon.active ||
>>   		drm_dp_downstream_444_to_420_conversion(intel_dp->dpcd,
>>   							intel_dp->downstream_ports);
>> -	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>> -								 intel_dp->downstream_ports,
>> -								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
>> -
>> -	if (DISPLAY_VER(i915) >= 11) {
>> -		/* Let PCON convert from RGB->YCbCr if possible */
>> -		if (is_branch && rgb_to_ycbcr && ycbcr_444_to_420) {
>> -			intel_dp->dfp.rgb_to_ycbcr = true;
>> -			intel_dp->dfp.ycbcr_444_to_420 = true;
>> -			connector->base.ycbcr_420_allowed = true;
>> -		} else {
>> -		/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
>> -			intel_dp->dfp.ycbcr_444_to_420 =
>> -				ycbcr_444_to_420 && !ycbcr_420_passthrough;
>> +	intel_dp->dfp.rgb_to_ycbcr =
>> +		drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>> +							  intel_dp->downstream_ports,
>> +							  DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
>>   
>> -			connector->base.ycbcr_420_allowed =
>> -				!is_branch || ycbcr_444_to_420 || ycbcr_420_passthrough;
>> -		}
>> -	} else {
>> -		/* 4:4:4->4:2:0 conversion is the only way */
>> -		intel_dp->dfp.ycbcr_444_to_420 = ycbcr_444_to_420;
>> -
>> -		connector->base.ycbcr_420_allowed = ycbcr_444_to_420;
>> -	}
>> +	if (!is_branch || intel_dp->dfp.ycbcr420_passthrough || intel_dp->dfp.ycbcr_444_to_420)
>> +		connector->base.ycbcr_420_allowed = true;
> That part looks wrong for pre-icl now. They can't do the 4:2:0
> passthrough.


I have not put condition here, as here we are just storing the PCON 
conversion capability.

I have added the condition in intel_dp_output_format with ycbcr420passthrough for Display >= 11.

But yes for pre icl if dfp does not support 444_to_420, and since we cant do 4:2:0,
the connector->base.ycbcr420_allowed should perhaps be false.

I can add a condition for that.

Regards,
Ankit


>
>>   
>>   	drm_dbg_kms(&i915->drm,
>>   		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
>> -- 
>> 2.25.1
