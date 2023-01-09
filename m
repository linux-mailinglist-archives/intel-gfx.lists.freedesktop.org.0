Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 395E1663038
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 20:24:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2187D10E07F;
	Mon,  9 Jan 2023 19:24:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B10C810E07F
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 19:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673292264; x=1704828264;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5CCUA3VhXexRa9PU985jJ2j32jgE6EvlrzPbynCqlDc=;
 b=dUNpIzm2YfjB4P/MDV0dobdX6fG/0mNwAOlATXGXmerQSHCEapY9T7Hv
 iRQ2GThHtKOC8GAXCi6xLUj0OtABMfluei++xtoj5hloPQggex++MlCd2
 FGb3/p+OgP+DYmROoIe7IDWWBMcLNNLls4JaypEU5mwPTErruOMKWrvTZ
 G4itbFDH/Wz67L975IuzYhdudHH0bY+1t0VTlPa4PLz1UkuOAW3V/uoZY
 W1De7GUGamE5s6YcakDkE4hQ+OJrfQiZxQLQ/gXF4h84xdHIjFrMF9X4x
 26M7l01RPEZhZkL8iGYL1/xzg/F1AnPzRzm+nXcJCWUnZu3oAhFlzRdmQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="320658982"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="320658982"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 11:24:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="985494690"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="985494690"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 09 Jan 2023 11:24:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 9 Jan 2023 11:24:21 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 9 Jan 2023 11:24:21 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 9 Jan 2023 11:24:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ed8qGCjA+OJzCK1g3kk36lc5AuCw2ZV0ojszwIqG+gcbZSPifH7uXM0mFEXAo4+fgs8IGP76+Z3fzghsvygFNfqJ8v569dzqxx60qylbGHc+WQimTaN+nHk5//R+0Q+ROFmP2+bYirZlohf28BLfcnUpTKGcmwXY1ItI+aaTF6H9aIgOP6pmBRJU9cX6j/ZYWWz9jBjk+q8+JPh6bET3Ixs7aLU4ZMpttOMtJmmhskoYHyK90+6wFBlRU76SD0NsPN3A6k5P9ViECMRVrKMxSaB7ga6xnRBJxuvM9wzSqhvnJWlzmIHs3xKUcny1DV9bC+Nb0JxI9hBydOwwQQU/mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wDGDarE3W+X95ZSY4G3iMiS4LXZOWYejznxFlWRtmic=;
 b=O9xuKPvHPqzeb4IbopLpo4bbsXJQ4CVZPAWm142vU9BHQEo6y9TeAEQ1yHqYb+gGJUwsoISrU54hyJrrVugP0fz61UpOeQf2qqKWFa+qBg8ZWC+L9nzmcEvSX6LyhPicWwf5cl3mPhJAUNGV5sRluTOiSoNU29aeEbGn0L069p4FN4dEPvMdSw2Mrep0PWkSLnVbOju045yNkGPqrj9JIq23v7ztH5fEDr1JaB+PR5bn2Oq7mn6z2WWd/wJvxUbvhP9qdASaZWevuqwIp8CQ+i9LzTuRWBgPY/X1MHouKTGTxJ8J/aM2GKABCM5biWESd3sKllzJasyNEsCf0biRag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ0PR11MB5616.namprd11.prod.outlook.com (2603:10b6:a03:3aa::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Mon, 9 Jan
 2023 19:24:18 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.5986.018; Mon, 9 Jan 2023
 19:24:18 +0000
Date: Mon, 9 Jan 2023 14:24:13 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y7xp3TuJsI8ZXRIx@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
 <20230105131046.2173431-8-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105131046.2173431-8-andrzej.hajda@intel.com>
X-ClientProxiedBy: SJ0PR03CA0205.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ0PR11MB5616:EE_
X-MS-Office365-Filtering-Correlation-Id: bffce5e0-9f22-448b-49cb-08daf2771a0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N0kFrVMgR4qgWl6/8005gMp+gP+hkcXtEAQxTu5ojRcFN9hDfwp7Rrqezvj+bPkB5zdqgfU1vD1yRgcEFcSToY9B7cuYLIWHNbAWT3RhHnQTgOfAy2E9yo6f55th3vTfAe0UzyLirOAaph5/Y5dm2AEVQir7bUTGGhixje6tyJx92qQAW64goRP9xCxved3II88gDgHlzc9JPq+2lS/QNsffxbF4Fpku11f/m3eqrp9DRR2qkr3x81Lq0CqYbQMo4JZ99X68+/MdrGZAYOBnR3kV00SMlelGbZJY7NLkJGB7S6VKb3OcH57Hze+abFfyUovzBzzLlE8OTyWb0J+kl96D0jLm2ndvdEFgfUdcYgoI5/FnVIjV7ukQ0Ijoa6t3NV0w5oHVW9d+jsELW7VOg22yxmlfBm6y6xcsP0wjx7nYbiAOj8kZ3WJF/7k5RAXBicXZfOf3LyruEVrwTT18AcvYG0QjsfKM9r6Vw8G5Tqcn+G7MLPbIOfKqSAHjHm5L87jVkhybHFcMv1ry4qjz/yjLBcQ6/9Au4LKEs6LtuysWekLHNVtVNKS5UcGZ4eyG7DyjefG2citMtblhpvDrrbT8bVneh9e4w1JopvoWZtZC4sRWQLWVFM1djls2qBx8hDYMcWPtv0ErWJncsJL73w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(366004)(376002)(39860400002)(136003)(451199015)(6506007)(82960400001)(38100700002)(6666004)(2906002)(478600001)(6486002)(2616005)(26005)(6512007)(186003)(316002)(5660300002)(44832011)(83380400001)(8936002)(6862004)(36756003)(37006003)(86362001)(41300700001)(8676002)(6636002)(54906003)(66476007)(66556008)(66946007)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QVScEuwcHztvbbEmhazXpH66cgTl6EkvyC94/IUdX7CfqEzpd+3S/K0ssHdW?=
 =?us-ascii?Q?MpHvoks0SVb52SP7B1zD4TazCsfEU2JAJD+4CsmROc8VCfLHo+Pksw6+cx1j?=
 =?us-ascii?Q?Tb+VET2+oNLHmOanaw/UrKudvqqPVppUfX5t/iO1nffk/ocZt5D4ej062W81?=
 =?us-ascii?Q?tB+f6Z7EgKcl8qeDh6c4eVCHUOnsGYRW0tAhl+THhcSyYeVkfXksLIDMr6wh?=
 =?us-ascii?Q?9i8+7E5xlScLDStcgdWc8Jr424Z7qFoN4KVi65aZ0f+uffk1L3oBq6MxKD7Z?=
 =?us-ascii?Q?xF38FG+OVbrkqJtPCKjh9TDvbNf5Qhri03QKfr2+t6CByKyw/jtVqrvR5/HT?=
 =?us-ascii?Q?PyCHsjMLLYNT59NEWBKOzX4qNvugtNvWZnbT1sbXO6v6CcKDkKMkrSQ2nrZ5?=
 =?us-ascii?Q?2mDqGv6zj4YNr+yCvdzD40zCzlVw56Md+xZrOy176ZtGVFE42DS55zI12wp0?=
 =?us-ascii?Q?ypFRvRnyHQjdvzfa1HYIEEfFB+aNxoUCkoYBoOFtTlB6ok/cjYkgcZTiyALy?=
 =?us-ascii?Q?/ilH2e96erYl/9t3YJDuhaNnS0p1Rz/mC3RvNNrc6qOm+frGCqPDPnTLqesv?=
 =?us-ascii?Q?2657wBJXfD51YnV6HTMvzmGDz0/cL9qks0rjI8qEz+mZ+tDT/tqAwYmUKGz7?=
 =?us-ascii?Q?Ab9x1IJf+X8flL+9ohmeA2jTyN7Vzoru40kxhXfkj3vwqtKVE+15VRdwCPAX?=
 =?us-ascii?Q?p0hyEwHz7Z7dgRUeytFz4cG0TQaKadc9wprJif2LBFx1hqdoxdt7ebM5ujDa?=
 =?us-ascii?Q?TL/ghcTeRR0rlY3ma7a8OT5Tp+SzKjvGkzOG1vfD+BPftdzAMEUwioB8IMMI?=
 =?us-ascii?Q?zpO/4CJkF/aSC6CoUTxh6y1F4CABk5oDxgx9JVgYoVZvfGXGIYFoHLRCYkq2?=
 =?us-ascii?Q?dqLQbLJ+6YMapFx9SxipwdtnEvU32o5/lFSAlx0+YtSwgEysHV56l6xuSBMl?=
 =?us-ascii?Q?soIWr+4Je5xe8rPAWiRbS7C31tatUa1VAdM7aE67qL0J1VTtfykF9nGH4qVZ?=
 =?us-ascii?Q?wklwmXMGKqDgmx94chHRiynYGxYDxG5gp3pSipk64rJxxvweztfNQSO1eejo?=
 =?us-ascii?Q?BMMM4clacUloCl86+Dvgy9hBuN6tXL3PV9jx9JhnRh7OHwncAk0wAZ37PsOd?=
 =?us-ascii?Q?1Bv6XHg2Pehv6r/14kGPY6DtIOsrCSCVdk9LUZLB6LM61VuO92EKmLm1i5Ed?=
 =?us-ascii?Q?9U5kvEi4Epjlpr61z5RdMZQirs7FGB12WiOwWK0c6ckkyJIOXxVraKGVJOyt?=
 =?us-ascii?Q?v6IYKWqXCl4n0NHuglZaveBYnBiDHcvrMuYTbdM/SpcpA+6TB4OvZiOUHGya?=
 =?us-ascii?Q?QIB0c6Ktzp9eBl+GAzA/Ey4oChHcOsI89CZBQlQ7mnLNVI/ZvUXDHj+XSNR0?=
 =?us-ascii?Q?U1aHn7ng80ViuYmwcixuRX8n59SkyCpjCrL5lJfrD3+Il0vl93YQiVO1cVij?=
 =?us-ascii?Q?p6JCTyC88yBaqnv0Cnn20/C9Psa0k1ijwLXokY7D/V6wv/9o6s+zJE655th8?=
 =?us-ascii?Q?SWLQcwxIXpZWeBSNJMUCAade9f+XrhCBW5zkx2EimBw/rrsUwP3wc1au0Q04?=
 =?us-ascii?Q?XumSUWKsQ0zwt8aLp+DxrVn7LKvU8ByrJ4O8T1ImMx8W2VX7aE6Xox4Y6W+M?=
 =?us-ascii?Q?nQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bffce5e0-9f22-448b-49cb-08daf2771a0c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2023 19:24:18.1357 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AXN7ZxLubUvBl6OWBtcDNrhhHOBTb3bATOxZQIEWLJXByIJvxfJfmxSAjuCdIz1JLPHIuHE4+IXY2MIE5tik+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5616
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 8/9] drm/i915/display/interfaces: use
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

