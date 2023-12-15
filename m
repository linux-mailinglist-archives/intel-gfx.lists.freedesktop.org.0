Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9277814DB2
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 17:57:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CC2A10EA3E;
	Fri, 15 Dec 2023 16:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78CFB10EA3E
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 16:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702659436; x=1734195436;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=lytKUytBdEiTYucGeMbGxLt+tTDG8oS+kit+mUQC2o8=;
 b=MjzsjXiz8cNjD/LWmoN/0KDpfWzReI/DwAIxrdWHVQxo603p8qXO9bXb
 vxsAbICuTztwrCvE2S0MbJvVO7AlgJeNBzDm6oOsOuCXqIM2mZo2jiIB6
 l2O3dupn0B+GwSO8UOgKsZS7sQrNQvoPH7lxn70lrPKupWyMZB7QDfDWY
 5eNWD57Nb3/mVhtk7VIqHzxt9aEN1uxIuHJhEUNyI/2TfxFT9SwoR3djp
 CSqLLAt5/mmHruEKIvJHyz6lD2yBT+fRNkfDsrg39KV6hYPXn7Mx9vABU
 viDcYvGK1AnOgYSDwzts0LrJhGDBy5EjptoLMolQF0O3Y300ZczujPatp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="380296946"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="380296946"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 08:57:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="803772469"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="803772469"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2023 08:57:15 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 08:57:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Dec 2023 08:57:15 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Dec 2023 08:57:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hiWtGT0qOt6Z9WSOLLJYJssPmfRgF7LOZEYzPB1+DT+kgA1L48TxlqmbXZ24SABugDY1btrfU5BHR5zniDfyKG+VAJrFjWzoa8Z0k3h9Rp2iMiMrUiOrmt6EgrgJvvYvZW4rL5kaRhr8iCmqdbh/kIDUs9o8wQ82iE7PSMDiRacX0JJaG9yRQMGSL/64bK1AWEpbBOfVlEfFqbPiYT+MMQB6DMP1FLKNDL9O78jlQhgzgV9cEfSNOUjnp425aLV8t+12UjU56ESVSP9THJ5UwDfQbmF54jEwrtPrJHazOky9EvtXzTP9Nlj/idksAkUxJrmqeTFPyBztG83bSqF2+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lCWXUZnAMiI7ME3RbJGr1+biIK4bsiauoCf3+RbuQbI=;
 b=lqN2wFB4DxpuZ77HMalbSb/Q8zzyEUbGKNlvO3yaqB/4oO1oJ3yIaXdZO4jDcvzZGq0jwVJR60oQsgfKJKv5vYNPz+fKgPpa2lracNBkZHafccyG4THrrdtZ9ne+XImYve/KCidpCfMHSnvEQfN7DB6/QyrZP7uPMJx3dHL21iA1pygi2p17Ag92HLDbIAS2WidfozGQpDo1XRX7ZSdz50oVBzQa7Iz9bxKe0rLFMjipyI+MCGu5R/o9NvajuMDsQSo6AVL89nuVotGjO0sgdKpCaRe7QXn7Wd9zMWKX3XuRMkigXVOlbvAsUDVN4Z8JT24W0PxFsm9jYffc+wtwxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ0PR11MB4925.namprd11.prod.outlook.com (2603:10b6:a03:2df::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Fri, 15 Dec
 2023 16:57:05 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7091.032; Fri, 15 Dec 2023
 16:57:05 +0000
Date: Fri, 15 Dec 2023 11:57:02 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 3/7] drm/i915/display: Unify VSC SPD preparation
Message-ID: <ZXyFXikIFhWvfdtD@intel.com>
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
 <20231214114838.1113648-4-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231214114838.1113648-4-jouni.hogander@intel.com>
