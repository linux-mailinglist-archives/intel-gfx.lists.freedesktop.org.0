Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2791B6A889F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 19:40:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF8C410E276;
	Thu,  2 Mar 2023 18:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD9A910E276
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 18:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677782451; x=1709318451;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VwzwVgLCtmmLq2gRj7t6H66go+EeOKmClkmY2Sm7ljs=;
 b=mcuEa9lNa7rgMDIqI4KdJtG1ULl2cP1gMnS0uFXRdT7RVThRiMlg/4CS
 hSFvNhYa42hnQh8A8JCut/kFrzryp6z571u0ev/poMnBG1zaCcyaCJ9sA
 JcRLr6rEduQhKQAj6/Hhz4bl1sH1TJlcje7gyXe2Oe3CfJflM056Nskgh
 uPBSV0dzBPVa+BT+ANv79OeKHcIjF6a25Oyy7rCueso61cHZYI2axFDxx
 gSyviyd9BHHKoiB9l209IdwQv12ZCmiD2A5Nk4TDqD6t+TD7BYEmOkgIh
 zdbpjKXdt2tD8QV/VaZ6CWYTSlLmlIU7VdhiiJhhXoTJzPTnMsTOtde/b g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="332294616"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="332294616"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 10:40:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="625047802"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="625047802"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 02 Mar 2023 10:40:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 10:40:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 2 Mar 2023 10:40:42 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Mar 2023 10:40:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DW+R4FODbaQZ7JGwFLgMFcKbFN/O7ZauWw50Yh0sVqT4kY0aZpKB7CfjZlF1L1CjjFOedOjcg6hW9vo9+/vuoGKe3j4vLkFryXX2nUuEsbLim3V6ciuTpPs2z/IuJse0tZS4ikfH90gOqb3cbIT39MlbkHDUjSmgU2Z1SbkKpNp46tWoSGWoEs6/NvFsUGJWEPuXVAONRkPJyjoPLqZ3kKRQr4UKBsCZqpzokHbYT0aLpCDQOgvpUH4V0GTZpB8u4MCjjkit8EwZygzzfujIJYKf9Y/t3XaPxxqZCs7q79a6Lj8n3i769N7GRADE0pzH2QzTQ4dOvW/HKXO8svsc/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nGPb8agEpR+kNmabtcWyZhGbb8u1RlMfPBlYdh1sadQ=;
 b=JLD8/jI0svAz80jZNQ3Qqq0BhZEsj3+ZPKjJRlQtZUBd/VglIGkCWSkAJrIw+sTw1KSRq4XuUXwdzXUW5wFLFWzmeen8/c1x5WjKBoOZMzaI1kv7k4nNuqI4sYqv5HVRA2TsdvV1rHYL4l9doidE8D4TqoFeBZ0ZNwOQE4WD8GzqERG3/MJe8SCiXd0fvzWyStkmrdU6ggncFkZcReVJEIRcCkuNfF3jfxiMe1ZrRQsfF9o2ZvYSvMw+JVuYgWCTcKrZ7R9kdGxu/LN/mV0Ji/ttfi+MuEZ2BzMyknYPYQKvIh62keAS8nTN1veO6MJNYe3OijPI+rq6LIFc8qGCEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL3PR11MB6339.namprd11.prod.outlook.com (2603:10b6:208:3b3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.25; Thu, 2 Mar
 2023 18:40:39 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%8]) with mapi id 15.20.6156.019; Thu, 2 Mar 2023
 18:40:39 +0000
Date: Thu, 2 Mar 2023 13:40:35 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZADtoyhuQbwAborL@intel.com>
References: <cover.1677678803.git.jani.nikula@intel.com>
 <4c5574b7577d463eb4294c2d8af442a3c4bbe52f.1677678803.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4c5574b7577d463eb4294c2d8af442a3c4bbe52f.1677678803.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR04CA0014.namprd04.prod.outlook.com
 (2603:10b6:a03:40::27) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BL3PR11MB6339:EE_
