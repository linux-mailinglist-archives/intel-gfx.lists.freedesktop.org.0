Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF0D8A8569
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:58:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE6B810EA80;
	Wed, 17 Apr 2024 13:58:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iKzhedqW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20A8710F619;
 Wed, 17 Apr 2024 13:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713362320; x=1744898320;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CE/NsYzJK+qYUrqAzWOCUOY1IHx6UKcf+EnXevjr930=;
 b=iKzhedqWOh7/nf1BLLiKd6nIoUHCk+O9AIL1yE3MoyT0HAOtvrjRDr7j
 7nAJiAJ3zeozAanizcZd1Z0rUGlmSvMaXw7EZmkmHBHa9E58ZPNobivvi
 ftT7VsoyHXohIk8BXz154at+ToUp43jz9zGffGumUvqkn6D4YnWrohnXz
 k+zZL4TqGSDM8zmXb0DNHbHzrVIYUDee7Wn/VNYpeDdLFTA0qr3vs9dnL
 2/kqMLNcPVyIpjolmMTPqRBDuDa4+Wg/OAYRWsP8Oh/EzZfPNbAaSzFsl
 1dd96i9VPjNXoMzRDba6eEOxmbxG+gh595sfl9eSH5yLvx1CRPVJnbCL9 g==;
X-CSE-ConnectionGUID: AmWmuY+fSAWRIHC6RMOGsg==
X-CSE-MsgGUID: x1+y9BIASZGYATbjmfvifQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8734115"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8734115"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:58:40 -0700
X-CSE-ConnectionGUID: WLCGqUTuRq6M0tPgK6k/FA==
X-CSE-MsgGUID: myO7d2nBRQqPpyL/6DdBwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="53845033"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 06:58:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 06:58:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 06:58:39 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 06:58:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D+Z+dprtszXCOQf0cdMZAx5e9wFnYKJjzmFTh8tlsJQyo70thYLiNM5ZvVPoMJCEou+OeyEPvXE5S5K7c/nt15VVLYLmuEh/L+Na3D8VG36Xsv9Ym3DQL0oECaLjUIR7QIsqKxBFglpSBH44oX4F+D4pI97DTQ30Wu9x79CGbMrXZIYX9jSUUv2CFwmMIqM/P3WH6K4fukLql0LvkDdT5xywCXUYgHlXtZWmX57U8OEKtQYCf/5LLOcVbsMASq7jiMBDaeMiamqteAydTEI3Xm2wYrqp4BN/MQaZz/IcdeaJwfIBkuT1JqTKYQL7wxTwBZ72eAtfN03kSaqP4TedgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lcWLwmhd3SfJGZvCsN3J5ZPgnzlQ/jnJt2ikIGCUVls=;
 b=fB8pjh1LX7lrcQm6qGwDXOb6AcRBcmIqBAdvtt2znDI+rMFfpeEV5olsmj3m6pSsNqC3icN0KpL9RmIJiH9y1P10Y1mh6qoJkcxTofeBxQsDxTu4OCEwJ07BcBus1Lm039AUiHeBGIEOJh+TEfMlprfotvGXJ0cdJ4O+H0B4Fx039KgE3vemc6jVSmNO2CFEcTPLTWIoWJ7fqWLCwuMlEZiaeyq9vUgfmP1AH0JMMiJZGCcp8ExJuvZkpPDzVnz0T4SMTiXe1nDs4PIa/EWajMskxuu9YzsG1WiwZ6JVzjA0KkucbmmfRBR3LFDA6Qg/FH0LnAcM5tE1pcqY+AGKFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW4PR11MB8290.namprd11.prod.outlook.com (2603:10b6:303:20f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.29; Wed, 17 Apr
 2024 13:58:37 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7472.037; Wed, 17 Apr 2024
 13:58:36 +0000
Date: Wed, 17 Apr 2024 09:58:33 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Luca
 Coelho" <luciano.coelho@intel.com>
Subject: Re: [PATCH v4 4/9] drm/i915/display: accept either i915 or display
 for feature tests
Message-ID: <Zh_ViTFv3gpHrCQt@intel.com>
References: <cover.1713358679.git.jani.nikula@intel.com>
 <bed78da39e6bd1587db4dab820602c55c63cdd6a.1713358679.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <bed78da39e6bd1587db4dab820602c55c63cdd6a.1713358679.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0129.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::14) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW4PR11MB8290:EE_
