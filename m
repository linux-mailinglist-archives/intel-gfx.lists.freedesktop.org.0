Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D589D5AF3D6
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 20:39:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8967210E0E6;
	Tue,  6 Sep 2022 18:39:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BEDC10E0E6
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 18:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662489581; x=1694025581;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SFKnKrnnZND2uRopoYUl2sI23bqxnDpz/p0LxGv6FMg=;
 b=hw2ywpVyowqJv8KHZrodCEp4Hh1jN1Kkcb2MLAuS1VvrNY9k29b3yUrO
 Gmy4eBcvX38eelaoBGXIMNlfVYYc7+zurTY0Eh130QJCEgk+NBfIDREAn
 sg6im2h+Omnt6hTAI7wHLDFQIlHO8xDG9LFcSKROjAV8ELvR3A60Gw4Es
 48JINV+0pwoNG1HV/zCcCzO0I8ZZKCJkjUyKMpYNPuIZJSp37pJR2B533
 ydFQjLBuTtJjwWMmDa2u+yyDwylyX/pGtvUQPCw7dCtGskotgtogOxql0
 XGSm9e4s2WfvCJt3FetekbY8cc0iG3BTB6+UFQV/l5Gn5SB/TE/cZSV1H A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="277068442"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="277068442"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 11:39:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="616800223"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 06 Sep 2022 11:39:40 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 11:39:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 11:39:40 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 11:39:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kl3wQTafoQyJo5o+30udjtEK2t3N+UjXFvdW5aP7I5glk2Gc82OEOXVI3LBkb0wJRQTLJTDNqwB4wyilKVabQkH8bAZQCjgkmhvyJ0XUJO/NWx9dWqOPuX581JbsZ2APVQ8DidBQ/1S1I5ConlLzhZY3CBbFPfukmMtgPKXtlmwUlaed++HhH+js4Oejza1Lq4KX1YFlpEuCwoe+3kXhZHRtgGhVTIHipMXsJ2jBBHzGi+iZ7YuTUldULkzIPeXhDikGi3zkIFci0wy49x0ss4SsS5b2Rxmjpox8vDGbdmnocVG64F7t+rA3CprOB5d2EXVy7RThgcA9pUUpRmhK7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eUwyJdj/4edZIWQcfkG5twcrFLGNXf3ZG/Ie0VYWcRk=;
 b=ee/J12pkx7w6I9Owk5LAjzzlEtQ4ozdAeJO9czDykI6FiiiZ6mqL21fa4KYdD1MmSHf8TTNqoN/SJh8Be5hce84HqCfrs1GlhmPpLCaOLvXSt1VxctVsCtevC7uiEg9Iq72aJzcbVe5WJ/4u/xZ+f4Hairpg9HcPJyOP3KOV0lebFGfbmJjpUR/RwPvtR7XfF4FamBv+SkLjYFHAje6YOIclb3RLTuNkFy8eeo0v7TVOAyZcQjdWGI9Uy6AekkN83HZpKrOLQPvjP2lXGQP2acib/RfkxO/Il+hxBaM3DQYtf8T4JxhUR4I4SmO+WkNhCpEz3pdX67k/6PN4StZlaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 MWHPR1101MB2304.namprd11.prod.outlook.com (2603:10b6:301:4e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.14; Tue, 6 Sep
 2022 18:39:38 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4%5]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 18:39:38 +0000
