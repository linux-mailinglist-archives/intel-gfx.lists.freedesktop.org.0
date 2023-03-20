Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 422966C214E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 20:24:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE0FF10E318;
	Mon, 20 Mar 2023 19:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F9F710E2EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 19:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679340292; x=1710876292;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=u+JJrNK5T8ZPYK+X2nQuva2Xz5W5TgjJxRJB8j1zhuw=;
 b=oKew0psP9Vi6AShf/1b50SqqTFj9V31YgiJWvCo6Nkqj4oMV3LhYpPWT
 lubwb84verbTLQLE5aVQzwEJry6p5H9G1Y3twWb3kZBqGMnVDbKOM8KoM
 DsFl2BuZ2uq3UREG5hPeXvQqT3eTuOZEuykyEtsWTdG6YaemfqkK8FPm3
 7w2q6WLdb6hK/RkbrJhfePJNQSC49GX9yigLljwmdrRN7KdoGMlsQN8L5
 rqWBM9xIq7mXmQeRzhwkXkZiL20ruNmuXyXy4WdJL71xnsGIpYpb6E6I6
 eZTTYRJftltQvKfbjDiKHIKVsDzoUWDPtfeb/tY1hf1YnAHK8AwMw1cl5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="338784184"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="338784184"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 12:24:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="745508784"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="745508784"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 20 Mar 2023 12:24:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 12:24:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 12:24:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 20 Mar 2023 12:24:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 20 Mar 2023 12:24:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f4VR/iSubPq5dH++elA8vH3scG7ZFBN7iP8Uj1kzJ1mtO1UHA391xvUkolVAkng+gQgIfatxeJRJqFMko6HYmDgebpMsY9bT7V4nTZ9kWKjRImavjcfE8XybjHVyXzK8cg+Dc+rBIIujAGBbxA2F2P6ElpkuVpUnyR95q7/eR0c8nO69MCo+Dwq1s3dm3xgBYROYqY9pg3x2ElAmI8nd/kH0un+/K7AFM+9uB3skZpJBr3gPKHM+CE9MuHK1PznbmX/o1hlbeNPWovDUJGb3N5zplUXSruXEEMPyYLhu2HsdPkBF828S5AhQTzhX56/MwuVzp4rDVDBUJTlpfU3FJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C4x5r4O9GG1nPlxOe4Yjp8uqgC8ewin5kBljNIsBBKw=;
 b=oCkvbV00NZWAx4ti4OqgGEY4EdzsDo69SdIC3dnlvPkpRdkxwUIbZb4uYJ1xeg8WEenTiLPK9zox/3j+RFqEmT5ubsZHVV0R+Wvy01gw0o+/KGZlpI4oXadlNYmXzmMrTYAc2+V6d2PBr9Wl1MeXgEp8Ax/cPgZu8KaEyE2hRxJ93EFmyRWSKyY1G7fwnVKErsn9A+WW7wT2JsLYfgrkaYEWrxojJgb9kXkKTlwFyIhua00eGd+QtSYfslCkogWaxS4jzPpty6W4Bfk7BuQz6gszKOfKUxzFQaewgzdGJIz3Fdkk3mcWmxqKD3DkqNcixE800JiHtg9lJMUvK8LVDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CO1PR11MB4868.namprd11.prod.outlook.com (2603:10b6:303:90::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.37; Mon, 20 Mar 2023 19:24:40 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6178.037; Mon, 20 Mar 2023
 19:24:44 +0000
Date: Mon, 20 Mar 2023 12:24:34 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZBiy8icI4foN5Eo7@orsosgc001.jf.intel.com>
References: <20230317231641.2815418-1-umesh.nerlige.ramappa@intel.com>
 <20230317231641.2815418-2-umesh.nerlige.ramappa@intel.com>
 <87bkknafta.fsf@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87bkknafta.fsf@intel.com>
X-ClientProxiedBy: BYAPR06CA0013.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::26) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CO1PR11MB4868:EE_
X-MS-Office365-Filtering-Correlation-Id: 6cfb8cf6-7c47-48ee-be12-08db2978c29c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ujFSyt3cj/TcF/J4RGU1RUzCsO6xjpu18Z2t52Yy98WYqPPzJ2qUcShFR3fOnIoE8uqNhNy+M5vHeo4zqsg0cHAgG/yZvQLWBqvQgIeI6YKQ2iCNTSn/GGjqb/0OqQPS+cm+JUt/7nZwPWd5fmIQdp7qD+ygNjBzZh7/XQ72W+DxrO2NH4/NbfA+KI5aZZQy0n5jcEG69L+QqSMj1V+uFSd+u6yMoviqGaakrsz5E0BJX0WpKqtLJZF7Ob4HF1Brm4tZ83M27ghGxi34eWzabpf57qfK1IF7ePJjLHhaWd7j6iKBdXx93VDM5u8DWgQdYTSAg1p3Gr3/g6eDrOBLAV28xMfyOvm1W43F9K0GMqiug5V1AVGFFLsaFy+ZZiET0yFFzINRMEivPOvxVtfde1EqyD+nPg8SE9qOByDdBLI82Y6p7Bf/4LI0mMn/iWgdAX4edb4QXlKOem4AAncu+krsXriIGoiyFLxn7ljvWbmC1S0kSLI+p49VbA8dQ8kTUZcMMK/R1zA1TKY0q/hjY5dX+gcIq58xJYCXebs6ulHtrUwJ7QoBKNpk1NOypFFu1NQ/XyHfPE3McEOGtYKHpgH0wtQ6pyR/oY1fSbC6DkPjC6/8Mj+6UYb5O1++2XYKSvR4ttvFL3vy/hDV+nn+ew==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(136003)(39860400002)(396003)(376002)(451199018)(6666004)(82960400001)(6486002)(186003)(6506007)(6512007)(26005)(38100700002)(478600001)(2906002)(86362001)(83380400001)(8936002)(316002)(8676002)(5660300002)(66556008)(4326008)(41300700001)(6916009)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHFjY1RsTmFoMjQySjJ6cUJIWlVXR2pORGY1SVlteU5MdzgxMFlxRlhQQnlB?=
 =?utf-8?B?eTRWcDBXM290RFYxNmxZb3FDZm1XUnN2QmxISmRvUUZyTlFheGpzMXJjT0tR?=
 =?utf-8?B?bFlBSkxkUDlRV0dQVXNtTkhCNXNjZGtKaFFKZVluOVlGNzdNR0xZR1AraGtT?=
 =?utf-8?B?Ulc5MUwxa0VQbHZYcmxDNTZvQWkwNWhXOGhBenlJZ0tzMHlORnZUZU5HZ0VI?=
 =?utf-8?B?Skxuek9yQjNxNE80TDVZU3hWVTF0UTEwOFJIODgxaEJkZUNYZHJDalhSM2Vx?=
 =?utf-8?B?Q0dmSGNjN1J0Z2JKRzlLNkJ5NWFKNnVDQmZGcUttMHJQV1JEMk9WZ0ZJWmc2?=
 =?utf-8?B?Nnhib2tkaWtDNWdKd0psTTFONWJCb2dHV212ZlY0VEhyS21FWVBmRS9oNjQx?=
 =?utf-8?B?aitteGxRREZTMjhxME5nTFZJQUtWQjRoVzlET0FHMmNYbGQ3bTdiNjNkQjgx?=
 =?utf-8?B?c3lCU3YvdWsxMGk2M0pMY01IYVFrWFROZjdZeVR5UjBJY2pCUE9jV3pxNUQv?=
 =?utf-8?B?L29qOUJuUEhqdk5FZm1RR1RUbW1CODZpVkNreGk3MkVJVjFOejNHTE9oNW9Z?=
 =?utf-8?B?a3Q2aXNWT2lNYzFsMUNEenpSSTBBN1hTUUt6MzdlMG4yUUJtMzNEbXRtV0Iw?=
 =?utf-8?B?TVNIZERhblZZNTJkTzNib3JtNkpqQ1B0STVuV09RZjc0WGJsaFBsZVk5dGZp?=
 =?utf-8?B?OHhBd1RtYmdVZVVHRXFPZmtheHVqVXB0Q3cvOWdUVk83aHYyUTJ0bC9oeVhm?=
 =?utf-8?B?M1AwTU9yUDVVdmpBd2IyWDhiSVozMXBya0lmYllqa3pMRzU3WTMvWCtMNkZv?=
 =?utf-8?B?bkNYcUUrQ3l6RDVpTkpFVTJEQkN2R3VKS3RpUmxta1ZYUHlvVU56cDAyWnF6?=
 =?utf-8?B?NXBXTFNHcVNaakxXV0laNzdqRVpYQlpicGJ2Ti9tWGNvQlJ6YzhXRTludlVt?=
 =?utf-8?B?QzlVWHA5T3ZTUFM0NnR1UjhjRTlRd1pTb2JHUzJWK3UvOFFiYUF3OXorWHpr?=
 =?utf-8?B?OXpmL2ZiclNBaG5PVytoMXVmYlVoVmNxcmpaNXFFcnlZSkljYlUzVGJ1SmY4?=
 =?utf-8?B?dlpHNTBaSE0rL0VtM2xXbncxc0VSWW9YbWJ5ZU4xMGc5Vmd0OFYvYy9KUEpp?=
 =?utf-8?B?MFlRa2NkR0RFeFgvN0Uyay8rRmJEMEFOWUNIZGFFMFUvd1E0UGRKcGdJZGJx?=
 =?utf-8?B?UVAzUWVZUjV5N3NEcFpldEVXNVIyYTVsdGVJaWVwSndNM04wU0ZPc0pKVkxB?=
 =?utf-8?B?WHlEc3ZFZmtFdXRpbDhZUzB5YjJvZHMzQjhPUGlNZkxHWmYrTThuN0V1d0NK?=
 =?utf-8?B?b2NwZ1lLNko1dTJQQ2hJRkdZVUN1QUVQNVAveXk4bitNNzhkTnNyN0pDQXNC?=
 =?utf-8?B?aktacUxsTldXbTRXYXozMi9zakxKSHBwZnRqYit5ZEtpaWF3UXlTMEFYbnlR?=
 =?utf-8?B?QmV0K1FzQlN4SGVWaWVoTEtxcE4xMS9vZ2huMkJIRGRKQUFTRWJjalBOSW44?=
 =?utf-8?B?MWZoa0F1QzhWN2M4VnpTZFgzc25BaHJtakxFd21YU1ZJbWphM3FCUkxTUW5D?=
 =?utf-8?B?OUZER1hLM3hRb3hzZmUwSERvRXFmT2ZDZ0N2WkdNRDlFMVdVKzFSTmg4WVB5?=
 =?utf-8?B?enJCQUhOdXN4RXF1SkJEL2hKcWhYaUFLcmFJZklzNU5OMThjaGJpRDY3T3p4?=
 =?utf-8?B?SXpVNDVMU0lkNTV5UWllNVlpaWJGdGJ1MjV2QWxNRHljOTM2SkRjOGZyQmRJ?=
 =?utf-8?B?ZjJOU2VGMURBVnZXZFZNUC84Q1hNUXhMdmt1S0N6NXhZODl4MHEycUxSZGhq?=
 =?utf-8?B?K1J6SXA1Ukk1Rmwvb1ljdG9pS3pGZWVGcVN5QVF6Qmd6Sm9aVm5ycUlIQUJQ?=
 =?utf-8?B?MUtWZVA0ZEhQUENXRkdLMG1XUHc2RG1RTmJXaTBDTEhuMGc3cUV1NGc3WkRh?=
 =?utf-8?B?ZXB1ck9XcG5oeHFVRWNKRDlFY0pZY3owV2tQZmZsSjU2ekxybG5rZ1dTOUN6?=
 =?utf-8?B?YTZMV1BITFJhbVBTTWlmb0M1QVlkNERSUEUwVFl2TXpnWkkrUUFUTnJMWmJL?=
 =?utf-8?B?MmljOHdwT2lwNWNrOWlDVFNrLzU1RUdNWUZSSEFpallnNFZZSXZwYnFteGpt?=
 =?utf-8?B?Z3Nnc1dBaTk2UWVzaHZjZlQxZ3RVMUN2VktBdXQ2NWFRVHRCNGF4UkVaSHlZ?=
 =?utf-8?Q?C3jCG7tA9xE7UP8lPqL3A7U=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cfb8cf6-7c47-48ee-be12-08db2978c29c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2023 19:24:44.5298 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rjtrJXd7o/NxqZeAvLi9AQzjyohm9a9iEERs0Mreya4xR99MmXPqiCIFEHQ/XO2djmXWOdzmK2xuT4Dy/CQDaFwJjYlw2L2x1Q4iW2G2jwQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4868
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 01/11] drm/i915/perf: Drop wakeref on GuC
 RC error
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

