Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD82848DF7F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 22:19:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0171C10E3E0;
	Thu, 13 Jan 2022 21:19:31 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E67410E2CA;
 Thu, 13 Jan 2022 21:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642108769; x=1673644769;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=74rF19P4atqXUe9OZsHAdrTU+EFl5PVOCYiwyzCKqjI=;
 b=CHRXLA40sDdF2tET3sYebKMZQgfg+6tzR69xYE37JdoVCheWnyHjrFfS
 m66xbjeMqtXQ3YH1UlMOni6t6O9l5QfwhjS8J9EzDYPHHSeSHYi3SH7LG
 39Vl5HX9qdoQWNGJWtvjwarpWtgPrq7DCCMfhBB7uGJmC9l/372SX46Jy
 Qp+XlKyhg63rcrpsSb+vfIDmptOrHqVffHq1YGxZRfDE+X/VMEnBf0rHY
 X5FaEoLnSUg2nemUdRr7pIhQgPXTsfRtOY22GfAHUZ2rDcPT3U93D/OY6
 1Og6QX5lm838XKd6X0QhuZppcQOeUqO6A+6iXt7VGjaP+Fw0reEZTOUn3 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="224804881"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="224804881"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 13:19:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="475496555"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga006.jf.intel.com with ESMTP; 13 Jan 2022 13:19:28 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 13:19:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 13 Jan 2022 13:19:27 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 13 Jan 2022 13:19:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G2D8dw2UOK0HwnynRTlEwUKgWtIxlvNOFi/WzHtEdHjQkmFiUNy7+OrUJhIhdrBMPUyXViyCa3NF7llnsMUFZtZjW41ulAj/KVeHr+5Ua2FA/7xkTWwAUFgIdw/2Bf6E7CYe+RPoes43v1b+q0aDp8eCn+VuE4rikRR0T+O9lnSBYJLxCYtBDjBjY3lT5s9iONg8Y5Q/g1fqLoNMOAhcPl2eAjsV+lgX8h0h3dCW4YFOdF4e4GIEHr6AwjPjdiFdno+ZZ5vFf3t0LwnB0HEx9w5o0yIdQa0kR8CEk7IY032u0YXAzjxRU9o09iSrh0AGTjqyLDIiLL4rRDBkH4FMCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=onekqrSQqm1jwrGrackVsYqOt25fMd2D39gX+9lBu14=;
 b=SKn+oON1Zb6WOX1EO7iGIhUiKtsEmVRewoAAzu8WAG6AV5ZRRa8BBmXPRXU2IVPan6umzo8n4XjxrUUwrq0RAwU3o9sCWTd+RMPq01Cu0vVUCWqwvSWJzd6UP4E2Ebq+DdAzuJjxRtECV+dngfW8Mh707w273QTtBjr/6h0I6ZqJooxoKMBKr5Cg/GZLxIa5Zy8bvQrvUmyj812v59FnOWMGxCIhZmayJ//1Flg4zvGUlENV3OdpOmYuweWt4ez06eG1Enc4s4GqiZAuPimedrkmblFFBi8wJIE5OoCjfnT6N7qSba+adK6p5s91pCAkSGDOF21lYqvrTXLn83utHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SJ0PR11MB4877.namprd11.prod.outlook.com (2603:10b6:a03:2d9::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.11; Thu, 13 Jan
 2022 21:19:25 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5%5]) with mapi id 15.20.4888.011; Thu, 13 Jan 2022
 21:19:25 +0000
