Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6936F860516
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 22:48:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A78A710EA98;
	Thu, 22 Feb 2024 21:48:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ham36lGo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6126D10EA98
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 21:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708638522; x=1740174522;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=CBnw6BwFDYM+X7+Z3HskqRv/nVwt+1n10HTDk4GrwgY=;
 b=Ham36lGoWGF6N/D1faKtmodwWzc+X2D75i0pa3kRRBPV2H3UBy2Ej8Jy
 7k3yC8rXi5QDzWCwD1b5MVHbCaeiuzWY11UnulLTTzh37Y9a1f9lT/l/2
 qlYA74rFITPKGMGyNYSJpNbyPEcuhjXYzuEk9JOLuWF/jiFk5v+Uabj1b
 16e//hPLEc9hMFO5gzYPS2cPKKAIR0eMwvLXAMuhweTVeUNWrGm3LEIS8
 PuQiUuOsd5RlYPrBicHV9M2pHEFYs6KpCM46qPgI8GuZrSJhY4BHH7s98
 TK5+56NXAvKLEERtIWK+j6G9I9vMmhDNs/xQyiAo3YWZqVUR/loKXgcN7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="13524932"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="13524932"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 13:48:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5996242"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 13:48:42 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 13:48:40 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 13:48:40 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 13:48:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WfVZ0B7T2qjnKeHije63IrDsJOH1Md/fYneqr1RCSKKU1/xREF9pJKQJI8E+pmvIOZPl5ZLxQwV/x8a6eMqnbVMQaR/zynUnUiTwufIeBHSN5+MGgzXkek+fo7BBZh//2MzfsPeFjPsQfxOyzqUxMN761Wm/wKhwPSBL8UIo8UTgg/d3XgKIozO63boWNz9zTvwSnUijNlUVCUbPD5hHWnF4nG6zW1Hk91qeRQIfbeUPseXlLXWXVasZqsjey+z71OsFXXWBmBlZGzPe3cbW+uTR16sj2OYglPmQw8slKuEA3TUh2ZZyGI2feleoKBE29qITLenj/JWuvpXDLCzECA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rvLaImUDR0Jkc6LL6iQWlDzN1no21Yu/5ec3AdoSi+k=;
 b=oadvoxWJqvkJHjDkm4wexm2QJEGPcDgj956rg/N7DGO41/OHo4OL7fuiAkUyWOPAPcwQjFRWdWdRFzT4EqNd49Oo5UArngfzeDYP6i4i1KBx04jtUyeZS4Z0A9BHIXbmk1My6FphIfKTA1wC/nStoKZissO7/dAgGkKndXcIVPIQf+NKVXG2iP3XjS0usR/Av26BKwqcEoNtNi9AN9qS8xBd1T5prs7TYuX6yHpsNxiMJbEQZOxTW9R7B4+KjRVz0x1PYiMNurKmNVMZo5ovlZvxEwW6/jnFO4R8/epFtw26oOUORkS++sr1DA37vDFA4NKzKZuGtKbVOtGS2vvDWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN9PR11MB5371.namprd11.prod.outlook.com (2603:10b6:408:11c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.22; Thu, 22 Feb
 2024 21:48:38 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7339.009; Thu, 22 Feb 2024
 21:48:38 +0000
Date: Thu, 22 Feb 2024 16:48:35 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 03/12] drm/i915: Include CRTC info in VSC SDP mismatch
 prints