X-ClientProxiedBy: BYAPR21CA0011.namprd21.prod.outlook.com
 (2603:10b6:a03:114::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ0PR11MB4925:EE_
X-MS-Office365-Filtering-Correlation-Id: b6427b93-821a-4fcb-4ff7-08dbfd8eddc2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gakr0km2U4iJlG6epJIbyXqJThWlNEbGIq170hGN4hkjpCy05YwxXg4FbHgvVQhUqezEBFE3h3oHK7vw3xxqV0aW3AnzXbEaGE9lM7DYXwH2phkm7yVjSvxxKxMfbnkO2m7rjZpBdV8zwdEUP0U/8hGGYBJMwYM7oShK6FfZFNJleuAt+Z1d5iy/XpDKamBCaW2ljDWKsfTtD24XIks1cpxyhZ1B2pBFK0KcZs1WpeaWfl+ejtTOpvUuWepO3EMfLsYrNOR7TVyZfE7vF5NW0DJRw8L6LagC5bnaA07jpr+rKNYWUt4W6Fjt+KAsIxYUUn1z+g02QX7m0OQSLGl7lpeOVmXp1gWjN6fC0CJlmllKIWG7m714vF8JV+Q4lrsz7mOkXP5kFxCqTGTF/MO3lLLrT64aKFejYa3AOmbzjbMBayDF+4BsgV6DxbJyrlLBGsneHCdS4tpmwK+hyzxdvYQc0qRtJ9g12qyoMCawWPRhZYzpGNRRrN9cZpgCL9DGoX6uWZMv2wrEvghZo1o535hm4li6eZmryd6ia4j2kQULLJD4mkWyx0ezPT2yTyVA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(396003)(346002)(136003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(82960400001)(38100700002)(478600001)(6486002)(6506007)(6512007)(6666004)(44832011)(316002)(66476007)(66556008)(37006003)(6862004)(4326008)(66946007)(8676002)(2906002)(6636002)(5660300002)(66574015)(41300700001)(2616005)(83380400001)(26005)(8936002)(86362001)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?IzMG9PVYz8soSb2DG/BlzAvpPinhWZm7gq9bYQDn1TXpPV7xYB6HJnCPFK?=
 =?iso-8859-1?Q?8WXvQaij4cINBWiG4933qsZpKhS97GN5X7GT7nUeg/KccGTiQSlqDJuC8m?=
 =?iso-8859-1?Q?U5Q7NAayM551gP2344Z3PJ32gaS6pAaDr9gh9CUX3DqU2HWqv5elqNV2rz?=
 =?iso-8859-1?Q?nBARBABSg/hfhwjVR1/1LOJzltjfMqigRRfDNXh6BW4HoTxVQMRYho09Te?=
 =?iso-8859-1?Q?45i+CxJDOThOCo2BYTas2fErezgyDg1xTOShuoS+HfO1TuzXLKtGuZbRZn?=
 =?iso-8859-1?Q?a4dnWRzhmvnivq34z+F+3bU76gEmJlnPrh1PR8KLvYQYidiGT5vYIinKIp?=
 =?iso-8859-1?Q?bKP8kc3SVjLmxip3/pgXNby1U6L1I9r1NUVvyUosai0gV9dwvus1B+4Sr/?=
 =?iso-8859-1?Q?18O/167sg2a5HgFyhY1Lc/jSEP/CpXAcpfgli7FxMZ3CepswzFSMOMJFDD?=
 =?iso-8859-1?Q?KEZBEOTvoos+6fDWXTq3D1+CK0xGPI6uE2KVzHxfU99QqnApUhFhE0HDWU?=
 =?iso-8859-1?Q?l16BoefBjCQWL4DEJD4ef6GYfmamONpIUXlnWljeI44LjHBqIWODdL8E22?=
 =?iso-8859-1?Q?4M9IUg4cI3y/QWHkCX8P1WPLZkzluqNOla2oG/UtXK7ZgrEatZWdYzc0/p?=
 =?iso-8859-1?Q?fK6T+SAZ3QLip5N8KGLSaXMPJrPIW7ZRVoJ21m1lBvC2JOh4YpZi/BZ8+I?=
 =?iso-8859-1?Q?4//ssDKnNa9qCo0xVoNnm2dxrP80MGWMAaVyFMhuEz2i5RZoHhxgKLH5nv?=
 =?iso-8859-1?Q?xr6mnrkdOaKApfz7m7dI39XYEs8oUpw1BoPH7HgcbEu+gTCCcdNWklk+hy?=
 =?iso-8859-1?Q?PZwK0lTyD0mPKLW4pqg5Y941B7HiejyfOAddIZjeLwanVBkuJadkiido3X?=
 =?iso-8859-1?Q?M4SBgtBd32SuRURbgNRLjpbZrWxm7OxqXE1H62v8LTSnPfsUFTXjo8aGAT?=
 =?iso-8859-1?Q?GHRi6JdzsgrDzc3DTIQG95WwtcZsfdgwvViaBJuAzSS1+6rBxxZlS0lxUH?=
 =?iso-8859-1?Q?UrM9du//2I5QPxOlQJBKDo6OnAasEyq4aiVGFocyZmhNcd3ksVCXUhLdTR?=
 =?iso-8859-1?Q?A3GHDfG2g/m5/bpz4WJubu3LXfGEOBYjAVHL++mOFbq8Uxi8q3aJSBWEyb?=
 =?iso-8859-1?Q?HzS1HmUfbunsw9XfoiFc+/rAqz4y2T72r9fmfL23xecN2Sxz+xCrQq16QS?=
 =?iso-8859-1?Q?LH4tPaO1kfgsrAs0nKQreSt+cO3L0u/ofNrErsRUhuFRsJZs14QPjUaIS8?=
 =?iso-8859-1?Q?95yCmRNMK5kCbiN3OETytbOZSZvuvAT8pT0ItVcibr02mlPr/XOh8QYcxM?=
 =?iso-8859-1?Q?ySRoY9yFokn9ohO1ZMe2yte6GiSnvNXLRU3C656B5wrYOgLNqlVTdz8bRm?=
 =?iso-8859-1?Q?Fk+2vDXEochiSZWNqNb/8lzGbcv/1kcsRC0Rfb0bl8BHVGAxeN8cHOJKkp?=
 =?iso-8859-1?Q?i5uy/PeA3PH1T28Pal6oULebw2xc3fUeAlW7v1QTGaMJ24wvHypAAa+sfp?=
 =?iso-8859-1?Q?U69DUqXKzI6YuWZjGikqy6m7B00NYe7u/9eJJ9QPQpFGTtH/voVf/89F38?=
 =?iso-8859-1?Q?n5DQtKyyTooRBZleWb1fBk8iggSWml0C0Sy6IdF1JZTq3KmMOvPJfx+kQ4?=
 =?iso-8859-1?Q?8IrdBBIz0Srr99pIrL6APwT9+uRvaYAbMKIcQergwFhj2DxoSzCbnj5g?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6427b93-821a-4fcb-4ff7-08dbfd8eddc2
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2023 16:57:05.2986 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jWb7DS61Tb/Bns9NwG0VLZ7UUCpUZUpKFz6MbYaW9ydT7KmPG5VrNhY7LQAxUWzOZ3tJ8ZFxYoYYX2hg0KfnDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4925
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

On Thu, Dec 14, 2023 at 01:48:34PM +0200, Jouni Högander wrote:
> There is no specific reason to prepare VSC SDP for PSR case somehow
> differently. Unify PSR and non-PSR preparation.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 43 ++++--------------------
>  drivers/gpu/drm/i915/display/intel_dp.h  |  7 ----
>  drivers/gpu/drm/i915/display/intel_psr.c |  6 ----
>  3 files changed, 6 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 08c48a58aa4d..3550cebb44f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2616,28 +2616,17 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
>  				     struct intel_crtc_state *crtc_state,
>  				     const struct drm_connector_state *conn_state)
>  {
> -	struct drm_dp_vsc_sdp *vsc = &crtc_state->infoframes.vsc;
> +	struct drm_dp_vsc_sdp *vsc;
>  
> -	/* When a crtc state has PSR, VSC SDP will be handled by PSR routine */
> -	if (crtc_state->has_psr)
> +	if ((!intel_dp->colorimetry_support ||
> +	    !intel_dp_needs_vsc_sdp(crtc_state, conn_state)) &&
> +	    !crtc_state->has_psr)
>  		return;
>  
> -	if (!intel_dp->colorimetry_support ||
> -	    !intel_dp_needs_vsc_sdp(crtc_state, conn_state))
> -		return;
> +	vsc = &crtc_state->infoframes.vsc;
>  
>  	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
>  	vsc->sdp_type = DP_SDP_VSC;
> -	intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
> -					 &crtc_state->infoframes.vsc);
> -}
> -
> -void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
> -				  const struct intel_crtc_state *crtc_state,
> -				  const struct drm_connector_state *conn_state,
> -				  struct drm_dp_vsc_sdp *vsc)
> -{
> -	vsc->sdp_type = DP_SDP_VSC;
>  
>  	if (crtc_state->has_psr2) {

sorry for the delay here... yesterday I started wondering if we were
sure if we could reach this point in the unified flow, but after
checking the compute config path and seeing that this is only true
if has_psr is also true, then I'm comfortable with this good unification.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  		if (intel_dp->colorimetry_support &&
> @@ -4289,24 +4278,6 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
>  	dig_port->write_infoframe(encoder, crtc_state, type, &sdp, len);
>  }
>  
> -void intel_write_dp_vsc_sdp(struct intel_encoder *encoder,
> -			    const struct intel_crtc_state *crtc_state,
> -			    const struct drm_dp_vsc_sdp *vsc)
> -{
> -	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	struct dp_sdp sdp = {};
> -	ssize_t len;
> -
> -	len = intel_dp_vsc_sdp_pack(vsc, &sdp, sizeof(sdp));
> -
> -	if (drm_WARN_ON(&dev_priv->drm, len < 0))
> -		return;
> -
> -	dig_port->write_infoframe(encoder, crtc_state, DP_SDP_VSC,
> -					&sdp, len);
> -}
> -
>  void intel_dp_set_infoframes(struct intel_encoder *encoder,
>  			     bool enable,
>  			     const struct intel_crtc_state *crtc_state,
> @@ -4333,9 +4304,7 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
>  	if (!enable)
>  		return;
>  
> -	/* When PSR is enabled, VSC SDP is handled by PSR routine */
> -	if (!crtc_state->has_psr)
> -		intel_write_dp_sdp(encoder, crtc_state, DP_SDP_VSC);
> +	intel_write_dp_sdp(encoder, crtc_state, DP_SDP_VSC);
>  
>  	intel_write_dp_sdp(encoder, crtc_state, HDMI_PACKET_TYPE_GAMUT_METADATA);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 05db46b111f2..b911706d2e95 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -109,13 +109,6 @@ int intel_dp_max_data_rate(int max_link_rate, int max_lanes);
>  bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp);
>  bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
>  			    const struct drm_connector_state *conn_state);
> -void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
> -				  const struct intel_crtc_state *crtc_state,
> -				  const struct drm_connector_state *conn_state,
> -				  struct drm_dp_vsc_sdp *vsc);
> -void intel_write_dp_vsc_sdp(struct intel_encoder *encoder,
> -			    const struct intel_crtc_state *crtc_state,
> -			    const struct drm_dp_vsc_sdp *vsc);
>  void intel_dp_set_infoframes(struct intel_encoder *encoder, bool enable,
>  			     const struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index d9fffc802335..494d08817d71 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1374,10 +1374,6 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  		return;
>  
>  	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
> -
> -	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
> -	intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_state, conn_state,
> -				     &crtc_state->infoframes.vsc);
>  }
>  
>  void intel_psr_get_config(struct intel_encoder *encoder,
> @@ -1621,7 +1617,6 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
> -	struct intel_encoder *encoder = &dig_port->base;
>  	u32 val;
>  
>  	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
> @@ -1649,7 +1644,6 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>  		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
>  			    intel_dp->psr.psr2_enabled ? "2" : "1");
>  
> -	intel_write_dp_vsc_sdp(encoder, crtc_state, &crtc_state->infoframes.vsc);
>  	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
>  	intel_psr_enable_sink(intel_dp);
>  	intel_psr_enable_source(intel_dp, crtc_state);
> -- 
> 2.34.1
> 
