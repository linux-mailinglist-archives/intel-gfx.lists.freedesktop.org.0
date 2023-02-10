Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A269692463
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 18:25:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1B3310E00D;
	Fri, 10 Feb 2023 17:25:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B311F10E00D;
 Fri, 10 Feb 2023 17:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676049945; x=1707585945;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hr+7FYeIrRsAhVJ3EPvKfIaxEh62uJK+TblCMQ2nTzU=;
 b=XW95IEqaVIIuJay3cMBgblly/buv+DU2VLUdrDzMw9xNF1jL6nA5wVG0
 aqJDKWA57wfiYfkojwHu62RvEOZdx7OKuQcap54g3Y4xdJD3Uyzgo2oPT
 e/J6Za0VzgJx5e+MBE0Qiy4FtFtAVhqNL2Bud/HXEzE92CGTpA6Tve9wd
 6FsTNDtldXv35zW63DPHk5RVWB3dtOs6qDfXlrxa7kDfJdLMiayPh4o8a
 B+3Mx+9ydCEemBFKHFqkAttIEGAeyxFYvLx0hV+TGdc+13XNvmn3IGZPt
 mF+qkBJ+3hemRl/A61tw2uVlUQZS+uXTZ1M6vRMB1VRMC9s5dz+Oa606r w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="395083687"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="395083687"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 09:25:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="668109881"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="668109881"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 10 Feb 2023 09:24:59 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 10 Feb 2023 09:24:58 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 10 Feb 2023 09:24:58 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 10 Feb 2023 09:24:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UaU6O7scsJEGZqfjMgJvGX5mlIFXkngDOhzW8n597jzQhaptsZ84TGXsdo8ohxnA0i7L6RjbtgjWJdXV5ECXgKgXzZ12mEq+GvssKDJa3eN6XjoFsopBB77IgSMWZIpai4Ob3CqGIK7nHm1nl9N+OtdE4JhUhmnIwFSAlVK2HUupaTfF7skER5qykHjp0rJuFgIFCSKKHtG1spGU9IJ/yWhPyAo14dHe321XIVZzZe6eOsZnQjuiF5HQHdBz7IZmcL54dpvd0AGYWYePTOu2tKEbswyUzMjY0g7XB7BTHWVClyp5NPKzEXiGeF3jGgrbPugg7KyWA0TTh0VNwIfQkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bIhWgJcTkAzKY0yzRS4w/ieAOCjKec74vaQJV1EaifQ=;
 b=hlj7yA2hKYtrRvPwVOszvBY5y9bSNcPaYNq3ubv8xkCBJc6Izq2CNmG+CFp+t7NujPsc5tD6lKKmTvXRPQIs3BRZlzPWYZ+19LGXn/Gm/n94ho8ZTXaUnnXwbMdI+ntQV5KpXXWhs6UPfYS0hu4Jei6o3+J1lk76JyPZ1etjFRrFEza9r8YEW4uGi4Nn4i6OEUtoX338PSyTgnmwbkeC4hwXe5dxP+Q0friFP2Y56dN6j+G51aHFcngVwsHGv55iae/lz2KXNhBSwMXkNqgOgkmAci/Xn2HRgKxwmT1n0l04oyjt9r52P/2Cs+0M73hP1PV3/hSr5mo9etDMM5KniQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BL1PR11MB5397.namprd11.prod.outlook.com (2603:10b6:208:308::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.21; Fri, 10 Feb
 2023 17:24:56 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::8b33:564a:21a2:cc8f]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::8b33:564a:21a2:cc8f%5]) with mapi id 15.20.6086.021; Fri, 10 Feb 2023
 17:24:56 +0000
Date: Fri, 10 Feb 2023 09:24:53 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <Y+Z95YFARrUijh1r@orsosgc001.jf.intel.com>
References: <20230209115039.34441-1-janusz.krzysztofik@linux.intel.com>
 <20230209115039.34441-2-janusz.krzysztofik@linux.intel.com>
 <Y+Z82anLvt6+l/5Z@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <Y+Z82anLvt6+l/5Z@orsosgc001.jf.intel.com>
X-ClientProxiedBy: BYAPR01CA0067.prod.exchangelabs.com (2603:10b6:a03:94::44)
 To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|BL1PR11MB5397:EE_