X-MS-Office365-Filtering-Correlation-Id: 14ce8001-acac-48b6-89f2-08db1b4d9e97
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wKxjCdi/NUF6vQRpo0H4fxaWv8ipq38SaldLUKs9VgFZZhJhH1mjO5+JvCAGxHhnj58FS/wKwCkdRUexFVOXCz7EErSbaw8KEiNgUCcjMabTVxYiIN8KKiniwpnp4kleUVGbmoislKsLya9n3j/+9L15YAsVPQhBViRjVtDoOnVYlP4/u7OMggD/HzMu5VtUbF0NU2MJ3ZJrKVEcdtzyneZ1inD7YGDmeGGowyw2uHPThA7fMFgdAXi4QF1s8IxcPhnRuDeTrACJ1m2a4uAg5m+vpqbgVdhiwUl4k3qq+d46kqTL/0it84bnGulRF6gz7rp6JzMgRcnPRzjJGz6z2WTOETVGr0rSMN/3t4c69vUl7hK2HCFdQHkOlNtzJkO500EgkmaYbLz2oAf0/ZK9Yn/vei1YYdfLUs/kZMa879Vb+ro2u1zWjFltaZtvy1kuRlZnrlXR13y3KXcq1vUg6Hm5wT5O/EU9ff4S/sqrt5Ivv/1tq5jmpXmTapCaSQQzZdxtDa03Ft/uVyW4c1gOmnrBdta6992/SC0spSR7V0r1mP+lK3iHXyNhNfAe3nx7wjwsJhcUCQ5tXxTqy7NwbtP9pQOjCwHWCITyW5ntcIpL2BOkmvnjF0DjVV+UoK8GML4lziQ1eG+Yg2ALaJ4rRVwCKsbp13Dj1uAMz+/UYsKYL05Vk/ZWfKJeM5+0ZS6y
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(346002)(39860400002)(396003)(366004)(451199018)(6486002)(186003)(6862004)(66476007)(66946007)(478600001)(41300700001)(8676002)(44832011)(66556008)(86362001)(36756003)(8936002)(38100700002)(6506007)(2616005)(82960400001)(6666004)(6512007)(6636002)(30864003)(2906002)(316002)(4326008)(37006003)(5660300002)(19627235002)(83380400001)(26005)(579004)(357404004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xPS1DxIqmWB9VHD9RD0TWwHL4nqz+N7/jDA/iEQBNDBUv6+e/PzS3+FS2L+U?=
 =?us-ascii?Q?T/E6ZMZF4hNoPJF64h03ylsOI0DCmx5la12yma4XYaZnGfjpwHFAM8jOFqeW?=
 =?us-ascii?Q?8gXY0XvoAk2rQ7pOsLuIHKB6Uj6uk2Y7SBgbAkNbuhRYmOmaI/+C2g+X1O+y?=
 =?us-ascii?Q?sNyMbKvx6SAcD9dFsiaW4A4Hy+yy9znkZj9mxp3QaLijvVSlkt7PK/CRu0Gc?=
 =?us-ascii?Q?9WR55taSfzNVha5Rjvif35Ybgyja5M9KPsb/jDrirooEUwAOkQ9DnL8l8QfN?=
 =?us-ascii?Q?/tTatnNxvuiUHK7DL402vDQ9N8Tq0PasQaWZc4YCEf3GzokCNIRVd0SovnSV?=
 =?us-ascii?Q?sDOlKs/diBi50IeXzg5oTxv9Dbj5E9xcmJ0B45QEhHZg5Pn2hIhHPxJerzsj?=
 =?us-ascii?Q?xfVziFB/IC1eQAmZciNlid8VirG2DziyGfpR1PhWedkcRGoTe2hWYrybW4jQ?=
 =?us-ascii?Q?lCekvDAbzUxS2eQimCAeRfmhv1cgfvzlSAtE8XfuiSuprPPZqGXywcRu7eB8?=
 =?us-ascii?Q?r29OZPJK8dlRs6RbvCt0U6A9w30DtIX450aUWlzqlRsbISCrjnkzyvDjB3Zk?=
 =?us-ascii?Q?RNBFFsG1GScx1lF+IDx2Rm5pL8/0fAt9TsoYAPGYQ8y5AnOTogBZnzkLbgsu?=
 =?us-ascii?Q?HJZv9Gh31tLikGB0FrMoPlr9O5aL8HcH8x704ILnkO/Nglmzm8timAfvs9wR?=
 =?us-ascii?Q?c7Rz6JW8MzyVEvIpJH4XqBB3pofsgB2y/EpUrbI+cZjHXeAzwyWuWrq/UnOd?=
 =?us-ascii?Q?cs3GVmElmAljKWjyN6iauj8jYSeBkJfvjfJLZ8vo2RCst+PIk5NCn2h5K7Nj?=
 =?us-ascii?Q?Q4Me1rKssfCfmMP36xvaAZsihREuYFmcpm6lVsIPt3KDcu+VBFapgLN53hwg?=
 =?us-ascii?Q?5l937Xbh0b78SHKNauzNA5j4HcIamZ4uqOYRnZJuqgC7mpqYsnVg77eC8mmz?=
 =?us-ascii?Q?kZC9gXVz/mEtDCCGXn1qYjShDJy4TGQO2/qGzE/DhnW8sdTu1IHBDAhoQo34?=
 =?us-ascii?Q?x6fDA7b7Iq7rh//uRBTSsfTWoIjT3oR01jK8+eUDv2P7eOg8Lz6kLiGosYZc?=
 =?us-ascii?Q?5iv5nppoo5+cI5Xma1Jn7s/CPfZoy678YYIZz7GAAlYdwNz1BO0pEDBEdwml?=
 =?us-ascii?Q?z1T1vv0lwkKv/KOGYXIEoBNHBzl1HryEcm6mWeN54lc9m5QII6AZ3f6c80Ld?=
 =?us-ascii?Q?W/475zY1MyoKLRDxFMATdNm5b2OZ1E/4geRtnHslVVhY5nyP5jc3b76KDkFl?=
 =?us-ascii?Q?hSp74GifgwfnMyzglEibMBQSaf/qzPXVgAj0JxrnmhHsJEquvK8PWpXgruXS?=
 =?us-ascii?Q?LTPzwis+AhHif8OmMP7x7ivU6U6FMGashLqI5kZ3Rv/up/M62lZrfwz2KzyR?=
 =?us-ascii?Q?qpDCaLY0b1wD940e3mHn74XVS7IMYP2ypIrSKUDw80AAJ3UtBl1mBxgQ6+1r?=
 =?us-ascii?Q?TzQ1y49YMvhug9foDr89gqJtXBPdwAHWjCHfZX+9F7qvfQV9Ru8VZzeyppGa?=
 =?us-ascii?Q?lmNQ+bNQeD39X95W9inHfYX/SVRo5BzvZ8M86A2AuJu4SY4bJbAYjTa1iQ11?=
 =?us-ascii?Q?CfikieuvqzIUsGyx+Ou5bJVgqLFJfiwvEYtDUTrF/HMXl+78fPIAQqL0O+wT?=
 =?us-ascii?Q?QQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14ce8001-acac-48b6-89f2-08db1b4d9e97
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2023 18:40:39.5688 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1P1RkafH9FLL53DviC8+hE2/PMvQUjcQRDAXEm4coQweogsx/gDObRZ6r6c5u4puY3z36yqrRHSGj8AVqXdAWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6339
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/clock: mass rename dev_priv to
 i915
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

On Wed, Mar 01, 2023 at 03:54:20PM +0200, Jani Nikula wrote:
> Follow the contemporary naming style. Include some indentation fixes
> while at it on the affected statements.
> 
> One function needs to keep using dev_priv due to implicit dev_priv usage
> in a macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_clock_gating.c | 589 +++++++++++-----------
>  1 file changed, 296 insertions(+), 293 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
> index 8cfc19b48760..2c5302bcba19 100644
> --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> @@ -44,9 +44,9 @@ struct drm_i915_clock_gating_funcs {
>  	void (*init_clock_gating)(struct drm_i915_private *i915);
>  };
>  
> -static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void gen9_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	if (HAS_LLC(dev_priv)) {
> +	if (HAS_LLC(i915)) {
>  		/*
>  		 * WaCompressedResourceDisplayNewHashMode:skl,kbl
>  		 * Display WA #0390: skl,kbl
> @@ -54,41 +54,42 @@ static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
>  		 * Must match Sampler, Pixel Back End, and Media. See
>  		 * WaCompressedResourceSamplerPbeMediaNewHashMode.
>  		 */
> -		intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR1_1, 0, SKL_DE_COMPRESSED_HASH_MODE);
> +		intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, SKL_DE_COMPRESSED_HASH_MODE);
>  	}
>  
>  	/* See Bspec note for PSR2_CTL bit 31, Wa#828:skl,bxt,kbl,cfl */
> -	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR1_1, 0, SKL_EDP_PSR_FIX_RDWRAP);
> +	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, SKL_EDP_PSR_FIX_RDWRAP);
>  
>  	/* WaEnableChickenDCPR:skl,bxt,kbl,glk,cfl */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1, 0, MASK_WAKEMEM);
> +	intel_uncore_rmw(&i915->uncore, GEN8_CHICKEN_DCPR_1, 0, MASK_WAKEMEM);
>  
>  	/*
>  	 * WaFbcWakeMemOn:skl,bxt,kbl,glk,cfl
>  	 * Display WA #0859: skl,bxt,kbl,glk,cfl
>  	 */
> -	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_MEMORY_WAKE);
> +	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_MEMORY_WAKE);
>  }
>  
> -static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void bxt_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	gen9_init_clock_gating(dev_priv);
> +	gen9_init_clock_gating(i915);
>  
>  	/* WaDisableSDEUnitClockGating:bxt */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * FIXME:
>  	 * GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ applies on 3x6 GT SKUs only.
>  	 */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ);
> +	intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6, 0, GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ);
>  
>  	/*
>  	 * Wa: Backlight PWM may stop in the asserted state, causing backlight
>  	 * to stay fully on.
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_0, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_0) |
> -		   PWM1_GATING_DIS | PWM2_GATING_DIS);
> +	intel_uncore_write(&i915->uncore, GEN9_CLKGATE_DIS_0,
> +			   intel_uncore_read(&i915->uncore, GEN9_CLKGATE_DIS_0) |
> +			   PWM1_GATING_DIS | PWM2_GATING_DIS);
>  
>  	/*
>  	 * Lower the display internal timeout.
> @@ -96,42 +97,43 @@ static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * is off and a MMIO access is attempted by any privilege
>  	 * application, using batch buffers or any other means.
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, RM_TIMEOUT, MMIO_TIMEOUT_US(950));
> +	intel_uncore_write(&i915->uncore, RM_TIMEOUT, MMIO_TIMEOUT_US(950));
>  
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:bxt
>  	 * Display WA #0562: bxt
>  	 */
> -	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
> +	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
>  
>  	/*
>  	 * WaFbcHighMemBwCorruptionAvoidance:bxt
>  	 * Display WA #0883: bxt
>  	 */
> -	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0, DPFC_DISABLE_DUMMY0);
> +	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0, DPFC_DISABLE_DUMMY0);
>  }
>  
> -static void glk_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void glk_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	gen9_init_clock_gating(dev_priv);
> +	gen9_init_clock_gating(i915);
>  
>  	/*
>  	 * WaDisablePWMClockGating:glk
>  	 * Backlight PWM may stop in the asserted state, causing backlight
>  	 * to stay fully on.
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_0, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_0) |
> -		   PWM1_GATING_DIS | PWM2_GATING_DIS);
> +	intel_uncore_write(&i915->uncore, GEN9_CLKGATE_DIS_0,
> +			   intel_uncore_read(&i915->uncore, GEN9_CLKGATE_DIS_0) |
> +			   PWM1_GATING_DIS | PWM2_GATING_DIS);
>  }
>  
> -static void ibx_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void ibx_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	/*
>  	 * On Ibex Peak and Cougar Point, we need to disable clock
>  	 * gating for the panel power sequencer or it will fail to
>  	 * start up when no ports are active.
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&i915->uncore, SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
>  }
>  
>  static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
> @@ -146,7 +148,7 @@ static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
>  	}
>  }
>  
> -static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void ilk_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	u32 dspclk_gate = ILK_VRHUNIT_CLOCK_GATE_DISABLE;
>  
> @@ -158,11 +160,11 @@ static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
>  		   ILK_DPFCUNIT_CLOCK_GATE_DISABLE |
>  		   ILK_DPFDUNIT_CLOCK_GATE_ENABLE;
>  
> -	intel_uncore_write(&dev_priv->uncore, PCH_3DCGDIS0,
> -		   MARIUNIT_CLOCK_GATE_DISABLE |
> -		   SVSMUNIT_CLOCK_GATE_DISABLE);
> -	intel_uncore_write(&dev_priv->uncore, PCH_3DCGDIS1,
> -		   VFMUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&i915->uncore, PCH_3DCGDIS0,
> +			   MARIUNIT_CLOCK_GATE_DISABLE |
> +			   SVSMUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&i915->uncore, PCH_3DCGDIS1,
> +			   VFMUNIT_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * According to the spec the following bits should be set in
> @@ -171,13 +173,13 @@ static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * The bit 5 of 0x42020
>  	 * The bit 15 of 0x45000
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
> -		   (intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
> -		    ILK_DPARB_GATE | ILK_VSDPFD_FULL));
> +	intel_uncore_write(&i915->uncore, ILK_DISPLAY_CHICKEN2,
> +			   (intel_uncore_read(&i915->uncore, ILK_DISPLAY_CHICKEN2) |
> +			    ILK_DPARB_GATE | ILK_VSDPFD_FULL));
>  	dspclk_gate |= ILK_DPARBUNIT_CLOCK_GATE_ENABLE;
> -	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL,
> -		   (intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
> -		    DISP_FBC_WM_DIS));
> +	intel_uncore_write(&i915->uncore, DISP_ARB_CTL,
> +			   (intel_uncore_read(&i915->uncore, DISP_ARB_CTL) |
> +			    DISP_FBC_WM_DIS));
>  
>  	/*
>  	 * Based on the document from hardware guys the following bits
> @@ -186,22 +188,22 @@ static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * The bit 22 of 0x42004
>  	 * The bit 7,8,9 of 0x42020.
>  	 */
> -	if (IS_IRONLAKE_M(dev_priv)) {
> +	if (IS_IRONLAKE_M(i915)) {
>  		/* WaFbcAsynchFlipDisableFbcQueue:ilk */
> -		intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
> -		intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_DPARB_GATE);
> +		intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
> +		intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_DPARB_GATE);
>  	}
>  
> -	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
> +	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
>  
> -	intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
> +	intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
>  
> -	g4x_disable_trickle_feed(dev_priv);
> +	g4x_disable_trickle_feed(i915);
>  
> -	ibx_init_clock_gating(dev_priv);
> +	ibx_init_clock_gating(i915);
>  }
>  
> -static void cpt_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void cpt_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	enum pipe pipe;
>  	u32 val;
> @@ -211,53 +213,53 @@ static void cpt_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * gating for the panel power sequencer or it will fail to
>  	 * start up when no ports are active.
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE |
> -		   PCH_DPLUNIT_CLOCK_GATE_DISABLE |
> -		   PCH_CPUNIT_CLOCK_GATE_DISABLE);
> -	intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN2, 0, DPLS_EDP_PPS_FIX_DIS);
> +	intel_uncore_write(&i915->uncore, SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE |
> +			   PCH_DPLUNIT_CLOCK_GATE_DISABLE |
> +			   PCH_CPUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN2, 0, DPLS_EDP_PPS_FIX_DIS);
>  	/* The below fixes the weird display corruption, a few pixels shifted
>  	 * downward, on (only) LVDS of some HP laptops with IVY.
>  	 */
> -	for_each_pipe(dev_priv, pipe) {
> -		val = intel_uncore_read(&dev_priv->uncore, TRANS_CHICKEN2(pipe));
> +	for_each_pipe(i915, pipe) {
> +		val = intel_uncore_read(&i915->uncore, TRANS_CHICKEN2(pipe));
>  		val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
>  		val &= ~TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
> -		if (dev_priv->display.vbt.fdi_rx_polarity_inverted)
> +		if (i915->display.vbt.fdi_rx_polarity_inverted)
>  			val |= TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
>  		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER;
>  		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH;
> -		intel_uncore_write(&dev_priv->uncore, TRANS_CHICKEN2(pipe), val);
> +		intel_uncore_write(&i915->uncore, TRANS_CHICKEN2(pipe), val);
>  	}
>  	/* WADP0ClockGatingDisable */
> -	for_each_pipe(dev_priv, pipe) {
> -		intel_uncore_write(&dev_priv->uncore, TRANS_CHICKEN1(pipe),
> -			   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
> +	for_each_pipe(i915, pipe) {
> +		intel_uncore_write(&i915->uncore, TRANS_CHICKEN1(pipe),
> +				   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
>  	}
>  }
>  
> -static void gen6_check_mch_setup(struct drm_i915_private *dev_priv)
> +static void gen6_check_mch_setup(struct drm_i915_private *i915)
>  {
>  	u32 tmp;
>  
> -	tmp = intel_uncore_read(&dev_priv->uncore, MCH_SSKPD);
> +	tmp = intel_uncore_read(&i915->uncore, MCH_SSKPD);
>  	if (REG_FIELD_GET(SSKPD_WM0_MASK_SNB, tmp) != 12)
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Wrong MCH_SSKPD value: 0x%08x This can cause underruns.\n",
>  			    tmp);
>  }
>  
> -static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void gen6_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	u32 dspclk_gate = ILK_VRHUNIT_CLOCK_GATE_DISABLE;
>  
> -	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
> +	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
>  
> -	intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
> +	intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
>  
> -	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1,
> -		   intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |
> -		   GEN6_BLBUNIT_CLOCK_GATE_DISABLE |
> -		   GEN6_CSUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&i915->uncore, GEN6_UCGCTL1,
> +			   intel_uncore_read(&i915->uncore, GEN6_UCGCTL1) |
> +			   GEN6_BLBUNIT_CLOCK_GATE_DISABLE |
> +			   GEN6_CSUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* According to the BSpec vol1g, bit 12 (RCPBUNIT) clock
>  	 * gating disable must be set.  Failure to set it results in
> @@ -272,9 +274,9 @@ static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * WaDisableRCCUnitClockGating:snb
>  	 * WaDisableRCPBUnitClockGating:snb
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
> -		   GEN6_RCPBUNIT_CLOCK_GATE_DISABLE |
> -		   GEN6_RCCUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&i915->uncore, GEN6_UCGCTL2,
> +			   GEN6_RCPBUNIT_CLOCK_GATE_DISABLE |
> +			   GEN6_RCCUNIT_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * According to the spec the following bits should be
> @@ -287,40 +289,40 @@ static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 *
>  	 * WaFbcAsynchFlipDisableFbcQueue:snb
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
> -		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |
> -		   ILK_FBCQ_DIS | ILK_PABSTRETCH_DIS);
> -	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
> -		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
> -		   ILK_DPARB_GATE | ILK_VSDPFD_FULL);
> -	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D,
> -		   intel_uncore_read(&dev_priv->uncore, ILK_DSPCLK_GATE_D) |
> -		   ILK_DPARBUNIT_CLOCK_GATE_ENABLE  |
> -		   ILK_DPFDUNIT_CLOCK_GATE_ENABLE);
> +	intel_uncore_write(&i915->uncore, ILK_DISPLAY_CHICKEN1,
> +			   intel_uncore_read(&i915->uncore, ILK_DISPLAY_CHICKEN1) |
> +			   ILK_FBCQ_DIS | ILK_PABSTRETCH_DIS);
> +	intel_uncore_write(&i915->uncore, ILK_DISPLAY_CHICKEN2,
> +			   intel_uncore_read(&i915->uncore, ILK_DISPLAY_CHICKEN2) |
> +			   ILK_DPARB_GATE | ILK_VSDPFD_FULL);
> +	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D,
> +			   intel_uncore_read(&i915->uncore, ILK_DSPCLK_GATE_D) |
> +			   ILK_DPARBUNIT_CLOCK_GATE_ENABLE  |
> +			   ILK_DPFDUNIT_CLOCK_GATE_ENABLE);
>  
> -	g4x_disable_trickle_feed(dev_priv);
> +	g4x_disable_trickle_feed(i915);
>  
> -	cpt_init_clock_gating(dev_priv);
> +	cpt_init_clock_gating(i915);
>  
> -	gen6_check_mch_setup(dev_priv);
> +	gen6_check_mch_setup(i915);
>  }
>  
> -static void lpt_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void lpt_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	/*
>  	 * TODO: this bit should only be enabled when really needed, then
>  	 * disabled when not needed anymore in order to save power.
>  	 */
> -	if (HAS_PCH_LPT_LP(dev_priv))
> -		intel_uncore_rmw(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D,
> +	if (HAS_PCH_LPT_LP(i915))
> +		intel_uncore_rmw(&i915->uncore, SOUTH_DSPCLK_GATE_D,
>  				 0, PCH_LP_PARTITION_LEVEL_DISABLE);
>  
>  	/* WADPOClockGatingDisable:hsw */
> -	intel_uncore_rmw(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A),
> +	intel_uncore_rmw(&i915->uncore, TRANS_CHICKEN1(PIPE_A),
>  			 0, TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
>  }
>  
> -static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
> +static void gen8_set_l3sqc_credits(struct drm_i915_private *i915,
>  				   int general_prio_credits,
>  				   int high_prio_credits)
>  {
> @@ -328,64 +330,64 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
>  	u32 val;
>  
>  	/* WaTempDisableDOPClkGating:bdw */
> -	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL,
> +	misccpctl = intel_uncore_rmw(&i915->uncore, GEN7_MISCCPCTL,
>  				     GEN7_DOP_CLOCK_GATE_ENABLE, 0);
>  
> -	val = intel_gt_mcr_read_any(to_gt(dev_priv), GEN8_L3SQCREG1);
> +	val = intel_gt_mcr_read_any(to_gt(i915), GEN8_L3SQCREG1);
>  	val &= ~L3_PRIO_CREDITS_MASK;
>  	val |= L3_GENERAL_PRIO_CREDITS(general_prio_credits);
>  	val |= L3_HIGH_PRIO_CREDITS(high_prio_credits);
> -	intel_gt_mcr_multicast_write(to_gt(dev_priv), GEN8_L3SQCREG1, val);
> +	intel_gt_mcr_multicast_write(to_gt(i915), GEN8_L3SQCREG1, val);
>  
>  	/*
>  	 * Wait at least 100 clocks before re-enabling clock gating.
>  	 * See the definition of L3SQCREG1 in BSpec.
>  	 */
> -	intel_gt_mcr_read_any(to_gt(dev_priv), GEN8_L3SQCREG1);
> +	intel_gt_mcr_read_any(to_gt(i915), GEN8_L3SQCREG1);
>  	udelay(1);
> -	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl);
> +	intel_uncore_write(&i915->uncore, GEN7_MISCCPCTL, misccpctl);
>  }
>  
> -static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void icl_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	/* Wa_1409120013:icl,ehl */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> +	intel_uncore_write(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>  			   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>  
>  	/*Wa_14010594013:icl, ehl */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
> +	intel_uncore_rmw(&i915->uncore, GEN8_CHICKEN_DCPR_1,
>  			 0, ICL_DELAY_PMRSP);
>  }
>  
> -static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void gen12lp_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	/* Wa_1409120013 */
> -	if (DISPLAY_VER(dev_priv) == 12)
> -		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> +	if (DISPLAY_VER(i915) == 12)
> +		intel_uncore_write(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>  				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>  
>  	/* Wa_14013723622:tgl,rkl,dg1,adl-s */
> -	if (DISPLAY_VER(dev_priv) == 12)
> -		intel_uncore_rmw(&dev_priv->uncore, CLKREQ_POLICY,
> +	if (DISPLAY_VER(i915) == 12)
> +		intel_uncore_rmw(&i915->uncore, CLKREQ_POLICY,
>  				 CLKREQ_POLICY_MEM_UP_OVRD, 0);
>  }
>  
> -static void adlp_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void adlp_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	gen12lp_init_clock_gating(dev_priv);
> +	gen12lp_init_clock_gating(i915);
>  
>  	/* Wa_22011091694:adlp */
> -	intel_de_rmw(dev_priv, GEN9_CLKGATE_DIS_5, 0, DPCE_GATING_DIS);
> +	intel_de_rmw(i915, GEN9_CLKGATE_DIS_5, 0, DPCE_GATING_DIS);
>  
>  	/* Bspec/49189 Initialize Sequence */
> -	intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
> +	intel_de_rmw(i915, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
>  }
>  
> -static void xehpsdv_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void xehpsdv_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	/* Wa_22010146351:xehpsdv */
> -	if (IS_XEHPSDV_GRAPHICS_STEP(dev_priv, STEP_A0, STEP_B0))
> -		intel_uncore_rmw(&dev_priv->uncore, XEHP_CLOCK_GATE_DIS, 0, SGR_DIS);
> +	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> +		intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0, SGR_DIS);
>  }
>  
>  static void dg2_init_clock_gating(struct drm_i915_private *i915)
> @@ -403,303 +405,303 @@ static void dg2_init_clock_gating(struct drm_i915_private *i915)
>  				 SGR_DIS | SGGI_DIS);
>  }
>  
> -static void pvc_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void pvc_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	/* Wa_14012385139:pvc */
> -	if (IS_PVC_BD_STEP(dev_priv, STEP_A0, STEP_B0))
> -		intel_uncore_rmw(&dev_priv->uncore, XEHP_CLOCK_GATE_DIS, 0, SGR_DIS);
> +	if (IS_PVC_BD_STEP(i915, STEP_A0, STEP_B0))
> +		intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0, SGR_DIS);
>  
>  	/* Wa_22010954014:pvc */
> -	if (IS_PVC_BD_STEP(dev_priv, STEP_A0, STEP_B0))
> -		intel_uncore_rmw(&dev_priv->uncore, XEHP_CLOCK_GATE_DIS, 0, SGSI_SIDECLK_DIS);
> +	if (IS_PVC_BD_STEP(i915, STEP_A0, STEP_B0))
> +		intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0, SGSI_SIDECLK_DIS);
>  }
>  
> -static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void cnp_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	if (!HAS_PCH_CNP(dev_priv))
> +	if (!HAS_PCH_CNP(i915))
>  		return;
>  
>  	/* Display WA #1181 WaSouthDisplayDisablePWMCGEGating: cnp */
> -	intel_uncore_rmw(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, 0, CNP_PWM_CGE_GATING_DISABLE);
> +	intel_uncore_rmw(&i915->uncore, SOUTH_DSPCLK_GATE_D, 0, CNP_PWM_CGE_GATING_DISABLE);
>  }
>  
> -static void cfl_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void cfl_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	cnp_init_clock_gating(dev_priv);
> -	gen9_init_clock_gating(dev_priv);
> +	cnp_init_clock_gating(i915);
> +	gen9_init_clock_gating(i915);
>  
>  	/* WAC6entrylatency:cfl */
> -	intel_uncore_rmw(&dev_priv->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
> +	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
>  
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:cfl
>  	 * Display WA #0562: cfl
>  	 */
> -	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
> +	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
>  
>  	/*
>  	 * WaFbcNukeOnHostModify:cfl
>  	 * Display WA #0873: cfl
>  	 */
> -	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> +	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>  			 0, DPFC_NUKE_ON_ANY_MODIFICATION);
>  }
>  
> -static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void kbl_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	gen9_init_clock_gating(dev_priv);
> +	gen9_init_clock_gating(i915);
>  
>  	/* WAC6entrylatency:kbl */
> -	intel_uncore_rmw(&dev_priv->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
> +	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
>  
>  	/* WaDisableSDEUnitClockGating:kbl */
> -	if (IS_KBL_GRAPHICS_STEP(dev_priv, 0, STEP_C0))
> -		intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6,
> +	if (IS_KBL_GRAPHICS_STEP(i915, 0, STEP_C0))
> +		intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6,
>  				 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaDisableGamClockGating:kbl */
> -	if (IS_KBL_GRAPHICS_STEP(dev_priv, 0, STEP_C0))
> -		intel_uncore_rmw(&dev_priv->uncore, GEN6_UCGCTL1,
> +	if (IS_KBL_GRAPHICS_STEP(i915, 0, STEP_C0))
> +		intel_uncore_rmw(&i915->uncore, GEN6_UCGCTL1,
>  				 0, GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:kbl
>  	 * Display WA #0562: kbl
>  	 */
> -	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
> +	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
>  
>  	/*
>  	 * WaFbcNukeOnHostModify:kbl
>  	 * Display WA #0873: kbl
>  	 */
> -	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> +	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>  			 0, DPFC_NUKE_ON_ANY_MODIFICATION);
>  }
>  
> -static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void skl_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	gen9_init_clock_gating(dev_priv);
> +	gen9_init_clock_gating(i915);
>  
>  	/* WaDisableDopClockGating:skl */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL,
> +	intel_uncore_rmw(&i915->uncore, GEN7_MISCCPCTL,
>  			 GEN7_DOP_CLOCK_GATE_ENABLE, 0);
>  
>  	/* WAC6entrylatency:skl */
> -	intel_uncore_rmw(&dev_priv->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
> +	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
>  
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:skl
>  	 * Display WA #0562: skl
>  	 */
> -	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
> +	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
>  
>  	/*
>  	 * WaFbcNukeOnHostModify:skl
>  	 * Display WA #0873: skl
>  	 */
> -	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> +	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>  			 0, DPFC_NUKE_ON_ANY_MODIFICATION);
>  
>  	/*
>  	 * WaFbcHighMemBwCorruptionAvoidance:skl
>  	 * Display WA #0883: skl
>  	 */
> -	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0, DPFC_DISABLE_DUMMY0);
> +	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0, DPFC_DISABLE_DUMMY0);
>  }
>  
> -static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void bdw_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	enum pipe pipe;
>  
>  	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
> -	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
> +	intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
>  
>  	/* WaSwitchSolVfFArbitrationPriority:bdw */
> -	intel_uncore_rmw(&dev_priv->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
> +	intel_uncore_rmw(&i915->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
>  
>  	/* WaPsrDPAMaskVBlankInSRD:bdw */
> -	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR1_1, 0, DPA_MASK_VBLANK_SRD);
> +	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, DPA_MASK_VBLANK_SRD);
>  
> -	for_each_pipe(dev_priv, pipe) {
> +	for_each_pipe(i915, pipe) {
>  		/* WaPsrDPRSUnmaskVBlankInSRD:bdw */
> -		intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
> +		intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(pipe),
>  				 0, BDW_DPRS_MASK_VBLANK_SRD);
>  	}
>  
>  	/* WaVSRefCountFullforceMissDisable:bdw */
>  	/* WaDSRefCountFullforceMissDisable:bdw */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
> +	intel_uncore_rmw(&i915->uncore, GEN7_FF_THREAD_MODE,
>  			 GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME, 0);
>  
> -	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
> -		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
> +	intel_uncore_write(&i915->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
> +			   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
>  
>  	/* WaDisableSDEUnitClockGating:bdw */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaProgramL3SqcReg1Default:bdw */
> -	gen8_set_l3sqc_credits(dev_priv, 30, 2);
> +	gen8_set_l3sqc_credits(i915, 30, 2);
>  
>  	/* WaKVMNotificationOnConfigChange:bdw */
> -	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR2_1,
> +	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR2_1,
>  			 0, KVM_CONFIG_CHANGE_NOTIFICATION_SELECT);
>  
> -	lpt_init_clock_gating(dev_priv);
> +	lpt_init_clock_gating(i915);
>  
>  	/* WaDisableDopClockGating:bdw
>  	 *
>  	 * Also see the CHICKEN2 write in bdw_init_workarounds() to disable DOP
>  	 * clock gating.
>  	 */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN6_UCGCTL1, 0, GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw(&i915->uncore, GEN6_UCGCTL1, 0, GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE);
>  }
>  
> -static void hsw_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void hsw_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
> -	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
> +	intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
>  
>  	/* This is required by WaCatErrorRejectionIssue:hsw */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> +	intel_uncore_rmw(&i915->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
>  			 0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
>  
>  	/* WaSwitchSolVfFArbitrationPriority:hsw */
> -	intel_uncore_rmw(&dev_priv->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
> +	intel_uncore_rmw(&i915->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
>  
> -	lpt_init_clock_gating(dev_priv);
> +	lpt_init_clock_gating(i915);
>  }
>  
> -static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void ivb_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaFbcAsynchFlipDisableFbcQueue:ivb */
> -	intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
> +	intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
>  
>  	/* WaDisableBackToBackFlipFix:ivb */
> -	intel_uncore_write(&dev_priv->uncore, IVB_CHICKEN3,
> -		   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
> -		   CHICKEN3_DGMG_DONE_FIX_DISABLE);
> +	intel_uncore_write(&i915->uncore, IVB_CHICKEN3,
> +			   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
> +			   CHICKEN3_DGMG_DONE_FIX_DISABLE);
>  
> -	if (IS_IVB_GT1(dev_priv))
> -		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
> -			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
> +	if (IS_IVB_GT1(i915))
> +		intel_uncore_write(&i915->uncore, GEN7_ROW_CHICKEN2,
> +				   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
>  	else {
>  		/* must write both registers */
> -		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
> -			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
> -		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2_GT2,
> -			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
> +		intel_uncore_write(&i915->uncore, GEN7_ROW_CHICKEN2,
> +				   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
> +		intel_uncore_write(&i915->uncore, GEN7_ROW_CHICKEN2_GT2,
> +				   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
>  	}
>  
>  	/*
>  	 * According to the spec, bit 13 (RCZUNIT) must be set on IVB.
>  	 * This implements the WaDisableRCZUnitClockGating:ivb workaround.
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
> -		   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&i915->uncore, GEN6_UCGCTL2,
> +			   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* This is required by WaCatErrorRejectionIssue:ivb */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> +	intel_uncore_rmw(&i915->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
>  			 0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
>  
> -	g4x_disable_trickle_feed(dev_priv);
> +	g4x_disable_trickle_feed(i915);
>  
> -	intel_uncore_rmw(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR, GEN6_MBC_SNPCR_MASK,
> +	intel_uncore_rmw(&i915->uncore, GEN6_MBCUNIT_SNPCR, GEN6_MBC_SNPCR_MASK,
>  			 GEN6_MBC_SNPCR_MED);
>  
> -	if (!HAS_PCH_NOP(dev_priv))
> -		cpt_init_clock_gating(dev_priv);
> +	if (!HAS_PCH_NOP(i915))
> +		cpt_init_clock_gating(i915);
>  
> -	gen6_check_mch_setup(dev_priv);
> +	gen6_check_mch_setup(i915);
>  }
>  
> -static void vlv_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void vlv_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	/* WaDisableBackToBackFlipFix:vlv */
> -	intel_uncore_write(&dev_priv->uncore, IVB_CHICKEN3,
> -		   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
> -		   CHICKEN3_DGMG_DONE_FIX_DISABLE);
> +	intel_uncore_write(&i915->uncore, IVB_CHICKEN3,
> +			   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
> +			   CHICKEN3_DGMG_DONE_FIX_DISABLE);
>  
>  	/* WaDisableDopClockGating:vlv */
> -	intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
> -		   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
> +	intel_uncore_write(&i915->uncore, GEN7_ROW_CHICKEN2,
> +			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
>  
>  	/* This is required by WaCatErrorRejectionIssue:vlv */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> +	intel_uncore_rmw(&i915->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
>  			 0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
>  
>  	/*
>  	 * According to the spec, bit 13 (RCZUNIT) must be set on IVB.
>  	 * This implements the WaDisableRCZUnitClockGating:vlv workaround.
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
> -		   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&i915->uncore, GEN6_UCGCTL2,
> +			   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaDisableL3Bank2xClockGate:vlv
>  	 * Disabling L3 clock gating- MMIO 940c[25] = 1
>  	 * Set bit 25, to disable L3_BANK_2x_CLK_GATING */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN7_UCGCTL4, 0, GEN7_L3BANK2X_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw(&i915->uncore, GEN7_UCGCTL4, 0, GEN7_L3BANK2X_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * WaDisableVLVClockGating_VBIIssue:vlv
>  	 * Disable clock gating on th GCFG unit to prevent a delay
>  	 * in the reporting of vblank events.
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, VLV_GUNIT_CLOCK_GATE, GCFG_DIS);
> +	intel_uncore_write(&i915->uncore, VLV_GUNIT_CLOCK_GATE, GCFG_DIS);
>  }
>  
> -static void chv_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void chv_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	/* WaVSRefCountFullforceMissDisable:chv */
>  	/* WaDSRefCountFullforceMissDisable:chv */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
> +	intel_uncore_rmw(&i915->uncore, GEN7_FF_THREAD_MODE,
>  			 GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME, 0);
>  
>  	/* WaDisableSemaphoreAndSyncFlipWait:chv */
> -	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
> -		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
> +	intel_uncore_write(&i915->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
> +			   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
>  
>  	/* WaDisableCSUnitClockGating:chv */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN6_UCGCTL1, 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw(&i915->uncore, GEN6_UCGCTL1, 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaDisableSDEUnitClockGating:chv */
> -	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * WaProgramL3SqcReg1Default:chv
>  	 * See gfxspecs/Related Documents/Performance Guide/
>  	 * LSQC Setting Recommendations.
>  	 */
> -	gen8_set_l3sqc_credits(dev_priv, 38, 2);
> +	gen8_set_l3sqc_credits(i915, 38, 2);
>  }
>  
> -static void g4x_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void g4x_init_clock_gating(struct drm_i915_private *i915)
>  {
>  	u32 dspclk_gate;
>  
> -	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D1, 0);
> -	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D2, VF_UNIT_CLOCK_GATE_DISABLE |
> -		   GS_UNIT_CLOCK_GATE_DISABLE |
> -		   CL_UNIT_CLOCK_GATE_DISABLE);
> -	intel_uncore_write(&dev_priv->uncore, RAMCLK_GATE_D, 0);
> +	intel_uncore_write(&i915->uncore, RENCLK_GATE_D1, 0);
> +	intel_uncore_write(&i915->uncore, RENCLK_GATE_D2, VF_UNIT_CLOCK_GATE_DISABLE |
> +			   GS_UNIT_CLOCK_GATE_DISABLE |
> +			   CL_UNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&i915->uncore, RAMCLK_GATE_D, 0);
>  	dspclk_gate = VRHUNIT_CLOCK_GATE_DISABLE |
>  		OVRUNIT_CLOCK_GATE_DISABLE |
>  		OVCUNIT_CLOCK_GATE_DISABLE;
> -	if (IS_GM45(dev_priv))
> +	if (IS_GM45(i915))
>  		dspclk_gate |= DSSUNIT_CLOCK_GATE_DISABLE;
> -	intel_uncore_write(&dev_priv->uncore, DSPCLK_GATE_D(dev_priv), dspclk_gate);
> +	intel_uncore_write(&i915->uncore, DSPCLK_GATE_D(i915), dspclk_gate);
>  
> -	g4x_disable_trickle_feed(dev_priv);
> +	g4x_disable_trickle_feed(i915);
>  }
>  
> -static void i965gm_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void i965gm_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	struct intel_uncore *uncore = &dev_priv->uncore;
> +	struct intel_uncore *uncore = &i915->uncore;
>  
>  	intel_uncore_write(uncore, RENCLK_GATE_D1, I965_RCC_CLOCK_GATE_DISABLE);
>  	intel_uncore_write(uncore, RENCLK_GATE_D2, 0);
> -	intel_uncore_write(uncore, DSPCLK_GATE_D(dev_priv), 0);
> +	intel_uncore_write(uncore, DSPCLK_GATE_D(i915), 0);
>  	intel_uncore_write(uncore, RAMCLK_GATE_D, 0);
>  	intel_uncore_write16(uncore, DEUC, 0);
>  	intel_uncore_write(uncore,
> @@ -707,54 +709,55 @@ static void i965gm_init_clock_gating(struct drm_i915_private *dev_priv)
>  			   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
>  }
>  
> -static void i965g_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void i965g_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D1, I965_RCZ_CLOCK_GATE_DISABLE |
> -		   I965_RCC_CLOCK_GATE_DISABLE |
> -		   I965_RCPB_CLOCK_GATE_DISABLE |
> -		   I965_ISC_CLOCK_GATE_DISABLE |
> -		   I965_FBC_CLOCK_GATE_DISABLE);
> -	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D2, 0);
> -	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE,
> -		   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
> +	intel_uncore_write(&i915->uncore, RENCLK_GATE_D1, I965_RCZ_CLOCK_GATE_DISABLE |
> +			   I965_RCC_CLOCK_GATE_DISABLE |
> +			   I965_RCPB_CLOCK_GATE_DISABLE |
> +			   I965_ISC_CLOCK_GATE_DISABLE |
> +			   I965_FBC_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&i915->uncore, RENCLK_GATE_D2, 0);
> +	intel_uncore_write(&i915->uncore, MI_ARB_STATE,
> +			   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
>  }
>  
> -static void gen3_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void gen3_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	u32 dstate = intel_uncore_read(&dev_priv->uncore, D_STATE);
> +	u32 dstate = intel_uncore_read(&i915->uncore, D_STATE);
>  
>  	dstate |= DSTATE_PLL_D3_OFF | DSTATE_GFX_CLOCK_GATING |
>  		DSTATE_DOT_CLOCK_GATING;
> -	intel_uncore_write(&dev_priv->uncore, D_STATE, dstate);
> +	intel_uncore_write(&i915->uncore, D_STATE, dstate);
>  
> -	if (IS_PINEVIEW(dev_priv))
> -		intel_uncore_write(&dev_priv->uncore, ECOSKPD(RENDER_RING_BASE),
> +	if (IS_PINEVIEW(i915))
> +		intel_uncore_write(&i915->uncore, ECOSKPD(RENDER_RING_BASE),
>  				   _MASKED_BIT_ENABLE(ECO_GATING_CX_ONLY));
>  
>  	/* IIR "flip pending" means done if this bit is set */
> -	intel_uncore_write(&dev_priv->uncore, ECOSKPD(RENDER_RING_BASE),
> +	intel_uncore_write(&i915->uncore, ECOSKPD(RENDER_RING_BASE),
>  			   _MASKED_BIT_DISABLE(ECO_FLIP_DONE));
>  
>  	/* interrupts should cause a wake up from C3 */
> -	intel_uncore_write(&dev_priv->uncore, INSTPM, _MASKED_BIT_ENABLE(INSTPM_AGPBUSY_INT_EN));
> +	intel_uncore_write(&i915->uncore, INSTPM, _MASKED_BIT_ENABLE(INSTPM_AGPBUSY_INT_EN));
>  
>  	/* On GEN3 we really need to make sure the ARB C3 LP bit is set */
> -	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE, _MASKED_BIT_ENABLE(MI_ARB_C3_LP_WRITE_ENABLE));
> +	intel_uncore_write(&i915->uncore, MI_ARB_STATE,
> +			   _MASKED_BIT_ENABLE(MI_ARB_C3_LP_WRITE_ENABLE));
>  
> -	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE,
> -		   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
> +	intel_uncore_write(&i915->uncore, MI_ARB_STATE,
> +			   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
>  }
>  
> -static void i85x_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void i85x_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D1, SV_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&i915->uncore, RENCLK_GATE_D1, SV_CLOCK_GATE_DISABLE);
>  
>  	/* interrupts should cause a wake up from C3 */
> -	intel_uncore_write(&dev_priv->uncore, MI_STATE, _MASKED_BIT_ENABLE(MI_AGPBUSY_INT_EN) |
> -		   _MASKED_BIT_DISABLE(MI_AGPBUSY_830_MODE));
> +	intel_uncore_write(&i915->uncore, MI_STATE, _MASKED_BIT_ENABLE(MI_AGPBUSY_INT_EN) |
> +			   _MASKED_BIT_DISABLE(MI_AGPBUSY_830_MODE));
>  
> -	intel_uncore_write(&dev_priv->uncore, MEM_MODE,
> -		   _MASKED_BIT_ENABLE(MEM_DISPLAY_TRICKLE_FEED_DISABLE));
> +	intel_uncore_write(&i915->uncore, MEM_MODE,
> +			   _MASKED_BIT_ENABLE(MEM_DISPLAY_TRICKLE_FEED_DISABLE));
>  
>  	/*
>  	 * Have FBC ignore 3D activity since we use software
> @@ -763,25 +766,25 @@ static void i85x_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * abosultely nothing) would not allow FBC to recompress
>  	 * until a 2D blit occurs.
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, SCPD0,
> -		   _MASKED_BIT_ENABLE(SCPD_FBC_IGNORE_3D));
> +	intel_uncore_write(&i915->uncore, SCPD0,
> +			   _MASKED_BIT_ENABLE(SCPD_FBC_IGNORE_3D));
>  }
>  
> -static void i830_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void i830_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	intel_uncore_write(&dev_priv->uncore, MEM_MODE,
> -		   _MASKED_BIT_ENABLE(MEM_DISPLAY_A_TRICKLE_FEED_DISABLE) |
> -		   _MASKED_BIT_ENABLE(MEM_DISPLAY_B_TRICKLE_FEED_DISABLE));
> +	intel_uncore_write(&i915->uncore, MEM_MODE,
> +			   _MASKED_BIT_ENABLE(MEM_DISPLAY_A_TRICKLE_FEED_DISABLE) |
> +			   _MASKED_BIT_ENABLE(MEM_DISPLAY_B_TRICKLE_FEED_DISABLE));
>  }
>  
> -void intel_clock_gating_init(struct drm_i915_private *dev_priv)
> +void intel_clock_gating_init(struct drm_i915_private *i915)
>  {
> -	dev_priv->clock_gating_funcs->init_clock_gating(dev_priv);
> +	i915->clock_gating_funcs->init_clock_gating(i915);
>  }
>  
> -static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
> +static void nop_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(&i915->drm,
>  		    "No clock gating settings or workarounds applied.\n");
>  }
>  
> @@ -819,67 +822,67 @@ CG_FUNCS(nop);
>  
>  /**
>   * intel_clock_gating_hooks_init - setup the clock gating hooks
> - * @dev_priv: device private
> + * @i915: device private
>   *
>   * Setup the hooks that configure which clocks of a given platform can be
>   * gated and also apply various GT and display specific workarounds for these
>   * platforms. Note that some GT specific workarounds are applied separately
>   * when GPU contexts or batchbuffers start their execution.
>   */
> -void intel_clock_gating_hooks_init(struct drm_i915_private *dev_priv)
> -{
> -	if (IS_METEORLAKE(dev_priv))
> -		dev_priv->clock_gating_funcs = &nop_clock_gating_funcs;
> -	else if (IS_PONTEVECCHIO(dev_priv))
> -		dev_priv->clock_gating_funcs = &pvc_clock_gating_funcs;
> -	else if (IS_DG2(dev_priv))
> -		dev_priv->clock_gating_funcs = &dg2_clock_gating_funcs;
> -	else if (IS_XEHPSDV(dev_priv))
> -		dev_priv->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
> -	else if (IS_ALDERLAKE_P(dev_priv))
> -		dev_priv->clock_gating_funcs = &adlp_clock_gating_funcs;
> -	else if (GRAPHICS_VER(dev_priv) == 12)
> -		dev_priv->clock_gating_funcs = &gen12lp_clock_gating_funcs;
> -	else if (GRAPHICS_VER(dev_priv) == 11)
> -		dev_priv->clock_gating_funcs = &icl_clock_gating_funcs;
> -	else if (IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv))
> -		dev_priv->clock_gating_funcs = &cfl_clock_gating_funcs;
> -	else if (IS_SKYLAKE(dev_priv))
> -		dev_priv->clock_gating_funcs = &skl_clock_gating_funcs;
> -	else if (IS_KABYLAKE(dev_priv))
> -		dev_priv->clock_gating_funcs = &kbl_clock_gating_funcs;
> -	else if (IS_BROXTON(dev_priv))
> -		dev_priv->clock_gating_funcs = &bxt_clock_gating_funcs;
> -	else if (IS_GEMINILAKE(dev_priv))
> -		dev_priv->clock_gating_funcs = &glk_clock_gating_funcs;
> -	else if (IS_BROADWELL(dev_priv))
> -		dev_priv->clock_gating_funcs = &bdw_clock_gating_funcs;
> -	else if (IS_CHERRYVIEW(dev_priv))
> -		dev_priv->clock_gating_funcs = &chv_clock_gating_funcs;
> -	else if (IS_HASWELL(dev_priv))
> -		dev_priv->clock_gating_funcs = &hsw_clock_gating_funcs;
> -	else if (IS_IVYBRIDGE(dev_priv))
> -		dev_priv->clock_gating_funcs = &ivb_clock_gating_funcs;
> -	else if (IS_VALLEYVIEW(dev_priv))
> -		dev_priv->clock_gating_funcs = &vlv_clock_gating_funcs;
> -	else if (GRAPHICS_VER(dev_priv) == 6)
> -		dev_priv->clock_gating_funcs = &gen6_clock_gating_funcs;
> -	else if (GRAPHICS_VER(dev_priv) == 5)
> -		dev_priv->clock_gating_funcs = &ilk_clock_gating_funcs;
> -	else if (IS_G4X(dev_priv))
> -		dev_priv->clock_gating_funcs = &g4x_clock_gating_funcs;
> -	else if (IS_I965GM(dev_priv))
> -		dev_priv->clock_gating_funcs = &i965gm_clock_gating_funcs;
> -	else if (IS_I965G(dev_priv))
> -		dev_priv->clock_gating_funcs = &i965g_clock_gating_funcs;
> -	else if (GRAPHICS_VER(dev_priv) == 3)
> -		dev_priv->clock_gating_funcs = &gen3_clock_gating_funcs;
> -	else if (IS_I85X(dev_priv) || IS_I865G(dev_priv))
> -		dev_priv->clock_gating_funcs = &i85x_clock_gating_funcs;
> -	else if (GRAPHICS_VER(dev_priv) == 2)
> -		dev_priv->clock_gating_funcs = &i830_clock_gating_funcs;
> +void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
> +{
> +	if (IS_METEORLAKE(i915))
> +		i915->clock_gating_funcs = &nop_clock_gating_funcs;
> +	else if (IS_PONTEVECCHIO(i915))
> +		i915->clock_gating_funcs = &pvc_clock_gating_funcs;
> +	else if (IS_DG2(i915))
> +		i915->clock_gating_funcs = &dg2_clock_gating_funcs;
> +	else if (IS_XEHPSDV(i915))
> +		i915->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
> +	else if (IS_ALDERLAKE_P(i915))
> +		i915->clock_gating_funcs = &adlp_clock_gating_funcs;
> +	else if (GRAPHICS_VER(i915) == 12)
> +		i915->clock_gating_funcs = &gen12lp_clock_gating_funcs;
> +	else if (GRAPHICS_VER(i915) == 11)
> +		i915->clock_gating_funcs = &icl_clock_gating_funcs;
> +	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
> +		i915->clock_gating_funcs = &cfl_clock_gating_funcs;
> +	else if (IS_SKYLAKE(i915))
> +		i915->clock_gating_funcs = &skl_clock_gating_funcs;
> +	else if (IS_KABYLAKE(i915))
> +		i915->clock_gating_funcs = &kbl_clock_gating_funcs;
> +	else if (IS_BROXTON(i915))
> +		i915->clock_gating_funcs = &bxt_clock_gating_funcs;
> +	else if (IS_GEMINILAKE(i915))
> +		i915->clock_gating_funcs = &glk_clock_gating_funcs;
> +	else if (IS_BROADWELL(i915))
> +		i915->clock_gating_funcs = &bdw_clock_gating_funcs;
> +	else if (IS_CHERRYVIEW(i915))
> +		i915->clock_gating_funcs = &chv_clock_gating_funcs;
> +	else if (IS_HASWELL(i915))
> +		i915->clock_gating_funcs = &hsw_clock_gating_funcs;
> +	else if (IS_IVYBRIDGE(i915))
> +		i915->clock_gating_funcs = &ivb_clock_gating_funcs;
> +	else if (IS_VALLEYVIEW(i915))
> +		i915->clock_gating_funcs = &vlv_clock_gating_funcs;
> +	else if (GRAPHICS_VER(i915) == 6)
> +		i915->clock_gating_funcs = &gen6_clock_gating_funcs;
> +	else if (GRAPHICS_VER(i915) == 5)
> +		i915->clock_gating_funcs = &ilk_clock_gating_funcs;
> +	else if (IS_G4X(i915))
> +		i915->clock_gating_funcs = &g4x_clock_gating_funcs;
> +	else if (IS_I965GM(i915))
> +		i915->clock_gating_funcs = &i965gm_clock_gating_funcs;
> +	else if (IS_I965G(i915))
> +		i915->clock_gating_funcs = &i965g_clock_gating_funcs;
> +	else if (GRAPHICS_VER(i915) == 3)
> +		i915->clock_gating_funcs = &gen3_clock_gating_funcs;
> +	else if (IS_I85X(i915) || IS_I865G(i915))
> +		i915->clock_gating_funcs = &i85x_clock_gating_funcs;
> +	else if (GRAPHICS_VER(i915) == 2)
> +		i915->clock_gating_funcs = &i830_clock_gating_funcs;
>  	else {
> -		MISSING_CASE(INTEL_DEVID(dev_priv));
> -		dev_priv->clock_gating_funcs = &nop_clock_gating_funcs;
> +		MISSING_CASE(INTEL_DEVID(i915));
> +		i915->clock_gating_funcs = &nop_clock_gating_funcs;
>  	}
>  }
> -- 
> 2.39.1
> 
