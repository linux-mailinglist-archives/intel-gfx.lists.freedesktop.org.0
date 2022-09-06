Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 730D05AF2D8
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 19:39:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F44410E717;
	Tue,  6 Sep 2022 17:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DE6F10E717
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 17:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662485985; x=1694021985;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6eaUjQT2cjyl8FF/z/lY2GXeTLY0Y1XQygSKDg+30kk=;
 b=I5P7T/gkWlUaI/VoMRaKWkinRINgbeTM24mv6FCLa5oNrrmkNNvPVh0B
 ms63wG9Xp1yFv1HoI217kfU17Yers7G/mvOH37TBKi2btp7alCuHp6PuN
 T6nicw8mqpd+wTlq4Qn/ewJPKRrQnwCrnoxSTCUbGFqRfLSjv76v/qYKl
 VOFyhzCUj/rnZT7+HosgVnF5PUkyIJn9KMUdjL5ZIithfMZAdMg514MQy
 WZfC2gm5YlR6kqvTHVga/v5ku+sCpGeZydCPwd+OP+4h/bZY+er/nUvHW
 lkk0782e1nt+dXN7SXYTNnYKyKY0wOzRtnWDptXDwf3kNh30n4GeFdaPG Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="297444255"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="297444255"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 10:39:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="703295407"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Sep 2022 10:39:37 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 10:39:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 10:39:36 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 10:39:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=krbHG05cVVV3tdBN09iajiOoWp/cYVNs0m7qRxqS5vGuC4LNvzNq+FQPS108Mpr7HQibtI5a4+qYZY0XJMb2Vm6Md4U86Z4tGh7c2gqEdjpWIntdP686/6XIcI714VvPVOhjHrmFBq+cUsIeW28AmZJTYTggzcfvla4lpNcbDn/yWW1/odD41t7SXeGJpws67UhPa+8z6OSFbDqRbRpPHG3ikAdnaD3EuJMCXPWbiO4/9X/ASXhWtGRGfSlAn3zsD2N9lr2iGUB2lXNXVhR14mmT2gUJj4WTd1tLuyygzrwIOQmUZL9yn8dgdyuLEiqeN3TCn6vhudvQbMf1kGbBSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TYNtHLELYxItVQhIaNVFlLB1zcx2Ib0QnJ8RNQpDCq8=;
 b=HA7VCD108VevtkqNV2NHSnyN5XTH6ufIPO78zueYmoX2Kfn06lW7SM/3LCnpCiXGKxhor5LtHze+9YFEUmJ5fWTmVDN8wH5PYcjpyQJpnTHw/cttod3yzif+u62lktCyk/VHDtFoADVc2c/yLb3qoiJkiYR9MbEVasQ7guhgkZnAu8HLZBrmnOEvIvOuZuDkGNrL1yJGBfdiFuxmW+CxK9tyRZjB96Wzmug3VEbO7v1vfcGs8JSdZRrhJqzm60okI2C2TSWw+H6+0tK2nI0uNvDVJjZyrbZ70sW84yAOzlet/GrdqPHdCIuEuGGrd8I6/PX/kOJ1pgnA7aOpihIR0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 MN0PR11MB6036.namprd11.prod.outlook.com (2603:10b6:208:377::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.17; Tue, 6 Sep
 2022 17:39:34 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 17:39:34 +0000
Date: Tue, 6 Sep 2022 10:39:29 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <YxeF0b6ohtFcDXf6@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-2-umesh.nerlige.ramappa@intel.com>
 <9afc705a-87a1-c51e-b223-e32accbcd2fe@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <9afc705a-87a1-c51e-b223-e32accbcd2fe@intel.com>
X-ClientProxiedBy: SJ0PR03CA0390.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::35) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 849c45b9-96dc-41a6-cee9-08da902ec32f
X-MS-TrafficTypeDiagnostic: MN0PR11MB6036:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6hf20dy/cIgO/kkMuAHzHZ38RiutzXXyCusJ9idqJn5hTPTe6bbJYR+dWWacUHsgs7QJ0FIn0bFFIqC1MmPd06OZFXr8OKQOFpjYPnFgekc72+gqpiSgwjitIpWSkfZtREVe0bb7XAp7AyX0oeRKfBxqhQEneJ0I3G6GwEr0sre/Chw9ef8yBFq3PaZjCfeo3r4umChaYBRWkBrBU/MDESFhIaFT0PxI2hiX0gQT1yCMnyAGHjxzeQiZx+nRHYqQPAdnm8EBkMURvue05kyQ5o4xCQddALi4MblsM+5ltFdARnqZbxP13Efz8/pXnKSx6OVteB50NaFer9uIR46nhznV4WX4H3FoihBg2zb2sXCO0nAWVINe4OiKh+gk0SHdlqpYWiBPQRnOS8WfO+J2Pav9M198JgSf8pzydD9kqfwyGznu6uwAlxrUpqg41IQjWfgwtj9/hkmQuWn0iMEk60qv1d6rM+WdHunZKOYQUplGHq9aDRu0inv7CNTt6G3xfDdDC94z8xzcy9pp/VjB6lUp9nCZVRGdTl634aTziOoUlmbR/gD6z+PlLxnS0AW38vwLitZnGVlTbAGvtN75ymGLIFppNgWU88ydK2aAKlu3hrylR4aUFKAmgvfgVwDn2cLntNCEcNlPQZduvuX+YsuVIVhuCY7UATmIPvdiZ560z7lRezWf2h0sNDsLNW4Y8JbNJxTxsoI9+w3/GCUGYHLQjaNLwQa34h/fJRkrwUGfdlyLHrByeb1vu0m7fL21
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(366004)(39860400002)(136003)(346002)(396003)(376002)(8676002)(66476007)(83380400001)(4326008)(66556008)(66946007)(6512007)(8936002)(5660300002)(6862004)(41300700001)(6506007)(478600001)(26005)(6486002)(6666004)(186003)(9686003)(316002)(6636002)(86362001)(33716001)(82960400001)(107886003)(38100700002)(2906002)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?LzhtMTFIaFFZWUN1L0p6V0t3c3FoK2RYSTN4YkQvWjB6YVZaaUlMTHl2c1Ew?=
 =?utf-8?B?UTdsb2JwbkxYd1lSRjNUaUs4N1AwU21ZcTBXcWFTb0MwZmNUcEhwM3VjRXdC?=
 =?utf-8?B?ZkhqZXo3YWx3TzFZazZMT3Z6bTZGYUFxRHFTNlRkU1c0bWlqQ0hBb0NsT0JM?=
 =?utf-8?B?Qmh2YlJJZld0VW5Idzl6Q21lRXA5Si8rQTh1UG1jTDdUNTBsRlFiUnFSRDZh?=
 =?utf-8?B?cGhhZVNqRWxoZXo0YWYwQmlwcklhVGNWY1lyVG5KbHhoMXRZM1MvTCtHMW1i?=
 =?utf-8?B?N3JrSG5tK0xmem5aWkxubEtOYnNnYUVaM2dMY0M5QUFjVmZqQ25RcXlaODZa?=
 =?utf-8?B?U0EvU25MWGwrR2d1SGd2V01TSFpNV3lvQlMxb28zcEV3ZGhnOWswUmtpS0dH?=
 =?utf-8?B?anh0TUJGMEhqeElHNkZUQWZQQVltdndRdmlZb0VIZWF5WSthQ2YwdUUxSklY?=
 =?utf-8?B?L0dNZlJRQU8yR2ZZU01uTjVyQXk5S3FqK240RUdpbnZNTThWUHI4a0UybFEw?=
 =?utf-8?B?ZlBQNnlVL3VNazUxUGgwMnNjL282cHY3YWFMQTh4czdQU0lDajZEYjJGREll?=
 =?utf-8?B?Y3FWaExRTDFBZ2pzVTV2M2tOZXVjTFpDVko2OVloY2R3UHltaVp0OFFMMm01?=
 =?utf-8?B?QTd6aG4rK3NnT2dkdUt5MEJ3SGR5bTYvbFdwa3oxcG1YYUZ0NklMbW1XOUc3?=
 =?utf-8?B?TGhQQUcybG9KQktQMDk5anEzb2hOdEVVMEtPSnViUC8xNFNMVE5GeUtDcjBC?=
 =?utf-8?B?WmZoZnhvd25CczhNcHhJYytsSFFxbXE2L25LYmdlb1psYkdnbStLcWhxbW5L?=
 =?utf-8?B?VDd0eFNOYjZlUGgzZ2lXTGxJTWtaVklMNGV2SWtTV0Z4eUNDTEpOOWRHaWx1?=
 =?utf-8?B?dGh4dktWbXFGMytZdGI0ek9tN3FtTUtBUlpTbXJsc3MwcHdpUUxjT2E4TWhD?=
 =?utf-8?B?STYwOEpjcW1qYjNZOFpOUlNsVG9UVFhsKzZ5YkZsZm1lZ3hwSzhxVG92Si9E?=
 =?utf-8?B?V2pWT2xTRUcvVm5ibUJDL1AzRXRHL1FDcVRzS2FqelJLTTlCbFI5Uk5WODhT?=
 =?utf-8?B?MThTQ1RzYVVVRmtHcllqK1BtcWNUeGJsOWpYSnM2bmJVcTZrUjRiUXVEVE1O?=
 =?utf-8?B?WThaTUkySWJJZVlxZW0zVWlRb1JSMGNMMm41MUVtSmJ5a0JmbjZ3eEpkakNB?=
 =?utf-8?B?bnpsNGk0T0VTUzR2b0tVMGozK2xaY3FMUTVST3Q5dXdGeHBNMkFCUEpVMmFC?=
 =?utf-8?B?T25zVFRyenljbjZHV3VCMGZGeTU2dXpEUGkxVEZveDk0eUx6ZnA4RzNTdklw?=
 =?utf-8?B?b0RnKzZYOTYwc0htVGZLNHpzWDg2WHVHTmJnNGs2K3RvUDdVRUQ3ak54bHlR?=
 =?utf-8?B?R1BaRVJKNHRRejUwbkpCL2dRUkhnMGJhVHdhZjZweGJTRDV0WTFKSU14ck4y?=
 =?utf-8?B?NGlleHNxNnY1eXk2NzBwaUZrRm10WSs2bTVrU1l3bXNsdG9mVVR0cEV5azZL?=
 =?utf-8?B?M2Mvb3FOSDJldUZoUW1Pemo0blUzd04wTjJBaGgwcXhZOU95MDlHWFY2MTM4?=
 =?utf-8?B?UkJRUmJqRURJdWVCTlpOYU02ZVhweERLSzdHeWR2amdGZUJlUW5rUVJkZHNE?=
 =?utf-8?B?NEZ6QkVpbm4yOVJIM1hnNEI0ZXAxUXQwdGp2dEVqSnlSSlNuOVR5RHROZTAr?=
 =?utf-8?B?U0VqajFoYkR4V3dqOW1KdTVqMHZnRUlxMlBLVm0yYXBROHdEbThFTHc4VEYx?=
 =?utf-8?B?L0k4RnpzWjdEd3JNNkJQcUxFRStxckY4aWpZcmk0L2dlYXZWUFRoUVNWUitp?=
 =?utf-8?B?ZjJYQTRLTDVNUmpJZ01FTWZIQmxveCtQcjhONEtsd0cvM2V3TW1iVW1FYWMz?=
 =?utf-8?B?RERyckFTdEZYUFpLc3lFaXczd3JiUnhUNzMraWlzRndzNWZ2a1ExQUdrS2l2?=
 =?utf-8?B?dmh2TzBLZFIrd1ppN0xEUkJxZWlGVTRSbHFLZC9LczZYZ2R1bVBlNk9kYjFh?=
 =?utf-8?B?VThzZUxQSGNQdXh3R1Blc2tLY0I0V0dkN25kWTd5ZTgyVUY2YjlqaTRlak02?=
 =?utf-8?B?R3ZtUC82M01SSU1uSUhrOUJ2SU5IOVFFQzh5WHdCeGxjMUpDaUtsRHp6VnNW?=
 =?utf-8?B?OVVGaVJQUWVUbzUxYXNtL3RheW5CWDVRNXdGSSt6dlRMMUFybHJ0NDBnRjNU?=
 =?utf-8?Q?15AanQbfp3F/qJCWAbDAHjI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 849c45b9-96dc-41a6-cee9-08da902ec32f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 17:39:34.5182 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f5SPFUTs3OC3qQiP2FwuL4D5mbCvQ2602DpmZet2GwZNevPKh7oXWPPdYurKYjRATmi8Ip1KEwnekTSrKYTGZUOTMMcmDdKggjrh5mI82dA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6036
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

