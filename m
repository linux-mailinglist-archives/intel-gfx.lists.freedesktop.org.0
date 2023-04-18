Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A75EE6E6B26
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:32:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E7C10E816;
	Tue, 18 Apr 2023 17:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9DA410E813
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681839156; x=1713375156;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6aA8J+y4ngbtV5V73UQ8LUu5k8dwuKb08lzgVfQ3YXo=;
 b=FygtfmMBuNfvFvCOgU1NhkBtiipmbRb2WcBdB8vym1uE3m2IJKgKe/ge
 kAb6y7Tg2gWaOvPbRTnaO6i0hGJQSgIvQBz32LwPLX1wJ0aikHLjc11kQ
 PK+G+OqklZeSfMBZhhdv3TY/WaTr4TCZRWKGc7ej5x+qXV2BM/Lcc6F6O
 ZW3MgJ+lBGbKfa4wxN5vmhdFZ5Yag4plykL0nXZyTF2FxH3qK6TpMw7ft
 J3vuRtN1IuqoPi34dhHtEj1r11Rq2RVeR8g5C4vT+5A+wzDwI+wcjyFw4
 d8u/hnNt8jbkD2TzQFLdXwk+O1l5TVtnzfOTcZswd1sZkb+o+GQL1hcC0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="347995218"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="347995218"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:31:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="684666677"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="684666677"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 18 Apr 2023 10:31:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 10:31:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 10:31:19 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 10:31:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k0e7w0G/ZzbCF/T/8xhuiJhvw/e9wJ34ayJiJODLMJ4woSGB45zEFBj9A0y+FVQc14GmZ2KxMjd7fS9ITQKk5vA2YYfPatUKA8LTJOkWFoF/wlka6Qxmz2qSE6AuEK0sjf7oka+J7EDdCibQaGmm6gEBr/JGb92bCPN/HrBOxFHtEjuxt8KqYRm/NyFuNoPARjb7JK2A9Sk2VNxsMc810CaBP7rmBfFd9oNHyLb2MX6nnXtJ6KV7xB8D9v10pj31T6CvM2fRnusXvfAHqsnRYMyjcv2sEtiXIpZ4cGRjPTRX70bOdLLHq+fBbbOoBl+hF84Yu4t6YClZhq8Sx05nsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uvc34OY8HXfHzwQ2ZsV25mf4ExeiTTZeaviuIwQUMTk=;
 b=Z8D5eY3928HfIrNT57MHcj3MHRp+ReeFEdRx6enoILvUbrBTG9jYrWA4m97H2ZI2zDPQTRY+oj1sp4gzxDVvLw+hJqZ84PLqQrtpK8w1Cl1ggeCy5WwH9EdQou7+/oHUxKYDrVwveVUXZKLF7VFNAP7eA+hHZJElgSDAMB8X/E1zq8gemxEN/U8FVMPm9XSXx08+rAgosglPIIlVoipL2Stg7VbEDz6GHYwxWB5KCtOBqFtZmeBYwg8T9iVXgDUS+UglykF+lHVd0vylFFRnaHKwb9mP8PUtp7xL8a/rKz03byoVscR/IqU4bUUr4xYrpAHGNDFfDonI8i8Ij0ocQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6601.namprd11.prod.outlook.com (2603:10b6:806:273::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.31; Tue, 18 Apr
 2023 17:31:12 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f7ec:aae9:1e7b:e004]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f7ec:aae9:1e7b:e004%5]) with mapi id 15.20.6298.030; Tue, 18 Apr 2023
 17:31:12 +0000
Date: Tue, 18 Apr 2023 13:31:08 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZD7T3H4SH0J7Eai9@intel.com>
References: <20230417153741.1074692-1-jani.nikula@intel.com>
 <20230417153741.1074692-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230417153741.1074692-2-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0096.namprd03.prod.outlook.com
 (2603:10b6:a03:333::11) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6601:EE_