On Mon, Mar 20, 2023 at 12:16:17PM +0200, Jani Nikula wrote:
>On Fri, 17 Mar 2023, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> wrote:
>> From: Chris Wilson <chris.p.wilson@linux.intel.com>
>>
>> If we fail to adjust the GuC run-control on opening the perf stream,
>> make sure we unwind the wakeref just taken.
>>
>> v2: Retain old goto label names (Ashutosh)
>>
>> Fixes: 01e742746785 ("drm/i915/guc: Support OA when Wa_16011777198 is enabled")
>> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
>> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_perf.c       | 14 +++++++++-----
>>  drivers/gpu/drm/i915/i915_perf_types.h |  6 ++++++
>>  2 files changed, 15 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 824a34ec0b83..283a4a3c6862 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -1592,9 +1592,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>>  	/*
>>  	 * Wa_16011777198:dg2: Unset the override of GUCRC mode to enable rc6.
>>  	 */
>> -	if (intel_uc_uses_guc_rc(&gt->uc) &&
>> -	    (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>> -	     IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0)))
>> +	if (stream->override_gucrc)
>>  		drm_WARN_ON(&gt->i915->drm,
>>  			    intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc));
>>
>> @@ -3305,8 +3303,10 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>>  		if (ret) {
>>  			drm_dbg(&stream->perf->i915->drm,
>>  				"Unable to override gucrc mode\n");
>> -			goto err_config;
>> +			goto err_gucrc;
>>  		}
>> +
>> +		stream->override_gucrc = true;
>>  	}
>>
>>  	ret = alloc_oa_buffer(stream);
>> @@ -3345,11 +3345,15 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>>  	free_oa_buffer(stream);
>>
>>  err_oa_buf_alloc:
>> -	free_oa_configs(stream);
>> +	if (stream->override_gucrc)
>> +		intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc);
>>
>> +err_gucrc:
>>  	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
>>  	intel_engine_pm_put(stream->engine);
>>
>> +	free_oa_configs(stream);
>> +
>>  err_config:
>>  	free_noa_wait(stream);
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
>> index ca150b7af3f2..e36f046fe2b6 100644
>> --- a/drivers/gpu/drm/i915/i915_perf_types.h
>> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
>> @@ -316,6 +316,12 @@ struct i915_perf_stream {
>>  	 * buffer should be checked for available data.
>>  	 */
>>  	u64 poll_oa_period;
>> +
>> +	/**
>> +	 * @override_gucrc: GuC RC has been overridden for the perf stream,
>> +	 * and we need to restore the default configuration on release.
>> +	 */
>> +	bool override_gucrc:1;
>
>What do you gain by making this a bitfield? It's already a big struct,
>and there already are other bool flags.

Noticed it now. I guess this is not portable as it's compiler dependent.  
I would just remove the bitfield. I do see a few occurrences of bitfield 
bools in i915 though, so any specific guidelines on when to use bool vs 
bitfields?

Thanks,
Umesh
>
>BR,
>Jani.
>
>
>
>>  };
>>
>>  /**
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
