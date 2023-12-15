Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 703FA814EAD
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 18:29:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB20E10EA75;
	Fri, 15 Dec 2023 17:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C8A10EA75
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 17:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702661362; x=1734197362;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=4dur2ygTrirt0CZmUPGpTeYwE/ImAc5QX8SPfB1EuAY=;
 b=IXFW1bWY52cncd+e10PGMbakh7yAtYMOjr64YizkUVaqk2nnt5ao2UtV
 DWbR07Fxgi38hm9adheP8dyqR4DkgXb6MAp5vS5XhEfz7VrNsQd9T75DM
 phZu0zLCgOmNHEwwVVXom1QK+BzXT1sIqvF72XargtnsE/eabpLISOFJb
 09tEt4ZWmFo5GFpHcBiSgKAVLXSRcHCTzOaRWqQjmDUgndL9TBTNs+y93
 nNk6gM9gt16YtszBXxN2U8j2DrWnSbT2Ge4gjIXa9hGJzagSqnCppkJ1j
 HCyjug15YAXKGLkp63GfuSl00E0m5QI7FNFefAJNrXucV1v4XdZtJLsOP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="2393004"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; 
   d="scan'208";a="2393004"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 09:29:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="16360403"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2023 09:29:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 09:29:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 09:29:19 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Dec 2023 09:29:19 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Dec 2023 09:29:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bbMnEhex6f1UM1vBJ5+kUHs1HAL0dRDOtgF8u+eMB+TSwcofehe/XAAFMblG+lQK++K3ytH5WhyP+QDNSJ1T2FGm1uTc5RsdrCOrhOEJa0INwGjyFA7YRD6zUTMPp+njVlzUTGojXcKIe2/JoHsopReDCsK87U+nr4+4V0PfAGK9eu6tg8R6yctS3IDf8h88PEDqaByfWExu2cB59NwbonTuNza7hR4zbqMpQW2F7DQXGCw9m0qKV0fTL6aQp2MaAVQge47iPosp7kkufsA0OTq9FdXnWbZYQGMIpRFe/yFTcdxJmwu38+0zkPBIOEkBvcYAmpkHYlscJe7/RfnC3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hWe+AAzxQS1+9MRGNadmRkRuZ6PmAHfOqkOe3H6z5jw=;
 b=cP9nEgUl8gTbdPyRT1j8BSy4Xy1rk0iy7e6xRLfg8HfKCKsqqXbNNPmXKcTmNwoGXQQMX8JnRGqxiEakGsoEIbOUO+50tYfm+65lTD0xMOGuKP193Kh1EHL1bxHT3a5SBfzdnmNFxG0rjSzSN9fFzWMIthHrw3GCs9Bl8CXUC55vX6zKtza/TCoX9SRB3998tdo+RzKgH/IpZ7r0RMav8Z4pm0y6ydeiFVhzvpmfXQMDOiK9+8Fn1/VNNcDCnv3Njt5D4tJtYm1hxDAMapzW6lMXMAmF7bvXEyxMhqDRJgP04JvrQwzZxkLvdnKPIXd2+Db0G14IPrQ4HYBVmKj+sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA1PR11MB8246.namprd11.prod.outlook.com (2603:10b6:208:445::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Fri, 15 Dec
 2023 17:29:17 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7091.032; Fri, 15 Dec 2023
 17:29:16 +0000
Date: Fri, 15 Dec 2023 12:29:13 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 5/7] drm/i915/display: Ignore only psr specific part of
 vsc sdp
Message-ID: <ZXyM6XdZhqzZimhM@intel.com>
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
 <20231214114838.1113648-6-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231214114838.1113648-6-jouni.hogander@intel.com>
X-ClientProxiedBy: BYAPR07CA0072.namprd07.prod.outlook.com
 (2603:10b6:a03:60::49) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA1PR11MB8246:EE_
