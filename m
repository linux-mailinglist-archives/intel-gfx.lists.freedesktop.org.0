Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E69A6A2262
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 20:37:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA78210E252;
	Fri, 24 Feb 2023 19:37:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AE7210E252
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 19:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677267436; x=1708803436;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KEEYUgVTurqArmjFCAU7a/wZL0YSyQXBB8h3ratMXzg=;
 b=l16H4pPB7ZCVuDD9evl6moGuNcjzn/qK3EnEex7M3mlwygwLcvLI/t8W
 AzrZCpp0b9LYyXXe4ngSwZXc0ZPZ9BKKm/6RdtzO01QDTsSQfv2LcWIih
 MtCzPXGgPWCY6/LN2yPxeYe4vJtVcO4pHqH0Mxg3edlTqYrVZQu0F4Prn
 q9/MuFxS1DGnnXH+sg/a+kfGXWFfwUsiGNNF0of834G2SHYQXqCLpl7ro
 oc98BShBCauS/jmtFXduVVHQ7F86q0bUAtcRQG4wi6Xq9SVBg5EEHKJiC
 /vq6NXHGY1DKtxBYZKATdJ1+UwenEsWNl1ajsxOPCp/K67LU8BG6cpD+d A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="333571509"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="333571509"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 11:37:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="761887972"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="761887972"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Feb 2023 11:37:15 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 11:37:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 24 Feb 2023 11:37:14 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 24 Feb 2023 11:37:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dBItKppL9avz/Wr0DMvArEP9edewJjsw4dbq6084drwVsSTyTmuL1NXFemSU+p1foQIERM/QO91XCFrX8OoPu5lRXHWfuc8Gg+PGtP7ytOjM0iJ0kNZ/XVv83A3FLTpihvsoWQ4ofs2PuTX40Mwg8a9zIntsVYgsK8w62ZvypaBKIxJZO/Z2bGrxTiVOLvLJOCISnFjzagAUH603/0IZKr4qNDeRDBef0o6FAM9pfF8onP9Ke/1A15oTtbzGdwnZxUztUjtli8dFiNn7jRGimXDoa3y4kqRInoToRzINoxSXno7D4Wu87xUq18bnGNntj7m7Js9McdMmyEMhPL0GJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OhxSGXbSBgoUKzyNLlkhKiJ68vqQ3DOkMY/s6k/I0sE=;
 b=b+akaZlpkUNkkmLmVHgUEs0R89MuBDGdxK+zwDV+m6cSAxIqvaPsnfzORxO+VPenaKjpc6zs54eaNqJrItwzgaqxZizVmiq/wW25hjdfERonXrJaFiSW76dngsvgWg0f/LuxCKO/pF1Vk2P8TayTBWR9D+Uaktkz0asCWhHGeY7DTjnLoVZMVCG+n4Lz0TZ4RCwvqSNfULCNWzAYKTbHc8KDuGa1xTpSrTUqRz0GRhjiXmdDp62kUFm6qMKaKeXtZmIsjUYlt3vsDm5iH5u+NmEOeU1AUPg+d8gCl1WkKbaoZNr5hHqPEWhjipuaa+iX3j/Y7DQGdS05Ksd3lILoyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 IA1PR11MB7296.namprd11.prod.outlook.com (2603:10b6:208:427::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6134.21; Fri, 24 Feb 2023 19:37:11 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6134.024; Fri, 24 Feb 2023
 19:37:11 +0000
Date: Fri, 24 Feb 2023 11:37:01 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y/kR3aB0vG89p4dL@orsosgc001.jf.intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
 <20230217005850.2511422-9-umesh.nerlige.ramappa@intel.com>
 <87a616bmne.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87a616bmne.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR13CA0119.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::34) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|IA1PR11MB7296:EE_