X-MS-Office365-Filtering-Correlation-Id: fe4bafbd-656c-4fd9-0bd6-08db4032b3f6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gKfrT86kk8QqHyG/nl3e2cpw6eAXrXbNQPTsl7GNqPbhC3ji/SvNwN7qfPuV8+nXhUmvwCHAOe/GmPoQU45Ja7t/gILAhS+4ooMRCe1y06sY7OyF7Iq2Y7w9j74p1ZY2KjZPB5v/W/0HvA//BfqY0ukmxccWpnLCIOSozDh0+EK5YYuh9CGKqpdYfjG9aqoKVYHg+65htm6nEjNeTH2dUdGhX8WK/pPaBJqJfoImTKBPnA6HCLh3tRhGPJJ2vLIjZXAmlc/VnaeCmCTryZSO/5Xf82yfHYFcDiyds9HZIxu0dZ8zhCxAT5ZfLyJCtD8P64Hkz5MjOXMd203ywg1CMXKtR+BllR7wHbpGqN5CthLiJApA1QieRuIqn9Px9WsvkOZ50PsArFwmqL4IL+RZAsqYmpnpH4paQqYW20c+WzIVF9j+ry62YNt5mG1XiBhZuYR+dbCEZ8EL8Q3ZQ7ymDDZ09gvnZ37FzQPpybbhZzTrNyJd8OBm3eQf4J3t4hHTJTNFcsp53ogmpzJ7T1+HDiPRtQxfI8sJkmD/pF4FJGB1ZLjhkLsT5oPgJJthgE/H
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(396003)(376002)(346002)(39860400002)(451199021)(36756003)(86362001)(2906002)(8676002)(6666004)(6486002)(26005)(6506007)(2616005)(186003)(83380400001)(6512007)(66556008)(66476007)(4326008)(478600001)(37006003)(82960400001)(41300700001)(38100700002)(6636002)(316002)(8936002)(66946007)(6862004)(44832011)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2S9tBGuXfKgJFi3/nUDSpZAc1IPeLP9ROC+INKhGPiirUI8DYvZ0JxM26baf?=
 =?us-ascii?Q?fOH0ZqBnaX3ADdJTRDMoVd5sXeZSLIR1j6oPPCXUPurG+gL0B8pcvQAPbb8b?=
 =?us-ascii?Q?6XGFuliysATJZ2aQLm81xhLpHK1ik1g7Ed+PrVt8NDSJO90slAIgAWZa24oA?=
 =?us-ascii?Q?F4zdcqNwyomt2xZTKcKZxvhoQ1aWR3ohA8EhUoNdIM5L6Nv2BfTAxMdseauw?=
 =?us-ascii?Q?l+M6tc2O+aQpLuWL10Xu8ARi8pyuA++qixadoGeeZF0O0dECSDP1QPsvlbHp?=
 =?us-ascii?Q?Vxj7sF5A/a0RJXajKdb4xRBIj1vpM2hhNQ/koQC36smItH/aeEezhrTdoUyW?=
 =?us-ascii?Q?SOQXFU1fnNddL+JjfHKkFgLiO/yQT9TuQwI+OLUImkKYIVR2dCPMV3/k6+UU?=
 =?us-ascii?Q?IRhjbDIqbOekCFrCPQ6xo+ER9XQPYFQIS580UOnKxDq177oMumW7dfZSCG32?=
 =?us-ascii?Q?jU2X5Q0NTRcvQkItNxommxr5oq7rM5nYkjZhYuexppHIkA1Pibl09SsQt57s?=
 =?us-ascii?Q?UM0Cv7sLJ7G8TNDDAXFgKiDftlB1F04U4F9MLEDhfi4m5L95qpBty0Jl/P50?=
 =?us-ascii?Q?4D9jDvlUZF1m1ArbOWj4JQIw99KaONU0tfjCn/yt4aXQv2KwyDra0i70o/wa?=
 =?us-ascii?Q?4VcZs8zUYRMq2AJen9DsoXUA60rm8kn1tkMXcfh/cPCskGcSbRWFSFumAVL6?=
 =?us-ascii?Q?dJtA2wkbTSsJStTVSJk0JNR0RQKC0Xmmh2kEIhG8lDXOpGvf0oXSa0MymKY0?=
 =?us-ascii?Q?Ur3Qiu7e2aM0zmZMj9RSz3RgQOV9SGh+yUHw3g98zmoOl+1zunsV0+eMv3SO?=
 =?us-ascii?Q?uQmI3/g8WsYs8i1lFz3FhW1ENgU4pqNEs88cPRWXSQUIdhd6sYs5DpqdRB2B?=
 =?us-ascii?Q?VksTeyePSZ3OFIRVFZ6cuJStST5vW5HdqezoIFTlhEQYmeBgKKwEQ01eUZAO?=
 =?us-ascii?Q?uGll7l/Xs3pEPqxHO0skzK+xdcRRxJ+96yKYr1Otv7LjMIC3hvnEO4Uf0owj?=
 =?us-ascii?Q?hciZ4CF9+VAZuP02U7ul2NCuq4ASwkGLZ0O02ozJulUj0cYzpwkXsNbXuX46?=
 =?us-ascii?Q?LB9lXcOpi5eRm2Q8+haS2iDkDM/JXMU2SeGe55cm1ZZohRe/tc6l1GooP1gp?=
 =?us-ascii?Q?psCoUk6HyFgPiqB5Glub1cVi1kedbo51XpERWavyKL3WKqNJpHpKs7oqpPRO?=
 =?us-ascii?Q?jYDZ3R9bqQNqWhjbNA4eTMbVoOCElbS9VudenS2BDsa2MWcRic7ojBKMGpao?=
 =?us-ascii?Q?gaHtLI319xckllySTrN0KFsOgSDc5rc3gZOzrl+RCazuDnLlliR2GXXJGTOb?=
 =?us-ascii?Q?iFEsb0/bs2gv49sfB1TojmAUzbV6FEhLdiabg12YdwbxUIbhn6Q1NZGyCsHC?=
 =?us-ascii?Q?pzeZm2fRf5oMRVQmpoI0RsgVkHrU2lOH2agF5flgDZTTCo6NI1MSkA31Dz7F?=
 =?us-ascii?Q?THoYRyw4CdHO1FFZuj0dQtHladyw3GYgApL0DERyvtYHPRGTdjltXno4em6Y?=
 =?us-ascii?Q?MtnKLmZNsu1dM3qlv5yKdAFwvCrWPoUARj1kB9XjXQws3MLgi4zA639r5wG9?=
 =?us-ascii?Q?pywUk20sGDoqpJPZ3Bwv6XA+0s5sv4WQLfnCtlMauL8/e3KDcroIPioBDZTo?=
 =?us-ascii?Q?9w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe4bafbd-656c-4fd9-0bd6-08db4032b3f6
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2023 17:31:12.3510 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 03vBZ5MX5H5kaoXlY/empc2jeRMjhXR8BrfaWrlt96WsBPNJRiLakb9R46Pi9x6CHYeSgcCAOuXLXRJyoLutwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6601
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: throw out struct
 intel_load_detect_pipe
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