X-MS-Office365-Filtering-Correlation-Id: aa26cd0e-33cd-4e4d-52de-08dbfd935ce6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P3QmwuV0IhAT0gek6rECkXMcwcGY9PrdtrwnSKnJxjnxrm92j5MMSJWdZ87VrJULDhnUAZ2ZBC2ylbrvmLqhaWKf1KOounDPYgGx7x6Hcb3+ncWEo0wIIXOPj77yRXap+onhJvpEQQ2y6zGXkwfF4EVcfimBK4eS5cO0OkNkzP9q29MlZuC8XhZwz9Kz9cEZDtpwCd7P1orf82t0AESt2ufKrpScyfNnmzcijak+DUNKsU9Dzee5Bxj+j98kZ/hcR8FvrzNdWx8Z/pyRBmZb0F0OebVTLVg7+ch9HjWL5Kb4kzZGNh1qop2OYIzbcRW2o0tyDdmemL0lc+q0OdMgKfdokx2eQYvj26mUyHAxiCrlAmuizNB69fYPnO7GjoqJqTGaf5CADqAfs14nT7zZk3ZBSBGS9vBIulRzUQ6ZyitmfEYxoDCKpT2tYtEB+Fl8AR8ZknkBPaHC8le4RV/X7k2CWuViFqJxhGQiyv9sEHa3pYZXQc3wcETGoWy/runRKQ2aNJzqffjs1rSGeP8WhByiAOZXTXde0zeaJ9h0KN8CcgqhCCSRcSeElg8t/3iN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(376002)(39860400002)(346002)(136003)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(5660300002)(2616005)(26005)(83380400001)(6486002)(2906002)(44832011)(478600001)(316002)(37006003)(6636002)(36756003)(66946007)(41300700001)(66476007)(66556008)(6862004)(4326008)(8676002)(6512007)(8936002)(6666004)(6506007)(82960400001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?SFuYs2nt/Xj4ng5YHmHnFzv6wIDiLaYqPJ6CZzB81cEcj4qszjr454E1yD?=
 =?iso-8859-1?Q?EWViazOsY1XLfIxf2xrFkoxmmr+nq6+HUUE1Thp8VUc3ORahdqde8X7vAO?=
 =?iso-8859-1?Q?Hxcfy0uhIZT3QrSe7mg952Jw522yeMGjfNzv/AYjdBDBxbTLwknjp7Q35P?=
 =?iso-8859-1?Q?1UO5vndO0HOsHkOu6mUdCP4uzDhEtgaaNV/GeSCHxGVvgf3FzgE4mTGlC4?=
 =?iso-8859-1?Q?d1oDS1oGzGNqFRZL34cLcoHyhAQQEJbYs4MGEMUaYmLZKdvtDBeEIJQBc9?=
 =?iso-8859-1?Q?O0LXgyb5KRdRQLglpVB46RKaguj6hZ9PPJGQsHsaJAxEVUB6AkF7bxz5TU?=
 =?iso-8859-1?Q?mV/BwsNOzIDV3P94x28qaC4yPKyVDLIX8CvmN38msSpjdu6Z/70ZkRl3T1?=
 =?iso-8859-1?Q?XqOV4riPahl8O7fIl/Ufq5LNAHqlL5+Nlmi8lVKe0jVCIlPkcqoIzKqmGu?=
 =?iso-8859-1?Q?5ltBtOOk2WXFdkQpD0D6ZJDej7Ex0vOFuSniJQtDdDAV/RoCB1yVI6tSp+?=
 =?iso-8859-1?Q?mbUPdXeJ1uHFZcG00Ymr/yjePdqlP9T+1rw9fIPZflOFRC9WdH+eE/l1sM?=
 =?iso-8859-1?Q?PL7hK218zF+q0tFiDC84GPgmn07BadoYzZN4sb7t02J6ZKpdHjheXYd82E?=
 =?iso-8859-1?Q?Dtq2NqWbCcE1tK/iGqp76hojosPDZ061CGI9oCarm1hLEFWL5O/7Xr2f6m?=
 =?iso-8859-1?Q?yz/JySVcfECOF6hemJKkfbjbzG3Pjzppxhs0wz10E+OG+XkqPc10yBylkx?=
 =?iso-8859-1?Q?qJGOccsj/eEfbEcLOEe1DtgPmLgJuqKpPeMbqgU5YN6SVFHP1AakWREHj8?=
 =?iso-8859-1?Q?QdVYBgnbYEYHJ0uTIS9252EZ/HwCh0GHiMwLKQj9P7QvN0T49S21+HdceU?=
 =?iso-8859-1?Q?E3WKJPFOfC6iw4rUstgYsjXNcWSJ1Cpj01HA0VSLFAvWGpHOjBm1Hm+R/l?=
 =?iso-8859-1?Q?7StBcmOfg06uDhrjgXjujCf4KsooVtsCJfBXw+pKFm8PKr57hH/zZAG0qb?=
 =?iso-8859-1?Q?HwLaICN/kZ1Nnzp+BKjOOoZP3dAZnHaio84cxXvVOoMOP91EM5UUhPqd3E?=
 =?iso-8859-1?Q?eFXB5jJ9R1MyoN0PPE29lfxUxZtUGUEuF7wVotRjUv7MrwK+rwFOxP7n9H?=
 =?iso-8859-1?Q?6UwJflSZyVTCgjnODGkEaafDv82R685zOpL+LAXwKZddELNDzwl7PfgoJ9?=
 =?iso-8859-1?Q?uHaf7v34yNUMUwEp7DoMWHjHDwHIHuMT+89JXORQEKm4q1dGNXrpde9GOF?=
 =?iso-8859-1?Q?/+4KA5co9lo1mze7jSi21KZVod5AnO3qtLSi1k2ZLtETcV8fCNe9JQ2xvz?=
 =?iso-8859-1?Q?21tqihHUEzFSZncfkCxtf81yhiDu0PMxE5EDehuL0KiQCq3mTmAtcZ3lIF?=
 =?iso-8859-1?Q?MPs7FdyURQvz8RMPmPai9vXmDG2HIvPjBKkvDMsJfyA6grrNR9R/VD5U4C?=
 =?iso-8859-1?Q?INFNGfcHl8pY8sfTc2eu8caRm382UQuXO8lC8yY2AAzBVSx4WmSSaJxamq?=
 =?iso-8859-1?Q?XpG2PaLULAUDKJqLUg6mi9Sdt5ly3+ZR3v55h7PfM01eXpejv/VVJ8J37p?=
 =?iso-8859-1?Q?923VTVZlHKxm8AKpSt50qGbQWOrfGXYv64AGY3mVgL2vqdYOtZeBNM8SMU?=
 =?iso-8859-1?Q?mJNZnJDmPgnOyAPgln9vkiXdyonPByHfIB4lSDClo4NbHi1dKWv+HsEg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa26cd0e-33cd-4e4d-52de-08dbfd935ce6
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2023 17:29:16.7201 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UnML7jqHxszlElNMwL0+vMXo1JDwNtit0Ri7ZFvVLxG4w/IwzguibO3JBnGIZwoV+5gEZX3k6UFcZTshIOTffg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8246
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

On Thu, Dec 14, 2023 at 01:48:36PM +0200, Jouni Högander wrote:
> Pipe config check is currently ignoring vsc sdp changes completely
> if psr is enabled. We want to ignore only PSR part of it as there
> might be changes in colorimetry data. Also read back vsc_sdp when psr is
> used.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 9 ++++++---
>  drivers/gpu/drm/i915/display/intel_dp.c      | 4 ----
>  2 files changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f1e58163277d..0faf84d3680a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4764,7 +4764,11 @@ static bool
>  intel_compare_dp_vsc_sdp(const struct drm_dp_vsc_sdp *a,
>  			 const struct drm_dp_vsc_sdp *b)
>  {
> -	return memcmp(a, b, sizeof(*a)) == 0;
> +	return a->pixelformat == b->pixelformat &&
> +		a->colorimetry == b->colorimetry &&
> +		a->bpc == b->bpc &&
> +		a->dynamic_range == b->dynamic_range &&
> +		a->content_type == b->content_type;
>  }
>  
>  static bool
> @@ -5045,8 +5049,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  } while (0)
>  
>  #define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
> -	if (!current_config->has_psr && !pipe_config->has_psr && \
> -	    !intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
> +	if (!intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
>  				      &pipe_config->infoframes.name)) { \
>  		pipe_config_dp_vsc_sdp_mismatch(dev_priv, fastset, __stringify(name), \
>  						&current_config->infoframes.name, \
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 635790ec2fb7..b7e9b6eb6f66 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4425,10 +4425,6 @@ static void intel_read_dp_vsc_sdp(struct intel_encoder *encoder,
>  	struct dp_sdp sdp = {};
>  	int ret;
>  
> -	/* When PSR is enabled, VSC SDP is handled by PSR routine */
> -	if (crtc_state->has_psr)
> -		return;

I almost got confused by this one, but checking the patch 3 again,
it makes total sense.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> -
>  	if ((crtc_state->infoframes.enable &
>  	     intel_hdmi_infoframe_enable(type)) == 0)
>  		return;
> -- 
> 2.34.1
> 
