Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4EB65C379
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jan 2023 17:02:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87AE010E200;
	Tue,  3 Jan 2023 16:02:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C8D10E1FE
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Jan 2023 16:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672761724; x=1704297724;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eR9a1yPifrW+vZEB3s3AU3/NVnu24Cdgq4GoURu6epQ=;
 b=MW/OvpM9DmVn6DAH8z7OEFZWuC6z8gOJqHFAhZqbuYb56H1PPOESZp3G
 8Lidr3PPDYoy0C9a8tcWkhMB3uJRlIgF27etjNYg0n8GSimI9cOWtACJC
 NfHZhDimHTYfdIxJpu0poMEVkPlwUecPHWpfQZ9FjYHz7Dw65ifZShrvM
 w7Oh6ZZb04fQObq44Q36gt2pIuZgsHI+1O1C8cJRsYeTWGMwDJOcOgO2R
 Y7YajlDq6VCcvc1tb4GYUgyVGoSNGK+riHTyV6iBNlcxgBXTLejIOJlh8
 tGnRGOEIzjr9Z3ZXNCJ0fpBTZGbbKntMUa2BGkvqrgVqX/eTRAF5b2sVI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="322919535"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="322919535"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 08:02:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="654835168"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="654835168"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 03 Jan 2023 08:02:03 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 08:02:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 08:02:02 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 08:02:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cW3FOPDLMErf7dWXPwn6uUc5lJR7w7hvdS5FmSN45WM8wkIVBAlt2Yv/9oV2sruSEJl3hyx8jYE2qXeUm3kwQihS6b0JTeDSxdtDUHAkWzdWccXy5ELi1Tl/IG2NU93F6CTjdhLg0F+q2XuID5uYuut6jnbwXvUo5IJ7opoe6HPzQGyXRroSgP0Hxwfvr4MwnTs02YXasDczlDH/aoxToFSHnp0ThcqcqYv/NHXbmvmaVnr4ato+3Rvz9IgMTII9zSE8ttOAY92iel2bN0dDE1EAHjG+7j4vEytcK7zfGqHYrsEs9wdrdGvRIaquXr9aXwLbzS+i4RX5vU1/eALY0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O/coAdNAfcc1H1lf02xtoAvofOk2hKRUVachnRfMZ2w=;
 b=HWru7EPZ2MKFmEHhaQqC+SPdpMeuzSA1azbXiVbAwcWnI2N4tswvntjxGwrXLuDpsTX/Hw2ldqiE4DUb4tDV4lISnDqh3yin4St1CZJSOeJUPxnadByV/BHN1E02fYj2VGcFZR76EXoqYBai61FY8kSFwNZWK7iwVFxGoKX/IzOPTGrWVdR1G1bx4VGbFzZYm9uY+310aL5s+CF3s4VCErLpG1jznjHaRzsoXOyp3jiPrb9OKCSEZ6fEwRff74Yf+CUx2yQ2qCb8NMXTG0r0+pTs+kzzbFDoUWbKztZsJWKClc9ufe6qkwJV31YzWPI7ta1DLnq5Xu3QnW/OVD+vzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB5914.namprd11.prod.outlook.com (2603:10b6:510:138::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 16:02:00 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 16:02:00 +0000
Date: Tue, 3 Jan 2023 11:01:55 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <Y7RRcyjbRvS0VhIK@intel.com>
References: <20230102183324.862279-1-imre.deak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230102183324.862279-1-imre.deak@intel.com>
X-ClientProxiedBy: SJ0PR03CA0251.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::16) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB5914:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d763216-440e-49a1-34a1-08daeda3d875
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T2VaxZhMHRkaFIokMVAart/9SDbd08RYHy00/oEghBtgS4VyYTzokYx4tsPoiVRl0w4U3IkSo0Io1sGYDWniQaxto1S19XeWJ3FaAAx8Wddqn8s2RLwWo7eNC0DDaP6KTin6h48pEbiEQvEakjXcKUEkiSNxwIIjqezdxr9oHVL5vhQ+ItQdoXks8UrdjUfxipQalYGkMb90iWFqNGT+dhKsf+Ss25bN0UgfdLlSex3Qc5mme34t/JaZGAY8ebHak71WHGeLmjvzXhLnioz/nyxh55JDI4Lx/Wl//3ysrOGC/mV98V8gF2UVw3KapROulA3GXqBN2E2eeIrQySMZsQSrUg/WMYFxcBcFJqnIUG6+YFuae9Tmg3I+ea6s57/3W6zaAd7gqMnAwDCiojAjL/5MQ8cfKMUkd3BF9w0DYohvFJPRowwHPJRWXg54K7FxkpscKuZQus6mmOkdgESs/5cGAC0Hx62rWN2D6/MxEXQaGmm1tXI0+AFyYixb3Ql89oinQNO++l9b2qG0DM+Zw2h1XdLDyfB0z5OPQaTUjQFjzl/fNSy1bYFcFuHktU9BoQAC6BoTlncjeXzavYBFOAaFTN7A0iUkpoDenDZvckktqcOrxm4uKFEFtOlImafjbz/3XvTFG5zcBPgSKj7gWm7jz6SgN2QYMo6tjLpXTQq8b78JTreuc447tV4JCHAV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(376002)(366004)(396003)(39860400002)(451199015)(26005)(186003)(83380400001)(2616005)(6512007)(44832011)(86362001)(36756003)(38100700002)(82960400001)(316002)(37006003)(2906002)(6636002)(4326008)(6862004)(66946007)(41300700001)(8936002)(5660300002)(8676002)(66556008)(66476007)(478600001)(6666004)(6486002)(6506007)(22166006);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AV7bkcI4Eduty2qVCPsufLnTIQzkfDVOXXX47Zgp5BfdByDxD5/rKlPbRswx?=
 =?us-ascii?Q?2W+MgZN8YHFrxLdXU+3R9fUbR3d6b1NTZhe+N7O5DaxDyBg+1PMv9pAy52C/?=
 =?us-ascii?Q?cK+CALXIDBmQMdesZCtsJo5PPCpaJ5M0wBF4TNbQR2sQ5goWMGUhTKPTAtGp?=
 =?us-ascii?Q?/bi8L97kuD/D0ciaLDSKDXqwDpYorNVxWiswXNZBejRMkpTIKnYkZBv6XF/l?=
 =?us-ascii?Q?VQl+qL0PIufiN9fQw5crXkavkssyzjCQ0EZU605DF48Z8pOdsWeaIkOpoYR6?=
 =?us-ascii?Q?biaL9Cjcz7OxaXSI4SAJ3eOV2T2FMUX0Dcr6JsaN3EDPHwoeatv9+XEaAt5f?=
 =?us-ascii?Q?js6MoO7/DyzGf1Qhsn8R05IQZeWeQTVUEBy34TClN9d5sNy8Gk002ikonIqc?=
 =?us-ascii?Q?rTq+94G2LQCjG7pbfPzlDy5zUbx5sRTw6KBEKn1EWgkz7edM0l0a+AVhtWML?=
 =?us-ascii?Q?auvCzMiLIepgIt81oPbZPGAnUgUy3Nj71mSq/wv7/9M/2pMx25oi6HkHaK0K?=
 =?us-ascii?Q?11s6rQ/+AVCgLyXGm474+i8cBxvSMeaibpa4ImpmBGYZm3oJ9TkKBPcZp/V5?=
 =?us-ascii?Q?tQbXBJccvt24QBZ0zn+t39bwUDG+5mM94HroJ22lh5INnzjAqIpQ2K8U/eN4?=
 =?us-ascii?Q?pWKz/fqXuWD5Nn7JCMSbiLSGLdVPeJDvk/GViHLLzMFw6O4fRjJrAOe6M7xE?=
 =?us-ascii?Q?lafF5zFUFGGfJZ5WgN5phthuY6Pvbr4o/79zq3MGC+5Iyh888qorqgOZteQP?=
 =?us-ascii?Q?9QT3QyzqGhaD0yXG7fv0WwuhMufjjDHIMdXcULbJs93xpePeINV8Ae37ubgm?=
 =?us-ascii?Q?y1c0tGtlD74i+z8rnw5IulTwo5ZO3lzUXLQG5785VBjOCR2EdMwB9906nFh0?=
 =?us-ascii?Q?Bk+m2+bGP0wyzwoktv9dJ9oHVpMdRqAjjPcxWF+T58lq0MOo2WYpdxiPEVeN?=
 =?us-ascii?Q?2JpiVZTQQWdY0JIY0Q82n/spS/r4i869xyZpEfuM5q8m7s6uUZxxRZIm8w+J?=
 =?us-ascii?Q?53dUYbAmo7UvI2BTsW+GOpWFA4gF/t5pTqYHq8Me0dneXNuOC5LIOmzZMcVc?=
 =?us-ascii?Q?frINWCZpyY62w+fbCENgElT/InWj0neaet7XimAQCbmB7cPtv0Y2iP2fzW0J?=
 =?us-ascii?Q?VchUTeJ1GY6Gaq7V/vi9zsTtBF0Myl3HYLYrOzelZCvtZ5MI+cl+cn0SDeIi?=
 =?us-ascii?Q?GeKGVz5Z8xAVNhZWzK9x+4eShRgcg6zOHe5UaSYWTB6ZtpC0NJjQs1NCG/l4?=
 =?us-ascii?Q?NwRaJdvpm87bzlKSyBtf7XJvnnOd2EVAteGg+xIinft5b6esH4PGfUt7tJS+?=
 =?us-ascii?Q?6HrYN9Xlho3EZ3PAZ5AjZklpcLe05MGlHZ7QFkQvP1QQ/jnJDZxyzMiKmcqm?=
 =?us-ascii?Q?/wTz3vIk+kDFWVfAjVTRljendNXLWfqmPArjiyzd/0wG6rTM1M8YPVbTW1G8?=
 =?us-ascii?Q?pZXQp16aeo03tZprZ1ImBLQSCCz1OPXM7Hy7UaBjWwB136PFvaRwmg9CFJUP?=
 =?us-ascii?Q?V5Zb4cABIToVSE50wpj0P/TO/BD+iD/4qDiM5rAGutxzqxf6mms+RXYLofe5?=
 =?us-ascii?Q?aJcvWJ70bDVAnU6I3oZ7gO3LC2JqhogmtXG/YqTW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d763216-440e-49a1-34a1-08daeda3d875
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2023 16:02:00.2106 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /byd/kNfqDHjiVe7i4x3+j20Ef2J1d0ZLDt2kq4/a57K6FW+OkKXHhnhr/VmTmHZOgyfjJPc9WWveey8CGQmFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5914
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable a PIPEDMC whenever its
 corresponding pipe is enabled
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