On Mon, Apr 17, 2023 at 06:37:41PM +0300, Jani Nikula wrote:
> An error-valued pointer can handle all in one without the wrapper
> struct.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c      | 18 ++++++++---------
>  .../gpu/drm/i915/display/intel_load_detect.c  | 20 ++++++++-----------
>  .../gpu/drm/i915/display/intel_load_detect.h  | 12 ++++-------
>  drivers/gpu/drm/i915/display/intel_tv.c       | 16 +++++++--------
>  4 files changed, 29 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 96acdf98a0c0..13519f78cf9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -822,9 +822,9 @@ intel_crt_detect(struct drm_connector *connector,
>  	struct drm_i915_private *dev_priv = to_i915(connector->dev);
>  	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
>  	struct intel_encoder *intel_encoder = &crt->base;
> +	struct drm_atomic_state *state;
>  	intel_wakeref_t wakeref;
> -	int status, ret;
> -	struct intel_load_detect_pipe tmp;
> +	int status;
>  
>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] force=%d\n",
>  		    connector->base.id, connector->name,
> @@ -882,8 +882,12 @@ intel_crt_detect(struct drm_connector *connector,
>  	}
>  
>  	/* for pre-945g platforms use load detect */
> -	ret = intel_load_detect_get_pipe(connector, &tmp, ctx);
> -	if (ret > 0) {
> +	state = intel_load_detect_get_pipe(connector, ctx);
> +	if (IS_ERR(state)) {
> +		status = PTR_ERR(state);
> +	} else if (!state) {
> +		status = connector_status_unknown;
> +	} else {
>  		if (intel_crt_detect_ddc(connector))
>  			status = connector_status_connected;
>  		else if (DISPLAY_VER(dev_priv) < 4)
> @@ -893,11 +897,7 @@ intel_crt_detect(struct drm_connector *connector,
>  			status = connector_status_disconnected;
>  		else
>  			status = connector_status_unknown;
> -		intel_load_detect_release_pipe(connector, &tmp, ctx);
> -	} else if (ret == 0) {
> -		status = connector_status_unknown;
> -	} else {
> -		status = ret;
> +		intel_load_detect_release_pipe(connector, state, ctx);

I confess it took me a while to see that we have the same logic in place.
I think I need more coffee.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  	}
>  
>  out:
> diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.c b/drivers/gpu/drm/i915/display/intel_load_detect.c
> index 5d6bb6d712bc..d5a0aecf3e8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_load_detect.c
> +++ b/drivers/gpu/drm/i915/display/intel_load_detect.c
> @@ -44,9 +44,9 @@ static int intel_modeset_disable_planes(struct drm_atomic_state *state,
>  	return 0;
>  }
>  
> -int intel_load_detect_get_pipe(struct drm_connector *connector,
> -			       struct intel_load_detect_pipe *old,
> -			       struct drm_modeset_acquire_ctx *ctx)
> +struct drm_atomic_state *
> +intel_load_detect_get_pipe(struct drm_connector *connector,
> +			   struct drm_modeset_acquire_ctx *ctx)
>  {
>  	struct intel_encoder *encoder =
>  		intel_attached_encoder(to_intel_connector(connector));
> @@ -64,8 +64,6 @@ int intel_load_detect_get_pipe(struct drm_connector *connector,
>  		    connector->base.id, connector->name,
>  		    encoder->base.base.id, encoder->base.name);
>  
> -	old->restore_state = NULL;
> -
>  	drm_WARN_ON(dev, !drm_modeset_is_locked(&config->connection_mutex));
>  
>  	/*
> @@ -179,13 +177,12 @@ int intel_load_detect_get_pipe(struct drm_connector *connector,
>  		goto fail;
>  	}
>  
> -	old->restore_state = restore_state;
>  	drm_atomic_state_put(state);
>  
>  	/* let the connector get through one full cycle before testing */
>  	intel_crtc_wait_for_next_vblank(crtc);
>  
> -	return true;
> +	return restore_state;
>  
>  fail:
>  	if (state) {
> @@ -198,27 +195,26 @@ int intel_load_detect_get_pipe(struct drm_connector *connector,
>  	}
>  
>  	if (ret == -EDEADLK)
> -		return ret;
> +		return ERR_PTR(ret);
>  
> -	return false;
> +	return NULL;
>  }
>  
>  void intel_load_detect_release_pipe(struct drm_connector *connector,
> -				    struct intel_load_detect_pipe *old,
> +				    struct drm_atomic_state *state,
>  				    struct drm_modeset_acquire_ctx *ctx)
>  {
>  	struct intel_encoder *intel_encoder =
>  		intel_attached_encoder(to_intel_connector(connector));
>  	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
>  	struct drm_encoder *encoder = &intel_encoder->base;
> -	struct drm_atomic_state *state = old->restore_state;
>  	int ret;
>  
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
>  		    connector->base.id, connector->name,
>  		    encoder->base.id, encoder->name);
>  
> -	if (!state)
> +	if (IS_ERR_OR_NULL(state))
>  		return;
>  
>  	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
> diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.h b/drivers/gpu/drm/i915/display/intel_load_detect.h
> index 9b69da1867a5..aed51901b9ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_load_detect.h
> +++ b/drivers/gpu/drm/i915/display/intel_load_detect.h
> @@ -10,15 +10,11 @@ struct drm_atomic_state;
>  struct drm_connector;
>  struct drm_modeset_acquire_ctx;
>  
> -struct intel_load_detect_pipe {
> -	struct drm_atomic_state *restore_state;
> -};
> -
> -int intel_load_detect_get_pipe(struct drm_connector *connector,
> -			       struct intel_load_detect_pipe *old,
> -			       struct drm_modeset_acquire_ctx *ctx);
> +struct drm_atomic_state *
> +intel_load_detect_get_pipe(struct drm_connector *connector,
> +			   struct drm_modeset_acquire_ctx *ctx);
>  void intel_load_detect_release_pipe(struct drm_connector *connector,
> -				    struct intel_load_detect_pipe *old,
> +				    struct drm_atomic_state *old,
>  				    struct drm_modeset_acquire_ctx *ctx);
>  
>  #endif /* __INTEL_LOAD_DETECT_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> index 07e7f7cdd961..e3ccface0c9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -1723,21 +1723,21 @@ intel_tv_detect(struct drm_connector *connector,
>  		return connector_status_disconnected;
>  
>  	if (force) {
> -		struct intel_load_detect_pipe tmp;
> -		int ret;
> +		struct drm_atomic_state *state;
>  
> -		ret = intel_load_detect_get_pipe(connector, &tmp, ctx);
> -		if (ret < 0)
> -			return ret;
> +		state = intel_load_detect_get_pipe(connector, ctx);
> +		if (IS_ERR(state))
> +			return PTR_ERR(state);
>  
> -		if (ret > 0) {
> +		if (state) {
>  			type = intel_tv_detect_type(intel_tv, connector);
> -			intel_load_detect_release_pipe(connector, &tmp, ctx);
> +			intel_load_detect_release_pipe(connector, state, ctx);
>  			status = type < 0 ?
>  				connector_status_disconnected :
>  				connector_status_connected;
> -		} else
> +		} else {
>  			status = connector_status_unknown;
> +		}
>  
>  		if (status == connector_status_connected) {
>  			intel_tv->type = type;
> -- 
> 2.39.2
> 