X-MS-Office365-Filtering-Correlation-Id: 39a01594-4cd4-4272-0f6a-08db169e85ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4RfiIkLh+yumqekoQRTfq0x2CM+BjOmauwlpySYSVGuXu77v1PXfHx37RqcGraCR6lA/PdvSELdF5jDkQKMHIQkBVEIqLU4Uay7SdwW0KAoQd7zIlMdSYZuq+kzzaEmMwzcQqvMqcOlGo4ULUHZqvKeWYr/nYnfLE+8ZgPieATfPC4cq0n+6bFdmfKCcKHkfCo0mr15bhkjQkxXv1M+qyGT810NLr6hpCXmoYZuWEzHeIFoovOs4VuNGKQqr2ymEnBSEZXuh3VyG+xMcWZ0vx70KfG2eyfgngqIXgbrbBZaBByJU2ZTa/5o2Mn9MnU7BM8yshf0K2P82RVE9uIO6cXad68wireIRSEVclceY+GUVh8xXZHHvS8zWeONOErNzfajytSU+l5qg2+TSmSf+PAgc4SPnhMCtvucK1+DhQ9F5IjXDXSyGIVtstCxBNRcStQozHl4kNwBuEWdVvYZqrRB5dR2bsmzx8YwX0+ixJNiYR55Pb7nmsR5uQH7Yirb0mc1nKO9yEhwc/0HL3Bz3uTuOqpFIDoWY9HXkR9sZQQ1lmHfkhT1lQo9VkFql5IKMDRMZyf6eE8s3cFkLKAHq8g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(39860400002)(136003)(396003)(346002)(376002)(451199018)(82960400001)(38100700002)(83380400001)(6486002)(966005)(2906002)(6636002)(6506007)(186003)(6666004)(26005)(6512007)(478600001)(6862004)(86362001)(316002)(41300700001)(8936002)(5660300002)(4326008)(8676002)(66476007)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnFLZHJRcG1rV0prOTJDTlpmUmpEQVd1UDVMQ0xncGY2OUVTYkxNKzMwVTNr?=
 =?utf-8?B?Vm1CS051WWJ3bEJFNDBCTGJFN2FvZWhSd3B4SHdOdllPL0pwYXczSFdsTmUr?=
 =?utf-8?B?eEZneDhiTlAvSUlOMXNJRjNLK1Ewa0RpaDdZZmhrY0pCTzFsT3c1YW95cVAx?=
 =?utf-8?B?MmhwU2FOM3BCUWYxYmFHZUIvcFdYc0NDc0dJMHR5MjlZdGVETjY4ZEsyWHNZ?=
 =?utf-8?B?eVR0NXdaM2QwTHVkV1B2QmFCMjJ0VlVQelBGOTNGZnlkbWY3WElRYXEvTTh3?=
 =?utf-8?B?T0FhV1cyR0Fvd1U1UnNsMTBkVFRrMVBIdGhJTjRZdzNPZVlBcDJpc0x1VXcz?=
 =?utf-8?B?dXFzN2tQWWdsd2w5bld1Wk1BdnNleTB5eTllalRHZWp5VFpGalRBMjhpRG8z?=
 =?utf-8?B?VFFNamgvcDU3Y1N3YUFpbnYvMVVGWCsyODJ1NTZaLzVEL3drbGthSWRLMjZs?=
 =?utf-8?B?M2JhOTNyOUZ3a2ZUSHJFOEl5alRsSnNvbWZkelcrTG1LSlppeWdVdEwzTUto?=
 =?utf-8?B?ZmtPMWRtUjZMaFRXeDRGSUFYZUU2cHBtMVp5RkFWdCs2Ylk1VU41dU5CVTBT?=
 =?utf-8?B?Ty9xLy9QdkdFZEFIbGhWTmsxOEJhNTl0YmVaeW0yZ0dLMEdyTkpTMTBFSXNG?=
 =?utf-8?B?bk5VUXc1V2lIYU82QWdQU21kRFlvNklteEV0Q2F0ZzB3c1JCOTZqRkpNb2hF?=
 =?utf-8?B?a1lOTzRXb3pDZTBVYkV4L0MrelZMVlBNNDRFaDM2Sldld3hvM3c2UXN2WUN5?=
 =?utf-8?B?bDczU2U2L1B3VStjSVZaUHYzYTBtQmVHS2F5TTFuTXlqd1lDVW81amJ0VWJT?=
 =?utf-8?B?a2V1ZnlFQ1BHSVVvcUFpaDR2QzFHeGcvSHBhV0Yzb0ttV0YwOTJpNFJLdWlq?=
 =?utf-8?B?KzM2VE0yckVGc08zekI0Z0ZjemMwZUtXdG8xandhaWN3Z1g5ZW9rVHltSlY2?=
 =?utf-8?B?cHhpUEFvVXAxUVpmZzRPQTBzV0J6aWc4SloyYnN5SlpwZHVXc2phVkszbzdr?=
 =?utf-8?B?aHZyckxxNnNBRjBaZ3hLb01GWWJUblcxSGtVNklEcFZGZGdBeWxCQ1Z2dWJZ?=
 =?utf-8?B?UHJtNktJOXBpWW5iVDlmaVlNTjFGNjd3VXpBN2doVy9qbDdlT0VmNFlaTEVz?=
 =?utf-8?B?OVlqaWFkb1VURnJ1L2xQNVlvdFgvNDNXVWtkTStNK2tESm85bHR0LzI3US8x?=
 =?utf-8?B?VnRHNkNiajVCa1dDTXhZeDMvZ2IwVnJuZmtNV2tWT0d0VkU0cjA2NTVISU5w?=
 =?utf-8?B?Tk5qNTl3RTdyajVYYk1xOUhQTDRFaW9tZ3NNWTVvdUVYTEs0c0RnQW5YUWRj?=
 =?utf-8?B?aW9uN29sQ3FDMnZGNk9Pb0haYzVRT3VJQ0VQdlBiZ1FyM3lSSElwY2U4dmEw?=
 =?utf-8?B?MThDemJCbzU4akJzVkp3eWNYTFVTaDRXY0lXZU5zVlI2bHNkcEkvaVBnZzNt?=
 =?utf-8?B?NFpKZ1M0RnVWQXFOa2hXSWhrc2JBc0pJNnhESVlJT1ZqK3pPdjBqaUZoNVFT?=
 =?utf-8?B?a3BmQWRtcjUxeXg4bkNxZ25odk9iaFlNZHVRaXNzYUl1YVZyTlk3NHd3RWJy?=
 =?utf-8?B?ZWVIZi9KelQ0UVZFcEdhZDFCQjRmMVFqMk1KZ0R2UW5hSTBsV1ZLKzF6OUhQ?=
 =?utf-8?B?ZDVBZm1pM0o3UWZidGVHLzZoejlXdTJyQ0w4UFl1MzdxOXVIL1E1dmNDMGRV?=
 =?utf-8?B?WTgzbDZtS0plc1NGM3pQR1BUUXZyc1loa1d6YktpUGZndmNoc3Nob2JCMGVN?=
 =?utf-8?B?NzNUM0JPN1FFWUJscVMvSGtRdkJvblkvMGtEWnhUbVc5RGxwV0U2bk54d0lG?=
 =?utf-8?B?RE4yaE82dzg4dkF0aTlxeVVScExVUFE0VWcxNXlJdzVlMWw1Q3pmNllINmpl?=
 =?utf-8?B?Rllna21zYzdqQ3pEaC93NlpYeFI0ZDdiWW8xcXlEYVNGVTFrVXhGd21mZGJh?=
 =?utf-8?B?cWJrMzg1b3hqdTFIaDJWaUZVOW9EVHV0QXhyMmpCdUM0OXpGMHlpVGx1UklG?=
 =?utf-8?B?YlA5akh6S0pVc21NMXN1NU9mRFA1WkdmT20vWTVCdTFJcDh6S2V2TmhvYy9M?=
 =?utf-8?B?TTJDYWtYZGJEaG9MRmZYeEVpRmNhWDNTWjk3QmNCNEZlSlNyYk91TWQ2M0Q4?=
 =?utf-8?B?VGJUZlRWeWg0ZHdjNTg1MWFsbGZaSWE4bWZWL3ZiOFVaM204RTVFNk80Qnl5?=
 =?utf-8?Q?7Z6qpkR01mrxYZQXi3QgHvI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39a01594-4cd4-4272-0f6a-08db169e85ee
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2023 19:37:11.2390 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1y5UNBjuUG0axFZaL6xyyGNH5bm/k/UGNYmCLEIZfbozaPSiL1vBysJJO9BLl+UPG/Pa+ObC+fAvX/mLKaCPjdvhn33LfU+uoYVIgt77org=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7296
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 8/9] drm/i915/perf: Add engine class
 instance parameters to perf
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