Message-ID: <ZdfBMyQ1ozd5QypW@intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240215164055.30585-4-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR05CA0007.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BN9PR11MB5371:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a298ae3-ed90-4f81-e0bc-08dc33f006e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W0Fb7NVW/xhD+xF/qCt+J0jfAo866MUcf4Ywiumsk9oZeMA6WvIQy45k8y87SGopAYudcb1TOiCdwlK+HUrs+8oHF8tuBKk6BKoyGo3+u8D9QR/4m0wm91MHo/2rnSbIiTlkEommr2jaX37kthmxct7arHyowXT151FwOeJ88iMZZcDYVXDQ3CXBaByWVTTUwVOCDhJJX2aYzmcy5ZsfOJq4NeoBstP7y0q2mQ3iEkj4DuIdCDftPBMWrTd82NO9XPZJic5xC6gnDxJT8GE0EfY9UfvBwin/K+EaNkE2xXisO23+WsCa4bvoQtuuDsN1c07lvb58IgjfA8R2c0Ve6ZARcHXuijawv/c+DaCcNv6qdEwr7370v8fovwlK6rbnNLfInCuXGw67GB0fIPOdH27TWQ7+MF/N68dGyJXBbwthWvb5Hi5lDslqtn6gWttw28xO2Ik2LIB24Ht/YU7WyiNkA+IzUMII3z4yjUk8oC0StIF9ysFodIaeD0V4rSQckETQ5aZcW1uid2EcPP+zYR6zaXE1Vu0opdrOtyQCS9o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?z887jrLULegmaMFi+s5IfFQDmXDe/b7/qTKvxdaBglIRhVVYzMtQRTodgR?=
 =?iso-8859-1?Q?DqoB2WXTUXz347f7yQ0/HPBsaPss2OAoo2ZYPKDwgh07zTfimtT3FIGWYR?=
 =?iso-8859-1?Q?PyBnH6bbdrQMX6q0JzSG6Yg2HKHgMUaGggOVyJHwkQay7TAPpddyrHj5DR?=
 =?iso-8859-1?Q?tpMfWW10aqGBPqliw+cfscVaqcLNn3ZVAZDovbjUt5s7Kmr/bIbUD+Q/+2?=
 =?iso-8859-1?Q?U/y1dOe2sTGtVgy9WB3CJBr2tcAo3QvTNQQyrLSAzWi1odyq5+vbQvvIeI?=
 =?iso-8859-1?Q?n6zkJVKXIMflaXfKfWGkP5KILnNp7bz7A5tu8rzE8AmdsFt95ylxQrqxn9?=
 =?iso-8859-1?Q?Ag+jAVScBfh72bD88g8eKHt9HFWe00grdFVYDuwle9O2ZUsv+y68tj+zyZ?=
 =?iso-8859-1?Q?CaFeiMq3jjktr/hCKCVwIpT9nbQ18snNmDG435huPcPdcB1S1/GeVDpFLC?=
 =?iso-8859-1?Q?il+EDe6vSF+1dFWX9VuPOLsVOA+ADwsgDCAeFFHdw0Wilpuwfty19sk6Vf?=
 =?iso-8859-1?Q?VXrAgsumPLwzJ82Kz79bITazSUlB2+z8q6Xa+DetyGqDZs4mB0YEzA40X/?=
 =?iso-8859-1?Q?eu1h46HVKG5eKVvLiv6mLtDFzAThEIIvaSX/qiN4Ef3bGN3X2tqwFGZDnK?=
 =?iso-8859-1?Q?isb478t9fhwh+7xgbdVhmL7+9OP0H31GkB/ZFBi/yeOl8g8fQZSdPwojD8?=
 =?iso-8859-1?Q?wyVeB78XNW0/8unJjCpk6t7xCk+dJ2oUWqwCfBJSYJCCxuwiSgmzhlBiZP?=
 =?iso-8859-1?Q?2OSwhBdRltDbSpQE78Gwb9k6TX0cEtMSaHoyZZHAbbg2NwHvW9pOvB7ixs?=
 =?iso-8859-1?Q?EhqCnMXRlEvBxA14S9l3U7kjAySFKHe3GMr+ulgUcNYvr9YthCj1GnsP+I?=
 =?iso-8859-1?Q?1sjNOoNNaMZ8lhDN5FLIqCK8pEi4xeS6mXKG4sLtX89eVgvdn4o2xGoQMh?=
 =?iso-8859-1?Q?aL860e7xd4AGeamS5PCGVRXmsWUZsspBg9g80sLXK5uvQOxDPv2BeLSU77?=
 =?iso-8859-1?Q?teXrOG3cP7Wufr2dJBX4BawvD5L7czZAsw1al4upnlhYC4j+ueJ0iomN8q?=
 =?iso-8859-1?Q?6w4iz7aqTZ16akr1HHUylfbsNT5+CT3oXNeLpNidZBtCPwQqqYNPYSNYSU?=
 =?iso-8859-1?Q?NJAgXHqRDBItKScOJN7wW2o/qCk/DsmoQ/3+rnART1ejuOE3A7olgUIi/b?=
 =?iso-8859-1?Q?ZjrfWir9MkbNzEfVSh+D+20q+xxBuBwVUAKcrcFTYa9pu242v+S2Ro+zZM?=
 =?iso-8859-1?Q?5xiHJ048eiFfyBtjjV8TzriZ7TkFlnxqKO1WuNOuaFej9gs7dMa8V8JIBe?=
 =?iso-8859-1?Q?uE3e35PEYMSMAnl7lmogNapIhmVqTk4H1PYwxZV5I5YjPEE4//alkkLhTJ?=
 =?iso-8859-1?Q?cWapHbfCxTSBVf5Xs8ppSOKHbPADlc5Q4OIhKYH/pezMxx3rFeUFlGUzGF?=
 =?iso-8859-1?Q?Ga6cZP4DX+rVlcGMvZ7jdOfstc6SGesjQ5qUne6mxg4Ma+4Hz9xluHWyjZ?=
 =?iso-8859-1?Q?0By0Vci71zG+EbJeSvF/yVEPw4skgKToeevqgvDV+M6eeMIHTMRaUwJQGq?=
 =?iso-8859-1?Q?7g9zpAeRQrMcijsPtdqaD3/5pSxJp0qV+/GLE5iZh0+YkUeg144+mVdLB8?=
 =?iso-8859-1?Q?Go9sspg2peQUubakw2Pnqvl/nEV83r/1m3+kpf5dnRsu75V+oAC41Gfg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a298ae3-ed90-4f81-e0bc-08dc33f006e9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 21:48:38.2620 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O7mv3EdlMd+uMR1d6VhNYLOOWKOHSeU2HgZKRvlWe32DX+N8Ip315F2Ooaims4wjWpIr0ZvD9K3X86F4Hfl73g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5371
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 15, 2024 at 06:40:46PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Most crtc state mismatches include the CRTC id+name in the
> prints. Also include it in the VSC SDP mismatches.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e3520a3da468..2aabfa154d8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4817,21 +4817,24 @@ pipe_config_infoframe_mismatch(bool fastset, const struct intel_crtc *crtc,
>  }
>  
>  static void
> -pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_private *i915,
> -				bool fastset, const char *name,
> +pipe_config_dp_vsc_sdp_mismatch(bool fastset, const struct intel_crtc *crtc,
> +				const char *name,
>  				const struct drm_dp_vsc_sdp *a,
>  				const struct drm_dp_vsc_sdp *b)
>  {
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	struct drm_printer p;
>  
>  	if (fastset) {
>  		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
>  
> -		drm_printf(&p, "fastset requirement not met in %s dp sdp\n", name);
> +		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s dp sdp\n",
> +			   crtc->base.base.id, crtc->base.name, name);
>  	} else {
>  		p = drm_err_printer(&i915->drm, NULL);
>  
> -		drm_printf(&p, "mismatch in %s dp sdp\n", name);
> +		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s dp sdp\n",
> +			   crtc->base.base.id, crtc->base.name, name);

ditto

>  	}
>  
>  	drm_printf(&p, "expected:\n");
> @@ -5086,7 +5089,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  #define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
>  	if (!intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
>  				      &pipe_config->infoframes.name)) { \
> -		pipe_config_dp_vsc_sdp_mismatch(dev_priv, fastset, __stringify(name), \
> +		pipe_config_dp_vsc_sdp_mismatch(fastset, crtc, __stringify(name), \

ditto

anyway

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  						&current_config->infoframes.name, \
>  						&pipe_config->infoframes.name); \
>  		ret = false; \
> -- 
> 2.43.0
> 
