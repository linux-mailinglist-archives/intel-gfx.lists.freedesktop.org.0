Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E44B8754073
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jul 2023 19:26:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BC7C10E8C8;
	Fri, 14 Jul 2023 17:26:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B417910E8C5;
 Fri, 14 Jul 2023 17:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689355599; x=1720891599;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AwSXbmbNJkIfIIRmNprIAEoWxZ7MlMtREWnidrLAiEw=;
 b=PWEtZok7LORIEZFio02/m96pY0qBgsfMLwHqLEm+E+5ku4wnrnsO7/pM
 EYjOXnIMLNMDx1acCcLZB4u+9onLaJ58+SKL80p6VBTdzWv483PJJUgp6
 dLtrnUjHBIBDr0tYHFZKag6rQy+oXlOkCgWp8Bx2MqZrJkdH2KLviyWYS
 PDua9kBPGeenIIe/knChfQqx+mCDevfBW7xYG/ZeCnUNHaqaJgp0f0ITC
 mP5F0HRkz3WPTWbb6in5F9H9yymkG5mpO7fU0rDnxsYLSG7RLi6wAOC0z
 cBwpIOCqZHbKXrI1+4lI7EEuFyg0V28f+xtAhCq6uzAc8WVnvWmnUbZWl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="345127312"
X-IronPort-AV: E=Sophos;i="6.01,206,1684825200"; d="scan'208";a="345127312"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2023 10:26:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="792495552"
X-IronPort-AV: E=Sophos;i="6.01,206,1684825200"; d="scan'208";a="792495552"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 14 Jul 2023 10:26:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 14 Jul 2023 10:26:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 14 Jul 2023 10:26:36 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 14 Jul 2023 10:26:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 14 Jul 2023 10:26:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bf8EXx63elIc96QpNAiLSJcuaawo4Or1kDh8DOcmaLUg6rC2pzuWQ/w8EJo1LRTVpr4HKAwTyWHeB5yTQYHYHBiZYfQuZIx7kl4s9jLAy9hyogJV/YxwSKzOBZlA0HcXoaLGowRfUzSEwyJ+PH5tmmKZ8HgUftus1eZ9eORRzklaLdJiOvyG7CC4xlLFHXpZQa0me7J0NtPBiwb24VvdSCTT3Tlp6yd4ug8r5yEOfzY/m8THpAPB6FPxZUO2OF4H+//q2qk0fhlHzhKGICbOQx/Q8nQMC+3fZ0a9/rkotoIRZIH7ckG+ezf4is4A490pckyoDMVu0G/tU07bRdCFsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BlwWwGbYA5BZL8XqbBj63SezbyC2imm7FkKdi68DFcE=;
 b=eIKT2S0bZDPx6yP0k3CG4WKk6AGPZZ+vUsEMnS1FMJXhC6J7XuKzW0FoMBGoMm3ztvv0BIPk0xyobrb8dklrAs+bQROFY4bZopMXoo4QaXm+lgpiS4LBh+u4h2guJJz89nNMGS8KgBlZ97mhK2J0VWXq+wyzkB1qF2lO3T5Xt0PmpEOFaXf/TkQmRhwiYbi8MniYk7YEZDVm3twUNUBLQQgkODinNp8C86Qb0YMp3oWVinXc/c9Di/zdFssZWBh8BOC+jdQj30QhlXOcVSK2zc4eulzxAyXU84ucApTjn/xN192BL1CBRT0kwb/nJDviC6T1M1V431A+mQN1+r2LSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL1PR11MB6002.namprd11.prod.outlook.com (2603:10b6:208:386::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.28; Fri, 14 Jul
 2023 17:26:34 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2677:dfb9:456f:1227]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2677:dfb9:456f:1227%5]) with mapi id 15.20.6544.024; Fri, 14 Jul 2023
 17:26:34 +0000
Date: Fri, 14 Jul 2023 13:26:30 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZLGFRuUFZ17ztrEz@intel.com>
References: <20230711160214.463134-1-tvrtko.ursulin@linux.intel.com>
 <20230711160214.463134-2-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230711160214.463134-2-tvrtko.ursulin@linux.intel.com>
