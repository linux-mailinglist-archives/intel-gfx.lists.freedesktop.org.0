Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD436CB255
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 01:30:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B32910E420;
	Mon, 27 Mar 2023 23:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE11A10E41F;
 Mon, 27 Mar 2023 23:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679959801; x=1711495801;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h0gCOhEJg74TXJNtGNG6SN8OhdkcHD18XovVLFq89js=;
 b=fIT163jH438syx9iIik7ai+XRNoUryX4IVSF/gKwesZDku7p9mxcb29E
 ZI0BcWXdZzYKYFMVJNDdaqSEkuqrspRpCs8Xax7yvKiAn+aRZLzQehdP1
 WvbBasdoJwbHBbSAXeR9zDX5Bac4hM3sOABI3t82PIegsAOnez+mzMIw6
 TTsz3XEJtj9vqdMiilcf9h/jJHAJp04Ke7Qd2kJbi79xwgvuWYd+scXbC
 66yokdOb37xvw3VnSS5Gv6p2qgsgp5blP/Mrw46TtLh0vpidcuxmDzHDO
 ubG+tsdfw4dzgF5MMrMGuxZkUyYOoHdDrLCN8eSKhOw1WxCC5RmNalFau Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="341995160"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="341995160"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 16:30:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="683643823"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="683643823"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 27 Mar 2023 16:30:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 16:30:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 16:30:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 16:30:00 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 16:30:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZlD5dxCJHMIIhSyRDOfmx8kw0IhoQ0VkXpXY+bMs6226y948WcuEOS9V7zN+zCbIfi56pWc5ZJOabZgTQeP/G3fUsd1pibahLH1aKwfBdvnvjZvUM9EB3wdVlzpqobFFTgHKjymYXFnFfH2yKOeeuskBaLaxpXZCBXzLI9Q8LoeEZ0NfxSEM/SqvOV++htmyHcv9N9GeoYmyUxghbsMOsbP7yWTKY2XZ1Hgw9vqsBzEqs/vGj86fPuq0NWZy40xpzqsQzSSWw0FuiVGR+4bJV9qeTavU4bF7k1RddTuVsHGMweoHQ9TYRh/sGLDsPY2tvr5Msne4jGhyRlLPK67+qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S17N9WW4ftMSXa5Ldyc8amaP7lGF2Qf1QXtDyMsa+/0=;
 b=lvd7m/kaYTaWQ2J3wUQ4Eq2JA+g7A9OXiXg6QUpIOiUE2r4WrOnDekBR/TZlCM85OVnnWZ51pqpEuKMXEvCx+DkmZRaQMPjluUELp8iKUdnR3pAgQZZfjvC+uMy2MmdW3BJBAiuSrRN2HWNLagFP+D0De8kIGsRp0nWd3NsqOXm7S4x36JPyLvu80Tef5IEJdSAVmTGIw7jvjt7i0uH/Ec9IqIc72UHlao1wJ3z9MGTi7XYMK9u35o4+BBEp1cXg5ffEAy9KE5j7saM/Nba/GgiFs+P6/q6DR9w7XlK0ysE0u24x6UW7y4cOTuLVs1PSLZ7Z7TiD99CajEONlNEExQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Mon, 27 Mar
 2023 23:29:58 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::9722:bfa9:c7a:1250]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::9722:bfa9:c7a:1250%6]) with mapi id 15.20.6222.028; Mon, 27 Mar 2023
 23:29:58 +0000
Message-ID: <99d669bf-54cc-1105-fe50-616db3aaeae2@intel.com>
Date: Mon, 27 Mar 2023 16:29:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20230324224959.1727662-1-vinay.belgaumkar@intel.com>
 <20230324224959.1727662-3-vinay.belgaumkar@intel.com>
 <ZCAmqEsDAxVt7ysy@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <ZCAmqEsDAxVt7ysy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR11CA0053.namprd11.prod.outlook.com
 (2603:10b6:a03:80::30) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|CY8PR11MB7777:EE_