Message-ID: <f1e9e230-2626-0f6c-02a7-e063122b759b@intel.com>
Date: Tue, 6 Sep 2022 21:39:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-2-umesh.nerlige.ramappa@intel.com>
 <9afc705a-87a1-c51e-b223-e32accbcd2fe@intel.com>
 <YxeF0b6ohtFcDXf6@unerlige-ril>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <YxeF0b6ohtFcDXf6@unerlige-ril>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AS8PR04CA0112.eurprd04.prod.outlook.com
 (2603:10a6:20b:31e::27) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 363a06ab-0be2-4e4e-6ac2-08da903726d2
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2304:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y33gahPUNSbjYkQEGpDTb8Hw0muqOLKoXS9qHjDjTQ3sGnk9ofsgXCkMGsGWqlb0L5zV0fAfe/ExzwLIdQU9kJzxh3T6vF+qX4gABgndO8G7vt/C8WhRqXb1w9xoGEk0kCg157M0hl2HVU+N+e473dD4Hm0d8chaZ+l5xNoBHrOkI9WJ0f2tUJjJLi6vRs9Qk8/uES9ACEblE3HyC/OyScdoUUfyhoLJGzeHv8YIue5UWnGGP7EShVrvd+q82vd4QsRPnJ+ch8ctO28lN8qckl+FnbASMMQA3hrL700+FPV7tux+QZFDzhtd2SWcxCi2+p/vaowIvD/daGZorF9t2aOoX5s6j72/Ek22SEUNwL+kYyPH+hWzAkWFFcRFl4RrIxKwleLyz+714Lh4XzE13kxbc+JoFHc520C4YgkaupOfzcSbFODVBSx893lrSV+rtqZ5Z7b7G4fwvxzp+5hZo/Xnl3zb4GZlmcRI6P27j+/tHqVSOSxSFSp9UeXE14G1Vu3iKydaaznFM3ws3IuqOaV/OpORpfELDBcJJ3qFVEOAZKkFckuZ+s/+yFzkFH5vKfAu6RpoS9kp4AuB813nU3GeNzXz9uTq87K6FcAtKHkNuNUJ7u1vYqUOHurfClT36rrptHhe7rcXfrCXpWamLP8uN3eNoYoEstAmHNMqZvdzIkcMSBePeibZ0zysESY9fW8H7B677+nb8QsfHL44R0a/xMtDs1eCkNXHh+eRdHP4hjpGZssZ3YcHno/AQL40tqAztEBk4uT+QFAzMK9VgprU2ub7fP5uXF9iamHQkl4vDxPcfqHhyikPYDUuPIZ0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(136003)(346002)(366004)(39860400002)(8936002)(5660300002)(6506007)(6862004)(186003)(2616005)(83380400001)(31696002)(36756003)(26005)(53546011)(86362001)(107886003)(6666004)(31686004)(41300700001)(2906002)(6486002)(6512007)(38100700002)(8676002)(478600001)(66556008)(6636002)(316002)(66476007)(4326008)(37006003)(66946007)(82960400001)(21314003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnNjT2RZZXlVSEhyUUN3Q0NvNWw1cVFMRi9MOU5ZSVJCWHdOc2IvT0tqVVBU?=
 =?utf-8?B?SGJiK25zUHdIZ1dBSHpna01uL3FrWDlrOWJERHFPc1FsYXVjcGlTelNjaDRi?=
 =?utf-8?B?MmU1cGwyVnpSQVcxbGgvNENIRUJLdnVkYWtyNWxPc2piamQ0cGpCdlZMMFU1?=
 =?utf-8?B?VUNNKzRVeWlpRnZKaUdRdXB1VmlROUdqTTJvZGMvTTJGbkxwVzVlT2Zsam8y?=
 =?utf-8?B?c1pmN09RNnVENGhkdXFCN1B3SU1Tc2pTMCtBazJmSjhiemtQekljR2k0VmN2?=
 =?utf-8?B?d3JJVFZQQXBxRitkeGk2MXlPVHM1SUluamk5OUdzenh5MFZpOW1hVWxkM0dK?=
 =?utf-8?B?KzVzblBFWjQxV2JERzVnWWtVdlFjQUhqWEkzMGtKeWM2YzFWbWsxbXdTZHZt?=
 =?utf-8?B?TVB4Tyt2ZjZSb1IzRGZZMzkxZGJkejIvQm5NNDBlRnZHZW5tMEM5WHFQTHo5?=
 =?utf-8?B?TWZWM2lvcERDemk3RFRaYks5UENqdlExSTVMVEl3eXNWNlBGUXZvYkh0WVJO?=
 =?utf-8?B?bm93L0xrN2tndFE2N1YxSFFtWUV6TnRHOFc0UlJFZjhVaE8weVo5Q1pzVEJJ?=
 =?utf-8?B?WjJ2SExpbFV5NzZsVTFCajZBWUFzNWwvbFhoVkRCTEpLZTFjSzFLeDFNSmdk?=
 =?utf-8?B?R1U1K0ZERkFEb0J2cDl2RkpIK3F1Z0Y3dnNhTWpPczlSNnl5LytqeHRqcnB0?=
 =?utf-8?B?dzY1ZjZzU3F3dnlFYS9JMy91UERsZElJQ0ZRZ1pNRUdGMTBhZzZlUUFYeWxU?=
 =?utf-8?B?UElMSy8zdWRkNnpRUE5hQmpZbEJRRC9YUUc1N040dkNSamI2L0x1ckExczFH?=
 =?utf-8?B?NERUWE9Md3BmdFNSVmN1czZZQm9rZU1MNmduL1VPc1lWUktmSjBpZzkwV1U2?=
 =?utf-8?B?Z1k4WHBhR1ZDZlZ6elBodHMyc2RETnJZc253Skh3L1RxVGZwUC9KU1lJWHha?=
 =?utf-8?B?VkZvVFREQnZ1L3BmTUcwVzEvM0RxUG0xd21Qblhkc0k1a0UzczA0UHJ4SlFK?=
 =?utf-8?B?Mm5sWklYM2NFdU9qak5PNEh4bGI3ZDAxd1h5Z3JOTzRGZnB4OXV1b2VkTGJi?=
 =?utf-8?B?S1IwUTBPemZLM3lFeGpYQ2F3Z1FPUjdFRkdtVGxlRFcxUjVIMkFuTTVOUmZV?=
 =?utf-8?B?RGZ1enRmamU3UWltMVBqSk9FM3UvUWk5VGRod2hxeXNJYzl4UnU3UGNlUCtZ?=
 =?utf-8?B?VzVMVzN1amloaStnenltRitoWTczaFB4SFJJeW9ZMytES1hDN3BScEM5SC9S?=
 =?utf-8?B?WndvTGpWTnlDcm5kdkYxOUR0bGZ3ZWJYaTQ4dDM3NmRGSFdZUkxORGZRa3Js?=
 =?utf-8?B?YnlBUzFPRGJ2d1ZWU3ZqYm5idnJINU5YbzJnYVQ4dUJNNjNWU1hpTGN2VG40?=
 =?utf-8?B?NjNucVZaMXUvZU1ieHN2VmJyZEpaSHV0cC9PazdwNEsrTnlBVnAveFptenJw?=
 =?utf-8?B?dE42cGw1S05SN2ZKVjgwVHJyK2tFZHNpU0QxUXJTTitjbVdIN1F3Z2hPYTFz?=
 =?utf-8?B?dlRvcHZvMnJzamwxRVAzd3o1bENQZE9KanRNMmIyWGJRVHVzQlN2cm45L2dG?=
 =?utf-8?B?K1NreTB1dGJ0N1FFSThiWVJrNUtaamdwMFJFQ25EWnZpUWNHYnAyOE9LemJB?=
 =?utf-8?B?UnI4V0RLNEtWREtKWHJ1MjU5TVF6VDVjaFkyVkR6UXpUazNCbEl2UC9TbVI3?=
 =?utf-8?B?Tm5xcG0zYmcyalFvZXBFcm1reFl0OGkwMTFQQTlodW55cW0yUVBoV050eUQx?=
 =?utf-8?B?RXNtZjV6Rjl5TGZETktWSkZuc3J1K0tXWkJJNlJZaDRtNlVoWmVkdG9iUU9k?=
 =?utf-8?B?N2lJejQrN2N0R0VFNDJrM0hDUTFyZ0x0SG1NcHFRaDhZM1Y5bXdQZDR4V0sy?=
 =?utf-8?B?K09HSUdaYTI3Lzd2OUgzaEg4aHNCRVBDY1JUUEdSYkp0cHJWbHJRWndseUlI?=
 =?utf-8?B?TTJKWDVzWjk4VnQwSkloTW5qallsdUZaKzN4TzJWSUFKVDk0ZGlaWmtoY0t3?=
 =?utf-8?B?M1dEOVZwc0Y1QWgrZHB0VXg4ZjJaa1ZQcTdqYURQQzhYMC9JUmZsR0NRUEpi?=
 =?utf-8?B?ZUlGcXJQb3E2dmJWVk83RjBkbGdvZGtpMnFsNEhvMzBjZFpRQ2M5bTZ1U25s?=
 =?utf-8?B?MUxlSGhGbWlLWUdQbmpqZTA3SDNOZ0VZRTQxbDNIa0JZbk9lcEoxaHRGYXVJ?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 363a06ab-0be2-4e4e-6ac2-08da903726d2
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 18:39:37.7771 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KOWRTL97VpfYb+3ZxGd/PJHs6f8S3lG0WWFXKDa86CSo79gFG8BN7InNun0WBk6OQKWS73t74fCBDCcjM9V73QqHqQqF1nKC1h1oLai4RLY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2304
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/19] drm/i915/perf: Fix OA filtering logic
 for GuC mode
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

