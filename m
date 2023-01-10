Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E416664762
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 18:26:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 945B610E62D;
	Tue, 10 Jan 2023 17:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4B210E62D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 17:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673371595; x=1704907595;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=J0f5nbMZn+Bap9y3Ay7FAOBYfge9w/iVxoZi3rxtTsY=;
 b=nUGx72zVw9S+0F+0sZGDOEwN3DmnBFGZYBpzkLA33P6n3REACMPnytTC
 iN+Pgwg3FxyD9p/9LvsPMmyI0hLcCFhHdFkMifCq1IRIBj2spifxHF1WW
 BvpNa9o4qjQP6NIom42xgSRzp6cgAWWB3BGfvY+wQN3QqiKpm3RS8qvK+
 DExOiF+j2il9rSkT6RwLf73FK7OGHFVO937rtzZXbRhOQNb+s4i5XjH1G
 A6mKGrgHKuY76BQmFSTt07+xr6oTSzbgvy+BRrSy5MVfO/r5YZkG82ZzB
 +MO+mmS4DRo5lsFaZQ0nfqQtM4PtWI1sfnx4Z7yBLyGsXfvqd+szkGTAh Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="325209912"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="325209912"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 09:26:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="659058308"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="659058308"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jan 2023 09:26:35 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 10 Jan 2023 09:26:34 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 10 Jan 2023 09:26:34 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 10 Jan 2023 09:26:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VQOpURnJvPJ0O5fHiwFJNIeL2InpLU9soKYl1bMETxn2n4gE04fAYCbRP3+5UpPyNtM9HoOEBvR8QJcpumogvVKOe3omhUSW0oGkOCxTjN7B7+OmTP4thpTxxxzcNczMP8/I4UC/YiQStwHttLm0B3xQcfN0FZZ7oFo4l5z8h3LInDTZTz9Mbo6r4hUkJLGFvcsCVD6SoduOK7fycKbt9lfgQb8gMrCJjTbsG8At/tKoQ15JqCCmxCBrrmoEVOpnA/Kmba47HsTzSHxLQI4dmphOiFTSx4dsPyZu/1Kz93rq736q9RGudP+C9FxhWTu+6qm0Hx1ZpLXVVM/amb64PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5pa/8s20duoHtQKOy/+oOdGrHPTGzBIUVV4Po2y8pYY=;
 b=KpNEfVhf+dPSOZJDqlgjSKkyC5DRujUbsnoIl7kXZCFXcfJkPAQk0TzA9xMvXfQvZHyrh0Av39duUGrH6qHXNDmdfGdWNzzfCLqvgOHztdh3aySZz2Rqn1Tp1mQZaQF9IwnoN2Hfisdr9oXx/kmTha2sursf5Ml4TfoLfVyoExq/FtlSnP5GKmy7swJ63hizwoknxnBxOgLj74RUrFNLiG+8sZ9LUSM8Ho9WYzY7zDzlh9c3mbS2+vYizRlT025hnHeeHMHuZWWcwNfdh800GCfaxUeAyb6CxudiYCCKXbgy5FSfjNoVkVyZ0KCgIk/TIAwAElklAN8xdzG/QepTOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS7PR11MB6151.namprd11.prod.outlook.com (2603:10b6:8:9c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 17:26:31 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.5986.018; Tue, 10 Jan 2023
 17:26:31 +0000
Date: Tue, 10 Jan 2023 12:26:25 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <Y72fweagAUui83Y6@intel.com>
References: <20230110105902.279004-1-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230110105902.279004-1-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0236.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::31) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS7PR11MB6151:EE_
X-MS-Office365-Filtering-Correlation-Id: ae0a5851-baac-456c-0284-08daf32fd025
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7+0zlOfuwOisVcn4B0W2xHMDncRIhwCUcXF7eg6IUPqF1pPBY/mXqLu5eMTjbXbRNTNlhvOmSbj16u4aKXydqnY0LwiHYPwU50kz5mHsa6qX4CfrvcED1ayYBDjcQ5N9vql63gG5q0gBHCeunnaOTS0jZLBSmX0T3t+6u1UsbbqhL1gs4NykQsjsth+IAJRdaHpPDV7oGGsg903jEseF0YSYBI0PTbvV8wYZ/MR/g+Zy4YsWFDB9H1qxBVOeucdyMIOqxr1YonDmOm6iwzfkcl4Pq728kJFWriW/8sHvMf/M9biLrIU6MN5R2dX7G3FNFrSbfh7h9SO6VJKnPlVmGwpNl+VLBX6OjgKAA1NYkk4Br9krDrAefqzYWe2oBIUT190dEppH6A8pnxLmMvV0npzHGJLZKfKbPxwGY15dFA/5JgeKgTNfZWG4yaEGnyaZiDD60nZOCVfL0KfAVBFO3SpD+ndqv4tGc2V42IshbzY6e526scgX7rmELVNI5cMpXGHFoVDFKNgDI7jVYW/jnm7nV/feikThecmB5HMBKeDlwpGaH/ZMOYXEDf/wxoUvnQI4ezIi5Un6fenTEwPDin9F9y9LJcQwttEnGvqxh+J2k9jNiZHEYJKFzaJMxog99gWwZwtgI052rqi6fA0bfw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(366004)(376002)(396003)(346002)(451199015)(2906002)(5660300002)(41300700001)(8936002)(82960400001)(86362001)(38100700002)(66946007)(2616005)(6666004)(6506007)(6916009)(36756003)(66476007)(8676002)(66556008)(4326008)(316002)(478600001)(186003)(6486002)(83380400001)(26005)(6512007)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9XaxLD0vsPvnyJ20S4ifDhtcA8KL2rtD4W16RKXYd6LZItAUG4hdxKOqnmc5?=
 =?us-ascii?Q?9gn6N2X/tlHWxs9WxBc/Z6dYlBSQuT9OQqx9MdEvPHk78Wr2Zb/sprA47zr+?=
 =?us-ascii?Q?myg3IqFiB/JPP5MIToTaOeAcbz4sEG3m46zpcEU6aZNjDoBCAdTEiiJd9+rg?=
 =?us-ascii?Q?vuUXRsxx1S5Q/Uo0vCJdkAfJmUgNP0j6QV8b6WBCdUCIfZOb4vUumtSpIWC+?=
 =?us-ascii?Q?uJMFDzyrmdmpGSj6rKdNnSwczrCcsVcYVpr8EUirkMTlqmz9QPVRZ+miiucl?=
 =?us-ascii?Q?6tv8k9aFv9+kqk3JKG8zCcwwtEZ75GiG9Ckq7sRMlrITERqKgeSfDVsMA+/T?=
 =?us-ascii?Q?qLnjKU3eT3jLTXMFMX12ioJtqqoXxGun4ELEpI02cR9u2U0cjJQCw9JkYY4A?=
 =?us-ascii?Q?XtQ3g+1GX/gC9TDQpmbhoMGQldlBJsRPduBUgltDMLWp/Q2BgaPrOAG/o/yw?=
 =?us-ascii?Q?Mxi1oiBIWkIS0jN4cLoVQ/GXL6js7kpAm4tE0SuRK9YGzvszg2+4kjpVlHkv?=
 =?us-ascii?Q?Wl9jqtcG5/MmyRjNWHnhMlyXYax2forAvUKnO9mdz0A6zxgXej2rMgXpezLP?=
 =?us-ascii?Q?BrM66G18WxPuSuU5wTSTggHBgje7Kg3T5DylE2ezjEc39yrv3fXAxnQ5QZzs?=
 =?us-ascii?Q?WAD4OAL8+3gxECK3aeTJN5YUPYK9No1WCsW8tpNmRkFC9oRtTxi5NgeuQj2G?=
 =?us-ascii?Q?IP5sC7T17hLmmIzig/NlxMHxmT3T0YKCLAZoABQ2I9yFFRka5hMXuBdw7OaJ?=
 =?us-ascii?Q?Jih/OyW/823Kv7/3J1XIetd1RNWwNrEYsdrMuV5tCIWr1rOdJvk6i4VGwhxj?=
 =?us-ascii?Q?G4tC7XrF5bytpKG2XhUIGRlIwMiJ8wvNx8l08VaEDELVIByUY8jJeOPCfkfk?=
 =?us-ascii?Q?u9iBVKbL5cP6UdO0id65nG99tkr1jscXkBToSbbLizhR6ILzDbjDXrleI6yG?=
 =?us-ascii?Q?0Mrp33elk/FBaFcY7us/YKyGY4e6wFVgEyx3M/wPw2Qd+Kodx2Is4yTxa57g?=
 =?us-ascii?Q?tDuMlhU3MgIrhab9tCL+q1hLbsIt8Wc3PltMLnvuaHNBC9rJzkFfuBS81MGE?=
 =?us-ascii?Q?08yi+tzcvpGXT46AH5lSQbtp25tyS0Q1ejLMul/RdzhdtARdgcvG/YHPNmgl?=
 =?us-ascii?Q?t030rX+qy8a48VJlDjwrK1RFWtoEkZKuMM/f1QBhzjURbv24D26P5A7DzqpF?=
 =?us-ascii?Q?7qo5LOKcfTQcraee+zMCblDkN5xr5iSKoBIm0jUP3e+IYPUMmGAO1vNmv+3P?=
 =?us-ascii?Q?WXRCVbhMhvB26noqdLHHTyLV7TrGYyTXHjR3Ks4RH8d0ljkHzo0cQmQ0ra02?=
 =?us-ascii?Q?V+Rr5R5GZHRL/I9MmGgyJaswVPKVNRGQ83GOugEhccHs+3hz6I00EM/7S3vr?=
 =?us-ascii?Q?cRAMLPoXDHjiIqjVQEARm+zdRwm5CIGWZs9cZDjUUqtuW6aaJhErzPk0oyqG?=
 =?us-ascii?Q?ej5LCfmHXrqMikN5NACJazniqwNw62vwYEyqoqVc5++lkL6SJGJ2767SkodW?=
 =?us-ascii?Q?9LSaqGP32zTodZ4sW9FCxmMxmllrvC9kJOgLYmADbPl2AmMJIFmvZhCtGfjB?=
 =?us-ascii?Q?JSH37PEE8OhN1QciviG1tl0P7mg3s8IkWrxLUWCni4os9sTwkPYTooALTXUB?=
 =?us-ascii?Q?Ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae0a5851-baac-456c-0284-08daf32fd025
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 17:26:31.2288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A68GqFx920GKyW76mSXFnXnj4T5kN6pEXyVb0VlhA7BqQpkGs6HC+dz6q1jc8KQubBSlIShSlEq2EU9XcWO1LA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6151
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove i915_drm_suspend_mode
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

