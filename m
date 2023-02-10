Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFD8692451
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 18:20:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4142B10E00D;
	Fri, 10 Feb 2023 17:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8214110E25F;
 Fri, 10 Feb 2023 17:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676049641; x=1707585641;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xs/fGZfQTCKe6pIRm9kmx//ayJ5upfhyNVQR/W++bpI=;
 b=AZol+LaKAagu4Kf+Mu8yCb3sFewHoECnShVjHhmmMVp4gwwcTVgVUWww
 kJJt1rllz57DqkypBuCoPVChpqXoxskp/mX4WAeu1QW/V5O2NhgFq/rMx
 EAzYXLnWas3/HC3b7dXionisQBr6cfJUjft3Q7Jea2JzpxUt5ImRf+hGr
 OSFfFN4gLVfLMqsIgN+yRQxSJ13NJJUp2uFAs9cZ7PFIqdpqrC/yWp5Ju
 Z8PBfE/FWDZ3PA9Pk6rHSF4B/y1aKLAeDtnA3qp37JU5GwYYgbcbk58C/
 staAj5OePqitiyDhWXR+tITPhnOVevB7jYRVujUD7o1MU2CMrAYKW5Y8g g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="328163368"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="328163368"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 09:20:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="842084633"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="842084633"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 10 Feb 2023 09:20:40 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 10 Feb 2023 09:20:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 10 Feb 2023 09:20:39 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 10 Feb 2023 09:20:39 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 10 Feb 2023 09:20:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Srm2YBafQU4LAL58xzPlmoC6kej8VM1fhGKme6ixgOyQQd2u+HYqJjkCtrslw0qsgZ/2/GsdyPWaQt6aK/X+nfS7LEc8wX+rZfNmtQZKtheBRKIcXzJq4w9yDXcwdK+H3s9GNtabvXH8NWsif14t+hI8B6m8W4sbPLj0bQCnUFAzOG0WkuAMo5FKsf0JeMQa+dBvENnznMJspr/UTnbDmJrx5WjiV09cppbKJ+/bFJsF/c/s8+az9CR+EleE9YX2BAmr6LoEzqiD1S4Iek/zDB1GLBfn3jNfjGO/VVKnK00Y3qZTQ7cHMy6CvDaOxQlk2n831O+zN3JE/jalW0/qhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ModGtjryRnpzzJn6TnlMCtpHvbKZmaINtLrjnPMhlz8=;
 b=cIJauCsrGFlVA7+SA+abJgep1dGRCh04fOntarG0UteU0Y2HTjOEWNedxX2KmVP8XQFCyGeD3ED+GR/nqsziEVzbdcYxEdJ0RivIiB1vxu1p6V2W2n2q5n97f7/mudf+3l4L/Qnom51DN7tqYIojHU0HwCa1fMVB5gzSnT0cHSr5tyUrcmA9G9CxUAznVSV/AkCMoqZN7BjIR7IXYY+59m2QNolUykAihbL1DI3rtNAwH7joMyq8sB+VAJ73lZWhE44V5iouhbVmmVv3T0sxXrL8qN6sm+yQfDeuUxcm2OmWbueTrrhziu4xU3NK3kDoD5d2VMfuqHRkDI1oDLu6Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BL1PR11MB5397.namprd11.prod.outlook.com (2603:10b6:208:308::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.21; Fri, 10 Feb
 2023 17:20:36 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::8b33:564a:21a2:cc8f]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::8b33:564a:21a2:cc8f%5]) with mapi id 15.20.6086.021; Fri, 10 Feb 2023
 17:20:35 +0000
Date: Fri, 10 Feb 2023 09:20:25 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <Y+Z82anLvt6+l/5Z@orsosgc001.jf.intel.com>
References: <20230209115039.34441-1-janusz.krzysztofik@linux.intel.com>
 <20230209115039.34441-2-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230209115039.34441-2-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: SJ0PR13CA0233.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::28) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|BL1PR11MB5397:EE_
