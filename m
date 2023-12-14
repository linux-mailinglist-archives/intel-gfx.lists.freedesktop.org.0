Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 606A9813628
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 17:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE4A710E027;
	Thu, 14 Dec 2023 16:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A667510E1B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 16:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702571194; x=1734107194;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=hlNI2a1fkm8VsLd3wWIWjILh3xkw1K/7y7gT8ON+QZQ=;
 b=P5ePd9NtRdM1QO7BbLihhy36xM0kg0Tws8OVqpjtyfZzaaYcln3DdTJ/
 Okm+G3VLZ5QHRG77QX7QC4AwXbaPRt81cZcIGv+vZlRiMXhUSuCVPfXs9
 SboFQO/N+u6V5ndidkmVnuy0ClfhjBxBeVduYLqHjvyr+FKYopPZipKvT
 47XiJfVJly1HAdqGynlaGkCA9nYMvfnGLGRBv/LWK2iKgnw4fxtvB85iQ
 +4+/1PZITq4q82fMEQmi9LKkYOvm/dQ/iBVLUUyYx7i0NbteR5qdedaWR
 zMg6cP25ZMqWk8AT9KqEZGVSpPMtsgW4z6rM2f6FOUBrTLq90RCU8N2UX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="13837157"
X-IronPort-AV: E=Sophos;i="6.04,276,1695711600"; d="scan'208";a="13837157"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 08:26:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="1105767770"
X-IronPort-AV: E=Sophos;i="6.04,276,1695711600"; d="scan'208";a="1105767770"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Dec 2023 08:26:33 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 08:26:32 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 08:26:32 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Dec 2023 08:26:32 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Dec 2023 08:26:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DY+AjGaRg1EPVMAZ1spqRFI2HJjV8UXO5S0qIaIq0slr4yj0nrTCTb2LYtoNqAqT/j1IgAIjLsyIsT93MMOi8tHOPGhrgPnqnAA2vUtnWVaAJeNv8/hyreBuzB1laFi1+7PxRPoU+JkTzR8X3NAfjj1T2f6VEKFZ8PbNwQ2pTh1bSWKhQedANwt5U9FwtFnP6Z80hU9Ib+6J2UPizVVqWBSfYq/WpqBD2ifRL4cGy8TqOruVdvMBst8IQx65qpgNR8tT1gfNB1E5CW/Dt8pM3adI+vuTMNT/MwQKztq4BFihSzQWW4K3c6baw2UVyLRsNoz0BAugsxg6sW+a3WrQJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kcehenpXdwQubnjw/MaWF2io0qu8ZM/JT9GaEsKDBjk=;
 b=of3LjRaVYtYJ3u2CUl4A02Qf01/4IlWVNNEml6ImzIKxiU48iiMIIzkqwSQkqMia5kKN+9WxbboO/LKHCe3/fEoySErPD8BshTgnuaFBnYQsj4T1kCqPx3y0LkKbXr7DQa599uvZ/SoRORYUIGDeaP5ArRg5HZ+7lBWwjB36k7oeYXkmPg6pvnoeQAliHak1WEzpyPfKi9x1Jslu0KD/hUyr/7khcXC75mhkO0gKUzrAUlQydo6VSQNe0kgovAIdu6mgx+NkEfTcYDzmNnkTFe8HeiexBJIY85XYwWU9AVR8kjAFNWR4lMC2CXS9EmtSPcYjCZkmZrWaM7seDa7bfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB8442.namprd11.prod.outlook.com (2603:10b6:610:1ae::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 16:26:30 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 16:26:30 +0000
Date: Thu, 14 Dec 2023 11:26:26 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 2/7] drm/i915/display: Move colorimetry_support from
 intel_psr to intel_dp
Message-ID: <ZXsssjdo-ySIrlsj@intel.com>
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
 <20231214114838.1113648-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231214114838.1113648-3-jouni.hogander@intel.com>