On 06/09/2022 20:39, Umesh Nerlige Ramappa wrote:
> On Tue, Sep 06, 2022 at 05:33:00PM +0300, Lionel Landwerlin wrote:
>> On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
>>> With GuC mode of submission, GuC is in control of defining the 
>>> context id field
>>> that is part of the OA reports. To filter reports, UMD and KMD must 
>>> know what sw
>>> context id was chosen by GuC. There is not interface between KMD and 
>>> GuC to
>>> determine this, so read the upper-dword of EXECLIST_STATUS to 
>>> filter/squash OA
>>> reports for the specific context.
>>>
>>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>
>>
>> I assume you checked with GuC that this doesn't change as the context 
>> is running?
>
> Correct.
>
>>
>> With i915/execlist submission mode, we had to ask i915 to pin the 
>> sw_id/ctx_id.
>>
>
> From GuC perspective, the context id can change once KMD de-registers 
> the context and that will not happen while the context is in use.
>
> Thanks,
> Umesh


Thanks Umesh,


Maybe I should have been more precise in my question :


Can the ID change while the i915-perf stream is opened?

Because the ID not changing while the context is running makes sense.

But since the number of available IDs is limited to 2k or something on 
Gfx12, it's possible the GuC has to reuse IDs if too many apps want to 
run during the period of time while i915-perf is active and filtering.