X-MS-Office365-Filtering-Correlation-Id: 01f28fc8-8275-4ce2-ecb6-08db0b8bba33
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sFOfU0Apxeup37GzJ6TLRPFxXJbP5lWV7tQ25gNtd9D4wLxoh+FTJI2E5aA/cP7Pt1gK1Vy24iboKoEA72bt8g84NUICMKVEK4R8sDxEkTuEu0ty0w9i0uTjcvjCl2pHW9Dn7KyrPkQfClGyiCL4yPtzLj/SpGtGBazyKMPeti9luse0ezZ0qG9QJ9Dz1CoqV6lEJHw8uDHmggv3ExGAlP5SMv4DU4zdF6c5ZqsRfdXI6Vy+3AhY90Yn7WF9Dwa8H/tGnxm1wtNrD7/35wzitkuQRcnTfxBHMCCmlcZ4oTZZcWyCxyi2LPWWJcswO4zke0Ylbu+EzTjciGY935kN9Ozu9zGOxsKPypMRaLyagTU3hrEhJY8rTmDioLV8Py6ikYEU0g0YtLwvFRtygeEJg8fvNu+vgI0jvbysH7p/qnZ9uBJe9mXxprLzGipnMnGKlkzKABJsd12bed3O826K4HI/DynyL0rTtmK6a/mw0VC24IY0QOZMORzU6SHWo074gIuQAc+1GUsl/FKrDtO+4qhhb/VkUfGr2+qAykUhi5dmxVPYzmT/48sFXv3nGD6wUdBWmVbNY3G0JtBzYPMZzoj8XHrg8f10NA6CWZ0IIUbTyXqWurAeVP1PmyQ8I2ZlNigEHs0zkt5NvAJIe8nCxQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(346002)(376002)(39860400002)(396003)(451199018)(82960400001)(86362001)(38100700002)(41300700001)(66556008)(6916009)(66476007)(8936002)(54906003)(4326008)(8676002)(316002)(66946007)(5660300002)(2906002)(83380400001)(966005)(478600001)(6486002)(186003)(26005)(6506007)(6666004)(6512007)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGR2N2NZcjg3c3h5bFR4NDZDTElhQmYrUzZaNiswdTBrTWpOVWx1SVFoKy9u?=
 =?utf-8?B?VUw4M0hoWDNkemJDY0FId3diaFVISFNiN05aNjhxV3RoMTYvSzJYVllVd1Vs?=
 =?utf-8?B?SFdKTHRuWnYwTXZNYjFmbUJicGR5OTNZWkVlZEZib3Q1OXh4blNsNldSczJ2?=
 =?utf-8?B?VjBzRWVSWFFTczJuTjUwT3dpYUplam1McWJlNVJORUtwY2orMEVoZUhyNThP?=
 =?utf-8?B?bDdza1ZZY3EvVW9CN1dFdFhmWklwbHJiZFk1MkFqREFHaTJtdUhlbGM4OW11?=
 =?utf-8?B?UWJOVnpPV2t2K3k1S1pzVi9uZmZKd3FLMTY3Z0Frc2NIVXNTOHNSNmU1L0VH?=
 =?utf-8?B?TG9CTU40dzZOUWdDNjRoN3lZRGlLVnJaODd0cTN3K09sYlhlVnFyMUlVZWs5?=
 =?utf-8?B?NUFuc1JqbzVXc3UvSjhoa0hZY2t6RUhuQmtBdUxtbkk5VlpYVnhzSGNkS0Vj?=
 =?utf-8?B?ZFFTRGxzYmFIa1VneGxlc0UwOFZ0eDErOTRzVFF3Rkkyem1FdklqdDRxUWJh?=
 =?utf-8?B?S0t4MGs1cnBzMzBSbEJEeVFMYTY4SEVHVlA0b0hIaThXcHJoV3B6ZWJyZlM5?=
 =?utf-8?B?blpyb0htbHlSODBhajhpaGkzUk5RaVVTY0RFU0xIeFd6bUo2WDJZYTRaWDZn?=
 =?utf-8?B?aDY0QWRUM0c4NzFGOGk1NDV4alU4cEk2a05DUndOcGVqSHVqbHIrd0xiVGpK?=
 =?utf-8?B?R1JDMzgwcEF3elhwVGpsbG1yOXNubTNHQVJUOHBzSkdyOUJGQy9qU3lvRzhJ?=
 =?utf-8?B?STN1aEJFM3ZwYmxLRXo1ZDV2QmVXb2I5MjdieUszS1p1Ly9sUlcrTzh0ZVFC?=
 =?utf-8?B?UG0zV2pKd0I2cXNZRURoMnFGZ2tGME14VDM0cjJKREVyWU01OG5QT2UzZGJz?=
 =?utf-8?B?M0o2NW1TTy9EN04wOGpocUF2Z2hiWXowTjNWeWFpdG4wRWpndCt1U3FYdk1y?=
 =?utf-8?B?YVJSdU9EQzRjZlhIOFpyU1F4bmdGS0h0bTAyVXR0ak5FUVpBYXFTQlhMTnJs?=
 =?utf-8?B?ZmdGVmRxK0l0SlV4dlV2ZXhteUx0ckNoWkdDaUhwS2hUeDNtTUp6Ukd3eXc1?=
 =?utf-8?B?d0lpaFdvUk1lZDdXYkNwdXpldFgxTHN5eWEzQkN3V3BwRk1kNElLMjhJaW1Z?=
 =?utf-8?B?OEdsYURLMVplNmNlUERCVXRTcmJJdXVvMXB2a0VEUVlFRzZDbWtzZWpRbGV1?=
 =?utf-8?B?SjcxNWVUVUVJSzF6TTMvVkE2NTlneGhTWmFYMW0xUDV2bldqc3BPRlJnY09O?=
 =?utf-8?B?bUk3ZEtWQXJrRWg0ZXNycDdvejdLYjR6T2JWZ08yL3RKdmo5NWViZUJESTNz?=
 =?utf-8?B?bzgydWF3S2xHZDZxdFZJVmR6NktJNjFRNUlUbzhaNDdBOGtXamZwQ1Nkc1FW?=
 =?utf-8?B?T3M0OVNUNCtLMGE1QmNkZGZaaWpJWnd1T0lGa3ZxcS9vYzQrN010NmZKU09I?=
 =?utf-8?B?d2JoNm5yaWlzTENHU2NjZnJ1S2Fad2k4bXhxTzhkWms3ZFhZOUlTcHBLVlQx?=
 =?utf-8?B?ZVF1S01UTGlvazdUdDBvcDROR2phN2Z3U0dnSyt0RHZ3ekRiS09LdGJUNGxY?=
 =?utf-8?B?TjcrdzNCYVk2T1liUlIrSitBNHN0VWRURlB6RVB6dGR0REU0SkxEdVpxU25L?=
 =?utf-8?B?K1NzMm1TYStsU3hzUnE5T3dMd1NRUVFPeTQ3dnhOTm5EdDZBY1luY3ZNV3di?=
 =?utf-8?B?SUUwTjVkWDVuMjFNbTRCTUNrbGgyRVdMdnhXWmhHSVRSWUVVeGYxQ0QxalpS?=
 =?utf-8?B?WHhKdU80VXhKbmNJVGpOQVNsTzZiaGhXR3lMTGRsV2RhUlVvZTNFbHNtN2pM?=
 =?utf-8?B?U1NGaVYzSGpsdXloY2I3RzkxUjducmZ4anNHQWFZNWYrZXZCb2NxK1lZL2F4?=
 =?utf-8?B?UVlnOWRYL1R4MDFPZjFqNE1PYkZod1R4MFpFTTVCNGt0NFlXejFrM0s3ZGVh?=
 =?utf-8?B?ditGUnV6WXcybTY0Uyt4SXVRdDB2NGlTNkh2SHlBSncwdlIvRElRZWFJTjV6?=
 =?utf-8?B?b0RXcWRpV1dPRmpJUjMrNmZOdGQ4L09WSVlyV1BUYUdZWHhIc3hRcEFkK1do?=
 =?utf-8?B?ZU93MXZCS0pNTlVPZUQvMnIvOTlSMnQ2MXB4Tm05MXFlZU1hOVZkOG01TW5p?=
 =?utf-8?B?NUxBUEJ0SG9RN0RFdHVzeDhtMTh1QmVRdFI0bUkyNkQyRVdrdHFiTHVPRUtT?=
 =?utf-8?Q?f4p3A7hZ9zQMir6BRbgx9v4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 01f28fc8-8275-4ce2-ecb6-08db0b8bba33
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2023 17:24:55.6788 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IW9+CmmbqLYOE6v75tjIOVl8ELgsAl/Lf7E0b+9nyeChdUK9/j+eyta4BLRQdN+r0z7EJ1DfDdt866lPSFXI73eTTzuCJZSoPCfqO5mSglg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5397
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 1/1] tests/gem_ctx_exec:
 Exercise barrier race
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Chris
 Wilson <chris.p.wilson@linux.intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 10, 2023 at 09:20:25AM -0800, Umesh Nerlige Ramappa wrote:
