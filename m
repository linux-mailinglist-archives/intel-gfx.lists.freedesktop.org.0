Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 534566E6AD0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:21:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8D610E80B;
	Tue, 18 Apr 2023 17:21:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 694FD10E80B
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681838466; x=1713374466;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=VhCkPrNvpf2ecK02qB58Lkm3agtTGoiaDGEOck8IEqg=;
 b=VBUvnuNv7fYoHaQo3/VVX49j0154bQUE8ItCVjG1UiNwVxowAm5xnIFz
 f3VU8kDvVhqcFOwhdxzgQHJF+nd9zWP/pDw5XO0liucHdad5DpZ9ZhCX0
 BYqh9monumjKHfvW+hjccw+1FfsuoM/wsqxGq3hBUtSDH8/X2GRTnWYo1
 n3ASf57VUnguwl9+dvNL12b8NIa05vyp6EcgVpdVyQrsWeEdDK1ymOviL
 Uo8eT0i9ruXZT+SGNS0OFX+dIQ761gxe/kB+p+OlO7zN78ymvq0KF2nhJ
 Gi7I1OdwFqUJGgAMEItc0JqyMw73ACyxF7r3Jixl3icb/1smLfaoYo77+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334041664"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334041664"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:21:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="721575651"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="721575651"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 18 Apr 2023 10:21:04 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 10:21:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 10:21:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 10:21:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 10:21:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AcE4qT2tRESUcVaA4se+YBluZmHb9KypiTSY1EqXK7vbLhkh3AQMqMYfIadhBB0fb070YXdZM1bq19hXPksw1MSH4Or89czivvJhF8lJRX8vxZwKNeEKKoRhqpOVEI6N9YByl0SHjIQ30My5j45PtYqyu6mjzvsC+Q1Atoy1jqZZ1ltCiJ/X2r4iBvlwWW6P7gsh4sQnB9jbbx8hFfU3t51+rhZXlItLsSTAvBVSZTgM9ePqLnwKVKf0m6qD60+JIMUjFD5LyHNg7gH89fK8ojrWW1ajLZnoKxe1WwssVZEs8/iAj2JURfYHQjV39MAJiDO9PPV1GYZtIABeAKIfnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w+dNTybDpjyJZsspNMmi/PNHRV4ITrRkiJeaU+JCoe8=;
 b=jJiiNOtYqPq3kVeB9A4orMjEiReANoCLixtFcnvJc1/Lj1fQB87Ur6DTFQWg+bUmsbcy2v9dpY8ygN1OzgUa0wkIBXztuPqn3LGF1W3ab24S6MOhDJSq0xhJFgcvGabHQ6GsNFaVnMrbV3k7/eXQ+3ty+rE9IRYVRpmVDJs7mCtcVQnJNgbro2j3zCEx8IHfKb2ASCeZ0QqqC5OjkxMGUter/6KcQ2QkQ0e163A/oqR5Q8hACgTGjok8DwEwvffqyP1oxGvrLfzpitvQCFI7nd9G70T8xWyA2x160c/SVPLdEYvWEyVGNz/Pg0prxQphxqjC2oJJjZTdMIR8oTtlLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN9PR11MB5482.namprd11.prod.outlook.com (2603:10b6:408:103::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 17:21:00 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f7ec:aae9:1e7b:e004]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f7ec:aae9:1e7b:e004%5]) with mapi id 15.20.6298.030; Tue, 18 Apr 2023
 17:21:00 +0000
