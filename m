Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8AC619A3E
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 15:39:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC5B10E824;
	Fri,  4 Nov 2022 14:39:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2788410E824
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 14:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667572760; x=1699108760;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kny3tVbSWcu4VmxFqwvZ3ihKcIuYX/h8MUK3OXYpsEI=;
 b=Fx2UFATkjjnwdtD+mgrevsq/l5gngfhWnnAF8nebNmSRaoQvLZaBQtqI
 OBiEcKezV2KGkh/0dducwNw6uWplOECN7VPW3iPOm1vih9QlhMTyq/Ocb
 WencYroTBDv01ZDUqM3gcCWtnOH9Jm553em3puUJVyRyO6XOA6o05Qlcm
 4hHKUkz56eYpJZBOUZoNPtCxu4xwsgUtDV67TeAA4Pc9f+3mQfgSJidaF
 xbogqpZk2i9+2/CuZD+KCNGEDpYOpkkoOJWbTkoQXwaZOIx9JZihHEVNZ
 JF/h4WxUzN0D94j336//AKSb5bm8P41wQRr+I/OmBCNhio57ft2U2FFXg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="374218638"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="374218638"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 07:39:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="629742893"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="629742893"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 04 Nov 2022 07:39:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 07:39:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 07:39:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 4 Nov 2022 07:39:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 4 Nov 2022 07:39:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RwAI5riS98IxzU3xHnojLryTSN3SbOqElkM1CzOztUeo1JhfRhj880LX2tuFCuShVZl53SSJjsEw8f44ZmMRIRVF4uQrFlEy3CnACmDtTt1ST+RCNL1S36lbip85X2BIv4mj+FlEnSWvfSYFA+Yw6bQXoCszVqRsvunvhyL5Te1cgypyLIPwTRptqMd1+JQJeGW+wftfQvDtI86lvK8xgq/eXVX2VVLRK0mRnHJCXhk1RK9Mwk3fidy7tD8rMtBuHKyVuhftckvcA2cLQ37SEmWTnufDBiRHzjYDs3nFHjAAtTlIYyROR3n7eLcodq/6xAQHtBtmm1OKIYZX0skIug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DRGcW1Yn9rcMXiyG9JS6vz05J9onr8iCGIRbB/2NJ7w=;
 b=BMu1XvsxiH+HJ+ycrnfFfjbkEZx+9+Yh7MsyLAbSYn7FIRj51C5QxhQjminuH7TkAQMNvItq/cUVc2oKbe+OCUHhA6ntd4VwYgCvMuabruHRNbvqtSoLBtFbbvSq1uYsy1ntg433krQmOpLph/Hd2XdOJ3E7aMYc/Y7wGPxdkSvcqpypHYlu9YFBAHaA7tgE2KyQ5susInh1EqG8FSs+VAv+MHxpi5aiLypkD8+bF8kcp6lnWPFhjmE/nUnXjIOZfWKts53z7cTDr35lnCdeihQ5IK+5wYgCcruXBMMPQyAuEL0jmjVSJoOeEtvSMIL0SeSwQagfxcjEFqBG113WUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 IA1PR11MB6290.namprd11.prod.outlook.com (2603:10b6:208:3e6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Fri, 4 Nov
 2022 14:39:05 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5791.022; Fri, 4 Nov 2022
 14:39:05 +0000
Date: Fri, 4 Nov 2022 07:39:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y2UkBwVuHZYFDFYB@unerlige-ril>
References: <20221103180705.1315142-1-umesh.nerlige.ramappa@intel.com>
 <87wn8bl2yx.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87wn8bl2yx.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR07CA0087.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::28) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|IA1PR11MB6290:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f9af036-7891-415c-435d-08dabe7252f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g86IITwdSt6roBCPklXBJWKYGb5qoLroRJSUTqc4/sSIirfSZ1mbDE6gsrofO6BVzRGEjp9umf8Z3BbztskTjwU8XYUFwwlOtQv8bJW28SYoVadp/Ijwgy8ft4wgPYXJ1wVP7kjFxeL6Pp8Bapk9t18yJX++NcEKPUQ1ylN+WdguxXz1rB3zwGsKh0x4vpmke1kMj+qkV9/qU7VfPWCfJQmof0/2TBs6uQt6RyI6ih4v82e1S4FMUDO0r6C+ewzwH8a0O2gZse7HStKObJg6lg1aNdr37y9UnCJ9M2LTAsbLScgLp9WKrTvU7JM+GbVygQx617GmAwzp1l63MMfZPy4bp8eYnJHzU4Yy9UK1w32m9/0oTaNOBVEMy1jKncvFigHckEh7FOROB05tkTmjCzbYfNKK5AnDW82yj7ltGk6IxTewz10PB/G0RCXTVmSNUReDjAGhW67knsPUd9fDNzA59ql9kUcPmcVZjfZ7W18mmIiQ8EhQSezhzUVAw5o7mkXj66o53xzyUME0lUdr0P5KleiHh8lkTwHFSF/IwwhAmxPTnRMrq3iqbwVbYvpGjMVcSeUNoOFXzJd/hk1BwJjEqrJvbuxW8f/Qn5a+fqx72HWVVSgofza5HPGxYaQgWZkFPLgvwN6MZGUd9Xgjx1hfBucyHzWxZT8i8zoOBlwGr9gk4CMmpcb55/LENm9fUBTW8R9GGPywz7ZBvf9aWA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(396003)(39860400002)(366004)(346002)(136003)(451199015)(86362001)(316002)(83380400001)(8936002)(6862004)(5660300002)(2906002)(66946007)(66476007)(66556008)(8676002)(6506007)(9686003)(26005)(41300700001)(6512007)(4326008)(186003)(33716001)(6486002)(478600001)(82960400001)(6636002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVRkbGRoclZTTWJ3RUdNa1VqL0QzU0hNU1dQbzVFV2hTbDRnL3doVjY0cGtG?=
 =?utf-8?B?Vi9qV3phY0hmdDNUMlhKQmt4SkVPS01rQ0h6blpyZTM2R00vUU8yRTEyRWly?=
 =?utf-8?B?alFyVzVqQVg4SURpQW03Qy9SY2ZTdkpLVWlwYTRsaWc5WDJOR2k5VS9wQXgw?=
 =?utf-8?B?b3o5QjkxZVo0Y2J3bzVpMTNPY1FyYThzUlZCRzhPWEJ0SEd2R25NZHBYQ1lh?=
 =?utf-8?B?dVN6Y2NaaUFVdnIvR1cwZkxKRlZkd015YXhZZXQrUTZ6U1BMTk02T3ptSEls?=
 =?utf-8?B?dStkVnpGTXQ1aFZYOFpQVE9ZY3ZEZjNZUlo5ZTR5MDkzTjNYaVMxS0dVNjFP?=
 =?utf-8?B?YXoyMjJEaFJKZVZLVFVFZVZOYmxibEVoWjExdmVHc3BSUk1kN3FldjJWazJO?=
 =?utf-8?B?aW80ZWxQa1BKemtrNWUreDV2T1hvOUd6Y0RYTEdBc0ZORUpKMjB2cjAzMnBE?=
 =?utf-8?B?eFh2UXl3d2NScVgyZVo0SzdiQlIrdTkyejBpOWRreG9WZUxYQmhTN1oyZ0FY?=
 =?utf-8?B?SE1aejMyU3pUMDE2S0R2QmxlTHdQL3BjWVhuNmJYcjd2NjJYem9aUnpMYXVP?=
 =?utf-8?B?VHpqUzl5TkFtNnFZWXcyb0wyN1lUS3RveHlhM21WUDl2Z0hqUmRYQ3VGOHRx?=
 =?utf-8?B?U042VUJJOGZ4ODRhWTFXMkZkek80MHhGRURXdXdTY1RVYkRTUURKV0FpMWli?=
 =?utf-8?B?UVdkOFdLN3BMVlhmZlBaNzZHSXBxL0ZvUCt4K2IwNVVlckJxRGl5RjR0U2xu?=
 =?utf-8?B?dy9FVERJTmU4VUpsUW5YaWkrb3p1RnVUN1h4aWpudnVSeGgrSEFua3hFUG5Q?=
 =?utf-8?B?UDYwYmpzRHY1K1VkbmZ3bUllMmtnZzZaeWZGckF2LzExSWdKYWRUbHNRQ2Nu?=
 =?utf-8?B?YUhxbFg5NTJFeHFlcmNld25sUjZjKzQwV3hEdjMzRE9CUnQ4VEdORkZaeWFV?=
 =?utf-8?B?VjI4MS90bThNWE9KVFd1d21zMjZ5V2Nrc1d0eUhJNng4SWg4QU1HTzhPRHhG?=
 =?utf-8?B?eGF4MVhCa3pHVHpnb1MyczJRK0M1YkhMb2tXZ0pJemtqVCtQb1lreGgzUlRH?=
 =?utf-8?B?Zzl4WWhHS2tkZXF3TTRWc3c5WUxVYXNGSkc1LzB3QTUrYnR5Tzh3VW83RExj?=
 =?utf-8?B?UERBa1FnYVVreUNHNU96YUZRL0phclliRlJmc1FRL1ZYYy9odnJWc0pUUFZE?=
 =?utf-8?B?M0RqRE85SXlXNnFGN2dUeVBVSzV2UGNiMzV6bjBjeHE0YlJ4Z1NUQ0FlQ0Fy?=
 =?utf-8?B?a0lsQlhnSFQyeVhnSDBVWU1peElScEh5Q1FGdE5GUFF6eVVrbDRpbjM2aktq?=
 =?utf-8?B?NEk2WDVTVzZOS3M1TVBEdHZWOUxjV0I4ckpWdlovNjZ3eHkxN202Mmk3N0Rs?=
 =?utf-8?B?bG9ZeWY3NUo1SEhETW5SMDFsdFIxNW9tQll3MG1kWmFGQlQ5cEpMcjJxMnk5?=
 =?utf-8?B?Ynl2NEhTMEFtbXFvU29JNWExSFNjdDNYWTRRZWhVRVJuTmQ2bXdtaXBsYTRU?=
 =?utf-8?B?UlBOMnI1Q3hnWnJJZzVlbU1oOFpBKzdoeW5JQ2ExMHlGajk5bGsyQitnVUhp?=
 =?utf-8?B?RTh1UmMxY2ZxdnlTNkdoUVBLaEloRU8wMGdDemVMcVdqUzdKTWJRU1pZMU1V?=
 =?utf-8?B?cDUvcERpd1hkM1phQkFUZGl0M255aE9yVUpYbmlqRHBadElxWVJUVGd5M1Nw?=
 =?utf-8?B?aVNFZ0lEQ3NtbkpSRTJ3QlZ4UEdaU2N4TFZuUFU0bW9sU0hqdnZiQkErczJG?=
 =?utf-8?B?ZjBWUlEwL1VEb2FTWkVNTHlrd2RLWVF5dHIwd1pPODFUdVNNaXQ3UW9SQk9H?=
 =?utf-8?B?MkRvS1hIbGFJYlFOeERPUklETVdiWlhuRmtlSlNkZXY4dmIvRGRBMXhiYmda?=
 =?utf-8?B?WDBRTjczRXhxZ24rZUQ3cWlrWG4rSE9UdVFka1RkZjd3UjZsNnJrME1NRGc2?=
 =?utf-8?B?Q01PS04vMVRSM0wzMWliUitCcENxcmZVdUFjWlhYbWorc0NRRnZ3c2hZUWNz?=
 =?utf-8?B?VkVkZXhmTWxQUWRxUms1a1NKL2VjSHBvR21mb0czUDgybnQyU3VNVElveUFN?=
 =?utf-8?B?NU1CV3lWYm9lTVVuMkdCbGd1b1R6TFo0ZkVuYk9FN09iL0R1VmdPdGkzMUhq?=
 =?utf-8?B?TitiUmZtZUN0Tll5YjA1NkQrZU5oclJuSUNDMGpEdmFwZk9IeTQ5ZGNTbVNU?=
 =?utf-8?Q?yolt/RK902FvHFHFnuaS/wo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f9af036-7891-415c-435d-08dabe7252f2
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2022 14:39:05.4285 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ny/y6EOEj5CAg/RaGKWoVJsQiWHDOgQuUFsOp9k7MZyWIPx815t3QyRg5AKmPeDOxiIO01Gkvw5QyNycITyP3IuH5MDNLekhAyDyLLfwm9o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6290
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/pmu: Use a faster read for 2x32 mmio
 reads
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

On Thu, Nov 03, 2022 at 10:10:14PM -0700, Dixit, Ashutosh wrote:
>On Thu, 03 Nov 2022 11:07:05 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> PMU reads the GT timestamp as a 2x32 mmio read and since upper and lower
>> 32 bit registers are read in a loop, there is a latency involved in
>> getting the GT timestamp. To reduce the latency, define another version
>> of the helper that requires caller to acquire uncore->spinlock and
>> necessary forcewakes.
>
>Why does this reduces the latency compared to intel_uncore_read64_2x32?

Most of the error introduced is between the time we capture GPU and CPU 
timestamps. I believe, with intel_uncore_read64_2x32, the time taken for 
forcewake is also included in that time, so that adds up.

Regards,
Umesh
>
>Thanks.
>--
>Ashutosh
>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 26 ++++++++++++++++---
>>  drivers/gpu/drm/i915/intel_uncore.h           | 24 +++++++++++++++++
>>  2 files changed, 47 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 693b07a97789..64b0193c9ee4 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -1252,6 +1252,28 @@ static u32 gpm_timestamp_shift(struct intel_gt *gt)
>>	return 3 - shift;
>>  }
>>
>> +static u64 gpm_timestamp(struct intel_uncore *uncore, ktime_t *now)
>> +{
>> +	enum forcewake_domains fw_domains;
>> +	u64 reg;
>> +
>> +	/* Assume MISC_STATUS0 and MISC_STATUS1 are in the same fw_domain */
>> +	fw_domains = intel_uncore_forcewake_for_reg(uncore,
>> +						    MISC_STATUS0,
>> +						    FW_REG_READ);
>> +
>> +	spin_lock_irq(&uncore->lock);
>> +	intel_uncore_forcewake_get__locked(uncore, fw_domains);
>> +
>> +	reg = intel_uncore_read64_2x32_fw(uncore, MISC_STATUS0, MISC_STATUS1);
>> +	*now = ktime_get();
>> +
>> +	intel_uncore_forcewake_put__locked(uncore, fw_domains);
>> +	spin_unlock_irq(&uncore->lock);
>> +
>> +	return reg;
>> +}
>> +
>>  static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
>>  {
>>	struct intel_gt *gt = guc_to_gt(guc);
>> @@ -1261,10 +1283,8 @@ static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
>>	lockdep_assert_held(&guc->timestamp.lock);
>>
>>	gt_stamp_hi = upper_32_bits(guc->timestamp.gt_stamp);
>> -	gpm_ts = intel_uncore_read64_2x32(gt->uncore, MISC_STATUS0,
>> -					  MISC_STATUS1) >> guc->timestamp.shift;
>> +	gpm_ts = gpm_timestamp(gt->uncore, now) >> guc->timestamp.shift;
>>	gt_stamp_lo = lower_32_bits(gpm_ts);
>> -	*now = ktime_get();
>>
>>	if (gt_stamp_lo < lower_32_bits(guc->timestamp.gt_stamp))
>>		gt_stamp_hi++;
>> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
>> index 5449146a0624..dd0cf7d4ce6c 100644
>> --- a/drivers/gpu/drm/i915/intel_uncore.h
>> +++ b/drivers/gpu/drm/i915/intel_uncore.h
>> @@ -455,6 +455,30 @@ static inline void intel_uncore_rmw_fw(struct intel_uncore *uncore,
>>		intel_uncore_write_fw(uncore, reg, val);
>>  }
>>
>> +/*
>> + * Introduce a _fw version of intel_uncore_read64_2x32 so that the 64 bit
>> + * register read is as quick as possible.
>> + *
>> + * NOTE:
>> + * Prior to calling this function, the caller must
>> + * 1. obtain the uncore->lock
>> + * 2. acquire forcewakes for the upper and lower register
>> + */
>> +static inline u64
>> +intel_uncore_read64_2x32_fw(struct intel_uncore *uncore,
>> +			    i915_reg_t lower_reg, i915_reg_t upper_reg)
>> +{
>> +	u32 upper, lower, old_upper, loop = 0;
>> +
>> +	upper = intel_uncore_read_fw(uncore, upper_reg);
>> +	do {
>> +		old_upper = upper;
>> +		lower = intel_uncore_read_fw(uncore, lower_reg);
>> +		upper = intel_uncore_read_fw(uncore, upper_reg);
>> +	} while (upper != old_upper && loop++ < 2);
>> +	return (u64)upper << 32 | lower;
>> +}
>> +
>>  static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
>>						i915_reg_t reg, u32 val,
>>						u32 mask, u32 expected_val)
>> --
>> 2.36.1
>>
