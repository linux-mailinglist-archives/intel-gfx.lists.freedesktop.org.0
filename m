Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C21756C88
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 20:53:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AED810E2AB;
	Mon, 17 Jul 2023 18:53:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DCB310E2AB;
 Mon, 17 Jul 2023 18:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689620031; x=1721156031;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=q9yoT0D80f3sjKCaAivDEF+VintvsU3kQm07qZfwGVU=;
 b=OUGcHadF8P+bG4Ed2FB4Xdcqp+9XimajA/97zRi5XM+bcaPAa3tbLGBE
 J8XZpDPsE57IF6CFyhTFyjrDCBoaxg41OM+qhtYuvZMzSY6zZ8Evc0DRJ
 rzNmWCWCOjZEPdIxQzVoZvfZGmWtU/vPU+JWBOrLSAeL/9RpMudvnHpIO
 6E/uTxzwQsf7VHsTjI+NWBowDFll8B5sCJVQksLHO1R9tlEUcpYdtxd8x
 69Ao3zbaxhOUacZSbIL6pKsnCE7SwsO7umZzfjG3qHsrwBm9pUXqq4Qbg
 YX0em7emjATkl7J/4AO/vRbfUH93oO08USaxkcGmV4he4WuemDN2Do4NY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="350875442"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="350875442"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 11:53:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="758525286"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="758525286"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 17 Jul 2023 11:53:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 11:53:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 11:53:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 17 Jul 2023 11:53:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 17 Jul 2023 11:53:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HIk8nHFocfjihX4BdCWaToIMMWJhyfuVUvMVo2ZsoR6esuMWActD1dLnRfisi0XFI7B4cBOHO+rZPUedyrYUgHVwoI8MK9XDP/33W7vWHyFzJfSLUZULRv+/0ZPideAKRnaOqyn9WSyUM7QqTRBzGZzZDgD1qkOFXNLfuTQubjNijYwz5CwSPlzI1zj5lBbmM/rzoNNnrdATIx6W66f1/lDfdjUZqxwRWAFn88+XCkbuHy4jjS8HQYvUt6cMpCNVF31S1DQBDp0pCEfSXWeuiW2NlbMDVctLolSPwMiIxaHR3ksf67TZiN/L23Eka+jQ5n8tltaSpamKr4QHD6FKHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vy0SUUq0WXxKGaFDw9xleoqmFXW3wpfqZeHnJrpV3f0=;
 b=lvf2I4ppV2gy4B0oMB0DpE9uQhOhN5QFO4bkc+Ey5ZuhX7CpBiDKTvakrX4i7dFr50vMMTYQPRrPxARoxkam96Ui81/OFmmyb8NHZRw/XcDcuNGwUIxAkKm0NmlkN8kZalLyNWIBe6BrLMhUXuTqT5+Iu1Pqpbo/zZoNui0q/vOaLwxv8DI/hSlpsCKFNiXbxYQA00r+ezDnKKUFO6k9j46tT5/YXEInK9Z4Nty1oSdmLzBC78QQegBcPD+AiudK9xI45LKV+WGCEAY46QZv3Zw6v2vaCHv6mWl7EXcsxep6+xb+tUXdFdDLaTuFQKwroCWU2BGt4vH6zTqsvxTG3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB6803.namprd11.prod.outlook.com (2603:10b6:510:1cb::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Mon, 17 Jul
 2023 18:53:32 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 18:53:32 +0000
Date: Mon, 17 Jul 2023 14:53:27 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZLWOJ+EDk1jyBk37@intel.com>
References: <20230717165318.831766-1-tvrtko.ursulin@linux.intel.com>
 <20230717171219.832728-1-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230717171219.832728-1-tvrtko.ursulin@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0199.namprd05.prod.outlook.com
 (2603:10b6:a03:330::24) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB6803:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d4a71ad-b559-4fa0-dab8-08db86f71de0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5jg2KfFiGtG1moghOrpT1QeKvVmwu3uibZuSsZ+yyPi7vWeES5nQaRLZkHCpXLr6lVhc0EwqwZ7XF/t1DjliwzsHRfDj0kWiW9mG48nBz6UWV5OHVK56aVl1H5S/nzXhHrDDAdLx7bjTN/Ye+TELwgC9j4ItLlwCg1Hwo/22EGUAczi56QXZ2CiL3xClJCHZqpPCCquMD/JDjF+yNUoO03+JF+qmvMA9k2JQkFz8af0asBafkqCr31kqFpJkUkXKXsJSx++POI5ZfU4qEPuJH+Dnp8O+m6LH0mQYjVyGJKoI/QF6yJk7BQQOcaM3PHPmA1OAqqC6KTq3XWajk72IBN7LL7fE9uA4x04rcH4BZNF5Fk1nNtFD1HDe9CWl9ZOuOnTglZL7mXmNjxOxUZF8/DX51cVLxlGem3GVIdpMbsX3Hh6J7r0NFQHjeRhHvlKftBOKLd/COS/FwbyYh4Brt5hNxbpWUFi/XnY1yObUcy1Me5CzG05FH26zAXcG1wE0BFZGwaqgGoWIKPUWk2aAKKU0ueU8Gs4qXvum09ooswoRq5nW5rekKNQDGsH8C9nL5E+FPl8R3/SRQ7uBMR8R2X6PXQuvaJZ5x+kPTYJiMfA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(136003)(346002)(376002)(39860400002)(451199021)(54906003)(478600001)(6666004)(6486002)(6506007)(36756003)(186003)(2616005)(6512007)(316002)(2906002)(44832011)(4326008)(41300700001)(6916009)(66946007)(66476007)(5660300002)(8676002)(8936002)(66556008)(82960400001)(26005)(38100700002)(86362001)(83380400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3RAIWI4YIaToQbm4Du7qhiTghvteDUvoQSM8+kVicZotSfTjCgapL2SXjdgO?=
 =?us-ascii?Q?tFQTUJhIiHiib9E5GD+D3Z7QU52r3gIsRAwrMaVYI0fWg3IgikQW/PSQfwND?=
 =?us-ascii?Q?VJxs2yKHLy5FF3XUhadf1xHgCIwkRGRROeAHHkl56p2qTuZSH/Bsxi5/J5aE?=
 =?us-ascii?Q?pu6tGzHgXIr3mat2p+17cbGZwBcKJR5OccpHDwMhgEMlrGHxyR//oIQkxjFY?=
 =?us-ascii?Q?KxDWo+w1x8HtCLLjW6w7MMI5VPqfv3DjRun7A/X4On51ywdFaTThFqjPWCJw?=
 =?us-ascii?Q?PC0ORBXyY/ES0eUbX4JWWYzdKaetV05P7fbX2QbkAAFWfRha/5dRAEGv+hu/?=
 =?us-ascii?Q?70hrnWhHsBsqKkFParrIaNEB4VjgVccFhqaUdCZi6uIjxA3ME/u+LgkuI3ka?=
 =?us-ascii?Q?U88Wx/4X4fS2uuZgzq8A7/DygZYaoLb70qHvkQ9J6o65JGB+psR2swBRIoQs?=
 =?us-ascii?Q?OExABAbjZqKWraJVMRHLltELuyOGRCXKYqF4McRAlzo3e7vma2LcMZM+KiiA?=
 =?us-ascii?Q?rWq+v0crtLfexIMNtkkoPTGKrAjNHst3K1Ukcvhu0rivlLxMSQ4VrW4KjtC+?=
 =?us-ascii?Q?1zOXk7EvS9Xx+XVzommzsUOgL4vYEhN9SvUfhlJR/C8W2sOSPHQzivu7x3Wm?=
 =?us-ascii?Q?Y4x0o7BQb4B22ezHKcEjKhe2mqbZiDn4yxkNWTeyVBOe3xwU9c/7UE73QyIm?=
 =?us-ascii?Q?swULPqzzjLimQkhfFUbcU5vScCxUf9HZW6MtNVBVVUk5voBnH3r9TpyzhQux?=
 =?us-ascii?Q?Zb+d7dKuvkr0kutmS890usVstgOyRHYY6oPj+4FotpEGb1X8D/pUKDxjdN+E?=
 =?us-ascii?Q?kKhGfsIxElkfhkKT8j7aotDi4vEPfUrmqLanD+X8/lAfzifJZNTrDWihzXA3?=
 =?us-ascii?Q?zw3luJcNr/Um04+2f8+6go+GgNaM57rdQ6riwO7Nr/cXbfkLbKDBJBX4F8qE?=
 =?us-ascii?Q?lmp9DTbYujvsBRyGEnwQZ/wb/pUHX1rs9jhR6O0kLlA1G1ZjkFY0EXosFFV3?=
 =?us-ascii?Q?73fY9Ftne/yBGcXv8TJtwoKcR2uW5dW2FR/2b6cVw3GGW02I68EzP8lojg+y?=
 =?us-ascii?Q?8Fx51lpjN3kJVpKDTZHmdlhKtV1ZPUYPjwzB85b0YehvHAxDN3q0iPMk2SEq?=
 =?us-ascii?Q?WC4I5sPVcfdtoMWXgAglFLaOH9Fiiu0R+eZAm4lc8cNTfMoOIFH2bxbA/tnI?=
 =?us-ascii?Q?f+o6UC/gwqdnHrKU0S0veg/BTJr/guFWmWsJa44n4DjuRxww0nQziTBP9nf6?=
 =?us-ascii?Q?38j6BRE8N5ntn2vLBq3fDYeQW1uEM4YZYEGeoz82CGikVXPhcKCzYQbJ/xRR?=
 =?us-ascii?Q?aDbBjd00xYEilQ/Z7KAEXrFP+sua9nuB/Dqej8Lqchi0F2wyin5NG60mDa1Y?=
 =?us-ascii?Q?6BgRaIbehVsjZkDOcDoCgG/wc46mzKqKyKUaCkqTJnMOkXcQZ2cOq86VuyOW?=
 =?us-ascii?Q?/dudNmnpH4AE5r/aZhTW3GlF5CgSCkUJKcsmnJGB3PLPxmTypWdvWlLH3AmS?=
 =?us-ascii?Q?9P/uO7YCwwo13z5EC3Xi6gYK+vRNwQvNYEVPYFBUb63bJOcyUSQDzOPCuJE1?=
 =?us-ascii?Q?qG9MxQJHH7yaQCfNNlF761vra97WBF3ujaGJA3D2peHkTdI7DnqTibJIGGcA?=
 =?us-ascii?Q?yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d4a71ad-b559-4fa0-dab8-08db86f71de0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 18:53:32.1627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ONdpH2lkBOZp4RXcmVjyP4isfXOLA5ndMub2dwosF8Y5zFVZgwNzZi41cjZPSJCU9WoNsDF7cNfjntlQrp2oWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6803
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] tests/i915_pm_rps: Fix test after
 silent conflict
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

On Mon, Jul 17, 2023 at 06:12:19PM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> A silent conflict sneaked in as I was merging
> d86ca7e17b58 ("tests/i915_pm_rps: Exercise sysfs thresholds") in a way
> that igt_sysfs_set_u32 has became a function returning void.
> 
> Assert is now built-in so drop it from the test.
> 
> v2:
>  * Fix invalid value test.
>  * Assert new values after write while at it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: d86ca7e17b58 ("tests/i915_pm_rps: Exercise sysfs thresholds")
> Reference: 54dc25efaf10 ("lib/igt_sysfs: add asserting helpers for read/write operations")
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Lukasz Laguna <lukasz.laguna@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> ---
>  tests/i915/i915_pm_rps.c | 34 ++++++++++++++++++++++++++++------
>  1 file changed, 28 insertions(+), 6 deletions(-)
> 
> diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
> index 68bb99d62c19..15c74cc703c2 100644
> --- a/tests/i915/i915_pm_rps.c
> +++ b/tests/i915/i915_pm_rps.c
> @@ -988,6 +988,28 @@ static igt_spin_t *spin_sync_gt(int i915, uint64_t ahnd, unsigned int gt,
>  	return __igt_sync_spin(i915, ahnd, *ctx, &e);
>  }
>  
> +static void sysfs_fail_set_u32(int dir, const char *attr, uint32_t set)
> +{
> +	u32 old, new;
> +	bool ret;
> +
> +	old = igt_sysfs_get_u32(dir, attr);
> +	ret = __igt_sysfs_set_u32(dir, attr, set);
> +	igt_assert_eq(ret, false);
> +	new = igt_sysfs_get_u32(dir, attr);
> +	igt_assert_eq(old, new);
> +}
> +
> +static void sysfs_set_u32(int dir, const char *attr, uint32_t set)
> +{
> +	u32 new;
> +
> +	igt_sysfs_set_u32(dir, attr, set);
> +
> +	new = igt_sysfs_get_u32(dir, attr);
> +	igt_assert_eq(set, new);
> +}
> +
>  #define TEST_IDLE 0x1
>  #define TEST_PARK 0x2
>  static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
> @@ -1010,8 +1032,8 @@ static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
>  	igt_require(def_up && def_down);
>  
>  	/* Check invalid percentages are rejected */
> -	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", 101), false);
> -	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", 101), false);
> +	sysfs_fail_set_u32(sysfs, "rps_up_threshold_pct", 101);
> +	sysfs_fail_set_u32(sysfs, "rps_down_threshold_pct", 101);
>  
>  	/*
>  	 * Invent some random up-down thresholds, but always include 0 and 100
> @@ -1034,8 +1056,8 @@ static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
>  	/* Exercise the thresholds with a GPU load to trigger park/unpark etc */
>  	for (i = 0; i < points; i++) {
>  		igt_info("Testing thresholds up %u%% and down %u%%...\n", ta[i], tb[i]);
> -		igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", ta[i]), true);
> -		igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", tb[i]), true);
> +		sysfs_set_u32(sysfs, "rps_up_threshold_pct", ta[i]);
> +		sysfs_set_u32(sysfs, "rps_down_threshold_pct", tb[i]);
>  
>  		if (flags & TEST_IDLE) {
>  			gem_quiescent_gpu(i915);
> @@ -1069,8 +1091,8 @@ static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
>  	gem_quiescent_gpu(i915);
>  
>  	/* Restore defaults */
> -	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", def_up), true);
> -	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", def_down), true);
> +	sysfs_set_u32(sysfs, "rps_up_threshold_pct", def_up);
> +	sysfs_set_u32(sysfs, "rps_down_threshold_pct", def_down);
>  
>  	free(ta);
>  	free(tb);
> -- 
> 2.39.2
> 
