Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 032636ED6B2
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 23:19:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3531810E07D;
	Mon, 24 Apr 2023 21:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B082710E07D
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 21:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682371172; x=1713907172;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LZFRZQL42yhiBhMyGBpu9AdyxNUzu1rl4fifr7J67VU=;
 b=RDSdPfVT75lxpwOMtrguZx6McNgtJPEgRmOPbDBEgYvT5ecSl65Dlo+a
 ntr1EVlSrn88y0mFW5cB3UxcK+LUDf5zJaxx+BjHqr70pDqngCG1RBe5h
 9QEV5Bv6FMvPrIMy6RI1S1nW/OUHgR36+AQiYMy7jXmpGirSOTdck3N4u
 LbUqMlNb0yQaS5VYF3vWKQqotfbGwHlJtT3bAoixqX7CHne4+oKGJr+vQ
 g1iwLOGokOY1zoOYTQcvNq8zZ8/Rc7l8snPY5GWsO+BiLPEGrgNAh8xv1
 WJ6GvhHULNEBwVhfW9K7fvHomux4rKIXZcAYiEN016cwSDTGArWUMOtsL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="344051748"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="344051748"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 14:19:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="723737860"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="723737860"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 24 Apr 2023 14:19:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 24 Apr 2023 14:19:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 24 Apr 2023 14:19:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 24 Apr 2023 14:19:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=afXrNgdBtfwA2j0Rn4xVZCWIMyyh2/JfQUKjNva2Ei26xMbyaV+7cIo+DbqVyGTRdaH8LLhOCJ9SIl8ddn4thpF5lJW0ljZmy7sINmEkxGbLhciPGi4hHhZpJZyc6QfPRsdlCFz4g8a2U5J6SMVkSlmkK5jN8MxfWGsoWW6A24PX0l/LnASn6THmR5haQ+H/Z9fFIIjr60/9tMoENCPX354nuA9MxTiviGIkRbMoUUXpAxgA/kP04ry/ESxq4kyF/7OQEKCSzoTINfIeaoiBcow50lTh2aaau9ULOl2gHj4pUKMotorSH4JNCw2TafbOQS0fbzEihZfGqzcwNPOA6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zNkTikaMQNAa095mr7DB1r1Sv8lhTSTef6DvH3IiNB0=;
 b=T8+jkOznViD6yIEJaaUTGwdf4JA1hz+HqRuodcirFw3PnjTLNnOnLcXsdjES3SS0yWmTM3PJ/bl2lq4R9eNpWXDfYyue6HScL1KYBQ11Gi8zyO4NJM697A6B2DdCdpEfMVLh9RlywGSK+MAjpnSzQyq1bvn5zyudHjEUx8F3QgZjqPnJ47h5y0FX/gLaFxBj/KDuwOEg9tOzDR6Z0idu8xhtyPqGvadFEFSWWZaTKW/L3fe5u8PjPykhWk+7p67dZ+xPOoUzG2pEvGkIL5oMwu8dhTU16Z9KFZoCqICo82zSAodmg50Qx56rowloB4Tk4HHRDjoytDBR/kks2BvQAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SA1PR11MB7700.namprd11.prod.outlook.com (2603:10b6:806:330::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.20; Mon, 24 Apr
 2023 21:19:29 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%8]) with mapi id 15.20.6319.033; Mon, 24 Apr 2023
 21:19:29 +0000
