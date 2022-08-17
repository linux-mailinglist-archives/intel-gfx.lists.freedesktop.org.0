Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95643596638
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 02:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7602F10E023;
	Wed, 17 Aug 2022 00:07:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95B0810E083
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 00:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660694823; x=1692230823;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pYtn0gnK9RlsEn8MY0u8wW5MW73N8A59XEniksJfgSY=;
 b=R2y+s82haNWPW9OtF5HoQIcVADBfsxFJVwgcecO6MMrhvvInINnM4oOa
 yte95wIrRAH2GIelABlzUcpC0uoEJrSfUSVqNYwQPjtSayk5GxLlWyoVS
 7e/uvCw3KyoFgOY4DEFV/Mqg7r6VTcMrXPBBaYhkB+RL/ue4/09n4giaQ
 48KgMZ5FKgfTbA2EmP1pkSuSh76/Fw9QPdXfg+AISmr6v4fp1qepHRgZq
 qHbXDa94X8rdm+1bpTDvdzzT5dk/q+xMMjuZPQZiUCT99mby8KYv24jbk
 QjekH0LZPd/ktwwO+JAn+9Uq752z0MB4p1q+Q4XyUa2xdPtltTTVSRRdn A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="291111927"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="291111927"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 17:07:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="603703399"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 16 Aug 2022 17:07:02 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 17:07:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 17:07:02 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 17:07:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FSOuUInUN7C9J78lG3mzlhwKoL5FwU1Wla7lcxK20F5z/duEcetS63I5+SooR3ukQOfIff0klCiR/3RBVzYMrJ4X6xWWbdIYh6cjj/7y41TJ9OsU7cUhxOWtAw6E2xJnNSCeoKuHQF5zJ3PYO/MAA1KDMOW6CqLNj0RISrfoPui2zQOqZxlsPyfDon6cbkebRzDbKyay2iUoRKQubTz/Wu0oPixR2oWHI2OPB8Ql5a3EeZU+LLrmjn0AvzUgX/eBfV8HcMHRD32DJseup4qnFGiBba7X1oZCz3sIVn90HVwz3e11eT0NIBtynQWssaHruX1uucchIDqA3uDeHPp0Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GzYufZJNM6qBO/PHSxN9yw65Y+2S4IasDzHqt3E8UDQ=;
 b=ClYDQ4+rrSjhH3GgLy2TFvEhAyhWd7M4mpepBtBIcP7ap0WQW50FEo6rWRYnKzKb93GH+B/c7rpIvg9vHu0rLb7h5OjtJi84+27UpZ4950vvtLuAMQhuImaKFwy+SEvRmy/qyn+5QP75Z5wqaDsUT1cAlpZPQSNngOZEj5Ja23a7FNrR4DJpc9Ab1pGqASYw4nmXkgVq+WMsYb228yBpDwWlWVvJtmLBxJOEtpDdkjauyZj8dnAZA/+kIPxm4jfRbOmrb3wFTTumVcaG92pOzR/E8ZYPBMYXYI42lPnHk1p8P2+ZDeUl1890+GUMC7in1yTJZ+BCQGL+NhwcG/4v2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BYAPR11MB3542.namprd11.prod.outlook.com (2603:10b6:a03:b2::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Wed, 17 Aug
 2022 00:06:55 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e%5]) with mapi id 15.20.5504.028; Wed, 17 Aug 2022
 00:06:55 +0000
Message-ID: <f60c8ed2-1f14-d09c-2b02-df5c15c8cf81@intel.com>
Date: Tue, 16 Aug 2022 17:06:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-GB
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220816021715.1835615-1-alan.previn.teres.alexis@intel.com>
 <20220816021715.1835615-3-alan.previn.teres.alexis@intel.com>
 <bda52b13-1925-7a07-eabc-349e8573b09e@intel.com>
 <7959392c4c800123585f4c5784f1d5961f864610.camel@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <7959392c4c800123585f4c5784f1d5961f864610.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0195.namprd05.prod.outlook.com
 (2603:10b6:a03:330::20) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 043899c0-e5f5-4b6d-e923-08da7fe46512