X-MS-Office365-Filtering-Correlation-Id: 9db24755-4175-4402-45f5-08db0b8b1f21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Tz8v8YcNTKG/JxCUDuJOhHB+0+ZtbPyTIh/d7e0B/i0+vLdgHsmoTx+9M2iB4y1B5ifYOWXSTlkMcq2vO+C0SmCaEgQIE8j/E/LDxWeawpaVrbRzPsfXYM5SeUWJ3eeAsDLMJg8gjZMEjx1oy10J5LGKorujFZE4lAE3AuYinOmUreqQk2hIulbww4Ril8rPRg/L+FbEGm7+p4Bw9bugLTga+A26LPX0zuYZI6tCyzxOc0pG22a1A8CeQFowdX+X1NE+BGqiUX15TYOQcC//oRhHDgP2toG1lDaTJ1ePsEbJ/oDVKyvdg9KA2aCCmWl3QP21izx4FEAGw2j2jIh10xo2KQa1gE9SRaKAmbhB6xoKd5Uo901go2V2RbSzCbFujO0m+qT/m/Vt4SkRtg81bF3w4bsHbIWVILGrjzpcz0kkJKmnRO5O8oFXn1NTFHbZr+ta5UIwQeuwqp2UULBYPKiwTFhD9lR8Upr7F1IsbafqskWP3lKRcBh64AvcdzWVJ9tOiRrXYPvwfLH8p/1j6C4C0a72wmra3fvCgSHIsMJueJpb+lG5ugcEDHskojvRrmjZjTEV9yNvIdq2jMEe61A6rGHWr9svH0EgplJqJzU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(346002)(376002)(39860400002)(396003)(451199018)(82960400001)(86362001)(38100700002)(41300700001)(66556008)(6916009)(66476007)(8936002)(54906003)(4326008)(8676002)(316002)(66946007)(5660300002)(2906002)(83380400001)(966005)(478600001)(6486002)(186003)(26005)(6506007)(6666004)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dm9wVFJvNnJxVjNxYUo2SzNwN3ZyZEZYb1FIVnl6SUNpcUFZQU9CbFZNNTlC?=
 =?utf-8?B?VTBBM1FkcWg4NTFPT3NSQWVzb2xBNVRYcTg4RWJ5QkFOQ1VkQjJ6VXRQcksr?=
 =?utf-8?B?OUxqNkxxY1IwQ2pCTHNPaHI3c0FKR3Y5K0o0R1BxWFk1eWgvYjZ5YXdFNzBm?=
 =?utf-8?B?aWYxemRWSmx0alRKNHJhV2UwNWxXbjF6RllFQWo2YUVVUXExTHlSR1JTRHZL?=
 =?utf-8?B?SXYwM2UrdFp5cEQ4ak9BRmlZdmRQMUt6cEw0S2NOTUpzL2xQNW9VNWcvVHNv?=
 =?utf-8?B?RlRkWnJUaEx6dVNuL1hDRTZvQmlLYnE3b05YRkxrWkVLUGNtMFczQi9QNlBm?=
 =?utf-8?B?bzlieW00cGx0Y3NxWkk4L0Z6WUxKMExCUTUwWmVPd3c5ekliSXdEcS9Ea0R5?=
 =?utf-8?B?YjMwSUEzWTBZbWtQa01NT1FTZHNLMG5NUzZudXY5VVhvOHZNUEptWmhBVFZ2?=
 =?utf-8?B?bTRQMHRiQmp3ZklkRFlDMW82a1N2SWVmZDQ3UndGNUwvalJEbFdBcXhqSzZ0?=
 =?utf-8?B?aEQ4TmhwZmFReUJyQm1kTzBVdkI2TkJuWDVjR2plNjJ2RHpxOVZQU1FXMmNP?=
 =?utf-8?B?Z2FjazFZaXFXRzNzK2FieVpPdnhHWTAycCtsd0VFd1VidUdHMnhYSXNkM2J5?=
 =?utf-8?B?VWRaaW1SZS9PaEFmV3c5TUtyellxSEdIeXo0bWJYNzFlMzRuQndhN2RYV09E?=
 =?utf-8?B?eXQrMm5ueDNyc0JpeldCVmU5WEViUUo4SVAzY0dEV0M3anIxOHFEYTdUK0RX?=
 =?utf-8?B?RFZMMi9sdGxTaHRQV3VoYU5iam5EVTZ6cUhUK3JVdzU4OVB0Q2oxQ3N1ckdn?=
 =?utf-8?B?cTJiSVpCQUt3VnVmZnFRRUZkMDJjZmhlL1VpamVIRjNrQThpVjMxQi9wKytS?=
 =?utf-8?B?L1NQYTlOYlY0T2x6OXZBM0I2N2hzandyVXhMaWloNUxaYWQwaWdWc2hmQVE1?=
 =?utf-8?B?cmJNaEQvQStXOVdWTkt3VFFVWW5qTmthYkdPd2ZOMWNOcVVBUmtBcUIwS3k4?=
 =?utf-8?B?azBmdmtHenRDY2RVMkR6alRLL0lZbEJubXExeUpxaFNqUm9pSjZJaDVlZ1I3?=
 =?utf-8?B?cUlZcElJUm5zVnh0bExMcW5LZEY4TldzSEFlRHpTUVZTZ3ZRUS9jNVZFWWxz?=
 =?utf-8?B?U1FKay95Ylg2VVhTL0kxUTg2ZDN1QVQ4L3htanJqa3ptU00rZGFQVm93RWRF?=
 =?utf-8?B?L3VMdWxHdVBWNUZoNC9jRElwMi9JZzI3YzZWbTZkM3hiR3BJMFBJOTE5Kzd0?=
 =?utf-8?B?NWZNVGhGcnBBQkxHUFpLdm1RK21Sb1NNaTUwZmdTcHhiSlVWQy9pVU1PWml1?=
 =?utf-8?B?Y2paY1ZjUEJBeThma1NWKzdOK3JLcHlXYXR3NGkxaEN4RFhYdVA0Z2grbjRw?=
 =?utf-8?B?M3V5blpoa3dVVnFpTVE1VEY4Sno4T1RUVThxNUxuczBnZVJLQVQ2ZEYyYmFw?=
 =?utf-8?B?emFEM2xaaEg5RlZ3V2kreVRuVUU0cjNlb1BxTFRhWWVsV094RFEyMWVMekU0?=
 =?utf-8?B?VndNQWpoRW96OXlkSk1nKzBtSDVwS3cvc1h0UVN4NGtzZkZFUUE4ell6M0lS?=
 =?utf-8?B?N2IzSHAwTmp6d3BYNE5WZWMyY2c3ZUpuMFZqZzI3VENweWY4eEh2c0VBTEJl?=
 =?utf-8?B?aWo0YTNFblZLdlMvcHpmR3AxbVBJNkRUVmg1cVNxdWhkMFYrVTRRUTFEeTFY?=
 =?utf-8?B?RkVXS1lNNUNwdzFNaTJJMWdEeis1UEdJMXFjT2FjdWwwM0YvWGtVdzhyRDVa?=
 =?utf-8?B?ZmZGRUpCZm1ieDJ5SGxzY042MkM5NVVoWm9mY0tuNWJybW1DcXlzck9NMXBq?=
 =?utf-8?B?TGxoN0M2ZVl3YjVyb2Y3ZVNkQkFPRGNZMmgraXpjZThZaXd6QUNPV0QrcHZM?=
 =?utf-8?B?TXhPVlFGOStjWEg2dHBYMFJDdlNieUNRdjNOQVByb1p0cWhDcGpSVDg2SHFQ?=
 =?utf-8?B?cXphMmgzaXdNZjdaK2x0VWpKcHRWa2pBYjVqdzIxanlUc2JzU1c1QzZGaU1q?=
 =?utf-8?B?ZlBWbU1RbGdaUVZwWmlwdW10V042WUt3azdUeExzeldWNDVNZGt4ay9BZVp1?=
 =?utf-8?B?MGY2dkRIMGJxV2hJMWllUlU3SG4vTFRXUk01cmFkeTlZZ2RkVVp1bVc3Rng1?=
 =?utf-8?B?MEZ5TUlqbmtEMTdSVWxjR0FCS1JUelJZTFUrTVNmeHpNSEI2RnJCSnJZNFVC?=
 =?utf-8?Q?kSX59J5Q/PCEGFOr6GMZKP4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9db24755-4175-4402-45f5-08db0b8b1f21
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2023 17:20:35.5722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BVAfNKgdpaMZxMeY0pEV9KyJ97U1k2728/HwMeo7sK5aZm0jiZzf1XTractd3SQEY8fQRmz5PNeFZXCPWYFPgrf/tCrV7kqNkkHeo38GsQM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5397
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 1/1] tests/gem_ctx_exec: Exercise
 barrier race
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Arkadiusz Hiler <arek@hiler.eu>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 09, 2023 at 12:50:39PM +0100, Janusz Krzysztofik wrote:
>Users reported oopses on list corruptions when using i915 perf with a
>number of concurrently running graphics applications.  That indicates we
>are currently missing some important tests for such scenarios.  Cover
>that gap.
>
>Since root cause analysis pointed out to an issue in barrier processing
>code, add a new subtest focused on exercising interaction between perf
>open / close operations, which replace active barriers with perf requests
>on kernel contexts, and concurrent barrier preallocate / acquire
>operations performed during context first pin / last unpin.
>
>v2: convert to a separate subtest, not a variant of another one (that has
>    been dropped from the series),
>  - move the subtest out of tests/i915/perf.c (Ashutosh), add it to
>    tests/i915/gem_ctx_exec.c,
>  - don't touch lib/i915/perf.c (Umesh, Ashutosh), duplicate reused code
>    from tests/i915/perf.c in tests/i915/gem_ctx_exec.c.
>
>References: https://gitlab.freedesktop.org/drm/intel/-/issues/6333
>Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
>---
> tests/i915/gem_ctx_exec.c | 123 ++++++++++++++++++++++++++++++++++++++
> tests/meson.build         |   9 ++-
> 2 files changed, 131 insertions(+), 1 deletion(-)
>
>diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
>index 3d94f01db9..97fbc50e97 100644
>--- a/tests/i915/gem_ctx_exec.c
>+++ b/tests/i915/gem_ctx_exec.c
>@@ -42,6 +42,7 @@
>
> #include "i915/gem.h"
> #include "i915/gem_create.h"
>+#include "i915/perf.h"
> #include "igt.h"
> #include "igt_dummyload.h"
> #include "igt_rand.h"
>@@ -448,6 +449,115 @@ static void close_race(int i915)
> 	munmap(ctx_id, 4096);
> }
>
>+static uint64_t timebase_scale(struct intel_perf *intel_perf, uint32_t u32_delta)
>+{
>+	return ((uint64_t)u32_delta * NSEC_PER_SEC) / intel_perf->devinfo.timestamp_frequency;
>+}
>+
>+/* Returns: the largest OA exponent that will still result in a sampling period
>+ * less than or equal to the given @period.
>+ */
>+static int max_oa_exponent_for_period_lte(struct intel_perf *intel_perf, uint64_t period)
>+{
>+	/* NB: timebase_scale() takes a uint32_t and an exponent of 30
>+	 * would already represent a period of ~3 minutes so there's
>+	 * really no need to consider higher exponents.
>+	 */
>+	for (int i = 0; i < 30; i++) {
>+		uint64_t oa_period = timebase_scale(intel_perf, 2 << i);
>+
>+		if (oa_period > period)
>+			return max(0, i - 1);
>+	}
>+
>+	igt_assert(!"reached");
>+	return -1;
>+}
>+
>+static void perf_open_close_loop(int fd, int *done)
>+{
>+	struct intel_perf_metric_set *metric_set = NULL, *metric_set_iter;
>+	struct intel_perf *intel_perf = intel_perf_for_fd(fd);
>+	uint64_t properties[] = {
>+		DRM_I915_PERF_PROP_SAMPLE_OA, true,
>+		DRM_I915_PERF_PROP_OA_METRICS_SET, 0,
>+		DRM_I915_PERF_PROP_OA_FORMAT, 0,
>+		DRM_I915_PERF_PROP_OA_EXPONENT, 0,
>+	};
>+	struct drm_i915_perf_open_param param = {
>+		.flags = I915_PERF_FLAG_FD_CLOEXEC,

nit: If you also add I915_PERF_FLAG_DISABLED here, then OA buffer 
reports will be disabled. This will make sure that the perf API does not 
enable the OA unit. It will still run the code that you are targeting.

>+		.num_properties = sizeof(properties) / 16,
>+		.properties_ptr = to_user_pointer(properties),
>+	};
>+	uint32_t devid = intel_get_drm_devid(fd);
>+
>+	igt_require(intel_perf);
>+	intel_perf_load_perf_configs(intel_perf, fd);
>+
>+	igt_require(devid);
>+	igt_list_for_each_entry(metric_set_iter, &intel_perf->metric_sets, link) {
>+		if (!strcmp(metric_set_iter->symbol_name,
>+			    IS_HASWELL(devid) ? "RenderBasic" : "TestOa")) {
>+			metric_set = metric_set_iter;
>+			break;
>+		}
>+	}
>+	igt_require(metric_set);
>+	igt_require(metric_set->perf_oa_metrics_set);
>+	properties[3] = metric_set->perf_oa_metrics_set;
>+	properties[5] = metric_set->perf_oa_format;
>+
>+	igt_require(intel_perf->devinfo.timestamp_frequency);
>+	properties[7] = max_oa_exponent_for_period_lte(intel_perf, 1000);

nit: The result of max_oa_exponent_for_period_lte() can be hard coded 
here (likely 1 << 5) and you could remove the additional code added for 
max_oa_exponent_for_period_lte(). This parameter only controls the 
frequency at which the OA reports are captured into the OA buffer and it 
has no relation to the barrier related code in perf.

Thanks,
Umesh

>+
>+	intel_perf_free(intel_perf);
...