On Tue, Sep 06, 2022 at 05:33:00PM +0300, Lionel Landwerlin wrote:
>On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
>>With GuC mode of submission, GuC is in control of defining the context id field
>>that is part of the OA reports. To filter reports, UMD and KMD must know what sw
>>context id was chosen by GuC. There is not interface between KMD and GuC to
>>determine this, so read the upper-dword of EXECLIST_STATUS to filter/squash OA
>>reports for the specific context.
>>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>
>
>I assume you checked with GuC that this doesn't change as the context 
>is running?

Correct.

>
>With i915/execlist submission mode, we had to ask i915 to pin the 
>sw_id/ctx_id.
>

 From GuC perspective, the context id can change once KMD de-registers 
the context and that will not happen while the context is in use.

Thanks,
Umesh

>
>If that's not the case then filtering is broken.
>
>
>-Lionel
>
>
>>---
>>  drivers/gpu/drm/i915/gt/intel_lrc.h |   2 +
>>  drivers/gpu/drm/i915/i915_perf.c    | 141 ++++++++++++++++++++++++----
>>  2 files changed, 124 insertions(+), 19 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
>>index a390f0813c8b..7111bae759f3 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
>>+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
>>@@ -110,6 +110,8 @@ enum {
>>  #define XEHP_SW_CTX_ID_WIDTH			16
>>  #define XEHP_SW_COUNTER_SHIFT			58
>>  #define XEHP_SW_COUNTER_WIDTH			6
>>+#define GEN12_GUC_SW_CTX_ID_SHIFT		39
>>+#define GEN12_GUC_SW_CTX_ID_WIDTH		16
>>  static inline void lrc_runtime_start(struct intel_context *ce)
>>  {
>>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>>index f3c23fe9ad9c..735244a3aedd 100644
>>--- a/drivers/gpu/drm/i915/i915_perf.c
>>+++ b/drivers/gpu/drm/i915/i915_perf.c
>>@@ -1233,6 +1233,125 @@ static struct intel_context *oa_pin_context(struct i915_perf_stream *stream)
>>  	return stream->pinned_ctx;
>>  }
>>+static int
>>+__store_reg_to_mem(struct i915_request *rq, i915_reg_t reg, u32 ggtt_offset)
>>+{
>>+	u32 *cs, cmd;
>>+
>>+	cmd = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
>>+	if (GRAPHICS_VER(rq->engine->i915) >= 8)
>>+		cmd++;
>>+
>>+	cs = intel_ring_begin(rq, 4);
>>+	if (IS_ERR(cs))
>>+		return PTR_ERR(cs);
>>+
>>+	*cs++ = cmd;
>>+	*cs++ = i915_mmio_reg_offset(reg);
>>+	*cs++ = ggtt_offset;
>>+	*cs++ = 0;
>>+
>>+	intel_ring_advance(rq, cs);
>>+
>>+	return 0;
>>+}
>>+
>>+static int
>>+__read_reg(struct intel_context *ce, i915_reg_t reg, u32 ggtt_offset)
>>+{
>>+	struct i915_request *rq;
>>+	int err;
>>+
>>+	rq = i915_request_create(ce);
>>+	if (IS_ERR(rq))
>>+		return PTR_ERR(rq);
>>+
>>+	i915_request_get(rq);
>>+
>>+	err = __store_reg_to_mem(rq, reg, ggtt_offset);
>>+
>>+	i915_request_add(rq);
>>+	if (!err && i915_request_wait(rq, 0, HZ / 2) < 0)
>>+		err = -ETIME;
>>+
>>+	i915_request_put(rq);
>>+
>>+	return err;
>>+}
>>+
>>+static int
>>+gen12_guc_sw_ctx_id(struct intel_context *ce, u32 *ctx_id)
>>+{
>>+	struct i915_vma *scratch;
>>+	u32 *val;
>>+	int err;
>>+
>>+	scratch = __vm_create_scratch_for_read_pinned(&ce->engine->gt->ggtt->vm, 4);
>>+	if (IS_ERR(scratch))
>>+		return PTR_ERR(scratch);
>>+
>>+	err = i915_vma_sync(scratch);
>>+	if (err)
>>+		goto err_scratch;
>>+
>>+	err = __read_reg(ce, RING_EXECLIST_STATUS_HI(ce->engine->mmio_base),
>>+			 i915_ggtt_offset(scratch));
>>+	if (err)
>>+		goto err_scratch;
>>+
>>+	val = i915_gem_object_pin_map_unlocked(scratch->obj, I915_MAP_WB);
>>+	if (IS_ERR(val)) {
>>+		err = PTR_ERR(val);
>>+		goto err_scratch;
>>+	}
>>+
>>+	*ctx_id = *val;
>>+	i915_gem_object_unpin_map(scratch->obj);
>>+
>>+err_scratch:
>>+	i915_vma_unpin_and_release(&scratch, 0);
>>+	return err;
>>+}
>>+
>>+/*
>>+ * For execlist mode of submission, pick an unused context id
>>+ * 0 - (NUM_CONTEXT_TAG -1) are used by other contexts
>>+ * XXX_MAX_CONTEXT_HW_ID is used by idle context
>>+ *
>>+ * For GuC mode of submission read context id from the upper dword of the
>>+ * EXECLIST_STATUS register.
>>+ */
>>+static int gen12_get_render_context_id(struct i915_perf_stream *stream)
>>+{
>>+	u32 ctx_id, mask;
>>+	int ret;
>>+
>>+	if (intel_engine_uses_guc(stream->engine)) {
>>+		ret = gen12_guc_sw_ctx_id(stream->pinned_ctx, &ctx_id);
>>+		if (ret)
>>+			return ret;
>>+
>>+		mask = ((1U << GEN12_GUC_SW_CTX_ID_WIDTH) - 1) <<
>>+			(GEN12_GUC_SW_CTX_ID_SHIFT - 32);
>>+	} else if (GRAPHICS_VER_FULL(stream->engine->i915) >= IP_VER(12, 50)) {
>>+		ctx_id = (XEHP_MAX_CONTEXT_HW_ID - 1) <<
>>+			(XEHP_SW_CTX_ID_SHIFT - 32);
>>+
>>+		mask = ((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
>>+			(XEHP_SW_CTX_ID_SHIFT - 32);
>>+	} else {
>>+		ctx_id = (GEN12_MAX_CONTEXT_HW_ID - 1) <<
>>+			 (GEN11_SW_CTX_ID_SHIFT - 32);
>>+
>>+		mask = ((1U << GEN11_SW_CTX_ID_WIDTH) - 1) <<
>>+			(GEN11_SW_CTX_ID_SHIFT - 32);
>>+	}
>>+	stream->specific_ctx_id = ctx_id & mask;
>>+	stream->specific_ctx_id_mask = mask;
>>+
>>+	return 0;
>>+}
>>+
>>  /**
>>   * oa_get_render_ctx_id - determine and hold ctx hw id
>>   * @stream: An i915-perf stream opened for OA metrics
>>@@ -1246,6 +1365,7 @@ static struct intel_context *oa_pin_context(struct i915_perf_stream *stream)
>>  static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>>  {
>>  	struct intel_context *ce;
>>+	int ret = 0;
>>  	ce = oa_pin_context(stream);
>>  	if (IS_ERR(ce))
>>@@ -1292,24 +1412,7 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>>  	case 11:
>>  	case 12:
>>-		if (GRAPHICS_VER_FULL(ce->engine->i915) >= IP_VER(12, 50)) {
>>-			stream->specific_ctx_id_mask =
>>-				((1U << XEHP_SW_CTX_ID_WIDTH) - 1) <<
>>-				(XEHP_SW_CTX_ID_SHIFT - 32);
>>-			stream->specific_ctx_id =
>>-				(XEHP_MAX_CONTEXT_HW_ID - 1) <<
>>-				(XEHP_SW_CTX_ID_SHIFT - 32);
>>-		} else {
>>-			stream->specific_ctx_id_mask =
>>-				((1U << GEN11_SW_CTX_ID_WIDTH) - 1) << (GEN11_SW_CTX_ID_SHIFT - 32);
>>-			/*
>>-			 * Pick an unused context id
>>-			 * 0 - BITS_PER_LONG are used by other contexts
>>-			 * GEN12_MAX_CONTEXT_HW_ID (0x7ff) is used by idle context
>>-			 */
>>-			stream->specific_ctx_id =
>>-				(GEN12_MAX_CONTEXT_HW_ID - 1) << (GEN11_SW_CTX_ID_SHIFT - 32);
>>-		}
>>+		ret = gen12_get_render_context_id(stream);
>>  		break;
>>  	default:
>>@@ -1323,7 +1426,7 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>>  		stream->specific_ctx_id,
>>  		stream->specific_ctx_id_mask);
>>-	return 0;
>>+	return ret;
>>  }
>>  /**
>
>