-Lionel


>
>>
>> If that's not the case then filtering is broken.
>>
>>
>> -Lionel
>>
>>
>>> ---
>>>  drivers/gpu/drm/i915/gt/intel_lrc.h |   2 +
>>>  drivers/gpu/drm/i915/i915_perf.c    | 141 ++++++++++++++++++++++++----
>>>  2 files changed, 124 insertions(+), 19 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h 
>>> b/drivers/gpu/drm/i915/gt/intel_lrc.h
>>> index a390f0813c8b..7111bae759f3 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
>>> @@ -110,6 +110,8 @@ enum {
>>>  #define XEHP_SW_CTX_ID_WIDTH            16
>>>  #define XEHP_SW_COUNTER_SHIFT            58
>>>  #define XEHP_SW_COUNTER_WIDTH            6
>>> +#define GEN12_GUC_SW_CTX_ID_SHIFT        39
>>> +#define GEN12_GUC_SW_CTX_ID_WIDTH        16
>>>  static inline void lrc_runtime_start(struct intel_context *ce)
>>>  {
>>> diff --git a/drivers/gpu/drm/i915/i915_perf.c 
>>> b/drivers/gpu/drm/i915/i915_perf.c
>>> index f3c23fe9ad9c..735244a3aedd 100644
>>> --- a/drivers/gpu/drm/i915/i915_perf.c
>>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>>> @@ -1233,6 +1233,125 @@ static struct intel_context 
>>> *oa_pin_context(struct i915_perf_stream *stream)
>>>      return stream->pinned_ctx;
>>>  }
>>> +static int
>>> +__store_reg_to_mem(struct i915_request *rq, i915_reg_t reg, u32 
>>> ggtt_offset)
>>> +{
>>> +    u32 *cs, cmd;
>>> +
>>> +    cmd = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
>>> +    if (GRAPHICS_VER(rq->engine->i915) >= 8)
>>> +        cmd++;
>>> +
>>> +    cs = intel_ring_begin(rq, 4);
>>> +    if (IS_ERR(cs))
>>> +        return PTR_ERR(cs);
>>> +
>>> +    *cs++ = cmd;
>>> +    *cs++ = i915_mmio_reg_offset(reg);
>>> +    *cs++ = ggtt_offset;
>>> +    *cs++ = 0;
>>> +
>>> +    intel_ring_advance(rq, cs);
>>> +
>>> +    return 0;
>>> +}
>>> +
>>> +static int
>>> +__read_reg(struct intel_context *ce, i915_reg_t reg, u32 ggtt_offset)
>>> +{
>>> +    struct i915_request *rq;
>>> +    int err;
>>> +
>>> +    rq = i915_request_create(ce);
>>> +    if (IS_ERR(rq))
>>> +        return PTR_ERR(rq);
>>> +
>>> +    i915_request_get(rq);
>>> +
>>> +    err = __store_reg_to_mem(rq, reg, ggtt_offset);
>>> +
>>> +    i915_request_add(rq);
>>> +    if (!err && i915_request_wait(rq, 0, HZ / 2) < 0)
>>> +        err = -ETIME;
>>> +
>>> +    i915_request_put(rq);
>>> +
>>> +    return err;
>>> +}
>>> +
>>> +static int
>>> +gen12_guc_sw_ctx_id(struct intel_context *ce, u32 *ctx_id)
>>> +{
>>> +    struct i915_vma *scratch;
>>> +    u32 *val;
>>> +    int err;
>>> +
>>> +    scratch = 
>>> __vm_create_scratch_for_read_pinned(&ce->engine->gt->ggtt->vm, 4);
>>> +    if (IS_ERR(scratch))
>>> +        return PTR_ERR(scratch);
>>> +
>>> +    err = i915_vma_sync(scratch);
>>> +    if (err)
>>> +        goto err_scratch;
>>> +
>>> +    err = __read_reg(ce, 
>>> RING_EXECLIST_STATUS_HI(ce->engine->mmio_base),
>>> +             i915_ggtt_offset(scratch));
>>> +    if (err)
>>> +        goto err_scratch;
>>> +
>>> +    val = i915_gem_object_pin_map_unlocked(scratch->obj, I915_MAP_WB);
>>> +    if (IS_ERR(val)) {
>>> +        err = PTR_ERR(val);
>>> +        goto err_scratch;
>>> +    }
>>> +
>>> +    *ctx_id = *val;
>>> +    i915_gem_object_unpin_map(scratch->obj);
>>> +
>>> +err_scratch:
>>> +    i915_vma_unpin_and_release(&scratch, 0);
>>> +    return err;
>>> +}
>>> +
>>> +/*
>>> + * For execlist mode of submission, pick an unused context id
>>> + * 0 - (NUM_CONTEXT_TAG -1) are used by other contexts
>>> + * XXX_MAX_CONTEXT_HW_ID is used by idle context
>>> + *
>>> + * For GuC mode of submission read context id from the upper dword 
>>> of the
>>> + * EXECLIST_STATUS register.
>>> + */
>>> +static int gen12_get_render_context_id(struct i915_perf_stream 
>>> *stream)
>>> +{
>>> +    u32 ctx_id, mask;
>>> +    int ret;
>>> +
>>> +    if (intel_engine_uses_guc(stream->engine)) {
>>> +        ret = gen12_guc_sw_ctx_id(stream->pinned_ctx, &ctx_id);
>>> +        if (ret)
>>> +            return ret;
>>> +
>>> +        mask = ((1U << GEN12_GUC_SW_CTX_ID_WIDTH) - 1) <<
>>> +            (GEN12_GUC_SW_CTX_ID_SHIFT - 32);
>>> +    } else if (GRAPHICS_VER_FULL(stream->engine->i915) >= 
>>> IP_VER(12, 50)) {
>>> +        ctx_id = (XEHP_MAX_CONTEXT_HW_ID - 1) <<
>>> +            (XEHP_SW_CTX_ID_SHIFT - 32);
>>> +
>>> +        mask = ((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
>>> +            (XEHP_SW_CTX_ID_SHIFT - 32);
>>> +    } else {
>>> +        ctx_id = (GEN12_MAX_CONTEXT_HW_ID - 1) <<
>>> +             (GEN11_SW_CTX_ID_SHIFT - 32);
>>> +
>>> +        mask = ((1U << GEN11_SW_CTX_ID_WIDTH) - 1) <<
>>> +            (GEN11_SW_CTX_ID_SHIFT - 32);
>>> +    }
>>> +    stream->specific_ctx_id = ctx_id & mask;
>>> +    stream->specific_ctx_id_mask = mask;
>>> +
>>> +    return 0;
>>> +}
>>> +
>>>  /**
>>>   * oa_get_render_ctx_id - determine and hold ctx hw id
>>>   * @stream: An i915-perf stream opened for OA metrics
>>> @@ -1246,6 +1365,7 @@ static struct intel_context 
>>> *oa_pin_context(struct i915_perf_stream *stream)
>>>  static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>>>  {
>>>      struct intel_context *ce;
>>> +    int ret = 0;
>>>      ce = oa_pin_context(stream);
>>>      if (IS_ERR(ce))
>>> @@ -1292,24 +1412,7 @@ static int oa_get_render_ctx_id(struct 
>>> i915_perf_stream *stream)
>>>      case 11:
>>>      case 12:
>>> -        if (GRAPHICS_VER_FULL(ce->engine->i915) >= IP_VER(12, 50)) {
>>> -            stream->specific_ctx_id_mask =
>>> -                ((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
>>> -                (XEHP_SW_CTX_ID_SHIFT - 32);
>>> -            stream->specific_ctx_id =
>>> -                (XEHP_MAX_CONTEXT_HW_ID - 1) <<
>>> -                (XEHP_SW_CTX_ID_SHIFT - 32);
>>> -        } else {
>>> -            stream->specific_ctx_id_mask =
>>> -                ((1U << GEN11_SW_CTX_ID_WIDTH) - 1) << 
>>> (GEN11_SW_CTX_ID_SHIFT - 32);
>>> -            /*
>>> -             * Pick an unused context id
>>> -             * 0 - BITS_PER_LONG are used by other contexts
>>> -             * GEN12_MAX_CONTEXT_HW_ID (0x7ff) is used by idle context
>>> -             */
>>> -            stream->specific_ctx_id =
>>> -                (GEN12_MAX_CONTEXT_HW_ID - 1) << 
>>> (GEN11_SW_CTX_ID_SHIFT - 32);
>>> -        }
>>> +        ret = gen12_get_render_context_id(stream);
>>>          break;
>>>      default:
>>> @@ -1323,7 +1426,7 @@ static int oa_get_render_ctx_id(struct 
>>> i915_perf_stream *stream)
>>>          stream->specific_ctx_id,
>>>          stream->specific_ctx_id_mask);
>>> -    return 0;
>>> +    return ret;
>>>  }
>>>  /**
>>
>>

