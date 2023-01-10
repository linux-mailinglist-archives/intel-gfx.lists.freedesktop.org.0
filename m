Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3E06645C5
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 17:16:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AAEC10E094;
	Tue, 10 Jan 2023 16:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B007A10E094
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 16:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673367364; x=1704903364;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ibdcZ5OCsoeGtMEHHk7HME3jxnmeTMUS8XCags1UfLQ=;
 b=N3CdbU1yjR4eXj67ncmYjonOJ7oAoldX3E+5IM/PjP5TpF5xTY/v37lP
 r7MeiWEpVkGl6ww3On/KwmpTdKUAZ2qzsonDCZzCKa3m/kJx2iIjLweK/
 +Yl1YoYPcoCffXEofqoncPVvdPL+b99M/+Ni1afKKqyn340R/llgiEvkt
 JCLZ9YleXCwUORBEzxAO5pxGLufc/cvtFiVYEB791WKAYs+p7nK0jBqWP
 OVpYGRqoEgfrRptr9+BEaov4xptX9AyTp2i9jTjOOyAKK3MXQPhLGJDyG
 gPxLiEUndI4EfPdMZOdWUR3FdgwWNTlnl4N8nrKdLQACTbRXNWlRAdIjr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="321886994"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="321886994"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 08:16:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="781106645"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="781106645"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 10 Jan 2023 08:16:02 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 10 Jan 2023 08:16:01 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 10 Jan 2023 08:16:01 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 10 Jan 2023 08:16:01 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 10 Jan 2023 08:16:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SfPDnLBbjcAlOeGrIlzEvJv43VMC1dQVnLuglYfvOXS/iZxpJzEP+p4JuIc4oaWQJ+esxW84nYrGewfQfYaa6vXzlRSklj7NW/LPUF6GZ6nGhA9pg5fTE9wJkncxjDBsttMsxiM46uEriESF6CuCKcvHIQqADexpYm45i8fNRDKqlHfgoiS9KXXsatTtyKdp2O2KJ/S3887ysH9bVg6psHdW17vabSNFZUTuH2pRnhQfHVyYQrt/9kech2QMQGpQEdKkarDI8KTWHwuFcyW4Dbp298u3h3cOr8oHF/k3bWskT6cxPSnj0muVVrHjNhQA6CGyeNPpa1linO7dwq+xvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZpzZuysFIvi8I+V401uug2veUXAuVms3HuWtCVdLnsc=;
 b=a5yFUkeE70MoPTkNgb5C337dNWbrtqDhewRnUjLUvUyCk+jwIWb7RAQAmMU59uSdtvrsVtb0X7XG5jX2zESdl3ixW45P5Ib0FwfAh9kjOyERQQOxRiQvv5I9UX/tJ/xtcmQW7zxYrQh5b8LH5uT8vyJ2F8sbelinkHcHvHZjIScHGAyn410e0an9llgaHfoCbJryD2Q5w9zEgFxLraPqDKwXj/irGm9batYWkwmuR5Iaaz1M5+BQfUwTKNH3rFYnGGFKq86/IqhZORENJc2WAnS7wJCTh+WuOx5QKW5TII1UbejZjInGLhDv7CoO4aQJVDpaItWjXFtbjgpj5Dcong==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6285.namprd11.prod.outlook.com (2603:10b6:8:a8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 16:15:59 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.5986.018; Tue, 10 Jan 2023
 16:15:57 +0000
Date: Tue, 10 Jan 2023 11:15:53 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y72POaMJLzGBhRS1@intel.com>
References: <Y7xqk3HKlq/50SSD@intel.com>
 <20230110113656.4050491-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230110113656.4050491-1-andrzej.hajda@intel.com>
X-ClientProxiedBy: BYAPR01CA0032.prod.exchangelabs.com (2603:10b6:a02:80::45)
 To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB6285:EE_
X-MS-Office365-Filtering-Correlation-Id: 95edbd11-a124-4ea8-2c9d-08daf325f483
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YR/x3z8ful1YIyMtLeyzmLUQ73il0/C3KcBL/hZ54tXHNecmNC5l/WUE09FNlu+MS4syNj2A0oPhF1VTV+0SlSMalUtpb9k8DMgPucdh4ZgFT0ZwVSeMrDMALU0PggpUr38h9KQbJnUKwzV+Xi+k3o8F7EByB9iEtt1+cKASus3Jx74Sl/o2wMjchtBBUnUXEmTP/Y1RiVZeezPej3aNYsbDTk++Kc8338EtgMPhMSSlwQ8L7PJbhY4yRlc7Viugf9pchd5teOdYrbDfIAVGEd/cIQ4rxHYBkh1Gy54xGiWX4b4waO6/d3oBe1sIQyz1C/OKoBIH1AX0fk1awBt0cwARxiOFqzJAdxre6NiKleHYmGMRMqj3CmogyANb9nuLe+jHM4LjW0co7rv8DKDGClAmFnf6Jg8dROj0/r08WG1Tfr7/agDsRoXxBfvhxmxs6gmV0Lr9Pfwq/KhwfKBUe8V/Xq6TnQpaieUqG1w338S66aR6TvJxa4Nu/BIDfh+sbADRIPy/P8ZSM1SCxCbxiwBGE7l42jhySzqYqEgJqcsVfdhFcW9YInQBXM93dlS9GaaMbIk7snxuvJSrlHwFhcZEr5CpsEfUisbY7v6ThZH/4Tag1ZcZe+JrA7GWf/6h5xddd0tZpnTxrvg1Y5ljoA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(39860400002)(396003)(376002)(136003)(451199015)(6862004)(8936002)(2906002)(5660300002)(41300700001)(4326008)(316002)(8676002)(66556008)(37006003)(66476007)(66946007)(44832011)(6636002)(26005)(6512007)(2616005)(38100700002)(86362001)(186003)(83380400001)(36756003)(478600001)(82960400001)(6506007)(6486002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5t/YtQ0JGufaaeBdnM9Z7XDKhYzI+uhXQBdRSGGM0dAI87WBHhFZ2oAGtN70?=
 =?us-ascii?Q?8WaXgIIus4XV7j1FVdHC0TUwGfbzVu7m4+dUH6ZdlbuM72wH9/wZZRB0tYVN?=
 =?us-ascii?Q?VQHdMSTr5b9RRKdFrt7cOEiAOliLN9y7QZecseZts32Iha2vb7yzYVQy8+1J?=
 =?us-ascii?Q?KKZYexmNwK8zaUY0ABP7drRCiLEEaOgvKZynR9JngbeDY3T72p/CKP0TVnSy?=
 =?us-ascii?Q?lNDIdD978D/x7Atq6uyzyFebHNY/v0mkXn4nKx8jMT7WAxX+vNLaHMN5nBJ/?=
 =?us-ascii?Q?UrfNFbk5RPOsjn/YAQaIWS7b/70n5M0ArfT1TdlqGXcKE5tzlYNOifb3fy48?=
 =?us-ascii?Q?PzXRv6VbP3QY0j4Uo4mF9rIsePmoTwt2UUgQ0CfX47Gl4+JX9FTZS/oFh/Lb?=
 =?us-ascii?Q?vZvtSvD/0du/KeJnGUw8f8pkjvb6/o8ZX/5GxRz5cXu1mawNin7W5A3iIje5?=
 =?us-ascii?Q?OYzj3WHI0YmLUtOzsGU7o/ltSHB8m8HYMRBKA7KIJUwvLCfDJzxDMkbVJk6e?=
 =?us-ascii?Q?yJOtJJ7PGaLfMEy5rx40XWApAUKISeriMU5c4h8/3rDtYNSt8O7+BjyjoKpm?=
 =?us-ascii?Q?7sIZHg13QKkwyewSnr/bOap5nJ3DHXh1EBOzWWXL4x/lJHy6vDjhVV1vBwJw?=
 =?us-ascii?Q?yZjemh7Lup0PbkW4/TjxnnAix2f2vxbJZLo1BPs5DAkroE7J8pEET+n2CojZ?=
 =?us-ascii?Q?by2t/O9Mjbdl23AXMnrbYu1+KnKifv63wukLsXKOCADY6drmwDVykwfAxWjJ?=
 =?us-ascii?Q?uesGkN5nnRMaoU1P++SZm93TW+X7BVO433kLoDj0tKEmFKATuPDTwvQ4CQ1R?=
 =?us-ascii?Q?huDeOAmT8tDS9OK9+UFk3ziSaqjNsnrpEwSLRxiRd8zjYyg4p2Xy3ID3m3kR?=
 =?us-ascii?Q?JzRjfZrOYQnNcvW5dSuITGeREYeNZC6r7MY1mF5JxSRDKsYnUg2b0Wp0q+ci?=
 =?us-ascii?Q?g2l2+KJAua2M2HiFPZR1kXSu1vW9XpI94ErJbjWpxt+y0knFzDMqjrTArH78?=
 =?us-ascii?Q?my3eUFO9IdZrswZqueCsd/NtMusaLaTFAbIv+qGVa570AnlJs3IqLQPxpDCZ?=
 =?us-ascii?Q?bdGV2Fg8Qwgh5/qqoZ1fOwUgEyssj1PTfnBcKQ4rdDN2yojDHx+WzIB7X6wG?=
 =?us-ascii?Q?fydUKZ8nNyNVPXqt0S0EQj5mxgIhV8HHm6fQ8q0M0t8y/pGfMOOKY1jy4dL4?=
 =?us-ascii?Q?KQzIeB63LhDIDCCRZ16GnxbCQ0ANb8BIpUZ7kf4sQ51getate2XFizSVBa9+?=
 =?us-ascii?Q?Sv4NVDFSBGRdW1FnB3Pj1Ri/bMnd61b4DhaG9NyXp592md/PAxltkpIjsM8q?=
 =?us-ascii?Q?AMQTNUHibQksXlSgsBIFvscndWSkSuC2EuwWh1n2GQ0yMjKEM7tS+Rwid2wP?=
 =?us-ascii?Q?0hVUQYwJtwG2zSpnXIEsQOL9XDOnVWSbWL1eN/Eo0H1f9iBIaOBTVJ+aGCxR?=
 =?us-ascii?Q?lI9YDimD8RTsnrhEqy3o7KHBszMIx+sgG296TA1k6MGLjHC9LE6hm9OzC67F?=
 =?us-ascii?Q?/imICGjA2OWcNYRoCuAQ3kWJNaYyxbTXrhvkIeuYUuK9tTjtdVn9NZrN6nDH?=
 =?us-ascii?Q?9iNS0bh/oxsT0hVrRYdosd+v0ScySv523rnKhRIFtF4TNq9KOX+89hygbasi?=
 =?us-ascii?Q?xw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95edbd11-a124-4ea8-2c9d-08daf325f483
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 16:15:57.1203 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VLr92ddgFXIo5rB/gExRQUg8zhzMtjOn9YlgMFPYFS1rZvbZtCtNSZKdHKoRaRaR0FBSzPx/qZt1EEyyYMaE8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6285
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display/misc: use intel_de_rmw
 if possible
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

On Tue, Jan 10, 2023 at 12:36:56PM +0100, Andrzej Hajda wrote:
> The helper makes the code more compact and readable.

next time, please add the revision comments here so we know what
changed from one version to the next.

> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c     | 12 ++++--------
>  drivers/gpu/drm/i915/display/intel_drrs.c | 12 +++---------
>  drivers/gpu/drm/i915/display/intel_dvo.c  |  7 ++-----
>  drivers/gpu/drm/i915/display/intel_lvds.c | 12 ++++--------
>  drivers/gpu/drm/i915/display/intel_tv.c   |  6 ++----
>  5 files changed, 15 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 24ef36ec2d3d3c..9629b174ec5d2c 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -136,16 +136,12 @@ static void intel_dp_prepare(struct intel_encoder *encoder,
>  
>  		intel_dp->DP |= DP_PIPE_SEL_IVB(crtc->pipe);
>  	} else if (HAS_PCH_CPT(dev_priv) && port != PORT_A) {
> -		u32 trans_dp;
> -
>  		intel_dp->DP |= DP_LINK_TRAIN_OFF_CPT;
>  
> -		trans_dp = intel_de_read(dev_priv, TRANS_DP_CTL(crtc->pipe));
> -		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
> -			trans_dp |= TRANS_DP_ENH_FRAMING;
> -		else
> -			trans_dp &= ~TRANS_DP_ENH_FRAMING;
> -		intel_de_write(dev_priv, TRANS_DP_CTL(crtc->pipe), trans_dp);
> +		intel_de_rmw(dev_priv, TRANS_DP_CTL(crtc->pipe),
> +			     TRANS_DP_ENH_FRAMING,
> +			     drm_dp_enhanced_frame_cap(intel_dp->dpcd) ?
> +			     TRANS_DP_ENH_FRAMING : 0);

yet another case with risk of change in behavior, but here again I believe
this is the right thing.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  	} else {
>  		if (IS_G4X(dev_priv) && pipe_config->limited_color_range)
>  			intel_dp->DP |= DP_COLOR_RANGE_16_235;
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> index 5b9e44443814e9..a52974f5f66042 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -68,21 +68,15 @@ intel_drrs_set_refresh_rate_pipeconf(struct intel_crtc *crtc,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder = crtc->drrs.cpu_transcoder;
> -	u32 val, bit;
> +	u32 bit;
>  
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		bit = PIPECONF_REFRESH_RATE_ALT_VLV;
>  	else
>  		bit = PIPECONF_REFRESH_RATE_ALT_ILK;
>  
> -	val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
> -
> -	if (refresh_rate == DRRS_REFRESH_RATE_LOW)
> -		val |= bit;
> -	else
> -		val &= ~bit;
> -
> -	intel_de_write(dev_priv, PIPECONF(cpu_transcoder), val);
> +	intel_de_rmw(dev_priv, PIPECONF(cpu_transcoder),
> +		     bit, refresh_rate == DRRS_REFRESH_RATE_LOW ? bit : 0);
>  }
>  
>  static void
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
> index 4aeae0f3ac9172..77d413781020de 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -444,11 +444,8 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
>  	 * the clock enabled before we attempt to initialize
>  	 * the device.
>  	 */
> -	for_each_pipe(dev_priv, pipe) {
> -		dpll[pipe] = intel_de_read(dev_priv, DPLL(pipe));
> -		intel_de_write(dev_priv, DPLL(pipe),
> -			       dpll[pipe] | DPLL_DVO_2X_MODE);
> -	}
> +	for_each_pipe(dev_priv, pipe)
> +		dpll[pipe] = intel_de_rmw(dev_priv, DPLL(pipe), 0, DPLL_DVO_2X_MODE);
>  
>  	ret = dvo->dev_ops->init(&intel_dvo->dev, i2c);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index aecec992cd0d2d..e8f47b7ef87649 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -316,11 +316,9 @@ static void intel_enable_lvds(struct intel_atomic_state *state,
>  	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  
> -	intel_de_write(dev_priv, lvds_encoder->reg,
> -		       intel_de_read(dev_priv, lvds_encoder->reg) | LVDS_PORT_EN);
> +	intel_de_rmw(dev_priv, lvds_encoder->reg, 0, LVDS_PORT_EN);
>  
> -	intel_de_write(dev_priv, PP_CONTROL(0),
> -		       intel_de_read(dev_priv, PP_CONTROL(0)) | PANEL_POWER_ON);
> +	intel_de_rmw(dev_priv, PP_CONTROL(0), 0, PANEL_POWER_ON);
>  	intel_de_posting_read(dev_priv, lvds_encoder->reg);
>  
>  	if (intel_de_wait_for_set(dev_priv, PP_STATUS(0), PP_ON, 5000))
> @@ -338,14 +336,12 @@ static void intel_disable_lvds(struct intel_atomic_state *state,
>  	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  
> -	intel_de_write(dev_priv, PP_CONTROL(0),
> -		       intel_de_read(dev_priv, PP_CONTROL(0)) & ~PANEL_POWER_ON);
> +	intel_de_rmw(dev_priv, PP_CONTROL(0), PANEL_POWER_ON, 0);
>  	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(0), PP_ON, 1000))
>  		drm_err(&dev_priv->drm,
>  			"timed out waiting for panel to power off\n");
>  
> -	intel_de_write(dev_priv, lvds_encoder->reg,
> -		       intel_de_read(dev_priv, lvds_encoder->reg) & ~LVDS_PORT_EN);
> +	intel_de_rmw(dev_priv, lvds_encoder->reg, LVDS_PORT_EN, 0);
>  	intel_de_posting_read(dev_priv, lvds_encoder->reg);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> index b986bf075889a1..3b5ff84dc61582 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -930,8 +930,7 @@ intel_enable_tv(struct intel_atomic_state *state,
>  	/* Prevents vblank waits from timing out in intel_tv_detect_type() */
>  	intel_crtc_wait_for_next_vblank(to_intel_crtc(pipe_config->uapi.crtc));
>  
> -	intel_de_write(dev_priv, TV_CTL,
> -		       intel_de_read(dev_priv, TV_CTL) | TV_ENC_ENABLE);
> +	intel_de_rmw(dev_priv, TV_CTL, 0, TV_ENC_ENABLE);
>  }
>  
>  static void
> @@ -943,8 +942,7 @@ intel_disable_tv(struct intel_atomic_state *state,
>  	struct drm_device *dev = encoder->base.dev;
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  
> -	intel_de_write(dev_priv, TV_CTL,
> -		       intel_de_read(dev_priv, TV_CTL) & ~TV_ENC_ENABLE);
> +	intel_de_rmw(dev_priv, TV_CTL, TV_ENC_ENABLE, 0);
>  }
>  
>  static const struct tv_mode *intel_tv_mode_find(const struct drm_connector_state *conn_state)
> -- 
> 2.34.1
> 