On Mon, Jan 02, 2023 at 08:33:24PM +0200, Imre Deak wrote:
> Make sure that PIPEDMCs are enabled whenever the corresponding pipe is
> enabled.
> 
> This is required at least by the latest ADLP v2.18 firmware, which adds
> a new handler enabled by default and running whenever the pipe is
> enabled at the vertical referesh rate.
> 
> Bspec: 50344, 67620

mlt hw looks a good register clean-up! why multiple registers for single bits! :)

> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  5 ++++
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 24 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dmc.h      |  4 ++++
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 11 +++++++++
>  .../drm/i915/display/intel_modeset_setup.c    |  4 +++-
>  5 files changed, 47 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e75b9b2a0e015..ddbf22d5667a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1918,6 +1918,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
>  		return;
>  
> +	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
> +
>  	if (!new_crtc_state->bigjoiner_pipes) {
>  		intel_encoders_pre_pll_enable(state, crtc);
>  
> @@ -2053,6 +2055,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>  {
>  	const struct intel_crtc_state *old_crtc_state =
>  		intel_atomic_get_old_crtc_state(state, crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  
>  	/*
>  	 * FIXME collapse everything to one hook.
> @@ -2062,6 +2065,8 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>  		intel_encoders_disable(state, crtc);
>  		intel_encoders_post_disable(state, crtc);
>  	}
> +
> +	intel_dmc_disable_pipe(i915, crtc->pipe);
>  }
>  
>  static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 905b5dcdca14f..fe8a8941dbf3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -108,6 +108,8 @@ MODULE_FIRMWARE(BXT_DMC_PATH);
>  #define DMC_V3_MAX_MMIO_COUNT		20
>  #define DMC_V1_MMIO_START_RANGE		0x80000
>  
> +#define PIPE_TO_DMC_ID(pipe)		 (DMC_FW_PIPEA + ((pipe) - PIPE_A))
> +
>  struct intel_css_header {
>  	/* 0x09 for DMC */
>  	u32 module_type;
> @@ -407,6 +409,28 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
>  				     PIPEDMC_GATING_DIS, 0);
>  }
>  
> +void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
> +{
> +	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
> +		return;
> +
> +	if (DISPLAY_VER(i915) >= 14)
> +		intel_de_rmw(i915, MTL_PIPEDMC_CONTROL, 0, PIPEDMC_ENABLE_MTL(pipe));
> +	else
> +		intel_de_rmw(i915, PIPEDMC_CONTROL(pipe), 0, PIPEDMC_ENABLE);
> +}
> +
> +void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe)
> +{
> +	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
> +		return;
> +
> +	if (DISPLAY_VER(i915) >= 14)
> +		intel_de_rmw(i915, MTL_PIPEDMC_CONTROL, PIPEDMC_ENABLE_MTL(pipe), 0);
> +	else
> +		intel_de_rmw(i915, PIPEDMC_CONTROL(pipe), PIPEDMC_ENABLE, 0);
> +}
> +
>  /**
>   * intel_dmc_load_program() - write the firmware from memory to register.
>   * @dev_priv: i915 drm device.
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 67e03315ef999..c65a5769879fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -13,6 +13,8 @@
>  struct drm_i915_error_state_buf;
>  struct drm_i915_private;
>  
> +enum pipe;
> +
>  enum {
>  	DMC_FW_MAIN = 0,
>  	DMC_FW_PIPEA,
> @@ -48,6 +50,8 @@ struct intel_dmc {
>  void intel_dmc_ucode_init(struct drm_i915_private *i915);
>  void intel_dmc_load_program(struct drm_i915_private *i915);
>  void intel_dmc_disable_program(struct drm_i915_private *i915);
> +void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe);
> +void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe);
>  void intel_dmc_ucode_fini(struct drm_i915_private *i915);
>  void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
>  void intel_dmc_ucode_resume(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index 5e5e41644ddfd..aac4f5465c6a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -11,6 +11,17 @@
>  #define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
>  #define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
>  
> +#define _PIPEDMC_CONTROL_A		0x45250
> +#define _PIPEDMC_CONTROL_B		0x45254
> +#define PIPEDMC_CONTROL(pipe)		_MMIO_PIPE(pipe, \
> +						   _PIPEDMC_CONTROL_A, \
> +						   _PIPEDMC_CONTROL_B)
> +#define  PIPEDMC_ENABLE			REG_BIT(0)
> +
> +#define MTL_PIPEDMC_CONTROL		_MMIO(0x45250)
> +#define  PIPEDMC_ENABLE_MTL(pipe)	REG_BIT(((pipe) - PIPE_A) * 4)
> +
> +
>  #define _ADLP_PIPEDMC_REG_MMIO_BASE_A	0x5f000
>  #define _TGL_PIPEDMC_REG_MMIO_BASE_A	0x92000
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 96395bfbd41df..52cdbd4fc2fa0 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -698,8 +698,10 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
>  
>  		drm_crtc_vblank_reset(&crtc->base);
>  
> -		if (crtc_state->hw.active)
> +		if (crtc_state->hw.active) {
> +			intel_dmc_enable_pipe(i915, crtc->pipe);
>  			intel_crtc_vblank_on(crtc_state);
> +		}
>  	}
>  
>  	intel_fbc_sanitize(i915);
> -- 
> 2.37.1
> 