Date: Tue, 18 Apr 2023 13:20:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZD7Rd7HBhfJvdsdf@intel.com>
References: <20230417153741.1074692-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230417153741.1074692-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0135.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BN9PR11MB5482:EE_
X-MS-Office365-Filtering-Correlation-Id: ae763394-8760-45b2-5d43-08db403146f7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bAtM99Xh3GZHzlYtik83fWwszhJ0GrL8hIpbPMgNsPx0iZW0TEOK6Ud+Z5Cqr0+cfR7ap2Hri5fqqPnDH/L5XyHP0XLGm1qhSHSJI59tj7UZhuHR08wO2pk+ZGd0R9kDzYgFhFZSswjGx17JNrcBFMKQ+KL7BpxMCRHzaC2XhNviuosyP5XfVYbhnEOwjjlSyjSAGr616/in7L3oZoB54+Nhp3MixmSjKnl7IMatLIKcr3Bom7/niVmOorrTz6InAUNJkk7UucqTSiGXTJCvzAY/RvCdUPIHxfgTzY13gs4VwK43c8Gbcpb2X/TJ9Je2nQ+qVIsmdLxXx3LZ99/iBimCY3ymcJXp+Htdh8Zl6XvHNGgxIjI/XL4XND5cnnRgTZ9L0kN54w/0vsyn5kr16P83VBYDGdfZ157Bbc5nnaLATPZ0t5o1A8+fwtfE1UMWkQZhu9Ao+XnY1oe8MvrNcZ2IIc4mt/kHiWwS4ziM85ozilgWwhm4JHQ5eeAGZIIook9OSFHihycq8W2cqnqdPW89MSAUCid0lg8UBFChcoGYhp0uvC4Ni9PTPI5sVswD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(346002)(376002)(39860400002)(366004)(451199021)(5660300002)(44832011)(86362001)(2616005)(6512007)(6636002)(83380400001)(186003)(26005)(6506007)(82960400001)(38100700002)(8676002)(6862004)(8936002)(478600001)(6486002)(6666004)(316002)(37006003)(41300700001)(36756003)(66476007)(66556008)(4326008)(66946007)(2906002)(30864003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Bssa7Edp4sU+qumEMXDuO3t2+DlNqJAXj2od1RUKhFuENKepVmey+5FMEk?=
 =?iso-8859-1?Q?u5F7i/CpjPxVnlYkmOG7XK/lwThPy/A84sZlmgpDw8a0nZkOs17jfb9xXB?=
 =?iso-8859-1?Q?elw5XTP+iMXEBoSXA4EmQLCRiXBu7iBOrBpCtvZbV+2W7m8Hv80mxYYXUC?=
 =?iso-8859-1?Q?O0jx/As33LE50DJxHctiosMBztnPPyeRyvmI0h3JM0wXCqhrYYFakeF+I1?=
 =?iso-8859-1?Q?dJ2yzOEy/0r9MkiE8smSxuZDzrGw+5jPccwjZm321KSvaqfrsIsAE+N828?=
 =?iso-8859-1?Q?8ScP4yQi2z8PkexCCsjQF69Yz0LKdGp0nPY/TuDRiGjuvfLblqg18WSnE3?=
 =?iso-8859-1?Q?SlOAKSTi5FpYJ1KfOOeZZwFLw2391mk2IvDlRyr8yD1YF5ShBHud4ftwZw?=
 =?iso-8859-1?Q?WLtAjhvAZHl1+ndvWhjHm+5n0Sp2rwkk8ivcWfNSa8lOL/rUrTZkziefDz?=
 =?iso-8859-1?Q?1EUaDPRqkbt+QMyumZS12sDDjp9hfGGSqEJihEEx42wbiPmTdrkyOKNMpt?=
 =?iso-8859-1?Q?oCugtplmuZxtGgf/IypHfGdrn9kFQpOrHlje16moY5T65MU4BYehq5rFGU?=
 =?iso-8859-1?Q?TwsKLPGbmU2niWsKYF/SxEtBFxj8F4jFvuVJ6t1CeH+7ns2rg7xR+nHBEo?=
 =?iso-8859-1?Q?hQ+uxi82exweHLJOYhbk520XsFZknQavnUTJPEkd4XD6chVkyPHyhBaUD7?=
 =?iso-8859-1?Q?6lNcZlFdQRJ/tr6PiZ7kocQ7TlDEyGStQj0LgD7kpxZHyOiLt5wt9YkDrY?=
 =?iso-8859-1?Q?YabcFwC/n0ekggrQmF+SCrd36xofjzAtUv0DbgObntR0CdyKUY/MqtEJY4?=
 =?iso-8859-1?Q?BWNhqqiJ+M+QKISlx9fpXj16TJzuuKaGfBsfjRXsE/f275ay/9AL8MpUUe?=
 =?iso-8859-1?Q?F2+thUqKkNrWZlD8ecRVG//jlbMkuC1eT/xkk28ER22yxxEa4jSwlqMuJe?=
 =?iso-8859-1?Q?PgwHe/+Hri9qsI51B2Fc4u/tj0eh3BaS4SRncz/ncsE+FdEmimbct7iB7I?=
 =?iso-8859-1?Q?BU9PcaW1wHdwJOKqhsxV+b2xzk/SF7BBVi5FQHfMwTZce1ymfn+fcoMF/V?=
 =?iso-8859-1?Q?i8W8l5cQSlvUFUu1PZNaiX4Nk0B1cxUbyyMd+Ln0Oglt2qm44rrm0a7oVu?=
 =?iso-8859-1?Q?CMWEDSRxsh1W3On6Q2q4JO6vQts/kLb8ndw3rrTXaBeaSld1iHZycJM8RJ?=
 =?iso-8859-1?Q?eZmhjZWoQMNLoqfRbASFXfKjkAR4IkJs+UbthuJdFXJLZxv8U/ul2RWbL4?=
 =?iso-8859-1?Q?9DRgFjO4lrPF5T1cD1vloJcm4Xb2CsZQsSK9h3w0VyW1gifu11ICS7BtgA?=
 =?iso-8859-1?Q?ve5Fy4D9PRb+XFbOtOa7qe4PAW+ks74nDQR5d3gvUebt5KVipw3dv6z3Rq?=
 =?iso-8859-1?Q?4EJ3LS+RRKiMXmABBSCWmwsx9R6qXyYSXw4uFvicasVA/FZOFT2RjJBURj?=
 =?iso-8859-1?Q?smO0JkeuGYrMeGHsB61vdzfKREumrY4bcW0xpZmUlH3EhSMNIBIPafkHlv?=
 =?iso-8859-1?Q?gXRS5PT1nHT5ATQryqEWZXQcfnCYC6c9dthFyADy7iIoJst/vF0NZwZ7Wf?=
 =?iso-8859-1?Q?aeB9ONYqMQmHMGjE7GJZ50nMd0loJCZi2x2qBqhre+yGu6IIjF3apl37Zi?=
 =?iso-8859-1?Q?JPdE+V19AxRcnDX3y26fl1RHM/zRMAuh4iqSZ27LXguxFHDIAnyTxD+w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae763394-8760-45b2-5d43-08db403146f7
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2023 17:20:59.6597 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hvh1Dwt14lVFvz10Ss7lodhWlIBsWzt33+OYBpE08sfQL3Q8zwNeARaHy4DeKFRRG3/pkcOtZ4cxZlKY8BrKGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5482
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: split out load detect
 to a separate file
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

On Mon, Apr 17, 2023 at 06:37:40PM +0300, Jani Nikula wrote:
> Load detect is shared between tv and crt but otherwise isolated in
> intel_display.c.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_crt.c      |   5 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 215 ----------------
>  drivers/gpu/drm/i915/display/intel_display.h  |   7 -
>  .../drm/i915/display/intel_display_types.h    |   4 -
>  .../gpu/drm/i915/display/intel_load_detect.c  | 229 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_load_detect.h  |  24 ++
>  drivers/gpu/drm/i915/display/intel_tv.c       |   5 +-
>  8 files changed, 260 insertions(+), 230 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_load_detect.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_load_detect.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 154986359169..9af76e376ca9 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -261,6 +261,7 @@ i915-y += \
>  	display/intel_hdcp_gsc.o \
>  	display/intel_hotplug.o \
>  	display/intel_hti.o \
> +	display/intel_load_detect.o \
>  	display/intel_lpe_audio.o \
>  	display/intel_modeset_verify.o \
>  	display/intel_modeset_setup.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 38e9c61c2344..96acdf98a0c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -48,6 +48,7 @@
>  #include "intel_fifo_underrun.h"
>  #include "intel_gmbus.h"
>  #include "intel_hotplug.h"
> +#include "intel_load_detect.h"
>  #include "intel_pch_display.h"
>  #include "intel_pch_refclk.h"
>  
> @@ -881,7 +882,7 @@ intel_crt_detect(struct drm_connector *connector,
>  	}
>  
>  	/* for pre-945g platforms use load detect */
> -	ret = intel_get_load_detect_pipe(connector, &tmp, ctx);
> +	ret = intel_load_detect_get_pipe(connector, &tmp, ctx);
>  	if (ret > 0) {
>  		if (intel_crt_detect_ddc(connector))
>  			status = connector_status_connected;
> @@ -892,7 +893,7 @@ intel_crt_detect(struct drm_connector *connector,
>  			status = connector_status_disconnected;
>  		else
>  			status = connector_status_unknown;
> -		intel_release_load_detect_pipe(connector, &tmp, ctx);
> +		intel_load_detect_release_pipe(connector, &tmp, ctx);
>  	} else if (ret == 0) {
>  		status = connector_status_unknown;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1c264c17b6e4..2d4a6936ab2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3821,221 +3821,6 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
>  	return true;
>  }
>  
> -/* VESA 640x480x72Hz mode to set on the pipe */
> -static const struct drm_display_mode load_detect_mode = {
> -	DRM_MODE("640x480", DRM_MODE_TYPE_DEFAULT, 31500, 640, 664,
> -		 704, 832, 0, 480, 489, 491, 520, 0, DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC),
> -};
> -
> -static int intel_modeset_disable_planes(struct drm_atomic_state *state,
> -					struct drm_crtc *crtc)
> -{
> -	struct drm_plane *plane;
> -	struct drm_plane_state *plane_state;
> -	int ret, i;
> -
> -	ret = drm_atomic_add_affected_planes(state, crtc);
> -	if (ret)
> -		return ret;
> -
> -	for_each_new_plane_in_state(state, plane, plane_state, i) {
> -		if (plane_state->crtc != crtc)
> -			continue;
> -
> -		ret = drm_atomic_set_crtc_for_plane(plane_state, NULL);
> -		if (ret)
> -			return ret;
> -
> -		drm_atomic_set_fb_for_plane(plane_state, NULL);
> -	}
> -
> -	return 0;
> -}
> -
> -int intel_get_load_detect_pipe(struct drm_connector *connector,
> -			       struct intel_load_detect_pipe *old,
> -			       struct drm_modeset_acquire_ctx *ctx)
> -{
> -	struct intel_encoder *encoder =
> -		intel_attached_encoder(to_intel_connector(connector));
> -	struct intel_crtc *possible_crtc;
> -	struct intel_crtc *crtc = NULL;
> -	struct drm_device *dev = encoder->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> -	struct drm_mode_config *config = &dev->mode_config;
> -	struct drm_atomic_state *state = NULL, *restore_state = NULL;
> -	struct drm_connector_state *connector_state;
> -	struct intel_crtc_state *crtc_state;
> -	int ret;
> -
> -	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
> -		    connector->base.id, connector->name,
> -		    encoder->base.base.id, encoder->base.name);
> -
> -	old->restore_state = NULL;
> -
> -	drm_WARN_ON(dev, !drm_modeset_is_locked(&config->connection_mutex));
> -
> -	/*
> -	 * Algorithm gets a little messy:
> -	 *
> -	 *   - if the connector already has an assigned crtc, use it (but make
> -	 *     sure it's on first)
> -	 *
> -	 *   - try to find the first unused crtc that can drive this connector,
> -	 *     and use that if we find one
> -	 */
> -
> -	/* See if we already have a CRTC for this connector */
> -	if (connector->state->crtc) {
> -		crtc = to_intel_crtc(connector->state->crtc);
> -
> -		ret = drm_modeset_lock(&crtc->base.mutex, ctx);
> -		if (ret)
> -			goto fail;
> -
> -		/* Make sure the crtc and connector are running */
> -		goto found;
> -	}
> -
> -	/* Find an unused one (if possible) */
> -	for_each_intel_crtc(dev, possible_crtc) {
> -		if (!(encoder->base.possible_crtcs &
> -		      drm_crtc_mask(&possible_crtc->base)))
> -			continue;
> -
> -		ret = drm_modeset_lock(&possible_crtc->base.mutex, ctx);
> -		if (ret)
> -			goto fail;
> -
> -		if (possible_crtc->base.state->enable) {
> -			drm_modeset_unlock(&possible_crtc->base.mutex);
> -			continue;
> -		}
> -
> -		crtc = possible_crtc;
> -		break;
> -	}
> -
> -	/*
> -	 * If we didn't find an unused CRTC, don't use any.
> -	 */
> -	if (!crtc) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "no pipe available for load-detect\n");
> -		ret = -ENODEV;
> -		goto fail;
> -	}
> -
> -found:
> -	state = drm_atomic_state_alloc(dev);
> -	restore_state = drm_atomic_state_alloc(dev);
> -	if (!state || !restore_state) {
> -		ret = -ENOMEM;
> -		goto fail;
> -	}
> -
> -	state->acquire_ctx = ctx;
> -	to_intel_atomic_state(state)->internal = true;
> -
> -	restore_state->acquire_ctx = ctx;
> -	to_intel_atomic_state(restore_state)->internal = true;
> -
> -	connector_state = drm_atomic_get_connector_state(state, connector);
> -	if (IS_ERR(connector_state)) {
> -		ret = PTR_ERR(connector_state);
> -		goto fail;
> -	}
> -
> -	ret = drm_atomic_set_crtc_for_connector(connector_state, &crtc->base);
> -	if (ret)
> -		goto fail;
> -
> -	crtc_state = intel_atomic_get_crtc_state(state, crtc);
> -	if (IS_ERR(crtc_state)) {
> -		ret = PTR_ERR(crtc_state);
> -		goto fail;
> -	}
> -
> -	crtc_state->uapi.active = true;
> -
> -	ret = drm_atomic_set_mode_for_crtc(&crtc_state->uapi,
> -					   &load_detect_mode);
> -	if (ret)
> -		goto fail;
> -
> -	ret = intel_modeset_disable_planes(state, &crtc->base);
> -	if (ret)
> -		goto fail;
> -
> -	ret = PTR_ERR_OR_ZERO(drm_atomic_get_connector_state(restore_state, connector));
> -	if (!ret)
> -		ret = PTR_ERR_OR_ZERO(drm_atomic_get_crtc_state(restore_state, &crtc->base));
> -	if (!ret)
> -		ret = drm_atomic_add_affected_planes(restore_state, &crtc->base);
> -	if (ret) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Failed to create a copy of old state to restore: %i\n",
> -			    ret);
> -		goto fail;
> -	}
> -
> -	ret = drm_atomic_commit(state);
> -	if (ret) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "failed to set mode on load-detect pipe\n");
> -		goto fail;
> -	}
> -
> -	old->restore_state = restore_state;
> -	drm_atomic_state_put(state);
> -
> -	/* let the connector get through one full cycle before testing */
> -	intel_crtc_wait_for_next_vblank(crtc);
> -
> -	return true;
> -
> -fail:
> -	if (state) {
> -		drm_atomic_state_put(state);
> -		state = NULL;
> -	}
> -	if (restore_state) {
> -		drm_atomic_state_put(restore_state);
> -		restore_state = NULL;
> -	}
> -
> -	if (ret == -EDEADLK)
> -		return ret;
> -
> -	return false;
> -}
> -
> -void intel_release_load_detect_pipe(struct drm_connector *connector,
> -				    struct intel_load_detect_pipe *old,
> -				    struct drm_modeset_acquire_ctx *ctx)
> -{
> -	struct intel_encoder *intel_encoder =
> -		intel_attached_encoder(to_intel_connector(connector));
> -	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
> -	struct drm_encoder *encoder = &intel_encoder->base;
> -	struct drm_atomic_state *state = old->restore_state;
> -	int ret;
> -
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
> -		    connector->base.id, connector->name,
> -		    encoder->base.id, encoder->name);
> -
> -	if (!state)
> -		return;
> -
> -	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
> -	if (ret)
> -		drm_dbg_kms(&i915->drm,
> -			    "Couldn't release load detect pipe: %i\n", ret);
> -	drm_atomic_state_put(state);
> -}
> -
>  static int i9xx_pll_refclk(struct drm_device *dev,
>  			   const struct intel_crtc_state *pipe_config)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index fefad8cfc8a2..ac95961f68ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -56,7 +56,6 @@ struct intel_dp;
>  struct intel_encoder;
>  struct intel_initial_plane_config;
>  struct intel_link_m_n;
> -struct intel_load_detect_pipe;
>  struct intel_plane;
>  struct intel_plane_state;
>  struct intel_power_domain_mask;
> @@ -455,12 +454,6 @@ int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
>  void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>  			 struct intel_digital_port *dig_port,
>  			 unsigned int expected_mask);
> -int intel_get_load_detect_pipe(struct drm_connector *connector,
> -			       struct intel_load_detect_pipe *old,
> -			       struct drm_modeset_acquire_ctx *ctx);
> -void intel_release_load_detect_pipe(struct drm_connector *connector,
> -				    struct intel_load_detect_pipe *old,
> -				    struct drm_modeset_acquire_ctx *ctx);
>  struct drm_framebuffer *
>  intel_framebuffer_create(struct drm_i915_gem_object *obj,
>  			 struct drm_mode_fb_cmd2 *mode_cmd);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 64b6a5ec4b81..35c260bd1461 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1838,10 +1838,6 @@ struct intel_dp_mst_encoder {
>  	struct intel_connector *connector;
>  };
>  
> -struct intel_load_detect_pipe {
> -	struct drm_atomic_state *restore_state;
> -};
> -
>  static inline struct intel_encoder *
>  intel_attached_encoder(struct intel_connector *connector)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.c b/drivers/gpu/drm/i915/display/intel_load_detect.c
> new file mode 100644
> index 000000000000..5d6bb6d712bc
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_load_detect.c
> @@ -0,0 +1,229 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2023 Intel Corporation
> + */
> +
> +#include <drm/drm_atomic.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_atomic_uapi.h>
> +
> +#include "i915_drv.h"
> +#include "intel_atomic.h"
> +#include "intel_crtc.h"
> +#include "intel_display_types.h"
> +#include "intel_load_detect.h"
> +
> +/* VESA 640x480x72Hz mode to set on the pipe */
> +static const struct drm_display_mode load_detect_mode = {
> +	DRM_MODE("640x480", DRM_MODE_TYPE_DEFAULT, 31500, 640, 664,
> +		 704, 832, 0, 480, 489, 491, 520, 0, DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC),
> +};
> +
> +static int intel_modeset_disable_planes(struct drm_atomic_state *state,
> +					struct drm_crtc *crtc)
> +{
> +	struct drm_plane *plane;
> +	struct drm_plane_state *plane_state;
> +	int ret, i;
> +
> +	ret = drm_atomic_add_affected_planes(state, crtc);
> +	if (ret)
> +		return ret;
> +
> +	for_each_new_plane_in_state(state, plane, plane_state, i) {
> +		if (plane_state->crtc != crtc)
> +			continue;
> +
> +		ret = drm_atomic_set_crtc_for_plane(plane_state, NULL);
> +		if (ret)
> +			return ret;
> +
> +		drm_atomic_set_fb_for_plane(plane_state, NULL);
> +	}
> +
> +	return 0;
> +}
> +
> +int intel_load_detect_get_pipe(struct drm_connector *connector,
> +			       struct intel_load_detect_pipe *old,
> +			       struct drm_modeset_acquire_ctx *ctx)
> +{
> +	struct intel_encoder *encoder =
> +		intel_attached_encoder(to_intel_connector(connector));
> +	struct intel_crtc *possible_crtc;
> +	struct intel_crtc *crtc = NULL;
> +	struct drm_device *dev = encoder->base.dev;
> +	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct drm_mode_config *config = &dev->mode_config;
> +	struct drm_atomic_state *state = NULL, *restore_state = NULL;
> +	struct drm_connector_state *connector_state;
> +	struct intel_crtc_state *crtc_state;
> +	int ret;
> +
> +	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
> +		    connector->base.id, connector->name,
> +		    encoder->base.base.id, encoder->base.name);
> +
> +	old->restore_state = NULL;
> +
> +	drm_WARN_ON(dev, !drm_modeset_is_locked(&config->connection_mutex));
> +
> +	/*
> +	 * Algorithm gets a little messy:
> +	 *
> +	 *   - if the connector already has an assigned crtc, use it (but make
> +	 *     sure it's on first)
> +	 *
> +	 *   - try to find the first unused crtc that can drive this connector,
> +	 *     and use that if we find one
> +	 */
> +
> +	/* See if we already have a CRTC for this connector */
> +	if (connector->state->crtc) {
> +		crtc = to_intel_crtc(connector->state->crtc);
> +
> +		ret = drm_modeset_lock(&crtc->base.mutex, ctx);
> +		if (ret)
> +			goto fail;
> +
> +		/* Make sure the crtc and connector are running */
> +		goto found;
> +	}
> +
> +	/* Find an unused one (if possible) */
> +	for_each_intel_crtc(dev, possible_crtc) {
> +		if (!(encoder->base.possible_crtcs &
> +		      drm_crtc_mask(&possible_crtc->base)))
> +			continue;
> +
> +		ret = drm_modeset_lock(&possible_crtc->base.mutex, ctx);
> +		if (ret)
> +			goto fail;
> +
> +		if (possible_crtc->base.state->enable) {
> +			drm_modeset_unlock(&possible_crtc->base.mutex);
> +			continue;
> +		}
> +
> +		crtc = possible_crtc;
> +		break;
> +	}
> +
> +	/*
> +	 * If we didn't find an unused CRTC, don't use any.
> +	 */
> +	if (!crtc) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "no pipe available for load-detect\n");
> +		ret = -ENODEV;
> +		goto fail;
> +	}
> +
> +found:
> +	state = drm_atomic_state_alloc(dev);
> +	restore_state = drm_atomic_state_alloc(dev);
> +	if (!state || !restore_state) {
> +		ret = -ENOMEM;
> +		goto fail;
> +	}
> +
> +	state->acquire_ctx = ctx;
> +	to_intel_atomic_state(state)->internal = true;
> +
> +	restore_state->acquire_ctx = ctx;
> +	to_intel_atomic_state(restore_state)->internal = true;
> +
> +	connector_state = drm_atomic_get_connector_state(state, connector);
> +	if (IS_ERR(connector_state)) {
> +		ret = PTR_ERR(connector_state);
> +		goto fail;
> +	}
> +
> +	ret = drm_atomic_set_crtc_for_connector(connector_state, &crtc->base);
> +	if (ret)
> +		goto fail;
> +
> +	crtc_state = intel_atomic_get_crtc_state(state, crtc);
> +	if (IS_ERR(crtc_state)) {
> +		ret = PTR_ERR(crtc_state);
> +		goto fail;
> +	}
> +
> +	crtc_state->uapi.active = true;
> +
> +	ret = drm_atomic_set_mode_for_crtc(&crtc_state->uapi,
> +					   &load_detect_mode);
> +	if (ret)
> +		goto fail;
> +
> +	ret = intel_modeset_disable_planes(state, &crtc->base);
> +	if (ret)
> +		goto fail;
> +
> +	ret = PTR_ERR_OR_ZERO(drm_atomic_get_connector_state(restore_state, connector));
> +	if (!ret)
> +		ret = PTR_ERR_OR_ZERO(drm_atomic_get_crtc_state(restore_state, &crtc->base));
> +	if (!ret)
> +		ret = drm_atomic_add_affected_planes(restore_state, &crtc->base);
> +	if (ret) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Failed to create a copy of old state to restore: %i\n",
> +			    ret);
> +		goto fail;
> +	}
> +
> +	ret = drm_atomic_commit(state);
> +	if (ret) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "failed to set mode on load-detect pipe\n");
> +		goto fail;
> +	}
> +
> +	old->restore_state = restore_state;
> +	drm_atomic_state_put(state);
> +
> +	/* let the connector get through one full cycle before testing */
> +	intel_crtc_wait_for_next_vblank(crtc);
> +
> +	return true;
> +
> +fail:
> +	if (state) {
> +		drm_atomic_state_put(state);
> +		state = NULL;
> +	}
> +	if (restore_state) {
> +		drm_atomic_state_put(restore_state);
> +		restore_state = NULL;
> +	}
> +
> +	if (ret == -EDEADLK)
> +		return ret;
> +
> +	return false;
> +}
> +
> +void intel_load_detect_release_pipe(struct drm_connector *connector,
> +				    struct intel_load_detect_pipe *old,
> +				    struct drm_modeset_acquire_ctx *ctx)
> +{
> +	struct intel_encoder *intel_encoder =
> +		intel_attached_encoder(to_intel_connector(connector));
> +	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
> +	struct drm_encoder *encoder = &intel_encoder->base;
> +	struct drm_atomic_state *state = old->restore_state;
> +	int ret;
> +
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
> +		    connector->base.id, connector->name,
> +		    encoder->base.id, encoder->name);
> +
> +	if (!state)
> +		return;
> +
> +	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
> +	if (ret)
> +		drm_dbg_kms(&i915->drm,
> +			    "Couldn't release load detect pipe: %i\n", ret);
> +	drm_atomic_state_put(state);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.h b/drivers/gpu/drm/i915/display/intel_load_detect.h
> new file mode 100644
> index 000000000000..9b69da1867a5
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_load_detect.h
> @@ -0,0 +1,24 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2023 Intel Corporation
> + */
> +
> +#ifndef __INTEL_LOAD_DETECT_H__
> +#define __INTEL_LOAD_DETECT_H__
> +
> +struct drm_atomic_state;
> +struct drm_connector;
> +struct drm_modeset_acquire_ctx;
> +
> +struct intel_load_detect_pipe {
> +	struct drm_atomic_state *restore_state;
> +};
> +
> +int intel_load_detect_get_pipe(struct drm_connector *connector,
> +			       struct intel_load_detect_pipe *old,
> +			       struct drm_modeset_acquire_ctx *ctx);
> +void intel_load_detect_release_pipe(struct drm_connector *connector,
> +				    struct intel_load_detect_pipe *old,
> +				    struct drm_modeset_acquire_ctx *ctx);
> +
> +#endif /* __INTEL_LOAD_DETECT_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> index 557ec5b62afa..07e7f7cdd961 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -43,6 +43,7 @@
>  #include "intel_display_types.h"
>  #include "intel_dpll.h"
>  #include "intel_hotplug.h"
> +#include "intel_load_detect.h"
>  #include "intel_tv.h"
>  #include "intel_tv_regs.h"
>  
> @@ -1725,13 +1726,13 @@ intel_tv_detect(struct drm_connector *connector,
>  		struct intel_load_detect_pipe tmp;
>  		int ret;
>  
> -		ret = intel_get_load_detect_pipe(connector, &tmp, ctx);
> +		ret = intel_load_detect_get_pipe(connector, &tmp, ctx);
>  		if (ret < 0)
>  			return ret;
>  
>  		if (ret > 0) {
>  			type = intel_tv_detect_type(intel_tv, connector);
> -			intel_release_load_detect_pipe(connector, &tmp, ctx);
> +			intel_load_detect_release_pipe(connector, &tmp, ctx);
>  			status = type < 0 ?
>  				connector_status_disconnected :
>  				connector_status_connected;
> -- 
> 2.39.2
> 