X-MS-TrafficTypeDiagnostic: BYAPR11MB3542:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j6TQdBmlXDvlWrKe7A6VJ8Xdiu3i+33weUNByEFEqH/K+aowsQ+mIhlQ6ek96RAwWfIN7jOCQrr3L81L9nNnXXMq8E5E8PFuZx6N/zmMFbKHucRURbt6HIWE+fV1+DYsw9LanUDq5I18bkkoqPLbZE47UVjjIhBxJpU4rfEnSxINwZCHzevft9wBVktp/35Sb/7iZRAv/twX6RX9MJiAwavwCGDb1UmoraDZ6f0bQvXVlS1dZIz+Tqmap009fnJtWxzvA66v0Dies1uF2Apt/rXiHWz2Z773/HIC2QrFU/jNlPOo2iFTrfLHnNKyFK55+gweVV+302Ity+0sNwga3fqPJKf/BSI34S516rl7bad52Jx4rPMpN+1CTN61C/2DIry+CQl3ZJkQmP0OE5HdHKjkcrnQh6U0IU5HfJp/saLt7Lzgtf7knYvflO6hqjun0FIASFrRy3n0hw3amHJvm3O/T3QlASQj0EzYz8xEzznrDy5Fk1p2/d/HAyb/LSP1DYkM/Qv3D2Eltxs14eqhxaO9rylF1G1PvrTgTz7NjKfKCDiapdus1UoY1PJe2SJgBIi6Vx7RRYxMfcP4CE3EBjI6faG/nwjWfAlaDfZbf18CW5JwccVaP4t0DHLby2o1wM9wPgQoCGk9tHU9RZuUH0SjiuPWM+nrc0N/LNZggfuhHv6XxNPwg6FREYYAwtlxhGZlcXPSm4Lyy1jxxxiy/Y/6RnYv91OKt9nrv9MSgRnt9TyEjy7ITIqJovRqxeI4XN8vCrymeNlggnAGY7Bram273jomYTmnXPrvZSOdN6qjB2XRZn7Vd4k8RQjD+yuaObHjMxUg+GltA3j8RLWctA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(376002)(136003)(39860400002)(346002)(38100700002)(31696002)(6486002)(2906002)(86362001)(5660300002)(8936002)(66476007)(66556008)(66946007)(26005)(83380400001)(82960400001)(53546011)(110136005)(8676002)(316002)(6506007)(36756003)(186003)(31686004)(41300700001)(2616005)(478600001)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWVsS2FjMFJvN28ydnM5YjY2VDRXMkU5a1JUVk5Pb0R3MmJwUFUxSHhYQmIz?=
 =?utf-8?B?TzNUNDkzM0labGlGWnlybzhuOEVjS3hCTVlYNXNXNk82NmliM095dEhNNGNx?=
 =?utf-8?B?MEl4ajBBaWp3OFFpNnkrMTNsZ1M4VGJ2M0JzbkhieVp4MjdsU0FyVkl4ZWRW?=
 =?utf-8?B?REh4Ri9Xak5mNWF6VUlPWGlmd2VBYmxTbW5VNFFDUXh1Z0c5TGVyVGkyelJX?=
 =?utf-8?B?ZFFEMU5QTVlRclE4YnUvUHA2VDZiVCtreW1oV1Jod2hCVitPZVhHMTlBNldj?=
 =?utf-8?B?ZTQzcmh0cUZwdWoyZXFYc1NqN01Qd2lEVVpiT2xaZ0RncWE4cXJDRnlodFIr?=
 =?utf-8?B?bldFT0YzbEhzYlBmdE00TXg2Zjg1akIrWVdWOGdqUVptRHh3cWdpemlPdUxU?=
 =?utf-8?B?SVBIaHlpaFU1UUdWS3dremZCT2FuM1ZpTk53cnRiZGo0L0UrdG9WWWxMc3Rx?=
 =?utf-8?B?R0tDdHNCbWhOSFhSRHgwTXNub2QrUkNTK0lSYnVMSytYWk4vMXJvNjJ3WVFu?=
 =?utf-8?B?RWtvQ1A3bGorTzRQbVBGSzhvWGI5MmVzQ1VBZEtPczk0czF1SWFseHBqa211?=
 =?utf-8?B?UHBoMzFidWxWZzB5NlBNalp3TE92NXI2NEtRMkFqSmxDRzVwS0U5M3dEY05x?=
 =?utf-8?B?Y2hTYXhkbXppMFZzQ1FycFhCTmgyMDVBSVBkeUNtbjBiczErQ3NpSGswMlFx?=
 =?utf-8?B?NFQzSWdVUnF4Nks1bDlpcGdNdlpmNTRCRTczRXZVdHM4TStZNmMwbUg3WVhx?=
 =?utf-8?B?S01HNzNOUE5BTDZqNzJYdmtSZTNJbXI1c0xJRjRmUkhycUZrL1BhVGNvWlND?=
 =?utf-8?B?TGxqZkRQVFNmTEtZYUYzdGxBVUF5aUFQN1V4dVZlcmk1K1dHNmJyOG1BK3BS?=
 =?utf-8?B?U2ZEQldxRGtKZEFaY1QrYm5jYTR5aFdyWFFtSFk0RVdBNjF3VnRrSFFqTjRm?=
 =?utf-8?B?SXpldzAyazg0aGVCQnpaRW1Rb05nNVc3OHAxOWt4WmxSU1NPa1djZEhmOHRo?=
 =?utf-8?B?Y3F2U0kyYmwvQmJDQXY2OU42ejB4cXc5TGRzckR4NXo1ajNUWDZHVkpIU251?=
 =?utf-8?B?K0hTbG1udlRiVjNUR3dsM3VieUh3M2d4WVgrOEp3TWpHMnFuOU1DNGZIM3Mw?=
 =?utf-8?B?Y0ZhMlk3akV2NWVoTHBvYzNQZHhVaVhKdVB6UExvVzNhVTBydjcyTC9NbVNK?=
 =?utf-8?B?d2tnMGU5Z0pUQVBlZlgvNXB2b2tFeFZHMkVpZVpFQUNBSno2SzFNT1lZT0Qz?=
 =?utf-8?B?NW5jVm9sOUV4TDRkS3FZK3Nxb1NOVzJiYXErd1hJWVFJaFNuWE0yRXEvSEhp?=
 =?utf-8?B?QkJQekRyUytac2VNL0RxVW9pb2ttamFUbWlTdHpzcEtIMzh0VGJKQ21Ya0NG?=
 =?utf-8?B?RGtWcXZLOUZ3ZXIvNzcyam80SXUzV25WNWh4R2p1bjZEM1dXaXNUVGVMVkFN?=
 =?utf-8?B?c3JWVjVOR1JsekpSWG10eGlnUmNzbHpjY0V2MmFpNnpEM3BCSXRCQngxVlVU?=
 =?utf-8?B?b29icmc2akpEVzBLRFJKNmZBejR5WHFpYzE4WXVvTElMaGIzR1NDcFBjbWJv?=
 =?utf-8?B?dE1VZmY1UVVPNks5aHZ5djZOMG85VVJTTTJkR2ttNHVwd2EweU1kSVJBdzd4?=
 =?utf-8?B?YW9Za2xlOFBLNGVoZStzU1Jobkl1MGhpTW14RGhaQWtBVk00QkVGcmlOSGVW?=
 =?utf-8?B?QVBaQzIyOFdpVDl2N3RQUVplcGpFQlFEUVJGV2NBcVhZNml2dm9zNEpObEdI?=
 =?utf-8?B?Y1YzblRlRmtDdVNJQ1RySWZGU3VJSHg0VW9DckJtQkhYenhEdERETWxlb21Z?=
 =?utf-8?B?SkcvcnRPbTNSYlArQ1lEL3FYaWlmTTVubWQvRVI5WWRzZklHclZxaGV1T0pH?=
 =?utf-8?B?Vlg1VGpvcFVTcjF1dm5Vbm5RaXozTGJRUE9jQmVRdFFJUFdsUi9pNGh1MkxW?=
 =?utf-8?B?cDVISnY0MkNHZFN1TVIwY1pUTmpTbVlSMFQ0OHZHemNKZ3l0RDVIak94eUdr?=
 =?utf-8?B?ME5LK0QveWp3SjRtN2tQWHVtQjF3S3hqYTUyOG53d1dTNDhJekVZVVMzNFUz?=
 =?utf-8?B?TWxxV2owbVN0Wmc0OGZDS2dxOHpoUFNLcVF4dEtFcUgrQk0wRjFXd1JvV0w3?=
 =?utf-8?B?ZU1yM0VXUlB1c29kKzdpVXlPaUxrQ083eHVaV3dZY2hVVlA4aFZKSHBnRUJN?=
 =?utf-8?B?b3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 043899c0-e5f5-4b6d-e923-08da7fe46512
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 00:06:55.2605 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j7u9jWGkklI2j7Eev6/POkx3i9WpBxWy2ArAvV9KlQ+dFQxf3JB62z/9BiTfWlaDO956N2xt+PzdB+W7FcHB7iu+9RQ3LRjvFng0fG3fqKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3542
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Add delay to disable
 scheduling after pin count goes to zero
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

