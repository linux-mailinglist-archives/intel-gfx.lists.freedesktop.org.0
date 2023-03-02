Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF156A8892
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 19:36:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECE3410E542;
	Thu,  2 Mar 2023 18:36:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2C3310E542
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 18:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677782208; x=1709318208;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CAj7C/GDcnvAKEfpftVssGk7NyYBXyKE7hiC0EyEj7s=;
 b=NGhH5I6tZ+O1E285rQYjN2iqf3aZoVQ5yZ/M7gRnuMwpKgxJs81Ezj0K
 zdspRnTr+YvSrDCIpgvMxTzvl1xK3YXp1rVm1SyiwcBrb4UePW/rNTskD
 EPBgXa0+GckSUNUU3uuZ8eKn7IkyMM6f/svHrbyoHnnz4riQ3eN9jA7J8
 HujGVoSlid7StX+OBQo6npq/9I1aWUkwwDB1I5ZjcXcp/5wQMke/6Qf+D
 oUPGsitoyPFvcC7dlGBIsXtFB95w7Cx+G4bvqqz3jfg060Q+wzpbgSbCJ
 0/fu2xzjja74AoDax4tY36qjSnQG0VxxtLot62FZjwE7kMD9oS8k8B6lX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="314473107"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="314473107"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 10:36:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="798934287"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="798934287"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 02 Mar 2023 10:36:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 10:36:45 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 2 Mar 2023 10:36:45 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Mar 2023 10:36:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S5Ap9SuCAxH7OID/Q0dHWpYIBKOboEjgsSIUuh+UY1o7yu9AvzvXyBcZLUV8jClEDEMbvtSX1T2JDyBefTNiPEKgfHz7jQ/kPeDZZlm/YVS3H5h/lF4M5L/skm0CWgHG0uoNaaEFZ3t06FKknS1kTOUfapIuP/oDR2O/4JbeN8L6U9CZr6M0PQ+aPTnt+hKlc+zlFVrZLdKUxQHt/Sfxp8jOaKXyIjU7aDzT2qenHMHZCsCRN5TcqQGzmU3uRysX+RSVDoGwp/x2R+CXzi8uAQViUMAqxuO2/1Nu9j7ryJaL8UhruG8sqP363PoNg4FWSP3avt9CAwB1wIpe+00wHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dDe6SYCsOQxKHwkJ3ek6azbGkIvj9NMKrUI9HpmMrno=;
 b=UHx7wldr+5jD/Xn6HUNloVrP6wEP9j5MmxN1v15bcw8SE5YFt+qSe94E2OHrd7Asqu/aU6WCiBd/7azzsaE10W7fu8Drhve1GdQi+O20saJ38wVkECRN6H0xr85p9X5b096RQkd/DV2dTR05rBJuiM0rpbwu6x54YDk5/FCkoOzWBn0d/GPgEVJv09MzHf68K2DzHGkhPcyUR5pp3F1rpGFCVAmS4A6rhQavzmKezKgM4hg9cf0bLeXpVZIghA3+aisujdp6qDknyy2AIBWpLDbMq0f0iFsVx+E8CcC1+XOPL+5KcX2ZYU10mkD/KpwxnPonk+19CgazzsLaSxJKDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB5359.namprd11.prod.outlook.com (2603:10b6:5:396::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.20; Thu, 2 Mar
 2023 18:36:42 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%8]) with mapi id 15.20.6156.019; Thu, 2 Mar 2023
 18:36:42 +0000
Date: Thu, 2 Mar 2023 13:36:38 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZADsth+4MZBIJdcs@intel.com>
References: <cover.1677678803.git.jani.nikula@intel.com>
 <f732a7922c2450b41169c9b79a80fba97ab00592.1677678803.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f732a7922c2450b41169c9b79a80fba97ab00592.1677678803.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0102.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::17) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB5359:EE_
