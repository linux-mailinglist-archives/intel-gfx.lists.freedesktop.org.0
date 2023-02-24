Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F196A2080
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 18:30:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 663BC10ECA1;
	Fri, 24 Feb 2023 17:30:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E26410ECA1
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 17:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677259837; x=1708795837;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OGWoB4XKvzXVRhddluHGJP4MNcPloMSLvmE9r4xUHE4=;
 b=aAeMHeJMGr14Nj4zbcKMeHnKJQeG0uWPt7HeIsrBP8PJzTti5RRxf46H
 wAkEbNyTXBT8iV7Qx80F95Zpm5aRtzZdpfeAiqyzgr9cekQMZs+7lQfro
 cCj5eDroZ65cnvNsmsr5K9stnOs9c8nuCc81RrUfCMQX+JXUhKr2473M+
 n9sDW7NBJ2HWFrX29FEw+q4M6Nknx+soUwUF0DCpd9SxKZNHptYvxE/8K
 gytb/b5qVcWeUuFdEeSkmpeRIKE7kshQcpdJfMocrrDDEbd3vJmC4y3VM
 ezDolo2ENIeyNUwG6ESSb4I4ua+qt9OgOHk3cfexuMXKvJcCFHHxF2laH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="334957593"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="334957593"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 09:30:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="796808579"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="796808579"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 24 Feb 2023 09:30:30 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 09:30:29 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 24 Feb 2023 09:30:29 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 24 Feb 2023 09:30:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aO725ogrRyhoM8RCalk/Q8pNQmabJf9zjl58NLZPd20hgZ0Dip56SxZ8mm8p2jTVvdtpaeiQZ+M6FoRkpS8p3dnt2jw88tOq4Y6fecLfkZaS7rQA64q/xxt7IValKuiUx5KJIfF0kVuuu3Q7anm+FcUkBdYoCFNrMRgStzUIXllTb9mY6ONk8sfyfRASOiE+neLXitFslsDMC96//A5uKG/lhQGgmVY4/sNthk6Vyiq1UzrUN9ikpsA6Z3DI9/FKMXcCu4sia75kmL/G92L1MjyuFpA1TspjYNZqdjZY1I5V9Ci1xKL4ChkAhxbK9y99R0cFhIYicmV6CAMb1Wt+Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LAG5nhn8yV1HFYz8Av6QYs8aqOaxIS2c0SN9Txeqaxc=;
 b=C0TuL2VQDn+Cj9Gj6kXN4w9Vn0nxPEwzaI7j8J6HH5SzL7ppNm5GlSgyt55WwP67tITu6lZsdXuqOlhItbn3qe0/CaECi7owGNBRvkhDUk33w8zeJgdwoJQ8eOc+ie3bnqYqparENlWALFJnBoZQwp4/uY0hMbD2kEyKpjffXSLFzTyCqYlNQlRwWxodgTlAJJL2rvi5R4+/2AgA8SWmnMeB3IhKAcUsLUbKDLz+bJmCKBO/v8OnIBgAeoUWYJp9U+Mi3j4VXmpUkAicb/0lk8Ij54n3qcACNSvx212LKsNSrzCAAXaFd9gy7zPb4vJELtUAarkcDKtN0q0ifUetXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BN0PR11MB5709.namprd11.prod.outlook.com (2603:10b6:408:148::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6134.24; Fri, 24 Feb 2023 17:30:27 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6134.024; Fri, 24 Feb 2023
 17:30:27 +0000
Date: Fri, 24 Feb 2023 09:30:18 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y/j0KmLdFudXu5A0@orsosgc001.jf.intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
 <20230217005850.2511422-5-umesh.nerlige.ramappa@intel.com>
 <877cw9bc6g.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <877cw9bc6g.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BY5PR16CA0024.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::37) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|BN0PR11MB5709:EE_
