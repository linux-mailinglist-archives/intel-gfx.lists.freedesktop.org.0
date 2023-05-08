Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 464EC6FB61E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 19:52:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04D9510E2DC;
	Mon,  8 May 2023 17:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C367E10E2DC
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 17:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683568343; x=1715104343;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=13mvcwYigYkI/yRcfip8bf+WKwP3CYsBHDLJTZ/MQ2w=;
 b=aU5geSWqJT4iickUksZ+ah2aOMuqKHENiKleELhVhbcSiSm92XV8PXKk
 GynFb+qa1UtjVawXrLb33Gz43y/XYBW8+U5e7SdKZugrJOrl/yKXqGedb
 wGSC+kITnIdcf2dpoulhPMtHKcRNAP7tkY7Da4oIa+WWkcZFslM18ljX5
 RL2s35MMjHKmM4xNVJmmUUzbQN5w1nM9CQPGfT3vLkARwnrZ9tHuVxu91
 h9FOjH7Uuw+Agbw5q4uYPr/LebwrN7IOZ74Mw8pZlR5JlbG1JYffbhJ38
 ems8sd3HkDJrAIdMd5HGzjQIArglLuN+E7kmwOiDskcM3hHWy7Kezw0/Z A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="330074933"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="330074933"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 10:52:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="731383631"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="731383631"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 08 May 2023 10:52:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 10:52:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 10:52:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 10:52:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 10:52:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PeRtwUjNaKoBMvhGSt81Zowbsw77GZrzQFTvCaCUblQ3eBSiRFgqlH4PA5Vpgx6blhgojh8QVlwwdI9vDbfZBJakI5el2f4npLIHjMPnOc6aJwxgU8PipRyk+kS0q3alCg47jtt/L6eeMPRzoo4k2EDKQgdYtRNahABInvTbi+sakuMD91TNCHYpiSpczwTxouSWJznetwbw/ex/6a5y3APvrXYduUnSm+Bd/6TjKnfwQ3Vyum0NUrLtXVuNCZtcaAnDunq0vzP5FNWigkqmKuWtL7/eR3zPCrXIN9n4j/DDPRjqELYeBTz2hntB2Qz+J3UKN3dN1ld3b19QUfBkMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=osF+TntHGEFgWMAS7yzR55LrDsEFPVtXiCDS6Bk0xuA=;
 b=iarvyBVoh8yWJw6upl38AnL/L3GexUL+Q75h0bnFdbS5CkNJ6+cH0hV15UTc0/7cNf43alKHRGMqgaWWQeQBwHuKpw5zOY/s/f/SmgO+PSG8a4mTYjD3reV2nf558CBwWrHp98IH56RfYsTR0Vf4Ftg7mVTwmf2GBLKqAzj4NxGUYvDmlfcWJPMuIrF60HNxVJFh4kmevxgbEfC1JgL3CoTp6CYcrJGt0dfPAidwVJAcqitj/2gnTmPu9Izm172har+fBVjDH1fMsaus3fYX1wMTPYi+lVuTcVCDrtqs+4c1gkyQkNUjhH3t93FK3vvgFDdo1tLYSyzgirpH3Igtdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SJ2PR11MB7646.namprd11.prod.outlook.com (2603:10b6:a03:4c3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.31; Mon, 8 May
 2023 17:52:16 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3c72:3d28:fbb1:818b]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3c72:3d28:fbb1:818b%6]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 17:52:16 +0000