X-MS-Office365-Filtering-Correlation-Id: 59768198-e911-4c62-694f-08db1b4d10f7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /wvwVgzcOwLEYaR+RnPwuAOz+1c7cXlkUmxwiVa9ptAEFM4ji90AUpTYWP6dihiMr0tpv3ZNwIrCTCl2OZUZ0dQiuDuSQoi8X7z8Ko9xvpOTYAcvoMjOFjbViTfoIEGzFjoCPfNTIc+gB5EJFnkRl3vKbPtl+rc9EFCFq2duVUafmYsO32AQW9ALUCVfgLm57VQLZFgjS8cmHFx71gAOekbx0A8usGJvnxy+1uDfrRgmxRBtsg/QT8PuSgj6ZHpm/ZH10b3FVZZyQjGTZ4yuWIlnH7xnW1dknBpewhhZBXIXNJZJLyDgOXnMDI9lYWdQZdySb+dqkHMuVcFx2Ub8/9PIChJW6qiyTtw1lhTeYNYsgFot16ss7neg+x0W0xaj1x/eeaBnKS6cQyQQn+On08HNx4oEIrk/m/bZc01wcFrrC8FdC4ZWpnkP7YkxQIQA2YG8yFTol5jAQlkZZJURxoJ4feJh6gmunvMSsDvRoPfgf96xhh3uj5f5GbjdygcTGc4/10o2QIoosRhEdEQ5Fga1slv1DE8gg6i7/moHU/X2FGS/7swbFVkvYVx7nh2D9UTXg8G56gQiXAwH6r+iiLRus12lbwVzeeFchhURg3/GXp3kN8CpQalh0uzlq0199lWi3q4JAmhuKIeXxOmXcrlxgi6GWZ9eyxGnM0rhT+x++mWVgtbUcfniMQC4uL1k
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(396003)(366004)(376002)(39860400002)(451199018)(83380400001)(6666004)(36756003)(38100700002)(6862004)(5660300002)(8936002)(82960400001)(478600001)(86362001)(186003)(2616005)(6506007)(6512007)(6486002)(26005)(8676002)(66946007)(66556008)(44832011)(2906002)(66476007)(4326008)(37006003)(6636002)(316002)(41300700001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jSYG1dSyhRMk8xEv28rlkDVei4ZCAIjJO9HBqgxap9cMDYMyPZDCEf8e4JwC?=
 =?us-ascii?Q?M3HnDyvjMq3nx44ksqk/CaOS24MV0D8mAMNSQULwcDH1cCUl4JOVEpgVvdgX?=
 =?us-ascii?Q?6DjJtcSqDjW6DHMPhjxxGbxiVGZJQDTzSDD208JFVyRgJiX8bGiEvMkYHrb4?=
 =?us-ascii?Q?CMAO0plhRNv32OlRCskCug+ibnX6Rz5smxVv1lbNNJvJqc8Q40tb6dKjuXPj?=
 =?us-ascii?Q?JwqISAK6yooFMLM+a6DKkHm+/oYlTHcvTwdMzSF8/EUw3tQO7vETHOLnSDif?=
 =?us-ascii?Q?gTNfBgL6SmCyu4xN2jFTdR23Y6Q2KcCE3yXl9p+MsKyzM2x3UwpvGt1T6jc4?=
 =?us-ascii?Q?QNTL4OM8zqp6UH+fljCBVlMMeoQqXaRZ8cAvUDs+6NQFE4nrkjBrg0UFiFBY?=
 =?us-ascii?Q?1U1ogZb8nUe3LHP5y5iJIHUeAXx1FZ6aSt7ivFf0ediycycTsDB/zOIctWx1?=
 =?us-ascii?Q?8E+/tWQv+w2DLPE4lTtoub3qNQOXHJ/CVWnU9Hi7/4np9U3aXYcPS/ifQc0J?=
 =?us-ascii?Q?FaL3WVfi4hFzVMfn8Ze1vff119X96UrdghYSVbuh5Cce1CHTHZXcEttPuBSo?=
 =?us-ascii?Q?5BTkDhDM9OnzmQjcK0hLYkOsz9r4bAnsRsJKPZtVpIYvlJcAOABqepL4+EDr?=
 =?us-ascii?Q?jw7ZF1XCSGb3DZZ4KKrQKQkCinaFY/RLChMlQf/jcmdRE29/4+Y5X1WU13+B?=
 =?us-ascii?Q?WVDcY3yCDsYnVlg5QwMTKjiJGFNLtydiikLY9EcqRKRMfgn+AiBAxUADzWMx?=
 =?us-ascii?Q?MaKuDa6dUySh+lFVnjzSGH1Uczt3qXDJTIl28jTEivEcg6ldcmFja0I+4274?=
 =?us-ascii?Q?C3fEzXcOnl49W0Hl04nAmlLSdnzs5d3O6/ViflMrpuQ1o/zO4oYkvgBeIUKb?=
 =?us-ascii?Q?FAVORbnFcV6RjILp8GnNFeIasPfB0mTG42sETPOeLPuenO9G8G89hUjNtbOo?=
 =?us-ascii?Q?7J8hBOhi7X1GCzzrxizu8019D53L0bNAJNaEnJaIfxBOSPr2TfaC9+SAfi/+?=
 =?us-ascii?Q?nDDRbsab97WIwIn0HOyoXdA5S8Gaq+UrV9khZwIGWpxAZulXCKrBmRqnOSVs?=
 =?us-ascii?Q?BjQpQlIO4IlEoQH3CXHHSRVVMy3zNkXXzyDK9aRgc+8Jl+vvRoVcDdvYS1T+?=
 =?us-ascii?Q?XltW3MN4dwFG99fd+tkQen1ja/lD/mtbFbK7Wcy2CNco9Abj3v6MAdONJlAM?=
 =?us-ascii?Q?zRT5D+Kg6p904FH/NmbqnvobOzfqC/EMIW0K6kFRDzQB0RLYJUcOfNPdA6Rs?=
 =?us-ascii?Q?eD73CI2p20wv4p7aNoUsJuEB+kfgqqUNQvYdNvVopC+1sJJfNMlSzFyma8CF?=
 =?us-ascii?Q?x/QiS8YTkGsjS7dnKDBmRfHQse/ZQyyZnKlYQdxFI9HOsvrnua/syTFCSIfr?=
 =?us-ascii?Q?8SZLrIiQl0oRInblaJrcPJPQ5L/DHVAqcNH/YEq3e1mLdLFFZgUU+UCxdig/?=
 =?us-ascii?Q?g0pGTNYlDlrtv9PDWw3BnED2fDIPUZ6R0ReAIJg9xByOjMxnPlii3Bk5hoeR?=
 =?us-ascii?Q?f3KzQ0GjPm5yRa/xak3meQ4LSotC7rKQ79i+Hb0H+4tFBGd7AETQ5J4mT/9J?=
 =?us-ascii?Q?t8UR9bXWWLDjXiuRiTIVh3fuHQZARPQ7v5xEI/pQ9zInpdjSsiEvseg0N64I?=
 =?us-ascii?Q?eg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 59768198-e911-4c62-694f-08db1b4d10f7
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2023 18:36:42.2574 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MbrEaoFQY1XGuwWyeiTrPEQHhD/kIHVSt2QeUzS9vtXu8lrNmeJnZ5NCPtIEbKIJkOp4KccDNi0ZQgox7nbZVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5359
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/pm: drop intel_suspend_hw()
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

On Wed, Mar 01, 2023 at 03:54:17PM +0200, Jani Nikula wrote:
> All intel_suspend_hw() does is clear PCH_LP_PARTITION_LEVEL_DISABLE bit
> in SOUTH_DSPCLK_GATE_D for LPT LP. intel_suspend_hw() gets called from
> i915_drm_suspend().
> 
> However, i915_drm_suspend_late() calls
> intel_display_power_suspend_late(), which in turn calls hsw_enable_pc8()
> on HSW and BDW. The first thing that does is clear
> PCH_LP_PARTITION_LEVEL_DISABLE bit in SOUTH_DSPCLK_GATE_D.

For a moment I thought that the if HSW || BDW on the other call would
make some difference, but then I confirmed on intel_pch.c that only
HSW and BDW has PCH_LPT anyway. So,


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Remove the duplicated clearing of the bit, effectively delaying it from
> i915_drm_suspend() to i915_drm_suspend_late(), and remove the
> unnecessary intel_suspend_hw() function altogether.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c |  2 --
>  drivers/gpu/drm/i915/intel_pm.c    | 16 ----------------
>  drivers/gpu/drm/i915/intel_pm.h    |  1 -
>  3 files changed, 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 171ff4edabd6..a53fd339e2cc 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1079,8 +1079,6 @@ static int i915_drm_suspend(struct drm_device *dev)
>  
>  	intel_suspend_encoders(dev_priv);
>  
> -	intel_suspend_hw(dev_priv);
> -
>  	/* Must be called before GGTT is suspended. */
>  	intel_dpt_suspend(dev_priv);
>  	i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 8b02af531e82..c45af0d981fd 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -320,16 +320,6 @@ static void lpt_init_clock_gating(struct drm_i915_private *dev_priv)
>  			 0, TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
>  }
>  
> -static void lpt_suspend_hw(struct drm_i915_private *dev_priv)
> -{
> -	if (HAS_PCH_LPT_LP(dev_priv)) {
> -		u32 val = intel_uncore_read(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D);
> -
> -		val &= ~PCH_LP_PARTITION_LEVEL_DISABLE;
> -		intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, val);
> -	}
> -}
> -
>  static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
>  				   int general_prio_credits,
>  				   int high_prio_credits)
> @@ -789,12 +779,6 @@ void intel_init_clock_gating(struct drm_i915_private *dev_priv)
>  	dev_priv->clock_gating_funcs->init_clock_gating(dev_priv);
>  }
>  
> -void intel_suspend_hw(struct drm_i915_private *dev_priv)
> -{
> -	if (HAS_PCH_LPT(dev_priv))
> -		lpt_suspend_hw(dev_priv);
> -}
> -
>  static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	drm_dbg_kms(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
> index 1dd464d2d186..f774bddcdca6 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -13,7 +13,6 @@ struct intel_crtc_state;
>  struct intel_plane_state;
>  
>  void intel_init_clock_gating(struct drm_i915_private *dev_priv);
> -void intel_suspend_hw(struct drm_i915_private *dev_priv);
>  void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
>  
>  #endif /* __INTEL_PM_H__ */
> -- 
> 2.39.1
> 
