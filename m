Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55188613319
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 10:55:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9480910E180;
	Mon, 31 Oct 2022 09:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0827310E180
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 09:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667210106; x=1698746106;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ka1WQyGZM6RAbWTJZwDL+kfqA09RU1Yqo3ZVDnNQzCY=;
 b=IT2rAA5BWBgi9OiQSAV8i1Xhf+uI7gbfslBaRJIqkSrO4lxHyuP3hpxz
 VL0dZBMvGp0sUWSFr2Ljj4QGjDGktpao1X7UkZY4GpFFmQRTHbHdi9urv
 sfK6SZBj4CKvNXXPivmFv+PN00JndD5lMFZommuEaSyfjxUub2OBJ+ZbK
 35CHBoDEJOMIblC6yIIs5dIpkFwUZhiKY19fFlzB/OcFTORb3NVg5MLih
 QyNaASIUIo/qpBGuzd1ogGI4vB6lGrmIEUkIsLUgUIOvAAdz6fFdfogtz
 SS49LiGIBbLd5k5rwUw8ldFOHCyrFmI/qmPHqG7YjOq2o4mqD1uuxJERX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="306476560"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="306476560"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 02:55:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="611434297"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="611434297"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 31 Oct 2022 02:55:03 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 02:55:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 02:55:03 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 02:55:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 31 Oct 2022 02:55:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 31 Oct 2022 02:55:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SZD1dIFcbbczmkJhBfB7/IKCiqMWF0C9++/lEun4V/KoCWK/6S/n1DSuFvqX+YPw83nFsXy3+ViDXvdZpz+1HF1/mRc2IFH/rA6YS53pN/sPQd+d52Q7aZc1kLewuTuVOlJhJIdbN5a7JjkZ2r0ZahRd8GPgO+FJJnNRbLnsKZr+Oua+pBMnBMOfa325FjWYPcILWzLrMpav3pukgFj5rXEevWt7PmYkofP6utoRPbY2hxbj24hBbjRmSZZRBJyWeYwNlOS+RnjdYTgtItWhi8zPOFg8gF3emdvr2PZ3PMI4Jn4EC7NNeWlsguRTfb3DDFVTq/8ZQ5iicMEnSO7ehg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ERtGFEJ5os4fdWZ97T0a3bmooAghpQdYEt3qhAsyRUU=;
 b=bHauVDNbY0oSMh90qb/EeN9pJXg1XPBDlSMDTJ1YZQN+7q/lH3md0BgIEdGAG0StpltN1kaqk/FezH0bashihO7zrFsU3EazuB//jSMdg+VeB8R+cqlS77nB5jLiszFhY8XHheguONGuu1gIDQoA0MFrQjI40by1E736+BuS1RAwLW1B2TlxFgJVhTjV18M+hvS/IJ4T1lMJLJOfAz6nDMTHcGDOHd12u7USS8DRlGS3DwEb3T9lReCyxdQ3d1IlYLilyTYjoMt+PaXVXyTikAc7PZ7wNHxSTEzk42CpcL/Wi31TnnO+vjRz834WKobeYt7Xq7Z6I7lS46b/EXrAzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW5PR11MB5764.namprd11.prod.outlook.com (2603:10b6:303:197::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Mon, 31 Oct
 2022 09:54:56 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::29e1:56c3:823b:45d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::29e1:56c3:823b:45d%4]) with mapi id 15.20.5769.015; Mon, 31 Oct 2022
 09:54:56 +0000
Date: Mon, 31 Oct 2022 05:54:51 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Riana Tauro <riana.tauro@intel.com>
Message-ID: <Y1+ba4l6T7KttKfd@intel.com>
References: <20221031051411.3739031-1-riana.tauro@intel.com>
 <20221031051411.3739031-2-riana.tauro@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221031051411.3739031-2-riana.tauro@intel.com>