X-MS-Office365-Filtering-Correlation-Id: 10bc2855-2adf-42ae-c06c-08db2f1b2d64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3m1dKwQbdB+FMS56kMnvrbHOeXphA8BLpD29y2hZfw4bAo2URrJaFQCUVKeUxBLdcBpedD6YuvMrjyY9145HGP2O4s+J71w85Y9d3SU9hpWoUUIulCqOmgwxoV/3I79cjoFgz7ePv9afKrzlorGNlHNOFk8hojfqmaaKJsgsSMEXCroqqVKlFSLDvqFAK+R7uRhjb/0C3Z3vlEOe89m9A4oSoF5v5QutWBAhgp7yW24dITYO5BVN9KFF+0qRkrJ7y/gnsIXYNrCHNzHyQqXEcsQ6r16Yn4xIMk0VYzgfUxCuFzwhRJbIjwSCpCftbuCCetynDZw+UPm/k1UQ9MA+dvjymMfzWDgP8+nI5T2PVKqUUKpF+HuVKcB4QkSiU7GEGghtu1Iqrb2x0cU9pvGS5/OdV66oloUYce54hCdZa+k0FSidY2gv3x3S9EExGl59CCtovvuRPlKvQYcqu6zKSK90kT9Ke+yi+IapV4iz2JQOuNWXoqQK3LE3Yb3unKpE0ufIXtwgqR3+zAROD6uXy6PiEKG6VTG+ryFTj8zLPJMBw9gsLBoeu88vvuE2/8KnnTOuJ2QqxTWupMTvo7CHXESLIVVAtKqGuvLFJKCv/kJ4od8qHG00obYdfIdwPGYnxTzBkGCER/P3Lvujc/zjoA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(366004)(136003)(396003)(451199021)(2616005)(53546011)(83380400001)(86362001)(31696002)(66946007)(6512007)(26005)(6486002)(6506007)(66556008)(6666004)(450100002)(66476007)(186003)(8676002)(478600001)(41300700001)(316002)(6636002)(36756003)(37006003)(31686004)(4326008)(5660300002)(82960400001)(2906002)(8936002)(6862004)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUE3Y05oUGFoaTFsSUsvdDJJTVVWSFRWZzhNVlpwZ1dPcEpoby9qWVVlRG83?=
 =?utf-8?B?Y0YraHdSWHRUTjRlZjYzeVhQSVp3RzY5b0xHWGRGQUZMUVZYTWhFcWFSc1hT?=
 =?utf-8?B?dlpaRFBEaGl6WFl1TDJ1aHErakN3Z1dmRlBva2NGZlJqaGxVRXhHSnFDdTlN?=
 =?utf-8?B?UmlNZWxkWHJSa0lta2ZQNFlZNXdpeW9Vd3ZFK1A1bFNicjJWalFzSXdCaW5o?=
 =?utf-8?B?dDBWMFJtOHRSTDhML3JQSC8rWlNTdDNqUWJ2M0lOdEFVd2NUZE05QU94RVgx?=
 =?utf-8?B?UTZpdkMvN0w5NHNCUHhXSDJFWEtQTk0zbXZrbHVtTlVvMWZUREQ3Nkc2QldO?=
 =?utf-8?B?dU1haTB4N21oL0JuamJ4c2lqeHAwZFE5eGlRZ203Q1VSZ2MxNFlTL0d0K20y?=
 =?utf-8?B?UlozS1lTL2xDbEVoM2w5am55NWlwYmk3alQwQ01ZNmIvbld4WXhZWHVZY2xI?=
 =?utf-8?B?NzRuS1E3NzdnUFlmVlFhRzJDYXl0cTJSMXR5dXc0c1BnOTRPNVFVU3RLdnJQ?=
 =?utf-8?B?NTgzKzJBbEhxSUliTXJDVG5uV3VQNFhqYldsQ0thcmpkZDdqaG5kQldrc29a?=
 =?utf-8?B?ek1JSlBCa09kc0wwUXVyYnVSWWE0TVVubmtCbUdwSUVpSHlTdnl5OFlwQ1Jz?=
 =?utf-8?B?VmI1UlhabmVvQlFHeW1mYnZMYnpwT1A4cm96YVZTZzc5MC9ndnFiMzNMTnll?=
 =?utf-8?B?cTRDbkxBQ0lvNUFUUGZsTktvdnpwOUtPZ0NDWmoyb1Fab2k5Z0NPSHBZYy9E?=
 =?utf-8?B?OXdLWVg4K3Y1RzBBWEFsSG1yKzVXcnVaTDA0bW8xUTJZcEIwaVcrdzdnRVpQ?=
 =?utf-8?B?WmtjNUg3UDM4MDR6bGl4aXVxVEUwNnFQeEROa0ZPZVdUdGZodnU3emJLL2Vi?=
 =?utf-8?B?U0wzd3RFbnJQb0hsaDFuNVIwK1laenE3RzI5STlaMVJxcWpLakg5SitwNHEv?=
 =?utf-8?B?YS9GZEJCY0tuaFp6TDhCK0hvOGRhcXRaQytYOWJ0bWVkbDFEeEgxUHI2SHUv?=
 =?utf-8?B?M1U4MWxVYTM2NzVaT0RlKzNoUjZvVjNNQjR5OUpFVHZEaTRmMFlSc2lvRnpS?=
 =?utf-8?B?VmpHZkVNSU9Ha3JVOGpXYkxZaWprZUVENjZ2bWVNS2tXUkptUkxNY0hYSXRh?=
 =?utf-8?B?Z0p3NTlhQlNha1lBTVpsQlBZY0pCcGoyVGx2UVJuWEVFWnI3dldJc0h4UERB?=
 =?utf-8?B?akZuRWZrK0c3RzRzdnZQV0xLNHdMV3QxTFVoc1YyOWFndXFMMEN0aG14ZjZI?=
 =?utf-8?B?dmE3bkZXK01ET3ZyenB3VkcxZnZ4YTlqZDFBanFhd1QxMGxJMWY4ZEk5ck1T?=
 =?utf-8?B?Sk5QaklPSndQMUlqQzY3TWRna08zdlZ1NGlqRitXUUZZd3JVY29KdVRuMWMx?=
 =?utf-8?B?ckpxZE5lQTJidG5CMm94cVRoNEhSRkY2SzhRaWNXeGdlYUFCRGxOdm1YTlli?=
 =?utf-8?B?OHdyYndkSXNXSjZYSGcwOHpwM0dCVjZSYm55RDYvQ1JDWTdMTXd1M3c1N2ZY?=
 =?utf-8?B?a0ZRNGphU2tOY1RkdG5vaHB0cWo2Qnh4ay9ReEJ4MGJreUJWRTZiaTQ3eU1Q?=
 =?utf-8?B?WkxmT0hyRDhZaE45eWswNmJqR2RuVEhyQ0VNRk1oa1p0TnY3K3R6ck9jKzQw?=
 =?utf-8?B?VHRJdVFzUVBPZVVJSkd1S1p2a25XendSU3lteVczS25Ya25TQmp2blFLSkJO?=
 =?utf-8?B?aEk4a3phREtuZ0pFWEF1cWVIbDJsb2VaZmRJSE1RSHc5Ums4bUIwOW4zMEIv?=
 =?utf-8?B?WTAyZVVmSEFnV2pmU2p5TGc4eGZqWGtCVmthaEdlNlZMc2JNdDlXSE9GRVRI?=
 =?utf-8?B?TVRvbCs2dThWT25QZXFRMjZwK09pRkFrU3A4Sk9hbDk4SUdySUZHVWJHU3g1?=
 =?utf-8?B?RHFzQjMvSGx2d3ZBQVM0Mlo3WHBUZmVEaUkxK0V3cTE3cFd6M2RoSUR1L1Jz?=
 =?utf-8?B?NE9jaXNHTTAyMXF2cFViUzV1UWFMbzhrZmlkc2wwMEl0MzhucjBvNzM5RGRQ?=
 =?utf-8?B?K2NzeE5XTlFXbmVOOHBONzdQSTMya2k0SjVWRFU1eDdSUWw4U0huaEN0UzZ0?=
 =?utf-8?B?NFBOQVgzaXBmanduNjNLcCtrZEsxNjBaSCtsSnU1aHVlcWJseEpoSXZldFZs?=
 =?utf-8?B?RGVVQktKcDVwdm5xNUdYWG1rUFNiR21KMlpYNFFSRW15bUFJYm5STURvZzRq?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10bc2855-2adf-42ae-c06c-08db2f1b2d64
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2023 23:29:58.0278 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oCotn9mW1y+PuPyy5EVs7h3OOcth1Z9ePqdCqRvcN0lgQaDsp0S61vRMEKxz/+srSvIhpGnBv2yZAO5tas+43mUUuCExfhKiE3+j9xMEFaY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7777
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] i915_guc_pc: Add some basic SLPC
 igt tests
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/26/2023 4:04 AM, Rodrigo Vivi wrote:
> On Fri, Mar 24, 2023 at 03:49:59PM -0700, Vinay Belgaumkar wrote:
>> Use the xe_guc_pc test for i915 as well. Validate basic
>> api for GT freq control. Also test interaction with GT
>> reset. We skip rps tests with SLPC enabled, this will
>> re-introduce some coverage. SLPC selftests are already
>> covering some other workload related scenarios.
>>
>> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> you probably meant 'Cc:'
Added you as Signed-off-by since you are the original author in xe igt.
>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/i915/i915_guc_pc.c | 151 +++++++++++++++++++++++++++++++++++++++
>>   tests/meson.build        |   1 +
>>   2 files changed, 152 insertions(+)
>>   create mode 100644 tests/i915/i915_guc_pc.c
>>
>> diff --git a/tests/i915/i915_guc_pc.c b/tests/i915/i915_guc_pc.c
>> new file mode 100644
>> index 00000000..f9a0ed83
>> --- /dev/null
>> +++ b/tests/i915/i915_guc_pc.c
> since 'guc_pc' is not a thing in i915 I'm afraid this will cause
> confusion later.
>
> I know, guc_slpc also doesn't make a lot of sense here...
>
> Should we then try to move this code to the 'tests/i915/i915_pm_rps.c'
> or maybe name it i915_pm_freq_api or something like that?