On Tue, Feb 21, 2023 at 03:53:57PM -0800, Dixit, Ashutosh wrote:
>On Thu, 16 Feb 2023 16:58:49 -0800, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>Patch is mostly ok but a few questions below:
>
>> Current implementation of perf defaults to render and configures the
>> default OAG unit. Since there are more OA units on newer hardware, allow
>> user to pass engine class and instance to program specific OA units.
>
>I think we should more clearly say here that the OA unit is identified by
>means of one of the engines (class/instance of that engine) associated with
>that OA unit. The engine -> OA unit mapping is a static mapping depending
>on the particular platform. Something like that.
>
>>
>> UMD specific changes for GPUvis support:
>> https://patchwork.freedesktop.org/patch/522827/?series=114023
>> https://patchwork.freedesktop.org/patch/522822/?series=114023
>> https://patchwork.freedesktop.org/patch/522826/?series=114023
>> https://patchwork.freedesktop.org/patch/522828/?series=114023
>> https://patchwork.freedesktop.org/patch/522816/?series=114023
>> https://patchwork.freedesktop.org/patch/522825/?series=114023
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_perf.c | 49 +++++++++++++++++++-------------
>>  include/uapi/drm/i915_drm.h      | 20 +++++++++++++
>>  2 files changed, 49 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index d3a1892c93be..f028df812067 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -4035,40 +4035,29 @@ static int read_properties_unlocked(struct i915_perf *perf,
>>	struct drm_i915_gem_context_param_sseu user_sseu;
>>	u64 __user *uprop = uprops;
>>	bool config_sseu = false;
>> +	u8 class, instance;
>>	u32 i;
>>	int ret;
>>
>>	memset(props, 0, sizeof(struct perf_open_properties));
>>	props->poll_oa_period = DEFAULT_POLL_PERIOD_NS;
>>
>> -	if (!n_props) {
>> -		drm_dbg(&perf->i915->drm,
>> -			"No i915 perf properties given\n");
>> -		return -EINVAL;
>> -	}
>> -
>> -	/* At the moment we only support using i915-perf on the RCS. */
>> -	props->engine = intel_engine_lookup_user(perf->i915,
>> -						 I915_ENGINE_CLASS_RENDER,
>> -						 0);
>> -	if (!props->engine) {
>> -		drm_dbg(&perf->i915->drm,
>> -			"No RENDER-capable engines\n");
>> -		return -EINVAL;
>> -	}
>> -
>>	/* Considering that ID = 0 is reserved and assuming that we don't
>>	 * (currently) expect any configurations to ever specify duplicate
>>	 * values for a particular property ID then the last _PROP_MAX value is
>>	 * one greater than the maximum number of properties we expect to get
>>	 * from userspace.
>>	 */
>> -	if (n_props >= DRM_I915_PERF_PROP_MAX) {
>> +	if (!n_props || n_props >= DRM_I915_PERF_PROP_MAX) {
>>		drm_dbg(&perf->i915->drm,
>> -			"More i915 perf properties specified than exist\n");
>> +			"Invalid no. of i915 perf properties given\n");
>
>Invalid number
>
>>		return -EINVAL;
>>	}
>>
>> +	/* Defaults when class:instance is not passed */
>> +	class = I915_ENGINE_CLASS_RENDER;
>> +	instance = 0;
>> +
>>	for (i = 0; i < n_props; i++) {
>>		u64 oa_period, oa_freq_hz;
>>		u64 id, value;
>> @@ -4189,7 +4178,13 @@ static int read_properties_unlocked(struct i915_perf *perf,
>>			}
>>			props->poll_oa_period = value;
>>			break;
>> -		case DRM_I915_PERF_PROP_MAX:
>> +		case DRM_I915_PERF_PROP_OA_ENGINE_CLASS:
>> +			class = (u8)value;
>> +			break;
>> +		case DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE:
>> +			instance = (u8)value;
>> +			break;
>> +		default:
>>			MISSING_CASE(id);
>>			return -EINVAL;
>>		}
>> @@ -4197,6 +4192,17 @@ static int read_properties_unlocked(struct i915_perf *perf,
>>		uprop += 2;
>>	}
>>
>> +	props->engine = intel_engine_lookup_user(perf->i915, class, instance);
>> +	if (!props->engine) {
>> +		drm_dbg(&perf->i915->drm,
>> +			"OA engine class and instance invalid %d:%d\n",
>> +			class, instance);
>> +		return -EINVAL;
>> +	}
>> +
>> +	if (!engine_supports_oa(props->engine))
>> +		return -EINVAL;
>
>Need drm_dbg here too?
>
>> +
>>	if (config_sseu) {
>>		ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
>>		if (ret) {
>> @@ -5208,8 +5214,11 @@ int i915_perf_ioctl_version(void)
>>	 *
>>	 * 5: Add DRM_I915_PERF_PROP_POLL_OA_PERIOD parameter that controls the
>>	 *    interval for the hrtimer used to check for OA data.
>> +	 *
>> +	 * 6: Add DRM_I915_PERF_PROP_OA_ENGINE_CLASS and
>> +	 *    DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE
>>	 */
>> -	return 5;
>> +	return 6;
>
>Do we need a separate revision for this? Maybe club it with OAM support
>since that is where this is getting introduced?

It's a separate revision to identify support for multiple GTs, even 
without OAM.
>
>>  }
>>
>>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>> index 8df261c5ab9b..b6922b52d85c 100644
>> --- a/include/uapi/drm/i915_drm.h
>> +++ b/include/uapi/drm/i915_drm.h
>> @@ -2758,6 +2758,26 @@ enum drm_i915_perf_property_id {
>>	 */
>>	DRM_I915_PERF_PROP_POLL_OA_PERIOD,
>>
>> +	/**
>> +	 * In platforms with multiple OA buffers, the engine class instance must
>> +	 * be passed to open a stream to a OA unit corresponding to the engine.
>> +	 * Multiple engines may be mapped to the same OA unit.
>> +	 *
>> +	 * In addition to the class:instance, if a gem context is also passed, then
>> +	 * 1) the report headers of OA reports from other engines are squashed.
>
>Other engines or you mean other contexts?
>
>> +	 * 2) OAR is enabled for the class:instance
>
>For render engine?
>
>Maybe the above comments need to be more crisp since they are in i915_drm.h
>or is it only I who is confused :)
>
>> +	 *
>> +	 * This property is available in perf revision 6.
>> +	 */
>> +	DRM_I915_PERF_PROP_OA_ENGINE_CLASS,
>> +
>> +	/**
>> +	 * This parameter specifies the engine instance.
>> +	 *
>> +	 * This property is available in perf revision 6.
>> +	 */
>> +	DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE,
>> +
>>	DRM_I915_PERF_PROP_MAX /* non-ABI */
>>  };
>>
>> --
>> 2.36.1
>>
>
>Thanks.
>--
>Ashutosh