X-ClientProxiedBy: BY3PR05CA0005.namprd05.prod.outlook.com
 (2603:10b6:a03:254::10) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BL1PR11MB6002:EE_
X-MS-Office365-Filtering-Correlation-Id: 306e5c30-6fe7-4278-0d79-08db848f7878
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mSrc6XkiVp62rzTfbTB6rUosnbt315tgSrj3j34DIrjkEcTpYrpLBjrbOrfzwHHgzx2vR/IDhtc+3WsVBFRAQj4x4rYPaArLDCiQbzzUUFrCnX/iGuIGeqwE2kdFAMiOHGMLwwfybaEohgULXwUBLSkBX+V0gOMCz6slYDhOX5K3uuKTyreWQU/7rcCoocKysTSsCNKYLFlOElKsJun/HIHhIfK/t8kU3HZegDUxjSasu1JbCCngsaIUsCCTQQTLy0BF7X9VQNtAZoiFG6N1eYuk2kxYLfOUiWRyNt8q2ndNeLSN+dqfW2gptu+79zcRMOgBHEKUx8HlEK+mBqHDHK/9018TR+mvJJGHD2jqVqSSt39e00H3j4PcPh3hJTg99pkVUEdkYYz6JMrl/OEpThUQUsv2TEKjsjTCe5cbZVzb59g4j5jWUkYjJe+A1zTwB70eIqVmDSOPpamP4FUbBkE+BEdFYIfVLNB6QVPRL6V6n0XE4tw/JOMz3LLzaSMSrIdGRJ51fM9awUVZRRI+N7zMjlRyzBjXlBSxE9vZPw1SLrQCJAA0KybdTAZ1IOW3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(366004)(376002)(346002)(396003)(451199021)(5660300002)(38100700002)(44832011)(8676002)(8936002)(316002)(82960400001)(41300700001)(86362001)(2906002)(6512007)(6506007)(26005)(6486002)(6666004)(2616005)(36756003)(83380400001)(186003)(478600001)(4326008)(6916009)(66946007)(66556008)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GG+tvllIxW+QOjAFfeT5f3SNIHgtboyv1LHs/OwHe6isir+K5KqiUyrbp5aQ?=
 =?us-ascii?Q?bTdPhBqedIUIn3/tm6PWFWooa/0U4RWceBGqgNOgA57RFwhX36d7IQa+ZGL2?=
 =?us-ascii?Q?4dMBnzC2Ao2VpZfRMDwBuQtKAPTK1sgbVRiyl2d8IksA4fO6/Li+iQFHQ1Sq?=
 =?us-ascii?Q?YaL0bHAg9HdkQzsISoiQSWVegn2rsnSweyQ6lvCOPxKj6PGI6c6RX2nbTQzo?=
 =?us-ascii?Q?1YxbVR3g6S3qN3+ZIv6+3zG5kJ3wxMwz9xNBULX25+e0/XUTSHub/ecXOmQv?=
 =?us-ascii?Q?uFERwUGAvWqWAu71l44GNmG5QnLmjIZGZdRs1nrry/4EF1ghXJ4zBeAu8T4A?=
 =?us-ascii?Q?hSCmjQpWKjl4aWj6V73gB96l2NlUCYa0FrPhlFMrV5QC/C0lp0LBw6BFIfhH?=
 =?us-ascii?Q?qmQUCYjZiQXJLmSk7sDEaIEpRHlxL2d74iGjP06ajwt1E+hNZbehJg43fr+m?=
 =?us-ascii?Q?6XuvQbgDIyrSnOYQnWJ2kILvlC8T5w8KB2YhNpoxcgo/o1eMuW/NaBjlvGtF?=
 =?us-ascii?Q?eWitXIz+J/TCA5Ae46DMo8LVCYqcQ+xogS+m2JGGbfCJdtQS/4cdDYqaRGzu?=
 =?us-ascii?Q?qfS9iYNqC18uC3STnKFDyBFoopHzjgzyMKXHiSHxBeBP92r5oxyTwAZ1YL1j?=
 =?us-ascii?Q?+hHQ0vWZqe9tdXxZtvJdNI9QU4M+xEeS4QCqhE6rH7NEuy+nbmCLg46259kW?=
 =?us-ascii?Q?KASunPPTg4KrbtVBVUXJsH4+qn+GwmISdZP5/lF5UTTo95cCgOwbdGg3LKf9?=
 =?us-ascii?Q?AWc6jK42u1fs+1lQgaUK8WRez4CYr0jZsq+15EaCgz69+ZRIlxoSbxS5Jrlv?=
 =?us-ascii?Q?7Gw7xsJ8sL6BYIKcJo6aAapHLD2te48B26XsSVaoKXVfbvMU+8AVyaiW4e4l?=
 =?us-ascii?Q?Uyu16XP9hfWuLvpR/el5W+nOIYDpxdRcF4l2zf8A5ZqqpV6PgaAODkcOkBMz?=
 =?us-ascii?Q?UR8RcltVvPzXhqFop0jtzb0dsECl5CQjWLq1AAbrHOEcBji5ecaGYFUVv3jw?=
 =?us-ascii?Q?MUE1670HuKhTdbRFmIvbQN5sWymIk4Rl91RZ7HNhAgeSDcu4W6GSP01DMchF?=
 =?us-ascii?Q?nGzceDZQ0zgBMgGF+ghF6TqyPlYsCWTgw34hl9hrSShqI2GAMcuwX8GBs7HY?=
 =?us-ascii?Q?TsE559ZgMRssK7g1ga1BQ/2IKIsb45EfcNO2mKUXWEmwUmNoK2ZZC5VgduQe?=
 =?us-ascii?Q?2bnhRXYskPKl41JKPS9UpztoYYJPjsZtqXUR6xjfiy/hY9D3861VMvK15AIy?=
 =?us-ascii?Q?yfttMRv29eSDwD2pA5PU59z2OImFzPdrySNSElVq/eyS1z6OVoQV250MiU9o?=
 =?us-ascii?Q?rW3IHkJBi3pvyVyq1HDOzH2e8yftSSqClCUPZGp0q09CGpb64m35/f9hkmFY?=
 =?us-ascii?Q?xnHoUvcaRlqiW8hcm1K4QMrflXO4Qg1WGZCwE7jdxxz3K3kG3LBACfqLJnWn?=
 =?us-ascii?Q?6HBBxypRw22+VHvXIv+XcFlExVG6EwH7D8SbY+MnAj7WxFNsusBYaXnkv6td?=
 =?us-ascii?Q?JKbwSBhL7YRQ9aa/ilRN2TYou5VceVv2ywjaF6q+tMsJPsfglZpJCI4ncq4D?=
 =?us-ascii?Q?nx86mSBQxQiaqlc4Fd2J8BnmWG07gwEO4puO+JcOPeM937HIrOV4PkQPGguL?=
 =?us-ascii?Q?JQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 306e5c30-6fe7-4278-0d79-08db848f7878
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2023 17:26:34.1661 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sy2TBO9CLtoW/jRJR3h32qYOaV2WHqQ5HbWR562xD+tiOKl7sQe2fwY4Kc56DtIQc1wnxDj/8miCmC2SRpgwQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6002
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/2] tests/i915_pm_rps:
 Exercise sysfs thresholds
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 11, 2023 at 05:02:14PM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Exercise a bunch of up and down rps thresholds to verify hardware
> is happy with them all.
> 
> To limit the overall runtime relies on probability and number of runs
> to approach complete coverage.
> 
> v2:
>  * Common sync spinner code now in library.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  tests/i915/i915_pm_rps.c | 194 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 194 insertions(+)
> 
> diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
> index 7044fcd81c56..8c370b35c85b 100644
> --- a/tests/i915/i915_pm_rps.c
> +++ b/tests/i915/i915_pm_rps.c
> @@ -39,8 +39,10 @@
>  #include "i915/gem.h"
>  #include "i915/gem_create.h"
>  #include "igt.h"
> +#include "igt_aux.h"
>  #include "igt_dummyload.h"
>  #include "igt_perf.h"
> +#include "igt_rand.h"
>  #include "igt_sysfs.h"
>  /**
>   * TEST: i915 pm rps
> @@ -81,6 +83,22 @@
>   * SUBTEST: waitboost
>   * Feature: pm_rps
>   * Run type: FULL
> + *
> + * SUBTEST: thresholds
> + * Feature: pm_rps
> + * Run type: FULL
> + *
> + * SUBTEST: thresholds-idle
> + * Feature: pm_rps
> + * Run type: FULL
> + *
> + * SUBTEST: thresholds-idle-park
> + * Feature: pm_rps
> + * Run type: FULL
> + *
> + * SUBTEST: thresholds-park
> + * Feature: pm_rps
> + * Run type: FULL
>   */
>  
>  IGT_TEST_DESCRIPTION("Render P-States tests - verify GPU frequency changes");
> @@ -920,6 +938,146 @@ static void pm_rps_exit_handler(int sig)
>  	drm_close_driver(drm_fd);
>  }
>  
> +static struct i915_engine_class_instance
> +find_dword_engine(int i915, const unsigned int gt)
> +{
> +	struct i915_engine_class_instance *engines, ci = { -1, -1 };
> +	unsigned int i, count;
> +
> +	engines = gem_list_engines(i915, 1u << gt, ~0u, &count);
> +	igt_assert(engines);
> +
> +	for (i = 0; i < count; i++) {
> +		if (!gem_class_can_store_dword(i915, engines[i].engine_class))
> +			continue;
> +
> +		ci = engines[i];
> +		break;
> +	}
> +
> +	free(engines);
> +
> +	return ci;
> +}
> +
> +static igt_spin_t *spin_sync_gt(int i915, uint64_t ahnd, unsigned int gt,
> +				const intel_ctx_t **ctx)
> +{
> +	struct i915_engine_class_instance ci = { -1, -1 };
> +	struct intel_execution_engine2 e = { };
> +
> +	ci = find_dword_engine(i915, gt);
> +
> +	igt_require(ci.engine_class != (uint16_t)I915_ENGINE_CLASS_INVALID);
> +
> +	if (gem_has_contexts(i915)) {
> +		e.class = ci.engine_class;
> +		e.instance = ci.engine_instance;
> +		e.flags = 0;
> +		*ctx = intel_ctx_create_for_engine(i915, e.class, e.instance);
> +	} else {
> +		igt_require(gt == 0); /* Impossible anyway. */

I'm confused by the comment here... if it is impossible why we have code below?!
but why impossible?

anyway, the tests below are great for the sysfs that you are adding. Thanks

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +		e.class = gem_execbuf_flags_to_engine_class(I915_EXEC_DEFAULT);
> +		e.instance = 0;
> +		e.flags = I915_EXEC_DEFAULT;
> +		*ctx = intel_ctx_0(i915);
> +	}
> +
> +	igt_debug("Using engine %u:%u\n", e.class, e.instance);
> +
> +	return __igt_sync_spin(i915, ahnd, *ctx, &e);
> +}
> +
> +#define TEST_IDLE 0x1
> +#define TEST_PARK 0x2
> +static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
> +{
> +	uint64_t ahnd = get_reloc_ahnd(i915, 0);
> +	const unsigned int points = 10;
> +	unsigned int def_up, def_down;
> +	igt_spin_t *spin = NULL;
> +	const intel_ctx_t *ctx;
> +	unsigned int *ta, *tb;
> +	unsigned int i;
> +	int sysfs;
> +
> +	sysfs = igt_sysfs_gt_open(i915, gt);
> +	igt_require(sysfs >= 0);
> +
> +	/* Feature test */
> +	def_up = igt_sysfs_get_u32(sysfs, "rps_up_threshold_pct");
> +	def_down = igt_sysfs_get_u32(sysfs, "rps_down_threshold_pct");
> +	igt_require(def_up && def_down);
> +
> +	/* Check invalid percentages are rejected */
> +	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", 101), false);
> +	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", 101), false);
> +
> +	/*
> +	 * Invent some random up-down thresholds, but always include 0 and 100
> +	 * just to have some wild edge cases.
> +	 */
> +	ta = calloc(points, sizeof(unsigned int));
> +	tb = calloc(points, sizeof(unsigned int));
> +	igt_require(ta && tb);
> +
> +	ta[0] = tb[0] = 0;
> +	ta[1] = tb[1] = 100;
> +	hars_petruska_f54_1_random_seed(time(NULL));
> +	for (i = 2; i < points; i++) {
> +		ta[i] = hars_petruska_f54_1_random_unsafe_max(100);
> +		tb[i] = hars_petruska_f54_1_random_unsafe_max(100);
> +	}
> +	igt_permute_array(ta, points, igt_exchange_int);
> +	igt_permute_array(tb, points, igt_exchange_int);
> +
> +	/* Exercise the thresholds with a GPU load to trigger park/unpark etc */
> +	for (i = 0; i < points; i++) {
> +		igt_info("Testing thresholds up %u%% and down %u%%...\n", ta[i], tb[i]);
> +		igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", ta[i]), true);
> +		igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", tb[i]), true);
> +
> +		if (flags & TEST_IDLE) {
> +			gem_quiescent_gpu(i915);
> +		} else if (spin) {
> +			intel_ctx_destroy(i915, ctx);
> +			igt_spin_free(i915, spin);
> +			spin = NULL;
> +			if (flags & TEST_PARK) {
> +				gem_quiescent_gpu(i915);
> +				usleep(500000);
> +			}
> +		}
> +		spin = spin_sync_gt(i915, ahnd, gt, &ctx);
> +		usleep(1000000);
> +		if (flags & TEST_IDLE) {
> +			intel_ctx_destroy(i915, ctx);
> +			igt_spin_free(i915, spin);
> +			if (flags & TEST_PARK) {
> +				gem_quiescent_gpu(i915);
> +				usleep(500000);
> +			}
> +			spin = NULL;
> +		}
> +	}
> +
> +	if (spin) {
> +		intel_ctx_destroy(i915, ctx);
> +		igt_spin_free(i915, spin);
> +	}
> +
> +	gem_quiescent_gpu(i915);
> +
> +	/* Restore defaults */
> +	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", def_up), true);
> +	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", def_down), true);
> +
> +	free(ta);
> +	free(tb);
> +	close(sysfs);
> +	put_ahnd(ahnd);
> +}
> +
>  igt_main
>  {
>  	igt_fixture {
> @@ -1000,6 +1158,42 @@ igt_main
>  		igt_disallow_hang(drm_fd, hang);
>  	}
>  
> +	igt_subtest_with_dynamic("thresholds-idle") {
> +		int tmp, gt;
> +
> +		i915_for_each_gt(drm_fd, tmp, gt) {
> +			igt_dynamic_f("gt%u", gt)
> +				test_thresholds(drm_fd, gt, TEST_IDLE);
> +		}
> +	}
> +
> +	igt_subtest_with_dynamic("thresholds") {
> +		int tmp, gt;
> +
> +		i915_for_each_gt(drm_fd, tmp, gt) {
> +			igt_dynamic_f("gt%u", gt)
> +				test_thresholds(drm_fd, gt, 0);
> +		}
> +	}
> +
> +	igt_subtest_with_dynamic("thresholds-park") {
> +		int tmp, gt;
> +
> +		i915_for_each_gt(drm_fd, tmp, gt) {
> +			igt_dynamic_f("gt%u", gt)
> +				test_thresholds(drm_fd, gt, TEST_PARK);
> +		}
> +	}
> +
> +	igt_subtest_with_dynamic("thresholds-idle-park") {
> +		int tmp, gt;
> +
> +		i915_for_each_gt(drm_fd, tmp, gt) {
> +			igt_dynamic_f("gt%u", gt)
> +				test_thresholds(drm_fd, gt, TEST_IDLE | TEST_PARK);
> +		}
> +	}
> +
>  	igt_fixture
>  		drm_close_driver(drm_fd);
>  }
> -- 
> 2.39.2
> 
