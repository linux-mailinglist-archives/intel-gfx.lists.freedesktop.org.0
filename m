Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 962D2660325
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jan 2023 16:29:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE1AD10E86E;
	Fri,  6 Jan 2023 15:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2A1010E86E
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jan 2023 15:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673018937; x=1704554937;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IQkLesDeJlKK/rTvcF1I4oLVt1EvU5mI5rjrISYXWjk=;
 b=B/ujeNyqK19KFi8WHgyyYsdgz1KRJ3QMVMTi5lubMhDepiN8cwtAZkn3
 FQuMyV8IetwxHSYIXYOdLMeJ5rI+4eSGO0F5MsktmKXvizvxNOFd8+EYx
 fR+nwk7joAh+vI/C1p/DZA5Agv94vpDtUOe/uB8n9hIm7btDtF7Krts/Q
 //DK8mCXA/865/NJuIs2b+BMZyRJoAz7hK2zlmSIZN4h9X1uaxD5OV4Ra
 SGYWEXfHRhSiXCg7Ka0ryBqTG9TDGJbipYV752A78rBYMOvmVeAVva+q2
 5c6qNmZ3J/Wr4WCBSfxSOqP1yBcGsYxrbz8HkdUkODUfp36RQqWnbW/kY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="386946478"
X-IronPort-AV: E=Sophos;i="5.96,305,1665471600"; d="scan'208";a="386946478"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2023 07:28:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="744667280"
X-IronPort-AV: E=Sophos;i="5.96,305,1665471600"; d="scan'208";a="744667280"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Jan 2023 07:28:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 6 Jan 2023 07:28:17 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 6 Jan 2023 07:28:17 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 6 Jan 2023 07:28:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U9tNqFjc0CBCd4rDN1N9ZZL1yeHxVtSK10eodpn1QRddjeFwvVI7IxFqngKV40oP5V6qNBudTQhx3jwPzUzSnw3L+NCktlSmpDu//a5BYG7xyfMbIH4GS5B3OWVUSQ3onxcjQjHVCrITZshAhXBx5eNUWARzZoFdRCXi7QPlgQePKUZ2WGRYPMfqPBShYvHgWb2PV1ZoPnWjVVPagc36G6CE/y5+tqIyb9H1ZEYu5NgFQTJ+TeK+R7AjSKLQC9cdKHjlDdnjjq+KlvMAKX7HU9bwAT1o0mhdVv7wgPBQH3nTCeM4Rl75VVe3BMdtXaHr26fh5AJ08W1uytBqpue9OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uORhMzxoWTsAiQmnDmqlx21Omv4MsclF2JPhIMY4GBg=;
 b=ZGEXRfegloiYRB+nMies5pbrnpFYmMu1BNmH6ePid7z89KrQjDjgMz+Rs6vEQPQ0XW9q8F9fJKBCUb3dpYXpS2d14QMjJlBsUoi1CTiczPhTytafppGBR1sZpLZ7a5tEPihT77TdhiufcP+2wzJvR9hw/SXNQYRKvQbyMCVjDwuylyKnRJNvhnhiwl651FGZ6q0y/ewuCcxe/Y7xr1CDqT5ydPbTzO1sJ+3d3OsY+qjXwoacn9NovPqnsdlZofxa8OETrhGh8diIuMW3IM7QUJcme76CZ9+vPVmngXWYxcrJaIWjKBoH1qS6dsWiE60WRqOZQm7TQHpjUuLpYvNH8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ2PR11MB7455.namprd11.prod.outlook.com (2603:10b6:a03:4cd::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 15:28:16 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 15:28:15 +0000
Date: Fri, 6 Jan 2023 10:28:11 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y7g+Cxdj9CdMga1e@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
 <20230105131046.2173431-5-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105131046.2173431-5-andrzej.hajda@intel.com>
X-ClientProxiedBy: BYAPR07CA0069.namprd07.prod.outlook.com
 (2603:10b6:a03:60::46) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ2PR11MB7455:EE_
X-MS-Office365-Filtering-Correlation-Id: 98b624cc-e781-4b0e-c6a6-08daeffaa15e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7fINwSUaRtLl2DJcjQQoHvl9ArSffRRE9KG3ZUOx/ncZIxnI4qs1Sfu0VfFFKUL7H7ZA5WWJL2WbXI3vhZ8+jEuls5b83/UcVCDuJIHMFPSwfnp3ukttC///az0yjVzpx2JsvEEpfhda/dXKAfi8zFb9nRG9mwbQdEtnt1mgRQ1vm/aP4L/dxxZQCu+2xuWXSbnz7PBNAuQXsiMCAh0ddXsooI7Ud2V45ZTnvT682pBMP8kGtscrMfGDbSYn5PkyvaLnRdyaeNvAQt9d5VHqc9yp9B3RCkJZp2mxkerCzZPDpqEcrxYDeMhbvsbA6+si1rDblV5a9p/ROkWsFg7h2j2XBRvr+O+4DYA1bxRBlfe4aOyPjvIRItNHZ51VSZwQnSZhMycyib2IHB+Vy7cTKcKSPxLz5Bhix60mfIhvJBa/HpivMPPTqxMRgNmwigsistXv9k1qAKCJEH7ZuhAqKOwlZR7FYxrB9Y1y2CecSJktc/2xj0Eme8UxYgxK8z7BLN7V2kriLBm+l0oJaa7jGQL7QA7FTJuTYsuNYgjnOkcv7GBx/Zxuz7uwmDgOjzPyXYKjh4jUY+tSPaA+5Jnyb+wwgyiMtRyxNV0qReXP4NOvQTLgusIoDqjgCPmNyx4+9AvMG5KGLFqePLBDRA4Y4JFvkA7mH7xfIfGoe5Z0/I397k/hrNY4L+tvQWMZEu1w
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(396003)(366004)(39860400002)(346002)(451199015)(66946007)(37006003)(82960400001)(36756003)(6636002)(86362001)(6506007)(38100700002)(66556008)(66476007)(6486002)(2616005)(478600001)(6512007)(186003)(26005)(6666004)(316002)(4326008)(2906002)(8936002)(8676002)(44832011)(5660300002)(41300700001)(6862004)(83380400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PHj62xBQ1/7f4EpfbSL86iYoitvS+nrUvaxo6edL0vxuBWHL39Evy3d5TyJr?=
 =?us-ascii?Q?vhvPEoptfcFIgfsx+LT6C/6GN1YX3hmI3laaZgLDQN0/whAYT0/MFMF99Qm6?=
 =?us-ascii?Q?vyNStfgjx0uZkS6CfYZ2U1+NLOLw3Y/f1cymsZ+0NTTfIO6NzW5ZYpH9F+MJ?=
 =?us-ascii?Q?fST7Zn+5ZvaNH34KOKkoZZHwZv17YYxpb4eZJIM+7xIbRgUXs5wz81P0g1OS?=
 =?us-ascii?Q?MDVTKnioV5Jpqlb77GGn4r19dKLwUiRwMsZpeVPCALnWw63rj3O42W/ubZeF?=
 =?us-ascii?Q?tFYcbB7ZzM2lrN6MKgU8+2mzCCFIDc63kXb+JaKFyDLQd1O8g6Eb77YRLzHe?=
 =?us-ascii?Q?b9sRljjt7GQmR8X55LgGdfRfKwq/ZzbviKDcK4ssGVcqvBpw1BycWOVYVShw?=
 =?us-ascii?Q?upahJVbTimRqn7nWPXWDmPrg2kbMY1YvyYMtC/YpsFSnRv5+dcJU/oK9aW/Y?=
 =?us-ascii?Q?LXxAe60ZLO6pNZDsJJmoCSMDFC44lXBSkI1XZQBsov/q5q2DdoxH6IcvypjU?=
 =?us-ascii?Q?4UYwsgeky1Dka510spL1EI+zBuTsProyqLJIEquBq6eEoSST37oeEN2SyEtL?=
 =?us-ascii?Q?vDBEcfliJSeIhlri4OyttimCACuJ++SFnKSAFPl4qTRFFJ1u99bt8IkQphP9?=
 =?us-ascii?Q?5a8yQL5zqVB25fHhiGrFwR/fD3QZJjLstQBa1TGfbfI5KjIwg138WNhKWGr5?=
 =?us-ascii?Q?vKOJUENqfkvlISHg/JDS7ag06afnouGu+vWi+uMRyNnUaqEzOqjG9OzZKR0a?=
 =?us-ascii?Q?MeLFVhqxbm9PaS90aghD6quT7z0NSt9jArxysE06rRM02m3QWrYU3o/heDPf?=
 =?us-ascii?Q?gG9CxTnVD9LzsF4TmQGKr2OgqqHEjQK8SWio3J5qzyCgumMyNPgRCmgRqg/B?=
 =?us-ascii?Q?HhdKiK9/hRyUjjFdMTlCfVq5sTl4nuYxt1cZtue4qp3Vg5kiuMJyI7WqjV8i?=
 =?us-ascii?Q?ub6A6XGWNqdo06TDLtiTAXrrY86FX8yg1ernjqm9Ju0/Dqc8QWnD8PeGxahk?=
 =?us-ascii?Q?39xhRkIAlRzDDO8kSOQj7RE0sRmgLHZMXAaBddF2hvqwQ14U2l89pISILw5R?=
 =?us-ascii?Q?VUGdUptPWWpQOaYySYobvdVfWQNADOLoJPaHPSqv/VGlmM8TTbmbbArxE48d?=
 =?us-ascii?Q?3Zd41BY+1fYqcxd+IfqzQwMQSSMY9tudZdSLJSmjkTVxSnZcLX24brJowzhk?=
 =?us-ascii?Q?gKt+yoPLtJ4/TEu93rc7DBGoicbtWEyGSncZFW7dQ85HeY2n0ctxXqpprbC0?=
 =?us-ascii?Q?/gUJp0BPoPNiNNzU6s30NaZhQJSTAIiuGIqQioP1FArBBKIDZlBJ/gUE/TbK?=
 =?us-ascii?Q?cP01wd4/KjBZjJynOOC5osOrHxfd2LfPrFczUzuemvKMqgBVSuHMBmL3QQ0P?=
 =?us-ascii?Q?XRr1dUDmLalxm1l//hrlpkUFbOWUVUatw6L+iidf1ZQIdMfPOWWtJLJBt0Ij?=
 =?us-ascii?Q?vEZQnfeO0mauVvjcw0CCPpDQLuMPb/iWvML4+wY2jRbb21uWml2hRyPd1mlF?=
 =?us-ascii?Q?uVc3kbhJ59bTbHP/b/RwS4+B635TfHur0d81OIKOYqbD+RI63aug8T2clxSm?=
 =?us-ascii?Q?tx8MThljCfhMNZ6tBFNsnhI/g7UV8sY1CFjn0a1AA/bqDE1tDvh9L/LzVCjJ?=
 =?us-ascii?Q?MA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98b624cc-e781-4b0e-c6a6-08daeffaa15e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2023 15:28:15.7065 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eNKTv1AK5LVtVOeIeUhKNFlZ+3ZpDxAZpgwX+oMvfevgJO+jeQe8feGLapvMYZKrd/ciWopihEJhNZk+4UomBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7455
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 5/9] drm/i915/display/pch: use
 intel_de_rmw if possible
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

On Thu, Jan 05, 2023 at 02:10:42PM +0100, Andrzej Hajda wrote:
> The helper makes the code more compact and readable.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_pch_display.c  | 41 +++++--------------
>  .../gpu/drm/i915/display/intel_pch_refclk.c   | 10 +----
>  2 files changed, 13 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index cecc0d007cf39c..4b5e069a1b9051 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -307,7 +307,6 @@ static void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  	i915_reg_t reg;
> -	u32 val;
>  
>  	/* FDI relies on the transcoder */
>  	assert_fdi_tx_disabled(dev_priv, pipe);
> @@ -317,21 +316,16 @@ static void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
>  	assert_pch_ports_disabled(dev_priv, pipe);
>  
>  	reg = PCH_TRANSCONF(pipe);
> -	val = intel_de_read(dev_priv, reg);
> -	val &= ~TRANS_ENABLE;
> -	intel_de_write(dev_priv, reg, val);
> +	intel_de_rmw(dev_priv, reg, TRANS_ENABLE, 0);
>  	/* wait for PCH transcoder off, transcoder state */
>  	if (intel_de_wait_for_clear(dev_priv, reg, TRANS_STATE_ENABLE, 50))
>  		drm_err(&dev_priv->drm, "failed to disable transcoder %c\n",
>  			pipe_name(pipe));
>  
> -	if (HAS_PCH_CPT(dev_priv)) {
> +	if (HAS_PCH_CPT(dev_priv))
>  		/* Workaround: Clear the timing override chicken bit again. */
> -		reg = TRANS_CHICKEN2(pipe);
> -		val = intel_de_read(dev_priv, reg);
> -		val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
> -		intel_de_write(dev_priv, reg, val);
> -	}
> +		intel_de_rmw(dev_priv, TRANS_CHICKEN2(pipe),
> +			     TRANS_CHICKEN2_TIMING_OVERRIDE, 0);
>  }
>  
>  void ilk_pch_pre_enable(struct intel_atomic_state *state,
> @@ -456,21 +450,14 @@ void ilk_pch_post_disable(struct intel_atomic_state *state,
>  	ilk_disable_pch_transcoder(crtc);
>  
>  	if (HAS_PCH_CPT(dev_priv)) {
> -		i915_reg_t reg;
> -		u32 temp;
> -
>  		/* disable TRANS_DP_CTL */
> -		reg = TRANS_DP_CTL(pipe);
> -		temp = intel_de_read(dev_priv, reg);
> -		temp &= ~(TRANS_DP_OUTPUT_ENABLE |
> -			  TRANS_DP_PORT_SEL_MASK);
> -		temp |= TRANS_DP_PORT_SEL_NONE;
> -		intel_de_write(dev_priv, reg, temp);
> +		intel_de_rmw(dev_priv, TRANS_DP_CTL(pipe),
> +			     TRANS_DP_OUTPUT_ENABLE | TRANS_DP_PORT_SEL_MASK,
> +			     TRANS_DP_PORT_SEL_NONE);
>  
>  		/* disable DPLL_SEL */
> -		temp = intel_de_read(dev_priv, PCH_DPLL_SEL);
> -		temp &= ~(TRANS_DPLL_ENABLE(pipe) | TRANS_DPLLB_SEL(pipe));
> -		intel_de_write(dev_priv, PCH_DPLL_SEL, temp);
> +		intel_de_rmw(dev_priv, PCH_DPLL_SEL,
> +			     TRANS_DPLL_ENABLE(pipe) | TRANS_DPLLB_SEL(pipe), 0);
>  	}
>  
>  	ilk_fdi_pll_disable(crtc);
> @@ -580,20 +567,14 @@ static void lpt_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
>  
>  static void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv)
>  {
> -	u32 val;
> -
> -	val = intel_de_read(dev_priv, LPT_TRANSCONF);
> -	val &= ~TRANS_ENABLE;
> -	intel_de_write(dev_priv, LPT_TRANSCONF, val);
> +	intel_de_rmw(dev_priv, LPT_TRANSCONF, TRANS_ENABLE, 0);
>  	/* wait for PCH transcoder off, transcoder state */
>  	if (intel_de_wait_for_clear(dev_priv, LPT_TRANSCONF,
>  				    TRANS_STATE_ENABLE, 50))
>  		drm_err(&dev_priv->drm, "Failed to disable PCH transcoder\n");
>  
>  	/* Workaround: clear timing override bit. */
> -	val = intel_de_read(dev_priv, TRANS_CHICKEN2(PIPE_A));
> -	val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
> -	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
> +	intel_de_rmw(dev_priv, TRANS_CHICKEN2(PIPE_A), TRANS_CHICKEN2_TIMING_OVERRIDE, 0);
>  }
>  
>  void lpt_pch_enable(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> index 08a94365b7d13b..6780c8fd9a1d31 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> @@ -12,19 +12,13 @@
>  
>  static void lpt_fdi_reset_mphy(struct drm_i915_private *dev_priv)
>  {
> -	u32 tmp;
> -
> -	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
> -	tmp |= FDI_MPHY_IOSFSB_RESET_CTL;
> -	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
> +	intel_de_rmw(dev_priv, SOUTH_CHICKEN2, 0, FDI_MPHY_IOSFSB_RESET_CTL);
>  
>  	if (wait_for_us(intel_de_read(dev_priv, SOUTH_CHICKEN2) &
>  			FDI_MPHY_IOSFSB_RESET_STATUS, 100))
>  		drm_err(&dev_priv->drm, "FDI mPHY reset assert timeout\n");
>  
> -	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
> -	tmp &= ~FDI_MPHY_IOSFSB_RESET_CTL;
> -	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
> +	intel_de_rmw(dev_priv, SOUTH_CHICKEN2, FDI_MPHY_IOSFSB_RESET_CTL, 0);
>  
>  	if (wait_for_us((intel_de_read(dev_priv, SOUTH_CHICKEN2) &
>  			 FDI_MPHY_IOSFSB_RESET_STATUS) == 0, 100))
> -- 
> 2.34.1
> 