X-MS-Office365-Filtering-Correlation-Id: a920c590-b260-4b02-6218-08db168cd1c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NYSb1M8lTaphYKtwmYbySaWCKV5ynKh5L8pnWoIOFJ0IbMsVsKsvKYmIzBIoV8iaKRFJeqxyV7yeOOn8NlKoPCxofJL5cv6r36HpL4Kn/cFvFu/MdKWchYWiaOAZQg+YWucJh1vwRPi/CK+uyQjVTX5kiB5G5hBq2trfWLjwZgBh9rpqD105c/Ck6zMGMdN3hqBjC58KQZ5S54QE0d62JbgZDbdpoEREzlHDYW0Vpry6ZkWqrHQYmrziy9jK9In7Pxz20qeRWtze46nlNp1+1EkMyzBEKm0eqMMsTfuqyyl1fBLhHeQzQaEgFvKA6a+PnOpKRcTvnw4tAzcvA8BO+a0u0s7oSdtNUXORLooSVKRJ3BVhcQi6EYhl0OEdKaqbskYHvzOI2fY70BY4G8BfKCwOQo+VtMwAGYOBolY2/ESyAq6NQ1bWZwmIFa1RU2oiPdjYrwhLawBCoo1ocXUEvZP8c6kpBTXa7Du+8AWPi3W9iQAXah5m3jq/3NSdodIGUGq3Pu0cYM56//SgHtJ7JvPr6L+HshM/jBGQ5vcUEYsA+xAtST9ZSwknUMV2I/oo0AWMrdkZlyAAe0NweYYyBysXEdmk/csSk2wYJzOBEQb2sBF9iR+T/kVL8Cd99LeQYX+Pksv73kSs6l8HCjYU8A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(396003)(136003)(376002)(346002)(366004)(451199018)(6862004)(8936002)(2906002)(5660300002)(66476007)(66556008)(66946007)(8676002)(4326008)(478600001)(6636002)(316002)(41300700001)(6486002)(6506007)(186003)(26005)(6512007)(6666004)(83380400001)(86362001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?em1WeFFRdCtVVU5EQU5vaFA5NTgwWUhZZWhWdGZHK09ERng3VnJCZUV5QTBj?=
 =?utf-8?B?a1RXRENlRnVXZ1hmZ29LMVlzcXArcjMvVlZsNGdDdFpqUDN1U1FCNTduMlVH?=
 =?utf-8?B?NHpGZnd0V1FlMWlTL05DeDVaYzVKa0E3eVZ1OXJwaTA1SHI4NTFFa2NmVVkz?=
 =?utf-8?B?N0M5ZVRaVGlRRzdnNnRwTTVzRlh0cGJVMXR1eUFyOG5sanQ1WUdKWnpKbnlk?=
 =?utf-8?B?cVlpNGxUdzRMTUdtWlVaL2daZ2hCQ2o2S2I4RWlVdFdyQ1hUSUZoQ0hFOHZl?=
 =?utf-8?B?aGtRbThmYVVDdGpiU1hXZTBsY3NMMFNWUVEzQ3hDa05aaFdsTGhkV3BLalJJ?=
 =?utf-8?B?bFNHbjQxRFBFSmg2Rm9CNXcvbW1abEk1NTdaTU9XdUpvVG1zV1ZXWVc0M2Vo?=
 =?utf-8?B?djl2ZnFoRlIrVng2NERLak1FZG1EQVVVMG11c1V4dk4yalFYVUxPSjl5cU5F?=
 =?utf-8?B?U2w5MlJXYjVTajVzLy9MOTZDYTZ5K0NicWRrLzFPR2NVN2o5SGRpd3I3Q05l?=
 =?utf-8?B?REx5VTVrUlBEdU8xNHBxdjNPUGlTRWcvZ0xkTVZOUFBEdnRyN0hYLzgzSGRB?=
 =?utf-8?B?V2xGQWdCWUpQSTNsUHlueTFlQk5mTFhPSlEwUS9NcnVXVjVibzQzN0prRmxa?=
 =?utf-8?B?dVE5Zkk3NVhQeVYxaURzYnpLNjBIWVppZDBPdkdwU3M0SXhXUTFSa1dOczJC?=
 =?utf-8?B?R293c0RESmFOOFVNR1U0MDNVaXRuSEVQL09ldHNlRXFpeGc1SEJXVTR6Q1Fq?=
 =?utf-8?B?bUFWZnFPaUwvTGtyZzFaL1lIbk85TnduclE0V2czK2xMcTFKZFphcWRDanIv?=
 =?utf-8?B?YUV4T0pqZmFyaXRWeGVUY3k4UkZZc0lKM3dKcFlXMnc5VTFtMXpHc2xzTXRJ?=
 =?utf-8?B?TmFQOC81dkNCZm9HamcwSE9ZdEVUQis1UE1MblMwRnJEdUpvMVFkTTJ3dHlq?=
 =?utf-8?B?TUxUOXIrd1dMNk1OUmplRlJLWlJSdE0wNGpqUFdWU3RxWWcwVExhd1hLZmFz?=
 =?utf-8?B?eW5qRW1LZ2RaczQvR0d1TjhsUkRwVEVicndJRnpuQ0g5Yko5ZFlDcVppTy9o?=
 =?utf-8?B?a2JUS0pUVDJmRUVkOVdFMW05NWF0aXBsNEJoVTM4eEQyMWtYc0JJOEZnWHF6?=
 =?utf-8?B?aDBlYmhEWUhZWExGVlUzd21iYWhYREpQUmdtRXY1ckJ3MTN0MHBEbTlHSEFT?=
 =?utf-8?B?c1hBeVFNdERSNXRDWE9zZkM0OHRYdDVrU1BrMzhjcE5jR0dON2pwRHJqV3pN?=
 =?utf-8?B?Tk00aHhpaFRkZzlvT2NrK29ucERxRm1ZTkJVenl4em9tVWZTcWJiSm52cXYr?=
 =?utf-8?B?QWlSZVhTOXNCeDJ1bzhaREhiTmUrVjNOYnArL0svdDVEVDU2dEorWWZRUFJt?=
 =?utf-8?B?WENpZDJONFVJVFg3bWpvcklRbDBCdUJydzVSY3Fpc2dTVUJ1QkU2bWQwUWNx?=
 =?utf-8?B?b2w1ckVvZUdVYTQ1a2VaOVl0UzFNZEtEa1BJTnVPcHByZUtaV0NIREI1R282?=
 =?utf-8?B?cklTeUNmcGp6cmdXUDB5OXdyeDkwdUMrSyt5VzFVbzRudUp0aEpGZWtQOXBy?=
 =?utf-8?B?SWw1cjVZYlIyWFliOVlwc2FqRXQybkRYZE9xT0FGMUJVN0k0cURYTzgwa28v?=
 =?utf-8?B?T3BTY3E2ZWhlQUJ5STkxZkFnZnZpcElSZHhUd3pRNm05Y1BvWUowWEg5NGJx?=
 =?utf-8?B?dXFjanRvVFpaWGFyTGVlMjZOSVZxcENOWnAxZzA0TXZMU2hoUlU2ZnJqeWM2?=
 =?utf-8?B?YlZOVEVXNTVSRlNlS01Dc1MvSjVqbTdKVGQzbmtoaVZUaHJjUkxHbEZnVElk?=
 =?utf-8?B?NlJOMmVqMmdFb2g2Y0ZCQXZhVlFNTE5IblZVVUJ0d1R6QzFFd2JWSHdIS3Mv?=
 =?utf-8?B?cUY1MUtYL2I2bTJFTHBXc1M4K1NOdDlqK2p6S1dtQ0MvZDJubXd0WE5Bdmdn?=
 =?utf-8?B?elJSVWZ6WnhKRWV6MWQ0MlNmTkp3TnlrWHM2WTF2ZkxvTTQrMHcxelhEMjVG?=
 =?utf-8?B?RE94ZnZHdHZLRFphUW95aG9oNDh5aXkxL0JydVRpWVVzNElUcUw3OFd5UXV3?=
 =?utf-8?B?WEovbUYxZ0xBdmJlWEZRRVFvYkxuRXlnc2NqY1VlS211WDU3OHJGdDVXRUYv?=
 =?utf-8?B?WVBGcEJxa3VHbld4MkZyZFJOTzFJRmVwdmwwV3c5ak9BME56SjhmaGVCTGpy?=
 =?utf-8?Q?y9IqLaJQAHl2fPmXIbWa2ps=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a920c590-b260-4b02-6218-08db168cd1c9
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2023 17:30:27.5488 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jXb99ESHAH4Np8BZ4XKyUMwADJRsgUttRYztaek6YnhZtb0e+2egNz9TuaR0YFfkCwPEIW9rj2gKdLpnAd3YAU3Ovt377a79dUtoTqJGaCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5709
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915/perf: Group engines into
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 22, 2023 at 01:52:23PM -0800, Dixit, Ashutosh wrote:
>On Thu, 16 Feb 2023 16:58:45 -0800, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> Now that we may have multiple OA units in a single GT as well as on
>> separate GTs, create an engine group that maps to a single OA unit.
>>
>> v2: (Jani)
>> - Drop warning on ENOMEM
>> - Reorder patch in the series
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_engine_types.h |   4 +
>>  drivers/gpu/drm/i915/gt/intel_sseu.c         |   3 +-
>>  drivers/gpu/drm/i915/i915_perf.c             | 124 +++++++++++++++++--
>>  drivers/gpu/drm/i915/i915_perf_types.h       |  51 +++++++-
>>  4 files changed, 169 insertions(+), 13 deletions(-)
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
>>	} props, defaults;
>>
>>	I915_SELFTEST_DECLARE(struct fault_attr reset_timeout);
>> +
>> +	struct i915_perf_group *oa_group;
>
>I think 'struct i915_oa_unit' is a better name (since it suggests a HW
>entity), but since if we change we'll need to change everywhere so leave as
>is with a comment to the effect that:
>
>	1 OA unit <-> 1 OA buffer <-> 1 perf group
>
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
>>	 * If i915/perf is active, we want a stable powergating configuration
>>	 * on the system. Use the configuration pinned by i915/perf.
>>	 */
>> -	if (gt->perf.exclusive_stream)
>> +	if (gt->perf.group && gt->perf.group[PERF_GROUP_OAG].exclusive_stream)
>
>I haven't looked into what this function does, hopefully ok to do this only
>for OAG?

This function builds the value that should be programmed into
PWR_CLK_STATE register which exists only for render.

Will add remaining comments

Thanks,
Umesh