On Tue, Jan 10, 2023 at 11:59:02AM +0100, Maarten Lankhorst wrote:
> enum i915_drm_suspend_mode suspend_mode is only used in
> intel_display_power, while we only care about whether we perform a
> s2idle. Remove it and use a simple bool.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_power.c   |  8 +++-----
>  .../gpu/drm/i915/display/intel_display_power.h   |  3 +--
>  drivers/gpu/drm/i915/i915_driver.c               | 16 ++--------------
>  drivers/gpu/drm/i915/intel_runtime_pm.h          |  6 ------
>  4 files changed, 6 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 060e0a2770f7..6ef937afe48e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -2029,7 +2029,7 @@ void intel_power_domains_disable(struct drm_i915_private *i915)
>  /**
>   * intel_power_domains_suspend - suspend power domain state
>   * @i915: i915 device instance
> - * @suspend_mode: specifies the target suspend state (idle, mem, hibernation)
> + * @s2idle: specifies whether we go to idle, or deeper sleep
>   *
>   * This function prepares the hardware power domain state before entering
>   * system suspend.
> @@ -2037,8 +2037,7 @@ void intel_power_domains_disable(struct drm_i915_private *i915)
>   * It must be called with power domains already disabled (after a call to
>   * intel_power_domains_disable()) and paired with intel_power_domains_resume().
>   */
> -void intel_power_domains_suspend(struct drm_i915_private *i915,
> -				 enum i915_drm_suspend_mode suspend_mode)
> +void intel_power_domains_suspend(struct drm_i915_private *i915, bool s2idle)
>  {
>  	struct i915_power_domains *power_domains = &i915->display.power.domains;
>  	intel_wakeref_t wakeref __maybe_unused =
> @@ -2054,8 +2053,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
>  	 * that would be blocked if the firmware was inactive.
>  	 */
>  	if (!(i915->display.dmc.allowed_dc_mask & DC_STATE_EN_DC9) &&
> -	    suspend_mode == I915_DRM_SUSPEND_IDLE &&
> -	    intel_dmc_has_payload(i915)) {
> +	    s2idle && intel_dmc_has_payload(i915)) {
>  		intel_display_power_flush_work(i915);
>  		intel_power_domains_verify_state(i915);
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 6480afcfe0d8..04216be1d6fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -164,8 +164,7 @@ void intel_power_domains_init_hw(struct drm_i915_private *dev_priv, bool resume)
>  void intel_power_domains_driver_remove(struct drm_i915_private *dev_priv);
>  void intel_power_domains_enable(struct drm_i915_private *dev_priv);
>  void intel_power_domains_disable(struct drm_i915_private *dev_priv);
> -void intel_power_domains_suspend(struct drm_i915_private *dev_priv,
> -				 enum i915_drm_suspend_mode);
> +void intel_power_domains_suspend(struct drm_i915_private *dev_priv, bool s2idle);
>  void intel_power_domains_resume(struct drm_i915_private *dev_priv);
>  void intel_power_domains_sanitize_state(struct drm_i915_private *dev_priv);
>  
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 9c49cc7a246d..a02dd8e38f2a 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1232,18 +1232,6 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	return 0;
>  }
>  
> -static enum i915_drm_suspend_mode
> -get_suspend_mode(struct drm_i915_private *dev_priv, bool hibernate)
> -{
> -	if (hibernate)
> -		return I915_DRM_SUSPEND_HIBERNATE;
> -
> -	if (suspend_to_idle(dev_priv))
> -		return I915_DRM_SUSPEND_IDLE;
> -
> -	return I915_DRM_SUSPEND_MEM;
> -}
> -
>  static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
> @@ -1251,6 +1239,7 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
>  	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
>  	struct intel_gt *gt;
>  	int ret, i;
> +	bool s2idle = !hibernation && suspend_to_idle(dev_priv);
>  
>  	disable_rpm_wakeref_asserts(rpm);
>  
> @@ -1259,8 +1248,7 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
>  	for_each_gt(gt, dev_priv, i)
>  		intel_uncore_suspend(gt->uncore);
>  
> -	intel_power_domains_suspend(dev_priv,
> -				    get_suspend_mode(dev_priv, hibernation));
> +	intel_power_domains_suspend(dev_priv, s2idle);
>  
>  	intel_display_power_suspend_late(dev_priv);
>  
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
> index d9160e3ff4af..c87ae95bfd18 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -16,12 +16,6 @@ struct device;
>  struct drm_i915_private;
>  struct drm_printer;
>  
> -enum i915_drm_suspend_mode {
> -	I915_DRM_SUSPEND_IDLE,
> -	I915_DRM_SUSPEND_MEM,
> -	I915_DRM_SUSPEND_HIBERNATE,
> -};
> -
>  /*
>   * This struct helps tracking the state needed for runtime PM, which puts the
>   * device in PCI D3 state. Notice that when this happens, nothing on the
> -- 
> 2.34.1
> 
