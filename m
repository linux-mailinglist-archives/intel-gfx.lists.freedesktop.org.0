Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D06B69A283
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 00:44:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE6710E091;
	Thu, 16 Feb 2023 23:44:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD3AE10E091
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 23:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676591061; x=1708127061;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pi6GfpZa0/PFjqJEoOVxy5HsWxGwFOoIWVh9cYxaUMc=;
 b=KNEZDIkbQksqjqVI1QLnMCM+f8Cx0pFocPwTTkMJ3Q+qOQvkh3po0eJU
 TVPDyzCIqwWca9cUHPkmijY100JKFS+aLvT+TFqpDvR1x8OCUXb6jOwSN
 Jc0osafDQENAtb+A8cSxKdVjGnYSJ394vV+IwbTm3ZGvmBszyQCFQysHh
 SeVkfph6C/Mlwl+aQ100Fqk1blX2m6R/YJXHznknX3H/qYpbE0bVefAbQ
 DyYuPc3SzZ6nQVA2wWjIEi/F5q7Vl9jReqJujc+/baBnialRedqOm0U46
 LcglGy5oQHwrY/OwSIXP4Qzcf3Ds5k6llYsc1Q4jjtV+nRpJVUQhvj4Kz A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="331867318"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="331867318"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 15:44:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="620192183"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="620192183"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 16 Feb 2023 15:44:20 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 15:44:20 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 15:44:20 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 15:44:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGs8tZ1YqNLUqC8M/cxVXd5yo6LF9cmMhjtB9kcJiAlp9s4Vequo2lKwA77GMAjS9wJhb3Ayy2be8JGfl7CmAXJ7oFr5Jo50fRU+kKEpRyESDctTcc3uJvAsJeHJgVSlE1HWVhodjvCacYNantOmp6XZXbA3lK5JguMrzPTGCYdHXT3XETCaF3L9GhP/kvNWbqmFMPvicrfUEXIbHcQVvPWwtK0YUZfmjebQwhtYbwLITSa9hl7WVJyK62IJaS2v74qkUZJHmejrXjuXdPmRO4sdt47Ra/v/jB2GwZKvjK4bRaZZ97K8USAqzXQmm+0KmBI42DzZ1ThfzAtpasXKbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9qJydhqRSjzmCBvIMOmFuh/VHoS4t5Ut30ho49YGW3M=;
 b=Y4Nz/VwQ+Ks5dI0B9UAELbu7xts3X6RHS78qSQG7Rzzq8Qqa8ZuL8iaoKARwNL6PdA1mI5jjBvcetzwzD+eX6mK0IZ3m6/u9HqhMV2wo4iA5TzNzCS5kbs5PLZzbARgANT7oGfyooZvefC+vf4ogUvYZLqE2ad6l0GvDIBJV5+IppDM6ntuXXmHpP0FQ7sE2bpxF1NlZDmphhq4p2BXeeh4tKtB98gIYDGLmwtUtbOEI63g1OW6hSVuL1tF9/Oth0sKQZo99Eq8QPO07uG5vbObnArfflEo8LFgcZsjNRgdtXYQ19lKuxdPrRMegBRguDDoikYp8zI/qhieY/y1LNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CY8PR11MB7780.namprd11.prod.outlook.com (2603:10b6:930:78::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6086.26; Thu, 16 Feb 2023 23:44:17 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%6]) with mapi id 15.20.6111.013; Thu, 16 Feb 2023
 23:44:17 +0000
Date: Thu, 16 Feb 2023 15:44:07 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+6/x8/HSsSdnMmM@orsosgc001.jf.intel.com>
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
 <20230215005419.2100887-6-umesh.nerlige.ramappa@intel.com>
 <87lekx2895.fsf@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87lekx2895.fsf@intel.com>