On 8/16/2022 16:55, Teres Alexis, Alan Previn wrote:
> On Tue, 2022-08-16 at 15:45 -0700, Harrison, John C wrote:
>> On 8/15/2022 19:17, Alan Previn wrote:
>>> From: Matthew Brost <matthew.brost@intel.com>
>>>
>>> Add a delay, configurable via debugfs (default 34ms), to disable
>>> (default is 3/4) of the guc_ids.
>> are in use.
>>
> my bad - got clipped - will fix.
>
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>> @@ -65,7 +65,13 @@
>>>     * corresponding G2H returns indicating the scheduling disable operation has
>>>     * completed it is safe to unpin the context. While a disable is in flight it
>>>     * isn't safe to resubmit the context so a fence is used to stall all future
>>> - * requests of that context until the G2H is returned.
>>> + * requests of that context until the G2H is returned. Because this interaction
>>> + * with the GuC takes a non-zero amount of time we delay the disabling of
>>> + * scheduling after the pin count goes to zero by a configurable period of time
>>> + * (see SCHED_DISABLE_DELAY_MS). The thought is this gives the user a window of
>>> + * time to resubmit something on the context before doing this costly operation.
>>> + * This delay is only done if the context isn't closed and the guc_id usage is
>>> + * less than a threshold (default 3/4, see NUM_SCHED_DISABLE_GUC_IDS_THRESHOLD)
>> The delay text has dropped the 'default 34ms' in preference for just
>> referencing the define but the threshold still mentions both. Is that
>> intentional? Dropping the values seems sensible - no need to update the
>> comment if the numeric value is changed at some later point.
>>
> Yes intentional - and yes, i should be consistent for both. will fix.
>
>>>     *
>>> @@ -4207,6 +4288,20 @@ static bool __guc_submission_selected(struct intel_guc *guc)
>>> +int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc)
>>> +{
>>> +	return guc->submission_state.num_guc_ids - NUMBER_MULTI_LRC_GUC_ID(guc);
>>> +}
>>> +
>>> +#define SCHED_DISABLE_DELAY_MS	34
>>> +/*
>>> + * This default value of 33 milisecs (+1 milisec buffer) ensures 33fps workloads are
>>> + * able to enjoy the latency reduction when delaying the schedule-disable operation
>>> + */
>>> +#define NUM_SCHED_DISABLE_GUCIDS_DEFAULT_THRESHOLD(__guc) \
>>> +	(((intel_guc_sched_disable_gucid_threshold_max(guc)) * 3) / 4)
>>> +/* Default threshold to bypass delay-schedule-disable when under guc-id pressure */
>>> +
>> Comments always go in front of the thing they are describing, not after.
> Will fix.
>
>> Also, the description reads as just a more verbose version of the
>> #define. As in, more words but no extra information. Not sure what more
>> can be said about the threshold. I'm not aware of any empirical or
>> theoretical evidence as to why 75% is a good number beyond 'it just
>> seems sensible'.
> Yes - this was merely a sensible choice that wasnt part of a known performance issue with real world workloads
> (considering we have thousands of guc-ids at our disposal). Will fix (remove the comment since its self-descriptive
> anyways).
It should have some comment. Even if it is just "75% seems like a 
reasonable starting point, real world apps generally don't get anywhere 
near this".