Sure. I was trying to make these guc/slpc specific since host trubo/RPS 
already has coverage in IGT.

Thanks,

Vinay.

>
>> @@ -0,0 +1,151 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright © 2023 Intel Corporation
>> + */
>> +
>> +#include <dirent.h>
>> +#include <errno.h>
>> +#include <fcntl.h>
>> +#include <inttypes.h>
>> +#include <stdlib.h>
>> +#include <sys/stat.h>
>> +#include <sys/syscall.h>
>> +#include <sys/types.h>
>> +#include <unistd.h>
>> +
>> +#include "drmtest.h"
>> +#include "i915/gem.h"
>> +#include "igt_sysfs.h"
>> +#include "igt.h"
>> +
>> +IGT_TEST_DESCRIPTION("Test GuC PM features like SLPC and its interactions");
>> +/*
>> + * Too many intermediate components and steps before freq is adjusted
>> + * Specially if workload is under execution, so let's wait 100 ms.
>> + */
>> +#define ACT_FREQ_LATENCY_US 100000
>> +
>> +static uint32_t get_freq(int dirfd, uint8_t id)
>> +{
>> +	uint32_t val;
>> +
>> +	igt_require(igt_sysfs_rps_scanf(dirfd, id, "%u", &val) == 1);
>> +
>> +	return val;
>> +}
>> +
>> +static int set_freq(int dirfd, uint8_t id, uint32_t val)
>> +{
>> +	return igt_sysfs_rps_printf(dirfd, id, "%u", val);
>> +}
>> +
>> +static void test_freq_basic_api(int dirfd, int gt)
>> +{
>> +	uint32_t rpn, rp0, rpe;
>> +
>> +	/* Save frequencies */
>> +	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>> +	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
>> +	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
>> +	igt_info("System min freq: %dMHz; max freq: %dMHz\n", rpn, rp0);
>> +
>> +	/*
>> +	 * Negative bound tests
>> +	 * RPn is the floor
>> +	 * RP0 is the ceiling
>> +	 */
>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rp0 + 1) < 0);
>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0 + 1) < 0);
>> +
>> +	/* Assert min requests are respected from rp0 to rpn */
>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rp0) > 0);
>> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rp0);
>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpe) > 0);
>> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpe);
>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
>> +
>> +	/* Assert max requests are respected from rpn to rp0 */
>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpe) > 0);
>> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpe);
>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0) > 0);
>> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rp0);
>> +
>> +}
>> +
>> +static void test_reset(int i915, int dirfd, int gt)
>> +{
>> +	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>> +	int fd;
>> +
>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>> +	usleep(ACT_FREQ_LATENCY_US);
>> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
>> +
>> +	/* Manually trigger a GT reset */
>> +	fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
>> +	igt_require(fd >= 0);
>> +	igt_ignore_warn(write(fd, "1\n", 2));
>> +	close(fd);
>> +
>> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
>> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
>> +}
>> +
>> +igt_main
>> +{
>> +	int i915 = -1;
>> +	uint32_t *stash_min, *stash_max;
>> +
>> +	igt_fixture {
>> +		int num_gts, dirfd, gt;
>> +
>> +		i915 = drm_open_driver(DRIVER_INTEL);
>> +		igt_require_gem(i915);
>> +		/* i915_pm_rps already covers execlist path */
>> +		igt_require(gem_using_guc_submission(i915));
>> +
>> +		num_gts = igt_sysfs_get_num_gt(i915);
>> +		stash_min = (uint32_t*)malloc(sizeof(uint32_t) * num_gts);
>> +		stash_max = (uint32_t*)malloc(sizeof(uint32_t) * num_gts);
>> +
>> +		/* Save curr min and max across GTs */
>> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
>> +			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
>> +			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
>> +		}
>> +	}
>> +
>> +	igt_describe("Test basic API for controlling min/max GT frequency");
>> +	igt_subtest_with_dynamic_f("freq-basic-api") {
>> +		int dirfd, gt;
>> +
>> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
>> +			igt_dynamic_f("gt%u", gt)
>> +				test_freq_basic_api(dirfd, gt);
>> +	}
>> +
>> +	igt_describe("Test basic freq API works after a reset");
>> +	igt_subtest_with_dynamic_f("freq-reset") {
>> +		int dirfd, gt;
>> +
>> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
>> +			igt_dynamic_f("gt%u", gt)
>> +				test_reset(i915, dirfd, gt);
>> +	}
>> +
>> +	igt_fixture {
>> +		int dirfd, gt;
>> +		/* Restore frequencies */
>> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
>> +			igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, stash_max[gt]) > 0);
>> +			igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, stash_min[gt]) > 0);
>> +		}
>> +		close(i915);
>> +	}
>> +}
>> diff --git a/tests/meson.build b/tests/meson.build
>> index 7d2168be..3ebd3bf2 100644
>> --- a/tests/meson.build
>> +++ b/tests/meson.build
>> @@ -202,6 +202,7 @@ i915_progs = [
>>   	'gem_workarounds',
>>   	'i915_fb_tiling',
>>   	'i915_getparams_basic',
>> +	'i915_guc_pc',
>>   	'i915_hangman',
>>   	'i915_hwmon',
>>   	'i915_module_load',
>> -- 
>> 2.38.1
>>