X-ClientProxiedBy: SJ0PR13CA0196.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::21) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CY8PR11MB7780:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b6803aa-7115-4900-27ad-08db1077b7b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sFAZ7FiVGvLZKsxLhd1M8358bdXsUU2JE2xoR6mXe2fKJG4mj4V76jJzorqr8Q0PC2UsALq+Oz/8nB+7niZVjRvws+MeiXzW2l8764g37Pz2FzjOwRZ+JXNBDTVWbLZvNj8pxXYS/UINyEWvKcD3oiexRCzcbUz+4BsEsfKovKwH1i2oZUBmt0takKtpLL20Bc6DQDqAh6xVuEaLLpRwU3t4pG2vMlwWyXv3xtqjoczEyAraWlkM7nvLYYMB7fNyREcKe0eeirvcK3xS9l3/imX0ofvn2RXUZo2q7p/xYLOHqKl5oWKkLAcSk7iMAglJtFcXigvQqHxFFJ/c4ciyrWyFzGxKoYWOpeSjQu9mepi1Wg37oDtzwCIe8V3ZUEldnIDQB/icGkcAZ7UN950D7LlZMwS/WtBeaCNbLtwtb3BN5bT0J2TO7mVigezcOVbu7V/EADj1fUFF6m/ZMqyCgXgX8yQFeGwX72l1EEczxwYB6gT/01q+0qLPzACRBu740LvQIM0mguY0pAA6JsqUZg05TfonZ8KSHiI5xLPQjbp30UaKn8T6fpQ32OfPXDAAH7Fs0X2WSQoD+hqFdQfcJAqNGUD8GUuX51CBfjTe+kgdLS0wVcyDAySrHNq8EqB/11YcRKY9Qu9rUXHZWBX2qA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(136003)(39860400002)(346002)(376002)(451199018)(6486002)(316002)(6916009)(66556008)(66946007)(8676002)(66476007)(4326008)(478600001)(41300700001)(6666004)(6506007)(5660300002)(186003)(26005)(8936002)(6512007)(2906002)(83380400001)(82960400001)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWpBL0x5VytWNmJvMmI3dUJjNkIvc1hBMXZyT2VpUFQwamhVY0haQyt5dDNC?=
 =?utf-8?B?M3FUL2xSdFg5c2FxaUcwY2g5dVJiK01HVDh4ajlEdm1sbm9LUjUxRG5RSG44?=
 =?utf-8?B?Yk9Vb0EwbHJCQ3BVRld5dVVISTY2YzZ5aWh1NmlTTE5XN2pKeTg2d3pPL2VI?=
 =?utf-8?B?dDRUNC93RTN1dVUrK1dHaDNwNXVVNm5NTjFkTmNlUklCNVpMTnJxOTJlcFpL?=
 =?utf-8?B?eFhrT25YTjgvYnRQdXpGd0pRaGVtWVZneWtSN1QraHliakhKWk1kcFZBOE9t?=
 =?utf-8?B?dEo5TFcyanZTOWY2Y1FNSFp0Q0dkOVMvRWJpWHY4RC94cGhGMGx4d2tzc0RD?=
 =?utf-8?B?U3VoWWQra2tVVXd2U2lLaEZEaVlEeXJmdlFhU1FoY3IyOUY0MDlkVUpPQ1VK?=
 =?utf-8?B?OWRRVktDL2FzaXdJZXVRL2pxOFlxNE5VMldpeXRLNDljcGw1TW1rREJMQlNq?=
 =?utf-8?B?cE5wZy9mV0YyemFYNDBHcGlPWHhYcXBHdncxWERwQUJ4bW9mbEhoMFl3TlZI?=
 =?utf-8?B?Uit1MlhYUTRzQjZmSzk0dnNzaXhYOEJVd1V3emg0dHpVRmozaE0ycXg1UkxM?=
 =?utf-8?B?RWthenU1VGFpK29pVHJxSEpnUzB2Vk5RU1R0ME54dHVXdmZydUp4YUNSREwy?=
 =?utf-8?B?TG0vUFBWTjNyQ1ZQRnd4eWwzMFVkNW90d1I5b3RicUZsb0x4V2NlV2ptR0kr?=
 =?utf-8?B?SGI2SXJQQ2treEFNQ01XbWxTR1lsMFRWY2NOQVZSZDVqc3RtTjY4bHFlTnFZ?=
 =?utf-8?B?d01ZWEsxMnFUdjM3ZC9NQnphZjhNdXJxTE9hZXlSVzg2TW1wS0RQRFFrWDh1?=
 =?utf-8?B?N1pQNmUvcisybkhteHROU3ZDb2RRMFc2QTF6Y0lNMnhLa1o5T3d5Ri9UaHo2?=
 =?utf-8?B?Nmlqa3VBbWZVUFhHWHlLaXc5bTdXOWdWdUxjc0xFU0J5MFB1MzhWVmZsZmFO?=
 =?utf-8?B?blQxVUZhcEUvV1Q5V2xKRHo4WU93KzlMSVhHdnZPalBvSGVQRHYvQ3ZxK0Ni?=
 =?utf-8?B?UWcxRDY2MlJBcDFzUi9PNXpxVi9Pc29pUGdrQTZHekpHYkYzUyt0VmNnSE9R?=
 =?utf-8?B?WWcwYXd6TDJkaXZZbEpVUkVCYWJHRW9scXJIRlVpaXJVZlVSYzFla3JxRzFD?=
 =?utf-8?B?UWNKeXFlbDV3cEFmUHFpMi82QmUzRys3M0Z3VGtuTkxmS3FwR0ZNT3FSUWhE?=
 =?utf-8?B?WlY2RGpaZjJta2ZJUWZQOG55ZDN0TlNySEtsN09UTDlXY1FZeVpCSkVGazkr?=
 =?utf-8?B?QmFSMUI0U0EyU3N6OW5JRktWUU13NWJqUzBnSVpIMHY0enZVQ2l1QjFhMGxr?=
 =?utf-8?B?Sk84TjNLU2xudDVrRkx5VFpjWWJEREY0N1JocER4UzU5b0UvT2EzYjVDMEtY?=
 =?utf-8?B?RzV1aDlhNFIySFNtY2hZRUN2dFQ1SE56TU1QMFhDb1B3NUo4TGFEU2VtMHJk?=
 =?utf-8?B?UGZTV0xMOEhqeFEyUlRHaU9GdnVRQllSUWc0b0dKZkROS3JoVVdQTlJsOHVT?=
 =?utf-8?B?TGk5QmNNV2pTcUt3eVpwN1YydktUT3pLVlJTYWdtL0VMTS9jd0JtMVB3UWRN?=
 =?utf-8?B?amozYmswUU1rczg0YytMdFRFUHc3WjNoRGxqN0NvZlNZQjV4WlRZOVdPdFhF?=
 =?utf-8?B?UDlaaUN2M3pqc0pJc2JXWmxyQ1FTdjA3dmxWVWUzdURxem9MbGpGVUNvOUNu?=
 =?utf-8?B?MEJvYjVYUCtES0JOWkpqQlVrSW1EbWlnUGZwdXoySjVxRWZFbUFmNnVYdnFh?=
 =?utf-8?B?cWI1c0Nmb1pGVFhKeUw5YSswUTV4SFJha2RrOTYxcy90YWJLdzdvem5OcGVr?=
 =?utf-8?B?OHhxcmJPNjkyRDJzRGtCMmtJR0kyNGFMZ29XMmtQczRKSDJ4YUJnZGhteU93?=
 =?utf-8?B?M0VjREx1WlN0bkxHcjR6bTRpaVdPMTRGSWxJSGxxcFIycVoxR1ZlWXlJc2pL?=
 =?utf-8?B?cGVJdkZwdnhKckg4NUZKMlNqa3JuMUs2U0F2UTVabHhMK2txc1UzZzYwRXI2?=
 =?utf-8?B?NzZpc2ZTZ2FmMTlTcDFLSDZiZGQzOVBVR0FBUW5wRmxNY0JRbXdFWUcwaU0v?=
 =?utf-8?B?UHdPbDBJZEJIcVI4WHp3MmFRWlNGU2dtTWVkOTJJWVgySG0yT01EejhBQWRi?=
 =?utf-8?B?Q2lEVlBRelBQWCs4UWh0OEt1Q1RreGxOMG5RbzBKRktKeURIditoc3hRbnVX?=
 =?utf-8?Q?kiF0PeMgkT8I5GbchwSTA6M=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b6803aa-7115-4900-27ad-08db1077b7b3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2023 23:44:17.6243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g17OPIcoJFbAdy+ukrvc3CkWwU/FxL4BRTg0O9OTSmuyz3aCCTuOptiS/U4F0YdOMxo1Z/mkmq0medjAniaPVvSwFwWjtFZ/Em0jyC0R7eg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7780
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915/perf: Group engines into
 respective OA groups
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 16, 2023 at 12:51:34PM +0200, Jani Nikula wrote:
>On Tue, 14 Feb 2023, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> wrote:
>> Now that we may have multiple OA units in a single GT as well as on
>> separate GTs, create an engine group that maps to a single OA unit.
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_engine_types.h |   4 +
>>  drivers/gpu/drm/i915/gt/intel_sseu.c         |   3 +-
>>  drivers/gpu/drm/i915/i915_perf.c             | 126 +++++++++++++++++--
>>  drivers/gpu/drm/i915/i915_perf_types.h       |  51 +++++++-
>>  4 files changed, 171 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> index 4fd54fb8810f..8a8b0dce241b 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> @@ -53,6 +53,8 @@ struct intel_gt;
>>  struct intel_ring;
>>  struct intel_uncore;
>>  struct intel_breadcrumbs;
>> +struct intel_engine_cs;
>> +struct i915_perf_group;
>>
>>  typedef u32 intel_engine_mask_t;
>>  #define ALL_ENGINES ((intel_engine_mask_t)~0ul)
>> @@ -603,6 +605,8 @@ struct intel_engine_cs {
>>  	} props, defaults;
>>
>>  	I915_SELFTEST_DECLARE(struct fault_attr reset_timeout);
>> +
>> +	struct i915_perf_group *oa_group;
>>  };
>>
>>  static inline bool
>> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
>> index 6c6198a257ac..1141f875f5bd 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
>> @@ -6,6 +6,7 @@
>>  #include <linux/string_helpers.h>
>>
>>  #include "i915_drv.h"
>> +#include "i915_perf_types.h"
>>  #include "intel_engine_regs.h"
>>  #include "intel_gt_regs.h"
>>  #include "intel_sseu.h"
>> @@ -677,7 +678,7 @@ u32 intel_sseu_make_rpcs(struct intel_gt *gt,
>>  	 * If i915/perf is active, we want a stable powergating configuration
>>  	 * on the system. Use the configuration pinned by i915/perf.
>>  	 */
>> -	if (gt->perf.exclusive_stream)
>> +	if (gt->perf.group && gt->perf.group[PERF_GROUP_OAG].exclusive_stream)
>>  		req_sseu = &gt->perf.sseu;
>>
>>  	slices = hweight8(req_sseu->slice_mask);
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index e134523576f8..fda779b2c16f 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -1587,8 +1587,9 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>>  {
>>  	struct i915_perf *perf = stream->perf;
>>  	struct intel_gt *gt = stream->engine->gt;
>> +	struct i915_perf_group *g = stream->engine->oa_group;
>>
>> -	if (WARN_ON(stream != gt->perf.exclusive_stream))
>> +	if (WARN_ON(stream != g->exclusive_stream))
>>  		return;
>>
>>  	/*
>> @@ -1597,7 +1598,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>>  	 *
>>  	 * See i915_oa_init_reg_state() and lrc_configure_all_contexts()
>>  	 */
>> -	WRITE_ONCE(gt->perf.exclusive_stream, NULL);
>> +	WRITE_ONCE(g->exclusive_stream, NULL);
>>  	perf->ops.disable_metric_set(stream);
>>
>>  	free_oa_buffer(stream);
>> @@ -3195,6 +3196,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>>  {
>>  	struct drm_i915_private *i915 = stream->perf->i915;
>>  	struct i915_perf *perf = stream->perf;
>> +	struct i915_perf_group *g;
>>  	struct intel_gt *gt;
>>  	int ret;
>>
>> @@ -3205,6 +3207,12 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>>  	}
>>  	gt = props->engine->gt;
>>
>> +	g = props->engine->oa_group;
>> +	if (!g) {
>> +		DRM_DEBUG("Perf group invalid\n");
>> +		return -EINVAL;
>> +	}
>> +
>>  	/*
>>  	 * If the sysfs metrics/ directory wasn't registered for some
>>  	 * reason then don't let userspace try their luck with config
>> @@ -3234,7 +3242,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>>  	 * counter reports and marshal to the appropriate client
>>  	 * we currently only allow exclusive access
>>  	 */
>> -	if (gt->perf.exclusive_stream) {
>> +	if (g->exclusive_stream) {
>>  		drm_dbg(&stream->perf->i915->drm,
>>  			"OA unit already in use\n");
>>  		return -EBUSY;
>> @@ -3329,7 +3337,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>>  	stream->ops = &i915_oa_stream_ops;
>>
>>  	stream->engine->gt->perf.sseu = props->sseu;
>> -	WRITE_ONCE(gt->perf.exclusive_stream, stream);
>> +	WRITE_ONCE(g->exclusive_stream, stream);
>>
>>  	ret = i915_perf_stream_enable_sync(stream);
>>  	if (ret) {
>> @@ -3352,7 +3360,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>>  	return 0;
>>
>>  err_enable:
>> -	WRITE_ONCE(gt->perf.exclusive_stream, NULL);
>> +	WRITE_ONCE(g->exclusive_stream, NULL);
>>  	perf->ops.disable_metric_set(stream);
>>
>>  	free_oa_buffer(stream);
>> @@ -3381,12 +3389,13 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
>>  			    const struct intel_engine_cs *engine)
>>  {
>>  	struct i915_perf_stream *stream;
>> +	struct i915_perf_group *g = engine->oa_group;
>>
>> -	if (!engine_supports_oa(engine))
>> +	if (!g)
>>  		return;
>>
>>  	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
>> -	stream = READ_ONCE(engine->gt->perf.exclusive_stream);
>> +	stream = READ_ONCE(g->exclusive_stream);
>>  	if (stream && GRAPHICS_VER(stream->perf->i915) < 12)
>>  		gen8_update_reg_state_unlocked(ce, stream);
>>  }
>> @@ -4755,6 +4764,95 @@ static struct ctl_table oa_table[] = {
>>  	{}
>>  };
>>
>> +static u32 __num_perf_groups_per_gt(struct intel_gt *gt)
>> +{
>> +	enum intel_platform platform = INTEL_INFO(gt->i915)->platform;
>> +
>> +	switch (platform) {
>> +	default:
>> +		return 1;
>> +	}
>> +}
>> +
>> +static u32 __oa_engine_group(struct intel_engine_cs *engine)
>> +{
>> +	if (!engine_supports_oa(engine))
>> +		return PERF_GROUP_INVALID;
>> +
>> +	switch (engine->class) {
>> +	case RENDER_CLASS:
>> +		return PERF_GROUP_OAG;
>> +
>> +	default:
>> +		return PERF_GROUP_INVALID;
>> +	}
>> +}
>> +
>> +static void oa_init_groups(struct intel_gt *gt)
>> +{
>> +	int i, num_groups = gt->perf.num_perf_groups;
>> +	struct i915_perf *perf = &gt->i915->perf;
>> +
>> +	for (i = 0; i < num_groups; i++) {
>> +		struct i915_perf_group *g = &gt->perf.group[i];
>> +
>> +		/* Fused off engines can result in a group with num_engines == 0 */
>> +		if (g->num_engines == 0)
>> +			continue;
>> +
>> +		/* Set oa_unit_ids now to ensure ids remain contiguous. */
>> +		g->oa_unit_id = perf->oa_unit_ids++;
>> +
>> +		g->gt = gt;
>> +	}
>> +}
>> +
>> +static int oa_init_gt(struct intel_gt *gt)
>> +{
>> +	u32 num_groups = __num_perf_groups_per_gt(gt);
>> +	struct intel_engine_cs *engine;
>> +	struct i915_perf_group *g;
>> +	intel_engine_mask_t tmp;
>> +
>> +	g = kcalloc(num_groups, sizeof(*g), GFP_KERNEL);
>> +	if (drm_WARN_ON(&gt->i915->drm, !g))
>> +		return -ENOMEM;
>
>No warnings or messages on -ENOMEM is standard policy.

Will remove warn ON.

>
>> +
>> +	for_each_engine_masked(engine, gt, ALL_ENGINES, tmp) {
>> +		u32 index;
>> +
>> +		index = __oa_engine_group(engine);
>> +		if (index < num_groups) {
>> +			g[index].engine_mask |= BIT(engine->id);
>> +			g[index].num_engines++;
>> +			engine->oa_group = &g[index];
>> +		} else {
>> +			engine->oa_group = NULL;
>> +		}
>> +	}
>> +
>> +	gt->perf.num_perf_groups = num_groups;
>> +	gt->perf.group = g;
>> +
>> +	oa_init_groups(gt);
>> +
>> +	return 0;
>> +}
>> +
>> +static int oa_init_engine_groups(struct i915_perf *perf)
>> +{
>> +	struct intel_gt *gt;
>> +	int i, ret;
>> +
>> +	for_each_gt(gt, perf->i915, i) {
>> +		ret = oa_init_gt(gt);
>> +		if (ret)
>> +			return ret;
>
>If this fails in the middle, you'll leave things in half-initialized
>state when returning, and expect the caller to clean it up. But that's a
>surprising interface design. If i915_perf_init() returns an error, it's
>*not* customary to have to call the corresponding cleanup function. On
>the contrary, you only call it on success. Any init failures need to be
>cleaned up internally before returning.

ENOMEM is the only error I am expecting here, so no other cleanup is 
needed if this fails.

Thanks,
Umesh