Date: Mon, 8 May 2023 10:52:13 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <ZFk2zXejPIezTVQJ@orsosgc001.jf.intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-2-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230506005816.1891043-2-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: BY3PR03CA0025.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::30) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SJ2PR11MB7646:EE_
X-MS-Office365-Filtering-Correlation-Id: 4963bf5a-cd00-4197-362f-08db4fecf5ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CB6g0v2oL20864claf3uf2nB8CZaXf45FiAHpyYBgVXPLp6m/I6pRhGDG+iG/EApPdNF2V4kbGAQd5vVxAL3H4qTG7EYlnL0S4G/vbnfii4it+lREeTxVdgNRGguK93SfrcLeAxtJ597menx2G3W8+nWVsTRyF3OKIxzjv4L5Cb9DZhsSU2Xj/HXJZ3seDqoyLOC+ZA6fwf3vSP5D+6Wz6KriYma3ZKkGtz07fIwomFkyFbDNautDorQNTAQH1cPQb2FOgSqx8yKKtHesmNhfbfqQyGShkI0tNRPl3MZ3un9M0MgIt+IfIcVO7CAUpRtShbImdUjiUBS2b/4B7HL9QgO7DAaTLHBozDcB31C30YzIi8ORXLHIgcuPzVu9hBlKpIAGxfhysAQB5HueLAKwcOHMTp3LOxG/gWgpIKt7PRrPBhJFFEivZ+G36H+UjjQK2GZkbBQdv6MVOTvWIvbTYVm8KF6weeSS0JoDG9nN54yz239LtqQhccXiKNve6myLjyd14t201WWrNMrD5FrEtVFonj6b6TL9J7vrsTc7vNyN7vwnVNRvCkRgIOOAA4N
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(376002)(39860400002)(366004)(396003)(451199021)(2906002)(478600001)(316002)(41300700001)(8936002)(8676002)(110136005)(6666004)(66476007)(6636002)(66556008)(5660300002)(66946007)(6486002)(6512007)(6506007)(26005)(186003)(82960400001)(83380400001)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UTZvZ3RaeEdUczl1ZVRYSTIvZHhLWTFNNVYvbVQ2RllQZjBBZk5pYmJrNEE5?=
 =?utf-8?B?azFQK203am1rMzZVbCtiNVRQNXF4N002NnB3QmQ5MEpVL09YR2hLTncxNjYy?=
 =?utf-8?B?YTE4YmtaT2FqdE05c0xtdU8zMmVOajRraHR2YmNFeVRwQmU3eEVlMWpZNGJB?=
 =?utf-8?B?dDEvUzF1b3dFMzZJc0hxOVA3UlNkMUhPQXFjbmdHMnJkR1d1clJRM1JINjRa?=
 =?utf-8?B?UytXQkpBajRSdGV1TEErc0pPdU5ycmYvSzVqeVRsTnZwWXRMOTFIK0M4M0Ju?=
 =?utf-8?B?b05DQ0c3NzY2SXk3NUx2d3J0a0w4RnhQc2V3aXIrRFpxMDQvVW5TdEtwN3p3?=
 =?utf-8?B?VGl3emF4clJzNW51SzVHaGxzTGhVNHgzSXUzMTIvaEtKRG83RXVIKy9lQlpr?=
 =?utf-8?B?ODlGTUFRdWV0a0k1QjFDdWtzbFV6YVBycmVqa010bUJ3dFMyUjlNanUwSmdn?=
 =?utf-8?B?cXM5OEZ6d3RFaG5vQlpqU25rQ1NJV0oxamtGZzFackxtOEFXYmRYakJsek1Q?=
 =?utf-8?B?VHpiL2JBZmxVbXlZVHNJK2o1bmtyaC9YbGdMdHN3YjA3WVlTTjNsa0paREZ5?=
 =?utf-8?B?MTMwdmFpS2FwaHZGKzlTMlJReU1KNUw4RHpkem94U01ZUFN6TXdxVkJRQ280?=
 =?utf-8?B?bnA1T1JvRi9DUVcrZzVybW9jMkxCSk1NZUpsOWhNWThINS9OS3JzQTByc0xp?=
 =?utf-8?B?dnJZTUhXRW9pa3pzZGtrQnFJVk5LSG44TEx6MUJFOG95SnZjcEZiTjVkVHNH?=
 =?utf-8?B?cWZIbTFBOTA2K0JNSFU4MFFKL1h0UEhYeVJUVmlla01zUTlXYzBsUWpIQStz?=
 =?utf-8?B?cTY5cFhhK0c1NEFSOC94ZDFhVlFqRmQ4QTM5Z1BtRExTYTB6RWhlNm56ckdi?=
 =?utf-8?B?Ynl2bkk1a0tRRHhqZWd4S2Q1U2p0NnpwMmtkem9FZFNXNytnVVpCSnFIVGQz?=
 =?utf-8?B?MkhXcWZUZEpDOHl0UGpVREhOWm44cmUrMC9jeXo4UDJMb3lNYjJCanI1S0tr?=
 =?utf-8?B?MnU5c0ZUejJ5dVJqK2EwNzhGZ0ZraTRwWVZYT3lMUXZSZEwwL3NlMFpDMFJk?=
 =?utf-8?B?NlVJVmRqMVpodkJTZHJ2VHFkdWNQQUpuQzBFYlVhU3NHVTd6S1FMcHdXem13?=
 =?utf-8?B?ZWtNeWlLTjRTeXVlTFc4dmowRzZnWGVvQVRJemM4bjlJMUl2UytFbkliMmEy?=
 =?utf-8?B?aTdRNjBXYldnK3U5N3NKTmtBOFpHeGhldVRjSUoyVENGZ21yeTlhZzh1NnVw?=
 =?utf-8?B?bEMvQmRZZE1YbkxiVTNvaGlIZVFCSnFma1NZZjl5NzdObTlRNmZDQ0cvVUZU?=
 =?utf-8?B?MlRvOFd1UVNYaTZDOXFmVExocFN5dDREZU03OUFpekl5UGpsS2JxZ05CQnZ3?=
 =?utf-8?B?dmJDVGtLSGRzTTAwcHNlQk5ueXBNcDcwd0p0eDV6QmxmbkZSbi9BbHNzNlND?=
 =?utf-8?B?VER3Vm9oUzluZXRCYUE1SEhwMi9ONmQydUhoYW9pQzA1S1FjVDF4YkNLbTRD?=
 =?utf-8?B?SFBwQnkvTHc4VW9wNVNvZW5QU09FT0tRM1RzVlA4emtCVEJjRDVtWU1jMmRQ?=
 =?utf-8?B?VFdlWm1RM0NOWnJXV2JMQ3dYL0ZoYmpRM3NyNFArd21meUJyZ0o0djRRV0Jk?=
 =?utf-8?B?SWl5Uk9vZjVNa3Z0bytZSmIvM1pySnZiY3Q2bWJjVWxBUDJyRjZQMnF6bjBR?=
 =?utf-8?B?ZCtmS3dBZHM5MjZhY1RHWjFjZ1dTZExyVjdWclVTVmo1RmZ0V2xTeS9UYlFl?=
 =?utf-8?B?T1pmWHovZ0piYStwbk5sOGd5SGNkek03VlJ5YjlZSGJ2RFY3L2lQUk1URnBM?=
 =?utf-8?B?czFzVjhleHZaOUkxMG1yMWNMQ2FJSGVsUGNESVlVelRUdEFSeCttMkEvQlFk?=
 =?utf-8?B?bTBKcC9iMkljdmd2emJGMlo5MFhmVG96M1lwblV3cUQ0KzJwUi9KWHNWcm14?=
 =?utf-8?B?UnpUNDkrMkF1WllzQ3RhWW5UVzhiSGd6bXhFSURSdU92QUFXb0w1aXQ1a0xG?=
 =?utf-8?B?YnlTOWNKdFFIWWM1YzkvamdNa2RHWmZpZ2Ryb2V5YU00aVNORkdoMDV1SU15?=
 =?utf-8?B?RXJlRndkcnJnRWpBbHFoNzRRblhpK2hlZDJzUjhlSzc1cmlpNDUrTk5yc25u?=
 =?utf-8?B?N2dZdnNKQ0J1bEkzeVA2YnRWcGpiUEtTWDJKc1JkMnJXL2ZKZFE3TUs0QlRK?=
 =?utf-8?Q?mmEagmsToelMBW/S/tebaLE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4963bf5a-cd00-4197-362f-08db4fecf5ed
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 17:52:16.1643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 29qPdZBFS8R7OGOHilUXEzW3lGx40XgswId50+UA2n5ZJ35wE79f9xZakohX3A2YRkKZeJOwsT7CCkS4jZ+zvH2YdnsoSsYSbefpJ3RiApQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7646
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/pmu: Support PMU for all
 engines
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