Date: Mon, 24 Apr 2023 14:18:23 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZEbyH25rpOxuzVjn@invictus>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-4-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230420124050.3617608-4-mika.kahola@intel.com>
X-ClientProxiedBy: BY3PR05CA0055.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::30) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|SA1PR11MB7700:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ec22a72-78c4-4d2e-eb36-08db450996c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2QQTpngjHsTT7c+QDZ6ee9bretYTgoQYEoN3jMJNkkH4vAMBicq16HS2iYAVSIoCsj3SHNE0iTEZOJ5GRHJWy+qzOCpeZorYqWFnLe84TSuH75A5izUPavICSEMLFYz1j2DmypFzTRyBqyfuGEoqugJ/ZpDnOvLJNyZB80RL2b1tROOcYH8YIBEILvKbI9wviL3JCo3x813FI7+9PvN++QP46tk7MLBlSRRuRH7KFOOZGrFpj5r5GEhYKBjsxqqCrcPaENFbZ3cRYa/EHxhaT0HJLt9zuwNyeE8mfFmbLV1VUVMvvpTttdxkMV9oxYA2/WuKl9LfSBlTWGAQ7Ab6K0SfNAaY8sFMX+KhKPQH3xi4mWLG39wD+SzowwolnwzxUb5s28atk1lZXd/LuIOCvW+2D1yqZjtIvTSW5+oHLdyYxpBwErSuOxK3KjH1AALGzjhGP/czJGhcENBmSCDHmFhRBzL4nPr7gVjLJ31Zvg51cbXqShn45Ugp1FHOrhfmAL3F3BKUTRDOfFxiNpihLdjBmlJzgT0Z4MQrgbmvtbYWGebLQju8gAZqaofRyvjo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(396003)(39860400002)(366004)(136003)(346002)(376002)(451199021)(33716001)(38100700002)(6486002)(478600001)(4326008)(6636002)(6666004)(316002)(66946007)(41300700001)(66556008)(86362001)(66476007)(26005)(83380400001)(186003)(6506007)(6512007)(9686003)(82960400001)(6862004)(8936002)(8676002)(2906002)(5660300002)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?40Psb255s1d2+yvQlI/lcNZQRTrRYgnDnIiv3jWFL0L5EYsqUj+W9hy2VR6s?=
 =?us-ascii?Q?kI9UBUZnh6mWL88QOhHzF/fqEwT9kpds/PeZgbJIi3SGrrqP9Q+bhUiXzhwH?=
 =?us-ascii?Q?iVHzXxsGLVNSJm/ax/sey5cABuj67RafE1k5MmmkNX7Wl9md5+A2mvVL5Net?=
 =?us-ascii?Q?GmfyMoJsOfHh/iigS4JRkSfwOVFvD5yKPFwKBpps04zNadHlAPWbZfF5jZED?=
 =?us-ascii?Q?TX9samOhdRheq0Ohol+6XrJqynvwXgMnKjtrchtFDN5rofImKgw6NGysbhNk?=
 =?us-ascii?Q?qiPh545C5GB1ucCr4DpXLOhgHCQ5zirQGTq09GCHy8997/bU98q5cvT4TnV0?=
 =?us-ascii?Q?HOc+jsIp3SdsdPDkhWASAQny/+Ip+JukaRYDXd+UfuI186QMGgdAr/IHVS13?=
 =?us-ascii?Q?JYsrfj80y+HgKH4vGrIPOZ21+u7qpvz+jwF5vf11+uGJWiRrYlr42OPoWXVZ?=
 =?us-ascii?Q?qP5g1FTMSKRXlx3AxjDwIGz875nQBQsSule8Z80oOWV77MrtVsRSK9B0xLZt?=
 =?us-ascii?Q?lse+44ND7GiCWICnIWDKRT8RHCh/Pe9ekn4ysPRoSSGjbZkIyAPGjiWc/NoC?=
 =?us-ascii?Q?mCdLQfZ3ERXU1aAwD9B2Kqu8CPgCmESv/VPdvbZ5qBCRE/Jetn3lBuGFLg8n?=
 =?us-ascii?Q?8RF98g6+cCzAUOee2ISJ7Mj2cWqa398yZHnax76Os6fJYjI67dfuARF5D711?=
 =?us-ascii?Q?X+LuzH2sKuU1TCaVCe7Jr1bkbUQcbCJxqKTrjDg49+wtWSRmRkKWr23/fea0?=
 =?us-ascii?Q?hnPf02ypxiyZtP1hveVpWLMWqFTWPrDji8USapRXvrX4uhju04N9Cd/f6meI?=
 =?us-ascii?Q?As0IU4W22T5TZ1QZE7MG2GjSm/V8aMEJCol859qW2cMwCKG1MS+D8o+IV6Fv?=
 =?us-ascii?Q?TqdfwA6pozkrpJ9zdPfhOmOcLUn1dAsNAFwtPv8ziyvZSbMfgrODR5JAwnDP?=
 =?us-ascii?Q?KW6F9tYjnk7coMgFQtdTqqjmG8PYpk7TGAcFFTpLO09/BKb5ZhGFAlO3YCNY?=
 =?us-ascii?Q?L6TJh8F6x3jKAhv104CglWUzBJop2Ncn9AP+JF3iwsx7dKmc1Vc7152XX5Ts?=
 =?us-ascii?Q?psYRlAB33mM0b5P5SIHWKJFzq1fN8wPYkfrIBgyB+f5/gLy00MZ49E2ph5Uz?=
 =?us-ascii?Q?dpkAbtz3nNNXwV5P0qCUHNr8i++cwFfvUGvpJLYCtfBJo8REVPHf4LF+ejKD?=
 =?us-ascii?Q?pl6XAceniznQujnAD/Jydyu00Rrpagnl7K9QLczJnarwNxRYtP/msVMYIad/?=
 =?us-ascii?Q?OOdVcTy2ZoSZSLDAzIwfYyBp5Lval89QVtYl/e/c9L9SXNPRRPbeo72AfwSd?=
 =?us-ascii?Q?piEuoiJ8SGHe4AFMMuoVuvXu0YsZfW3RfOFDKuDK1YveC4eV5jXvHHf7GwCi?=
 =?us-ascii?Q?VlGJl7lI2DZX7VSlQ2aIR4Q1AzIWs+/R5gjIncJQuqHyBwy1CKCqel/8I2Gi?=
 =?us-ascii?Q?dexjVFvrwNjnCYD4NrrKE2ldnPZM+f8edry0A9udANbTLG2lF6XHIU0OBzNo?=
 =?us-ascii?Q?CVr2NrDkcRLA4NnbBwqHioXgrMp1xhFlF9RAz24H3rbffb9Z+bkr8XPpwTBz?=
 =?us-ascii?Q?6kqK+2Tk8KOVyQbwB2VbmOaoFRN3LXVBISARA7YNLEebMkIZQphlYyTqtTtQ?=
 =?us-ascii?Q?MyCWyc+XBPyI52JKbmM5g10=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ec22a72-78c4-4d2e-eb36-08db450996c0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2023 21:19:29.1327 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3ieFBjPkb734xS71d90B+E+LjcnvY3xe4lcTkIBf1J1u/PxTvYVKPO/mUyfvVxnMOTxmqZoUbYSbrZdarsWiraNqQrIDD9sM5aj5BdvQCo8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7700
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915/mtl: Dump C20 pll hw state
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