X-ClientProxiedBy: BY5PR16CA0010.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::23) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW5PR11MB5764:EE_
X-MS-Office365-Filtering-Correlation-Id: 612e7805-cc5a-4c5e-6f28-08dabb25f635
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BifK1J5vgEAZQZ6KKBInZQ2oByE9y5bzq1q3duHLUpbIhWsXigRpUyzAitVu6iP18sqWDHdd5e9d4KIuNf3IOimCUVccvg9dBG2zajKqX5UPlftwrdSqrQYZ+6Kb3GudJA3m0LYHgUwKMQLJXKH2g+i9GG+szpPvtVWojPjAPnWB6jsrWfFUTRY1tjSwQIrDhxQZJ+pJp2DplT6MteApsNH2rpzCqwjt4QqiXFrBOxXc9IwZAoqhaje3NbhvQ6qnzMJJJeARpSTzxIXjMTOh3kHe2PNQhx7b9JQQXyH0gKIyCxUbxdi5KTCOk5C6mlPj8xvvMpAV5/L2fp18D8Ua9EIemIFvT4kOW/6C1oMc8dKVLOFMmftJHFKhIwn6UAxbJJyqKnQT0EbdlK27CzCjZhI6tTZSCrI6cy4tgmkvvxdFSoWH4TyRCjMc3HIRx2Jlrqtx6JmLa6Yc2syrVUImOg9hc7bKdbY25gSVsze4JUQWZT5RFOysHP6rXPEJ3Sfc5XMJP6Ol464ofYTWp9pUr0D7RB+UVxiLzv77WCcEW9aOJBe29X1h3OkEoYkbgK5jKE92LkilxW0iHhbBzbpHv7bzT2hPjJi6APZemLRQHj2RaI6+Y7ZSbEFJXcgJI2ndsPboHYL0XWN5G7mDNkQr7vZe0fsWovhj88919iA9yEds0z2/zcstygh/25KUUB7SwGqGv/8r2GYX/kovozSTBqEqohoYOi+31u/z0sn7wtku+WA06qWzfD8zB+X7x8Du
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(366004)(396003)(39860400002)(451199015)(6512007)(6506007)(2616005)(26005)(6666004)(186003)(83380400001)(2906002)(478600001)(44832011)(37006003)(8676002)(6636002)(316002)(8936002)(6486002)(6862004)(66556008)(66946007)(66476007)(41300700001)(5660300002)(4326008)(86362001)(36756003)(38100700002)(82960400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?r90kGnUXMsW2MFL3MopOEoix9lsy4dHatIk1WS5sHl6068Q+MVGz5q6tpYeF?=
 =?us-ascii?Q?nnOFNp+m7iZ9v2IfAl71xWWRNhhqXOTfBANps5Vlni3/QcIM8pRtjpAHVvoR?=
 =?us-ascii?Q?t9iJ3Z5WsqHr5rcFmKnB63SUUbdNZFn1WYS8tgLWVLzJ6PgeQdXP17Vy9+2H?=
 =?us-ascii?Q?c+jxMcBJluf/WUwPwpbpJkTdZbol8BgqVcaHBN3zHig0NOQINANRXyxk9t9b?=
 =?us-ascii?Q?U+dxGl5X3qEX2BUSaYQTj3oE9j4Ygd/DfFd+YAwbNXWH/cfyobRS5fTI65wk?=
 =?us-ascii?Q?MpUbDfWkL98tdRvuraXcZ7i18Buas6dVznyAhoY48V+pAu+1dNspE39g9Hq0?=
 =?us-ascii?Q?qJLFDDIvzOtO1Gug17YTYMW+75iTflk5FU4siqzINiwRI1mmaVsmbykDuhQm?=
 =?us-ascii?Q?+Df+NJYZA/43ueK9v1UOB4s6BFPOw+0BlXTRASXH8V+tJHGW8/BU/TlYjVcz?=
 =?us-ascii?Q?LC3B3c2eZQjSCq0BZbueREyNucL4OhQvyDUPTnGLR+AW0oybiQ2s/mAvpvv0?=
 =?us-ascii?Q?48qa3ulh2ytiFoDBjmL564LkC5ZJVFbsZ5AE9V0wH6XF5a01laadcAlV/L/F?=
 =?us-ascii?Q?+ZwFlp+zDyA7l/XMFSghUsVQ14ucGNP/2aDNp+a+oEYomYfJ9AfIiyAvRmki?=
 =?us-ascii?Q?vBgxNe+bCav7pYX3oPSlNNqbnjpHhn2aX23fn23eh0lhEYbZPaCTbdD09iC4?=
 =?us-ascii?Q?krglgy+mABOomd5BbaawOP902GQPljAQriHMJsVAEmRty/o0Y2tqIYj/QbuA?=
 =?us-ascii?Q?Oq/ZNEmC7HM2j5mwQxP5Tete1dU0nFTOjqBI64e+e9vZEI76TuGNpLpLErGL?=
 =?us-ascii?Q?cq1UZ5/2ZWuojLDfPf8NE+9qMrKlxBNaQy+KRRPKBxH5uQKVUIVvf9XbkjDQ?=
 =?us-ascii?Q?fd7R3/jum6Q8pKqJCMzH63BHyTuxzuUQwcRU6Wi/X0xuJmV6ITqkDoiYJqwH?=
 =?us-ascii?Q?kNaW9nIJLlwAUcgu7I9TpvNHeWMCfBjuozEc9lWdQ+KsdTYUCixkAZvFleZ2?=
 =?us-ascii?Q?KI/Z3PwB3VwD3w8rJmbmqF+Urm/bYVbuq4zM/2bqSExnrgEWg/CKwSPVGQjb?=
 =?us-ascii?Q?Stqtvzsogqq+wV1BejXUO5YsGsyLlUwDQdUOAWvPcwQtB7v7GmCrDSDyKbLx?=
 =?us-ascii?Q?8pikiywGmh8hxIZXcmp88xuRspmamBT9JhQH0yxVrtsiQmHPdWxRypdx8F5t?=
 =?us-ascii?Q?gSd5ZdmpjuOjmm4mz2c+vmCKRuhH4qhlt3K5vNwPMj5+bjXmVcxzaiQDyege?=
 =?us-ascii?Q?EfN7k8pj8ztvKL/+XtKmFTQQF9LdBHZ0QkZ+q0DgphEv7QpHg+G6Tf9R5043?=
 =?us-ascii?Q?c7GA+ANohGrusnTyieZsjOgmfqkhkgj3NaqO2d7k+XZi3vufie3YGJgHVzsN?=
 =?us-ascii?Q?wGHfVNx66qhNsCjSB0Ui/2fsOkM0TZonidyT7Y/dR+xp2uedMWQI49BruXzz?=
 =?us-ascii?Q?nIxLoGtqp9+IvFjCktTnnlhosvjKNIV+m68zawVXrpLqbcEwDS8pXKd9qyAu?=
 =?us-ascii?Q?9AGEhR1dbAk6wqxhkFGi7v7AeboLCaoNYpPZUJFng7GTt/d6QgRYt1tOVax9?=
 =?us-ascii?Q?wzVqR/wOt7Q8U5oe5TMJgQ1w7prqTSVxwzQ6cncAkaFRlvqpWYeExX/OnW83?=
 =?us-ascii?Q?WQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 612e7805-cc5a-4c5e-6f28-08dabb25f635
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2022 09:54:55.9613 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UVbdldurYN5lvem+t+Nnbx2s/vitmusMmmrr8UPo5v1jqhmqylI0XepI91awRzn5l8Qrty4ixYMvSmdw1eAnNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5764
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/1] drm/i915/guc/slpc: Add selftest for
 slpc tile-tile interaction
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