On Fri, May 05, 2023 at 05:58:11PM -0700, Umesh Nerlige Ramappa wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>Given how the metrics are already exported, we also need to run sampling
>over engines from all GTs.
>
>Problem of GT frequencies is left for later.
>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/i915_pmu.c | 13 ++++++++++---
> 1 file changed, 10 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>index 7ece883a7d95..67fa6cd77529 100644
>--- a/drivers/gpu/drm/i915/i915_pmu.c
>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>@@ -10,6 +10,7 @@
> #include "gt/intel_engine_pm.h"
> #include "gt/intel_engine_regs.h"
> #include "gt/intel_engine_user.h"
>+#include "gt/intel_gt.h"
> #include "gt/intel_gt_pm.h"
> #include "gt/intel_gt_regs.h"
> #include "gt/intel_rc6.h"
>@@ -414,8 +415,9 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
> 	struct drm_i915_private *i915 =
> 		container_of(hrtimer, struct drm_i915_private, pmu.timer);
> 	struct i915_pmu *pmu = &i915->pmu;
>-	struct intel_gt *gt = to_gt(i915);
> 	unsigned int period_ns;
>+	struct intel_gt *gt;
>+	unsigned int i;
> 	ktime_t now;
>
> 	if (!READ_ONCE(pmu->timer_enabled))
>@@ -431,8 +433,13 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
> 	 * grabbing the forcewake. However the potential error from timer call-
> 	 * back delay greatly dominates this so we keep it simple.
> 	 */
>-	engines_sample(gt, period_ns);
>-	frequency_sample(gt, period_ns);
>+
>+	for_each_gt(gt, i915, i) {
>+		engines_sample(gt, period_ns);
>+
>+		if (i == 0) /* FIXME */
>+			frequency_sample(gt, period_ns);

If the current series is already handling the FIXME at a later patch, I 
would just change this to a comment - /* Support gt0 for now */

With or without that, this is

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

@Tvrtko, Note that I am only transporting the patches (unmodified) from 
internal to upstream, so assuming I am still a valid reviewer. If not, 
let me know.

Thanks,
Umesh

>+	}
>
> 	hrtimer_forward(hrtimer, now, ns_to_ktime(PERIOD));
>
>-- 
>2.36.1
>