On Thu, Jan 05, 2023 at 02:10:45PM +0100, Andrzej Hajda wrote:
> The helper makes the code more compact and readable.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

more cases in this patch where we are now always cleaning the bits,
but as every other place I believe this is the right thing to do.


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c   | 49 +++++++---------------
>  drivers/gpu/drm/i915/display/intel_fdi.c   |  3 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c | 30 +++----------
>  3 files changed, 22 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 1f5a471a0adf27..500dac59a14157 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -644,19 +644,14 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	intel_wakeref_t wakeref;
>  	int ret = 0;
> -	u32 tmp;
>  
>  	wakeref = intel_display_power_get_if_enabled(dev_priv,
>  						     intel_encoder->power_domain);
>  	if (drm_WARN_ON(dev, !wakeref))
>  		return -ENXIO;
>  
> -	tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> -	if (enable)
> -		tmp |= hdcp_mask;
> -	else
> -		tmp &= ~hdcp_mask;
> -	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), tmp);
> +	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder),
> +		     hdcp_mask, enable ? hdcp_mask : 0);
>  	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
>  	return ret;
>  }
> @@ -2200,15 +2195,13 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp;
> -	u32 val;
>  
>  	if (!crtc_state->fec_enable)
>  		return;
>  
>  	intel_dp = enc_to_intel_dp(encoder);
> -	val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
> -	val |= DP_TP_CTL_FEC_ENABLE;
> -	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
> +	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
> +		     0, DP_TP_CTL_FEC_ENABLE);
>  }
>  
>  static void intel_ddi_disable_fec_state(struct intel_encoder *encoder,
> @@ -2216,15 +2209,13 @@ static void intel_ddi_disable_fec_state(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp;
> -	u32 val;
>  
>  	if (!crtc_state->fec_enable)
>  		return;
>  
>  	intel_dp = enc_to_intel_dp(encoder);
> -	val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
> -	val &= ~DP_TP_CTL_FEC_ENABLE;
> -	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
> +	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
> +		     DP_TP_CTL_FEC_ENABLE, 0);
>  	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
>  }
>  
> @@ -2622,12 +2613,10 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
>  		wait = true;
>  	}
>  
> -	if (intel_crtc_has_dp_encoder(crtc_state)) {
> -		val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
> -		val &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
> -		val |= DP_TP_CTL_LINK_TRAIN_PAT1;
> -		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
> -	}
> +	if (intel_crtc_has_dp_encoder(crtc_state))
> +		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
> +			     DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK,
> +			     DP_TP_CTL_LINK_TRAIN_PAT1);
>  
>  	/* Disable FEC in DP Sink */
>  	intel_ddi_disable_fec_state(encoder, crtc_state);
> @@ -2660,15 +2649,10 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
>  	if (DISPLAY_VER(dev_priv) >= 12) {
>  		if (is_mst) {
>  			enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
> -			u32 val;
>  
> -			val = intel_de_read(dev_priv,
> -					    TRANS_DDI_FUNC_CTL(cpu_transcoder));
> -			val &= ~(TGL_TRANS_DDI_PORT_MASK |
> -				 TRANS_DDI_MODE_SELECT_MASK);
> -			intel_de_write(dev_priv,
> -				       TRANS_DDI_FUNC_CTL(cpu_transcoder),
> -				       val);
> +			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder),
> +				     TGL_TRANS_DDI_PORT_MASK | TRANS_DDI_MODE_SELECT_MASK,
> +				     0);
>  		}
>  	} else {
>  		if (!is_mst)
> @@ -3222,12 +3206,9 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	enum port port = encoder->port;
> -	u32 val;
>  
> -	val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
> -	val &= ~DP_TP_CTL_LINK_TRAIN_MASK;
> -	val |= DP_TP_CTL_LINK_TRAIN_IDLE;
> -	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
> +	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
> +		     DP_TP_CTL_LINK_TRAIN_MASK, DP_TP_CTL_LINK_TRAIN_IDLE);
>  
>  	/*
>  	 * Until TGL on PORT_A we can have only eDP in SST mode. There the only
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index f62d9a9313498c..02bba5bcc00afc 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -366,8 +366,7 @@ void intel_fdi_normal_train(struct intel_crtc *crtc)
>  
>  	/* IVB wants error correction enabled */
>  	if (IS_IVYBRIDGE(dev_priv))
> -		intel_de_write(dev_priv, reg,
> -			       intel_de_read(dev_priv, reg) | FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);
> +		intel_de_rmw(dev_priv, reg, 0, FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);
>  }
>  
>  /* The FDI link training functions for ILK/Ibexpeak. */
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 0bc4f6b48e80ae..3ddfc8080ee890 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -215,41 +215,23 @@ intel_gmbus_reset(struct drm_i915_private *i915)
>  static void pnv_gmbus_clock_gating(struct drm_i915_private *i915,
>  				   bool enable)
>  {
> -	u32 val;
> -
>  	/* When using bit bashing for I2C, this bit needs to be set to 1 */
> -	val = intel_de_read(i915, DSPCLK_GATE_D(i915));
> -	if (!enable)
> -		val |= PNV_GMBUSUNIT_CLOCK_GATE_DISABLE;
> -	else
> -		val &= ~PNV_GMBUSUNIT_CLOCK_GATE_DISABLE;
> -	intel_de_write(i915, DSPCLK_GATE_D(i915), val);
> +	intel_de_rmw(i915, DSPCLK_GATE_D(i915), PNV_GMBUSUNIT_CLOCK_GATE_DISABLE,
> +		     !enable ? PNV_GMBUSUNIT_CLOCK_GATE_DISABLE : 0);
>  }
>  
>  static void pch_gmbus_clock_gating(struct drm_i915_private *i915,
>  				   bool enable)
>  {
> -	u32 val;
> -
> -	val = intel_de_read(i915, SOUTH_DSPCLK_GATE_D);
> -	if (!enable)
> -		val |= PCH_GMBUSUNIT_CLOCK_GATE_DISABLE;
> -	else
> -		val &= ~PCH_GMBUSUNIT_CLOCK_GATE_DISABLE;
> -	intel_de_write(i915, SOUTH_DSPCLK_GATE_D, val);
> +	intel_de_rmw(i915, SOUTH_DSPCLK_GATE_D, PCH_GMBUSUNIT_CLOCK_GATE_DISABLE,
> +		     !enable ? PCH_GMBUSUNIT_CLOCK_GATE_DISABLE : 0);
>  }
>  
>  static void bxt_gmbus_clock_gating(struct drm_i915_private *i915,
>  				   bool enable)
>  {
> -	u32 val;
> -
> -	val = intel_de_read(i915, GEN9_CLKGATE_DIS_4);
> -	if (!enable)
> -		val |= BXT_GMBUS_GATING_DIS;
> -	else
> -		val &= ~BXT_GMBUS_GATING_DIS;
> -	intel_de_write(i915, GEN9_CLKGATE_DIS_4, val);
> +	intel_de_rmw(i915, GEN9_CLKGATE_DIS_4, BXT_GMBUS_GATING_DIS,
> +		     !enable ? BXT_GMBUS_GATING_DIS : 0);
>  }
>  
>  static u32 get_reserved(struct intel_gmbus *bus)
> -- 
> 2.34.1
> 