Message-ID: <52c02112-af44-f295-98a6-0c28a00ff057@intel.com>
Date: Thu, 13 Jan 2022 13:19:22 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.1
Content-Language: en-GB
To: Matthew Brost <matthew.brost@intel.com>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-12-John.C.Harrison@Intel.com>
 <20220113210108.GA24680@jons-linux-dev-box>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220113210108.GA24680@jons-linux-dev-box>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0249.namprd03.prod.outlook.com
 (2603:10b6:303:b4::14) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0ae6def3-28ed-4179-d36e-08d9d6da603c
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4877:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <SJ0PR11MB48776AAEEC5F50C626271656BD539@SJ0PR11MB4877.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WxeU7MOvgRpNZuHJ9dZPuEO9i0ejSyo1gB2qOnMDG/tklSdawNyplspmY6KWQ4qn57s+QXHO8sPXOOsd3dsHi3qUCIemh5IQ0BA/DghfMhUPPFjupF9trlsDcF0k1ArJYsAy27zlpg3MKBKEwHEFovpkQROxW4S0p8eWVmXh9tfq9ZqrG9pzl7wLZOUY5u/cBGXNKEZUkFITK9uRymH52ApmMj44s/SnOzKuEiKsF7EE+MHk/sZrzyL3uT1h2w3tTyqvJ+NvUdLF2c6mqECXQ4QCJtGWr5yLiReKbgwHYzy0+0xPBWp4I7vysjaKRjbQrwbaSID1guL2J3F1q2EZ3sj1SArXzDs0/Giz6zlhTl7z/kduwzLkNVosU6WcdgQntU1zn1Pt69EH0LD1+A5G8Ka3uTVIFg3w7HXMDG9SQwMB4/I0hsBQxzVYFdn+LtgCP6B42S3QcNC+kr49aX9ZwUxfyZ9ePuyDS+0044KlLk5HquF8jHTigUK9kcBgEe9c+4s8SSkQXOci9K7VYOqnZHuYJYxCKaVZO3wrl4Da9/9qKiuQ+Bfy9yarif9xhSQZGkecjTZ5uxN105yus6ZCZHTnLXvVz755kJy57XSHBzQhQF+oE2oYZL/LPSKpQFYR5HvhawFdmCx1c7S2CcKx0ws1TC4bEGk/+gOwBtd3ilCDXgQHpxf05sqvp7rvO7L/lF2HXuJE9cTPM6CbW1qfsGy86Eh8HivAHTaYkRp0dERhybmyHJNtzW/0JWQX5zl2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(31696002)(53546011)(6506007)(316002)(6636002)(82960400001)(66946007)(6666004)(66556008)(4326008)(2906002)(5660300002)(6862004)(83380400001)(37006003)(66476007)(36756003)(8936002)(2616005)(8676002)(86362001)(450100002)(26005)(508600001)(31686004)(6512007)(186003)(38100700002)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXNRNW44Wm1XWEpOZ3p4VzlsdGZDL1o3a2h6eUFVNmFzZVNvR3RFNFZmQitj?=
 =?utf-8?B?bWZxbDV2OVV6OEIvdzMzZ2NuYjFiNEVWSlY4aHFpNVprUjJIVlcrY1JBakZz?=
 =?utf-8?B?MDd6SWpLWXBERms0dHFrR01iNzV2cEo3NTM5d3R1UkowcVZ2NHE1S0lZdTRI?=
 =?utf-8?B?cjhpQVpMa2oydEZSWXJHeVJwU0Q5V2dRUVRVWkczeG1teGZkOHFFbWc3SFpT?=
 =?utf-8?B?TlQ1VFhwd1g2YXNsaEdBVEQza0FOUWZrVWc0aWRiVHY0ZCt5RWQvbkJUQmJH?=
 =?utf-8?B?L3Z1Rk13aTVlM09FdDJvRFAxVGR5NTJQMjhUZTJRNTBqS2J6ZWxGMDhNT2Ra?=
 =?utf-8?B?MjQ5ZTJscnNuZU1kS2txeVhISTZrSEpzeVNISWx0MStkQitKbGRUZ1BaUHZq?=
 =?utf-8?B?UnZBbkFYa09XeUk0b1NINUo0djY4QWcvT0MxL2tIbmdkcE56d2NhbXpJY2xU?=
 =?utf-8?B?THhvdnE3U1NsS3RXK0ZqTmNmT3Y1c3MyUEJKS1ppSFVhV0hYUFM5N3RFWnV2?=
 =?utf-8?B?L0J6aHpKem5jZEVPQ1MweWhjNitWMEdpSkxwZmxvWXJQa0ZvNHdYSFV5VURP?=
 =?utf-8?B?cjFVMlN2MzFVclVXUDRjdmZVUlJyQ0ZXWDhDUHgyRzFYNGJMdXlLWHh2c1VZ?=
 =?utf-8?B?YkE1NTdQcTZiMngrZEtTVEszblFXaHAyUjVlUzlwL095ZE9hRTk5NTBneFcx?=
 =?utf-8?B?WmJnWU5zZHFmZFpoMHYvRzd0Q3lPb01WL2tDUExRSHlTTy8rL2NJTkJEQ2sr?=
 =?utf-8?B?REZ2RmFpQTZYVTVscUQ0ZzBoMzBHalJGWFdqSE93WmEzYkJqdmNDTWpxSkpM?=
 =?utf-8?B?YmNjU3Bzem84Sk9WMjNsUUxkVDIrdEY0bnUxZ0l6eEVLZ2MxVlloY3NUT25x?=
 =?utf-8?B?ek03OEtoN0NpVHZWOGdjclp6QlNVaGwzY2o0SmRsc211SmhnUUZTNFlKZHk0?=
 =?utf-8?B?dWt3RUFObWRvcU50ZllZQjl0N2p5S1lNbjJZTlFjRm5RUW9STGllekpqbnk0?=
 =?utf-8?B?WDFzd2hweldSbURKU3d3bG9SNzFLbVJCbjJ0QjRJSzFuaU0vR2pFNWFGTU5S?=
 =?utf-8?B?TVlWQjYwc1hWMi9YOS92UklRdVdjRVFVYktXUm9sNXNEQ1JwUnNRQVVxY2xj?=
 =?utf-8?B?K3BUb2hFY1hiRWxXY1EzMFRwMmlFcC9IbWRnWEVyZUEySExFNlNuUkwxbjhD?=
 =?utf-8?B?SFg1MXJFNHJ0OGRZSUF1b0gxcWczeHVhYXlTZEZKNCs5cXJjR0Y5MzF2WVE3?=
 =?utf-8?B?ekRiWjhaY3d3YVp2b3E5N2o4VjA5YVR6QTVrNmxlVjNoV3l6UWdnNnF2dkdo?=
 =?utf-8?B?VDBGbGZqWVlTZlFCUnFHU01rY1lJTlptTVdoV1Awamc0S3ZIUlQvTDRPMlEz?=
 =?utf-8?B?NGZ6YVZVR0NZc0sxKzBwZWZWR2MxQTV3dytnWWhSWVdCT2pUSEpQdURaQlBz?=
 =?utf-8?B?c2hhQlFBT2dtaEplRnBxenAxcFBJaldZUnE0ZjBRYzliMXRVQkMvb2FBS0tG?=
 =?utf-8?B?ZWRwMDNmUnBpVmxkRmJ6REdFVk9MNVZMWld3blNDNWtBb21TMUFoWHB3N01K?=
 =?utf-8?B?RzlrWmRoY3hNK0o3QXhPWE9uaGRRV2F1dXBDQWtOeVFOZ0cvYzh5bzBhZlR4?=
 =?utf-8?B?aE9DbVU1amtSVGo0RzlhZDFBS0I3YnlWY2NNMDZYVjBqa3RVbHNmNURlZVdK?=
 =?utf-8?B?M2x4bndHak9KVHJzSEllY3BzT2hXNEFrM0ZoZlB5UDVLUkhtYWFuSGNJSUhO?=
 =?utf-8?B?WVExS1VXZGkzaWwrNGJrQ0d4LzIvTzFtNW45NFJEbng3QWV3UTJWS0JSZ3l0?=
 =?utf-8?B?M245ckZkV3BZMEhnZzdDK1VMYk0rRkZNNW1ndERBYWtBOVlCc0JheVZSblV6?=
 =?utf-8?B?cVpJdVpTWGtDeUFWdysrUEY5ekQ2QVJ2WnZPQitneFRTdStLTzUvL1pVTUwz?=
 =?utf-8?B?K2hadG00b21LbnF0WjI4Z3E5QUFVd0t5TnUyakhWRC91WGhwR0FpTlh6M3Ar?=
 =?utf-8?B?N3FDR3lUcWx1ekhWZHd6Vm9yWkNIRUl3WWorYzQrSkM2T3BRb2NidDViUGRP?=
 =?utf-8?B?eC82RGJFYnFRdzgvNnFsTEFsWHZ0b2pEMkNMVDMyYng3eGhpVXU4YWt2L2pN?=
 =?utf-8?B?SzUwSTVHRE4xQy9NZlRGOS9ubkNjUkNySXp4WWVBZkpudWZYZ1kxaVU3QTdl?=
 =?utf-8?B?Z0JOQmY0Zm9PVStwdm9icmNUalIzMS9EdmUrVThybE1Vd2pFVERocTdWNXI1?=
 =?utf-8?Q?l5zJPSmN3TBgai/jhWqHmv4bXrk9txBOoxXbox22JE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ae6def3-28ed-4179-d36e-08d9d6da603c
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2022 21:19:25.7324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LGOMol6gvOl/tkE90Wm+OvVYNggLZb9ATMK3ZMzAuQdLrLzo492IKeDMklr2rB84UZDRsWQO+XXsNnrv4Mn+vfmYyd9fT39CDGiIC6odzUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4877
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v3 i-g-t 11/15]
 tests/i915/i915_hangman: Don't let background contexts cause a ban
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/13/2022 13:01, Matthew Brost wrote:
> On Thu, Jan 13, 2022 at 11:59:43AM -0800, John.C.Harrison@Intel.com wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> The global context used by all the subtests for causing hangs is
>> marked as unbannable. However, some of the subtests set background
>> spinners running on all engines using a freshly created context. If
>> there is a test failure for any reason, all of those spinners can be
>> killed off as hanging contexts. On systems with lots of engines, that
>> can result in the test being banned from creating any new contexts.
>>
>> So make the spinner contexts unbannable as well. That way if one
>> subtest fails it won't necessarily bring down all subsequent subtests.
>>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   tests/i915/i915_hangman.c | 16 ++++++++++++++++
>>   1 file changed, 16 insertions(+)
>>
>> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
>> index 9f7f8062c..567eb71ee 100644
>> --- a/tests/i915/i915_hangman.c
>> +++ b/tests/i915/i915_hangman.c
>> @@ -284,6 +284,21 @@ static void test_error_state_capture(const intel_ctx_t *ctx,
>>   	check_alive();
>>   }
>>   
>> +static void context_unban(int fd, unsigned ctx)
>> +{
>> +	struct drm_i915_gem_context_param param = {
>> +		.ctx_id = ctx,
>> +		.param = I915_CONTEXT_PARAM_BANNABLE,
> Looking at the kernel I don't see how I915_CONTEXT_PARAM_BANNABLE can
> return -EINVAL unless it is protected context.
>
>> +		.value = 0,
>> +	};
>> +
>> +	if(__gem_context_set_param(fd, &param) == -EINVAL) {
>> +		igt_assert_eq(param.value, 0);
>> +		param.param = I915_CONTEXT_PARAM_BAN_PERIOD;
> Also this always returns -EINVAL.
>
> Probably can just go with:
>
> gem_context_set_param on original parameters.
>
> Matt
The code was just copied from 'context_set_ban' in igt_gt.c. Can't 
recall offhand why I didn't just call that function instead. There was 
some reason why it seemed better to clone it than to export the helper.

Just did a quick check of other tests that disable banning (sysfs_*, 
gem_exec_balancer, gem_exec_isolation) and they all just do a simple 
set_param(BANNABLE) and leave it at that. So I guess I'll just update 
this one to match as well.

John.


>
>> +		gem_context_set_param(fd, &param);
>> +	}
>> +}
>> +
>>   static void
>>   test_engine_hang(const intel_ctx_t *ctx,
>>   		 const struct intel_execution_engine2 *e, unsigned int flags)
>> @@ -307,6 +322,7 @@ test_engine_hang(const intel_ctx_t *ctx,
>>   	num_ctx = 0;
>>   	for_each_ctx_engine(device, ctx, other) {
>>   		local_ctx[num_ctx] = intel_ctx_create(device, &ctx->cfg);
>> +		context_unban(device, local_ctx[num_ctx]->id);
>>   		ahndN = get_reloc_ahnd(device, local_ctx[num_ctx]->id);
>>   		spin = __igt_spin_new(device,
>>   				      .ahnd = ahndN,
>> -- 
>> 2.25.1
>>