>On Thu, Feb 09, 2023 at 12:50:39PM +0100, Janusz Krzysztofik wrote:
>>Users reported oopses on list corruptions when using i915 perf with a
>>number of concurrently running graphics applications.  That indicates we
>>are currently missing some important tests for such scenarios.  Cover
>>that gap.
>>
>>Since root cause analysis pointed out to an issue in barrier processing
>>code, add a new subtest focused on exercising interaction between perf
>>open / close operations, which replace active barriers with perf requests
>>on kernel contexts, and concurrent barrier preallocate / acquire
>>operations performed during context first pin / last unpin.
>>
>>v2: convert to a separate subtest, not a variant of another one (that has
>>   been dropped from the series),
>> - move the subtest out of tests/i915/perf.c (Ashutosh), add it to
>>   tests/i915/gem_ctx_exec.c,
>> - don't touch lib/i915/perf.c (Umesh, Ashutosh), duplicate reused code
>>   from tests/i915/perf.c in tests/i915/gem_ctx_exec.c.
>>
>>References: https://gitlab.freedesktop.org/drm/intel/-/issues/6333
>>Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
>>---
>>tests/i915/gem_ctx_exec.c | 123 ++++++++++++++++++++++++++++++++++++++
>>tests/meson.build         |   9 ++-
>>2 files changed, 131 insertions(+), 1 deletion(-)
>>
>>diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
>>index 3d94f01db9..97fbc50e97 100644
>>--- a/tests/i915/gem_ctx_exec.c
>>+++ b/tests/i915/gem_ctx_exec.c
>>@@ -42,6 +42,7 @@
>>
>>#include "i915/gem.h"
>>#include "i915/gem_create.h"
>>+#include "i915/perf.h"
>>#include "igt.h"
>>#include "igt_dummyload.h"
>>#include "igt_rand.h"
>>@@ -448,6 +449,115 @@ static void close_race(int i915)
>>	munmap(ctx_id, 4096);
>>}
>>
>>+static uint64_t timebase_scale(struct intel_perf *intel_perf, uint32_t u32_delta)
>>+{
>>+	return ((uint64_t)u32_delta * NSEC_PER_SEC) / intel_perf->devinfo.timestamp_frequency;
>>+}
>>+
>>+/* Returns: the largest OA exponent that will still result in a sampling period
>>+ * less than or equal to the given @period.
>>+ */
>>+static int max_oa_exponent_for_period_lte(struct intel_perf *intel_perf, uint64_t period)
>>+{
>>+	/* NB: timebase_scale() takes a uint32_t and an exponent of 30
>>+	 * would already represent a period of ~3 minutes so there's
>>+	 * really no need to consider higher exponents.
>>+	 */
>>+	for (int i = 0; i < 30; i++) {
>>+		uint64_t oa_period = timebase_scale(intel_perf, 2 << i);
>>+
>>+		if (oa_period > period)
>>+			return max(0, i - 1);
>>+	}
>>+
>>+	igt_assert(!"reached");
>>+	return -1;
>>+}
>>+
>>+static void perf_open_close_loop(int fd, int *done)
>>+{
>>+	struct intel_perf_metric_set *metric_set = NULL, *metric_set_iter;
>>+	struct intel_perf *intel_perf = intel_perf_for_fd(fd);
>>+	uint64_t properties[] = {
>>+		DRM_I915_PERF_PROP_SAMPLE_OA, true,
>>+		DRM_I915_PERF_PROP_OA_METRICS_SET, 0,
>>+		DRM_I915_PERF_PROP_OA_FORMAT, 0,
>>+		DRM_I915_PERF_PROP_OA_EXPONENT, 0,
>>+	};
>>+	struct drm_i915_perf_open_param param = {
>>+		.flags = I915_PERF_FLAG_FD_CLOEXEC,
>
>nit: If you also add I915_PERF_FLAG_DISABLED here, then OA buffer 
>reports will be disabled. This will make sure that the perf API does 
>not enable the OA unit. It will still run the code that you are 
>targeting.
>
>>+		.num_properties = sizeof(properties) / 16,
>>+		.properties_ptr = to_user_pointer(properties),
>>+	};
>>+	uint32_t devid = intel_get_drm_devid(fd);
>>+
>>+	igt_require(intel_perf);
>>+	intel_perf_load_perf_configs(intel_perf, fd);
>>+
>>+	igt_require(devid);
>>+	igt_list_for_each_entry(metric_set_iter, &intel_perf->metric_sets, link) {
>>+		if (!strcmp(metric_set_iter->symbol_name,
>>+			    IS_HASWELL(devid) ? "RenderBasic" : "TestOa")) {
>>+			metric_set = metric_set_iter;
>>+			break;
>>+		}
>>+	}
>>+	igt_require(metric_set);
>>+	igt_require(metric_set->perf_oa_metrics_set);
>>+	properties[3] = metric_set->perf_oa_metrics_set;
>>+	properties[5] = metric_set->perf_oa_format;
>>+
>>+	igt_require(intel_perf->devinfo.timestamp_frequency);
>>+	properties[7] = max_oa_exponent_for_period_lte(intel_perf, 1000);
>
>nit: The result of max_oa_exponent_for_period_lte() can be hard coded 
>here (likely 1 << 5) and you could remove the additional code added 
>for max_oa_exponent_for_period_lte(). This parameter only controls the 
>frequency at which the OA reports are captured into the OA buffer and 
>it has no relation to the barrier related code in perf.

My bad. The value would likely be 5. Anyways, it's just a nit.

>
>Thanks,
>Umesh
>
>>+
>>+	intel_perf_free(intel_perf);
>...