>
>> The 'make it work for 33fps' seems quite arbitrary and
>> magical, though. What is so special about 33fps? I feel like it should
>> at least mention that an real-world use case requires 33fps (was it
>> really 33 not 30?)
> The patch comment already includes the workload description: game-rendering + encoding at 30 fps (not as fast as
> possible but with latency deadlines at that fps). But i can include it again in this #define if you prefer:
> (would this work?)
>       /*
>        * This default value of 33 milisecs (+1 milisec buffer) ensures 33fps or higher fps
>        * workloads are able to enjoy the latency reduction when delaying the schedule-disable
>        * operation. This matches the 30fps game-render + encode (real world) workload this
>        * knob was tested against.
>        */
>       #define SCHED_DISABLE_DELAY_MS	34
Sounds plausible. Although technically, 34 is not a +1 buffer it is 
rounding up the 1/3ms that we can't fit in an integer variable. And it 
should be "30fps or higher" given that the actual workload is 30fps. 
Supporting only >= 33fps would be insufficient.

>
>> and that anything faster (e.g. 60fps) will automatically be covered.
> Is this really necessary to state? I think that is an obvious inference if we know anything about fps and periods.
Fair enough.

>> And that in the other direction, ~30ms is not
>> so slow that it leads to large numbers of idle contexts floating around.
>> Did we have any specific reasons against going larger? I recall the
>> original experiments were with 100ms. Was there a specific reason for
>> rejection that value?
> In some initial internal conversations, there was some concern about keeping contexts pinned and possible impact the GuC
> subsystem power residency usage - but that was later discounted. So at this point, we really can keep any number we want
> but since we already did the work testing for both 100ms and 34 ms, I thought it would be better to stick with 34 ms
> simply because of its clear relationship to the rate of context submission for the actual workload that was tested (i.e.
> 30 fps workloads that were getting submitted at 33.333 milisecs apart). That said, would above comment mod work?
Okay. Sounds good.

John.