On Thu, Apr 20, 2023 at 03:40:40PM +0300, Mika Kahola wrote:
> As we already do with C10 chip, let's dump the pll
> hw state for C20 as well.
> 
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 20 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  1 +
>  3 files changed, 23 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 61428c5145e5..144474540ef4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2035,6 +2035,26 @@ void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
>  	}
>  }
>  
> +void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
> +				const struct intel_c20pll_state *hw_state)
> +{
> +	int i;
> +
> +	drm_dbg_kms(&i915->drm, "c20pll_hw_state:\n");
> +	drm_dbg_kms(&i915->drm, "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
> +		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
> +	drm_dbg_kms(&i915->drm, "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
> +		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
> +
> +	if (intel_c20_use_mplla(hw_state->clock)) {
> +		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
> +			drm_dbg_kms(&i915->drm, "mplla[%d] = 0x%.4x\n", i, hw_state->mplla[i]);
> +	} else {
> +		for (i = 0; i < ARRAY_SIZE(hw_state->mpllb); i++)
> +			drm_dbg_kms(&i915->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
> +	}
> +}
> +
>  static u8 intel_c20_get_dp_rate(u32 clock)
>  {
>  	switch (clock) {
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 9760c6292c81..c643aae27bac 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -32,6 +32,8 @@ void intel_c10pll_state_verify(struct intel_atomic_state *state,
>  			       struct intel_crtc_state *new_crtc_state);
>  void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
>  				   struct intel_c20pll_state *pll_state);
> +void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
> +				const struct intel_c20pll_state *hw_state);
>  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state);
>  int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 44f07011245b..d414dd8c26bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3858,6 +3858,7 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
>  		intel_c10pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c10);
>  	} else {
>  		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20);
> +		intel_c20pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c20);
>  	}
>  
>  	crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
> -- 
> 2.34.1
> 