X-MS-Office365-Filtering-Correlation-Id: f129a97d-0042-42cf-4620-08dc5ee67a48
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9Iw7JAtlAZhHOwLVBRjXgR9a7eGuMWHEfyGs1WbilpqxMx1ANHtArWrIh9XKunbdXl2wSNZRA6T9nNZVqg/7B6GjU0ABDzjFpdyjKJpJbcR33kgF+Q+1Du/x06KL05DX/zO8OojVWrue/0aJGrVHqSrjJMs8Q9LBmag3J1ZlyuMUFxzp+Bt0TcapGcJq76Slh3mwLeLEQPIBvPR+jUOtg72JE5uV44QA1XOEzdpkR2b9dTwshRbB9zXuLzYh89JuTYyyCNJ9UboxPsGXQkJcoAN4JQPOCJg0f12A7goUE8hw0YwA+ztco5WzIrhsK3yYf4+vlw6DCaMLyiEC4kMKuAc4eITmt6Gv00WeYp2pJruXRtGbqJoc/YYCQ/Wck4Doqrg7KU/ywCwNpt6AgZH6glWftLpG+G1m4/fZcegYOFXnVLzMLI/5sO5hPITf11lJECaMnBc0lTvcV9qlsS+VwP9hwSi8ZI+gFL4nsTtDeDY17qX/WNvuSpFPsa25T/dDLtOKYzjXpoampkciLnrXEfmhPbBrqhG0wG1ItVRKlBaBDPfZGio8ziiO4xyORSVMvlbLOpRxbVlOeTz5F/T0hopSo03JNjT/zOz75lGDevVh8BeW6wsKHdFzj+MACGyHjoDYYcg5OOpF7o+S2msOLo33EvDqDpJkvlocnXo2t74=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6TXdt3xiZKHORwjQkL+p4h8QlMGrtKH51nX4lsmWdGD8h/6OLAZGPOmFt3g1?=
 =?us-ascii?Q?Dcq0t7wHD7g2rEQsP94PTZnWJ6+uKFOXN36Rmv7ei+j+4mGEOkIMnMNI8q6K?=
 =?us-ascii?Q?SXU3vPNraeAe0rfgwOkM8/RD3nk4tLhfgeaBwCmdXic6A3fnkucxWhGkZ9CJ?=
 =?us-ascii?Q?KZZZItZp3s+t5b/He1o+kvvlqJRW+3MyW7QH3awuY8zGASQEIL7PtFXLN63T?=
 =?us-ascii?Q?ae3zWTGeMqAiJ8s3mzKhOfCuMpaFrlNjK4O7W/7zcHCmVowwIc+bxtjQk92S?=
 =?us-ascii?Q?SnOAUO3J8ymYLMnjgDWMm1aoGgBnWvfebRtIqSm+8cCOMkEwdiEaYQNflQzZ?=
 =?us-ascii?Q?gcqlrTSs5LVC09wnzBDKY3xCkmY68TzlVjI8RA6NZjrQFRtKuMrQUI8tbEXh?=
 =?us-ascii?Q?NBciNpQH0h73HGzfqIugy2NTV9NOJijh+IilSS/tHvgaIjs/81AJ/70Cg2mZ?=
 =?us-ascii?Q?knVJiuJRDCApHUsFvqwbu6lUrRTEzDk/iueRKfK8tbWJdqvvHKg3vHc9YzwC?=
 =?us-ascii?Q?D1h4kqiXPvgNC3VEpEWs88XFFhJn90pdQ1ozhkhpZdmEY8bdMWUnPH5zican?=
 =?us-ascii?Q?k+4PeCh91Tp6LABKVH9csocMqaXpB/H9ZKctZTP4vyiEyHmBJo52IYpEmT9e?=
 =?us-ascii?Q?FrXhNcykQsv5WeHLOh5/ZBOnskR7mNv/ofmXd9T4VqDDMwuvsyjj6ZkGUpc4?=
 =?us-ascii?Q?r3KDtEneFDU03GvT+JIcxva1AC3oRLe/8iVCUVxwWbgHe4jlhlLcXa+aPT+4?=
 =?us-ascii?Q?bGSg5EMcIAtzykdsTnriLid3nemWgPSOKyS5G4W2y1JWdAm7XL0Pl+J4NNxi?=
 =?us-ascii?Q?XqOFfOItBA2knfR6ttvn1CsyQYEwW9j7SItcPa8lKTime3TjSdHM9ITpELag?=
 =?us-ascii?Q?t03T3M1s1Ue+zQ1Ad6V02tkyoV+2/LIjNukfTevNEcfRRYpivc649tKST2PT?=
 =?us-ascii?Q?vLbHKRN5pqWc9g+iUDtuVUnyfaOHAtr4ORxF1qFjTMrsRRyCGMG60q7jB4Uf?=
 =?us-ascii?Q?ROC3Cmn/Wmvl2ZkDBrpTOlYOePl8p8upRxH9s9ODBwKDyZaEH29uMtTje3+Q?=
 =?us-ascii?Q?PIm3M3TCWa5RNS5k6PoK7THan56CfTs/2wtuNX9weVl1Y7S4gnRNR0EEpCM/?=
 =?us-ascii?Q?S0CJ3eyqjKHY5QVS23saOo719UFsABgEsJk2QyiIxN/zHFjt7lxkzVueAFTJ?=
 =?us-ascii?Q?yO9blTsopX2rWjVG2yw/wikEgl+XBYCzEpru/DOif9WeQzpfzOfqlt5l8xaA?=
 =?us-ascii?Q?XzDcEvraEqtRV7nDyimnvffZqPRc4PrFQg64eW3Wd721UodML5S+QQgO4VmX?=
 =?us-ascii?Q?CB4IbDi7bhFmYsuxe2hLtXluRn5OlHyDPLpKh5+1kDo0tSD2Gb4bUbqlUcPZ?=
 =?us-ascii?Q?0GYUOj9DFZguKVOrVFwOIcEZrf+PWMECrymjAEPPA/T/sPUZfcrS7Wuk7CAZ?=
 =?us-ascii?Q?uNY9rE8LtHKI2p4EDGLPrGoz0EDGuZbzoQBD/aFwHGiR3vFXyUuBBqL2Qwro?=
 =?us-ascii?Q?IZfoFJXuAu/P09uo4sruWvrhQpqI+90fRkRKqQXtuaU13JuTyXiP+gnZ0Eh1?=
 =?us-ascii?Q?+cb6XV85RAgHRpNUH4H0o/oOBp9u9M2378e8rWald2Co+vvFNaDhYVuj1QLu?=
 =?us-ascii?Q?kw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f129a97d-0042-42cf-4620-08dc5ee67a48
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2024 13:58:36.8507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MlSy2i9GLPWOmyg7Ek+tOlF6T6oYX0x8oTMmm1vBQFQAH2N1lo/4OdzbVB6vqERlvRVkw7j4E16zyI2kbOYPZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8290
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

On Wed, Apr 17, 2024 at 04:02:42PM +0300, Jani Nikula wrote:
> Use the generic __to_intel_display() to allow passing either struct
> drm_i915_private * or struct intel_display * to the feature test macros.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 66b51de86e38..17ddf82f0b6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -8,6 +8,7 @@
>  
>  #include <linux/types.h>
>  
> +#include "intel_display_conversion.h"
>  #include "intel_display_limits.h"
>  
>  struct drm_i915_private;
> @@ -100,8 +101,8 @@ struct drm_printer;
>  	(IS_DISPLAY_IP_RANGE((__i915), (ipver), (ipver)) && \
>  	 IS_DISPLAY_STEP((__i915), (from), (until)))
>  
> -#define DISPLAY_INFO(i915)		((i915)->display.info.__device_info)
> -#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
> +#define DISPLAY_INFO(i915)		(__to_intel_display(i915)->info.__device_info)
> +#define DISPLAY_RUNTIME_INFO(i915)	(&__to_intel_display(i915)->info.__runtime_info)
>  
>  #define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
>  #define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
> -- 
> 2.39.2
> 