X-ClientProxiedBy: BY5PR16CA0014.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::27) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB8442:EE_
X-MS-Office365-Filtering-Correlation-Id: 34982c36-9f12-46c6-3b2b-08dbfcc16d78
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xNQBbtCOXXeescucMtesL0S5tBmLlZg6IRSs+T+5z+UL7ey/amNQOtCOoFNdsF8QWVO420kO+kfHdXdcvXyHLKM/NElH7O7y6oCCA90qqtAX9jphI0Tmx5DXVmbKy+vgiB+ImxWKqSZMRuonDzarStSSrqrhvuDhxuHLcASnhzyGkOQ6VcKKhpfUKZKfNIk/Nwxo76eKg5PzrQLgYIgM+C9VFW/zmrXlYwDBb//qocssBQ2UGxPgVnAzXXrs3K4Oo5qlwI645CyU1TSI/dk87CaElK1kSgLX+9/hUE4bA5QEy/phbDgQrHZwVYq1visPXz2uwOV79FKBDLkG1Y15AaKdsFL+1jjK/QBq2Mk6BlE0bSMIBQqC7ls0JZ+9kH7CBktdowA37vuadZhdxjt+iFmZxDLA6MzgcgHzGd2SIzrDsJnf4aBbcUFj0zMot6WgsyjDb6/0lmPRsNUMZOJYCdLqtWH5xm0NM4SoSmu4TxGDM8/EhA7HGBvRgRn2qF91bf/naUbViBwAsiAQ3QjoPfyZXJX4bWT9TrL6v3P4STVX/QDCeq8cWex7SgAr7Kcp
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(366004)(376002)(136003)(39860400002)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(44832011)(478600001)(5660300002)(6666004)(82960400001)(2906002)(6512007)(6486002)(6506007)(26005)(2616005)(86362001)(36756003)(6636002)(37006003)(316002)(66556008)(6862004)(66476007)(4326008)(66946007)(8676002)(8936002)(83380400001)(41300700001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?lUDR/X3HQFfKJZHTpmrrMUYE11uljmEiHjVRnp6q3fbZOUj+b0uEFIXrsO?=
 =?iso-8859-1?Q?I1AKGNawHb/qceYZ9SNkvN/cuhY2R2OZCZQIXUU0EZTjXYjRkAR3u5JBGn?=
 =?iso-8859-1?Q?izKcuZTW+rypAcPZDY4I1bEIphRKeY6I+/Tb1ZIndfUShWThEFECrgFOAA?=
 =?iso-8859-1?Q?6ETLARUXXteWsasBWFqWfMXtZ9c3gUv00fX6RIHheW68Rjw1v2/MAatafQ?=
 =?iso-8859-1?Q?Iyri43FG0CVyzsFNej3Q9OQLU6tM4DAAGpIersiym4k7b+jEY3OcjlmmMY?=
 =?iso-8859-1?Q?lbKQZea+Icm92k0sXaOd0K4+fHJE6AxGnIsHf6SzC2UrP40/7cxAY2sZ/L?=
 =?iso-8859-1?Q?945XeGLcigO5ocp1uI4dJJnU13/lGnMAjIdQg3kzLdkXD1EEATC41f0Xsa?=
 =?iso-8859-1?Q?OldYZRbVc4oVQLojY6gImgi8ZvPaAYXSCTKb4UZmf3BPSIN3wWdXJP2+A7?=
 =?iso-8859-1?Q?LqlGFeHudFP57623jd0YvpeoL7IZeeDqOHSDGX/y8rOH8+a23YpuWov09j?=
 =?iso-8859-1?Q?UuAY3Z6VbLgS7IdLq67TjpiTm6JhcFSSdGL15KJdmwCe5d/51luQH8Wx0N?=
 =?iso-8859-1?Q?v7QMbxH4rL2eMzVZQoQckWAx+I5o+Ryk9x5U7Rn7+Vm7490JJY09L/cLkl?=
 =?iso-8859-1?Q?wGV9yWG24/zhuCN2KtFV7bu1bOHQvCfFG0uSLt22Cb1dhyr32h9rmPsJ63?=
 =?iso-8859-1?Q?+e/roe+2QeSyg6T79ZgB7i64EZCHc9NTnZCt3rSQ+FilBYXvTQF74f5xOt?=
 =?iso-8859-1?Q?h+SC+UbDJeuCBVpJ/JkfiPoZUgnqVU1nyEBGUuicQzsTkgxuDIg8EvSkZT?=
 =?iso-8859-1?Q?UVsfHmGPbzJX4v/gmEPhe80VtCszFnekRYD+bKsWfIzb70r+NbVy8Vld10?=
 =?iso-8859-1?Q?iaCAUB8MKcoHHMsUE8jc8XdVY7L84L423ekvIMxJIHaqiAGMAXMCslojP2?=
 =?iso-8859-1?Q?60OXAZKf5MIdsIN3aClCFdxFR/3D7yMmkplViFOXfpBQ1ezZlL6pjZtDFF?=
 =?iso-8859-1?Q?lVXb1gtTq/PpmcpBbyPhwcHpY80rq2Z8D6Rn+4jjhi7UKTDD/GtM8b4ass?=
 =?iso-8859-1?Q?fvOq9xB0SBuzSX3fKwY7UyobVEBv0y8xlCg7xCazXQrqGgblZes/LGfdRb?=
 =?iso-8859-1?Q?7gHwOItRlgdGUGWAvzkjaGga/kiIL1OgNUaNQIezz9aZdVHHoFhWG7BbPZ?=
 =?iso-8859-1?Q?gdEWvMG8w4BI8qwO1q3J3a6B6RgESPZaE9lVST/PmsBXfrFv7oyKDzlo7/?=
 =?iso-8859-1?Q?p2roVvnCw+AySX+zW0oyXoiG01VAU4TgAsX8k67IPDpJFgxRyit0u90lcd?=
 =?iso-8859-1?Q?TT+aOOPNWiOYUQUVkxyC4oizLSqRJj/Y3hkPHlXkmEZTOsp3YIMgsq9xuN?=
 =?iso-8859-1?Q?eYiIinjh7x8kCE/CAefYcv/N+F+q9krTSk5F2ByX/RHEjDa/3QoParAsrZ?=
 =?iso-8859-1?Q?fYbI2J8I6KfymNVl3PL5pvEMypabqGnJhfCEhr7xviIpt94esKJSOb8mZ8?=
 =?iso-8859-1?Q?Q/oAFcrrlFwWKTfZ7/GBDl1xQ7BsqOE0X+SxAhPWiQ6JR92i2Kx/BbfLp9?=
 =?iso-8859-1?Q?ju6X7jYfHJtYMvzgOEOGQTQPd9ZPbAxUfbxf5dprI5RTlmvf4zkOiiSyK3?=
 =?iso-8859-1?Q?uHbYvJOparPdDbzPlWsrUxsj+QgBo/+iPubH798mMX5tn17xZD/3c3nw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 34982c36-9f12-46c6-3b2b-08dbfcc16d78
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 16:26:30.2252 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h6oicbOPhuLrWOfclbRaY9OIryIK/yDYY05UYj4kcc2jlj57t66ZIeJ8vVY2uyYJMXmTbRrY8wqgwrKQNhVKIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8442
X-OriginatorOrg: intel.com
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

On Thu, Dec 14, 2023 at 01:48:33PM +0200, Jouni Högander wrote:
> Colorimetry support is not really a PSR specific thing. Move it to intel_dp
> struct and use it also when preparing vsc sdp for non-PSR case.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h |  3 ++-
>  drivers/gpu/drm/i915/display/intel_dp.c            | 10 +++++++---
>  drivers/gpu/drm/i915/display/intel_psr.c           |  5 +----
>  3 files changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index a9c9b6edcc25..1d1cc93625e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1703,7 +1703,6 @@ struct intel_psr {
>  	unsigned int busy_frontbuffer_bits;
>  	bool sink_psr2_support;
>  	bool link_standby;
> -	bool colorimetry_support;
>  	bool psr2_enabled;
>  	bool psr2_sel_fetch_enabled;
>  	bool psr2_sel_fetch_cff_enabled;
> @@ -1834,6 +1833,8 @@ struct intel_dp {
>  
>  	/* When we last wrote the OUI for eDP */
>  	unsigned long last_oui_write;
> +
> +	bool colorimetry_support;
>  };
>  
>  enum lspcon_vendor {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3b2482bf683f..08c48a58aa4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2622,7 +2622,8 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
>  	if (crtc_state->has_psr)
>  		return;
>  
> -	if (!intel_dp_needs_vsc_sdp(crtc_state, conn_state))
> +	if (!intel_dp->colorimetry_support ||
> +	    !intel_dp_needs_vsc_sdp(crtc_state, conn_state))
>  		return;
>  
>  	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
> @@ -2639,7 +2640,7 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
>  	vsc->sdp_type = DP_SDP_VSC;
>  
>  	if (crtc_state->has_psr2) {
> -		if (intel_dp->psr.colorimetry_support &&
> +		if (intel_dp->colorimetry_support &&
>  		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
>  			/* [PSR2, +Colorimetry] */
>  			intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
> @@ -2654,7 +2655,7 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
>  			vsc->length = 0xe;
>  		}
>  	} else if (crtc_state->has_panel_replay) {
> -		if (intel_dp->psr.colorimetry_support &&
> +		if (intel_dp->colorimetry_support &&
>  		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
>  			/* [Panel Replay with colorimetry info] */
>  			intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
> @@ -6527,6 +6528,9 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  				    "HDCP init failed, skipping.\n");
>  	}
>  
> +	intel_dp->colorimetry_support =
> +		intel_dp_get_colorimetry_status(intel_dp);
> +
>  	intel_dp->frl.is_trained = false;
>  	intel_dp->frl.trained_rate_gbps = 0;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 9d5dc3fb6f20..d9fffc802335 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -560,11 +560,8 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
>  	if (intel_dp->psr_dpcd[0])
>  		_psr_init_dpcd(intel_dp);
>  
> -	if (intel_dp->psr.sink_psr2_support) {
> -		intel_dp->psr.colorimetry_support =
> -			intel_dp_get_colorimetry_status(intel_dp);
> +	if (intel_dp->psr.sink_psr2_support)
>  		intel_dp_get_su_granularity(intel_dp);
> -	}
>  }
>  
>  static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
> -- 
> 2.34.1
> 