On Mon, Oct 31, 2022 at 10:44:11AM +0530, Riana Tauro wrote:
> Run a workload on tiles simultaneously by requesting for RP0 frequency.
> Pcode can however limit the frequency being granted due to throttling
> reasons. This test fails if there is any throttling

I'm not convinced we really want to sign up for that.
PCODE is the ultimate decider of the frequency and it can throttle
on our back based on the overall power conditions.

> 
> v2: Fix build error
> v3: Use IS_ERR_OR_NULL to check worker
>     Addressed cosmetic review comments (Tvrtko)

Thanks for adding the history here. no need for a cover letter
on a single stand-alone patch.

> 
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_slpc.c | 60 +++++++++++++++++++++++++
>  1 file changed, 60 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> index 82ec95a299f6..427e714b432b 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> @@ -13,6 +13,14 @@ enum test_type {
>  	VARY_MAX,
>  	MAX_GRANTED,
>  	SLPC_POWER,
> +	TILE_INTERACTION,
> +};
> +
> +struct slpc_thread {
> +	struct kthread_worker *worker;
> +	struct kthread_work work;
> +	struct intel_gt *gt;
> +	int result;
>  };
>  
>  static int slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 freq)
> @@ -310,6 +318,7 @@ static int run_test(struct intel_gt *gt, int test_type)
>  			break;
>  
>  		case MAX_GRANTED:
> +		case TILE_INTERACTION:
>  			/* Media engines have a different RP0 */
>  			if (engine->class == VIDEO_DECODE_CLASS ||
>  			    engine->class == VIDEO_ENHANCEMENT_CLASS) {
> @@ -426,6 +435,56 @@ static int live_slpc_power(void *arg)
>  	return ret;
>  }
>  
> +static void slpc_spinner_thread(struct kthread_work *work)
> +{
> +	struct slpc_thread *thread = container_of(work, typeof(*thread), work);
> +
> +	thread->result = run_test(thread->gt, TILE_INTERACTION);
> +}
> +
> +static int live_slpc_tile_interaction(void *arg)
> +{
> +	struct drm_i915_private *i915 = arg;
> +	struct intel_gt *gt;
> +	struct slpc_thread *threads;
> +	int i = 0, ret = 0;
> +
> +	threads = kcalloc(I915_MAX_GT, sizeof(*threads), GFP_KERNEL);
> +	if (!threads)
> +		return -ENOMEM;
> +
> +	for_each_gt(gt, i915, i) {
> +		threads[i].worker = kthread_create_worker(0, "igt/slpc_parallel:%d", gt->info.id);
> +
> +		if (IS_ERR(threads[i].worker)) {
> +			ret = PTR_ERR(threads[i].worker);
> +			break;
> +		}
> +
> +		threads[i].gt = gt;
> +		kthread_init_work(&threads[i].work, slpc_spinner_thread);
> +		kthread_queue_work(threads[i].worker, &threads[i].work);
> +	}
> +
> +	for_each_gt(gt, i915, i) {
> +		int status;
> +
> +		if (IS_ERR_OR_NULL(threads[i].worker))
> +			continue;
> +
> +		kthread_flush_work(&threads[i].work);
> +		status = READ_ONCE(threads[i].result);
> +		if (status && !ret) {
> +			pr_err("%s GT %d failed ", __func__, gt->info.id);
> +			ret = status;
> +		}
> +		kthread_destroy_worker(threads[i].worker);
> +	}
> +
> +	kfree(threads);
> +	return ret;
> +}
> +
>  int intel_slpc_live_selftests(struct drm_i915_private *i915)
>  {
>  	static const struct i915_subtest tests[] = {
> @@ -433,6 +492,7 @@ int intel_slpc_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(live_slpc_vary_min),
>  		SUBTEST(live_slpc_max_granted),
>  		SUBTEST(live_slpc_power),
> +		SUBTEST(live_slpc_tile_interaction),
>  	};
>  
>  	struct intel_gt *gt;
> -- 
> 2.25.1
> 
