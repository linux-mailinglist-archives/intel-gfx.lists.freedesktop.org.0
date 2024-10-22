Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A196D9AB559
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 19:43:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4022D10E6EF;
	Tue, 22 Oct 2024 17:43:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e0SDa4jI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E43BE10E6EB;
 Tue, 22 Oct 2024 17:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729618994; x=1761154994;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=69g0a7dw0LwVg2N+6+/uVlmL0Zwkjz5/H+vFS6rfD+4=;
 b=e0SDa4jIULSWvtDigihBnszCgPI+QfNTOEWD7SQ07Ya5kY0ntFIU53TK
 cPZ1Kl7OkysgJn/Q+vwEXMiD972VKFy6/G9Dmh1/rqJ2jqhrYC+L9MPO5
 d9DZtRHkIK7u0zaGpl9A0GdJfa9jYyKaZZGq1OPEWhUxkAttR/zyBrm1K
 WnxIme20EP+bj/bOzefG++n1wUOrRl5TNzaISdickJf8LlCUNiWQk+Rw/
 7mP4U2BS+Wwyp51N9UjivqSF5MYjP4verT/tM5Ci3u2aZd/N0XvCFcZ0f
 Kotbk1LcW1Ildym9geMkhruXjhDaGiKCuVUG/a2EwRhc80LBieX2e75pH w==;
X-CSE-ConnectionGUID: McO/EABJSVyUZsMpgx4spg==
X-CSE-MsgGUID: VldOUIQOS5Cg2KGpkgrXVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32981384"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="32981384"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:43:14 -0700
X-CSE-ConnectionGUID: MFyCIIY+RIW0WwbybkpHtw==
X-CSE-MsgGUID: mVMW3DwVTGCrket6TLkJjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79599703"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 10:43:13 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 10:43:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 10:43:12 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 10:43:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DIZm8leKbYvr9zQ/3IBoqTaban7Hlu84d5HKTrZjq2Zwl19XnHSgPjVPUijX/hGjdRw02UZGKELYgXj8aLmE/QXEHrNIbtqKCDtw0mrD4Qz169KUC77mipCtiZFmoap4XPFdySBjmJP7yAxSiPMaKcuAZ+eol192+FT3/7pX5yL7iv8Uu/pi/Nd6hLjfRM4AcpT3Z2qqiyUMxHKL4ezw7Sk0DEytP4nuqgUcJLq485Uy0rc5VSy+GIzylx/tT15GF0pObiv1exy6IQKhWeUbROaxtLKtlVlHuZ8Py4ICW8RTLTZNZNTTRQH5x8HVEW5DM7Su1lq9fVg52NmbLoxPQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1f/+99r9Ny3br3A4ArKmpYLBgFyNev23EUQiU14bjlQ=;
 b=c0LFyIFl/9Cm9xtQkN72SPkd4mPDZnPn3+ta3O6UJNJx4F2hDcgTISAbioL9A55Ho4TweZp7yDb3fI97vduVCfuy7OrlO14OqSntdvwBON36fSSZCiF+Lq/7AabpsDesQkCPn/3dZrQZuQKaMEZbuRD1XQLZQHvzIukyUJFqnkK7SmCPkQ9BIDtA2d0pWnZNGgLh+NON0DRrhuRpBhwwlm1/LTS/0ziqIsM9dc3Zs97R9Udrv6H1EL662VClz3lMOabJU7qFnZIOyaoxzab8W7RlcBWUQa+KGCkbaW3+JKguP+0anqJUngu4vK0hZ5QUd0Z+GPETW6oBpTG07jhUwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB6836.namprd11.prod.outlook.com (2603:10b6:510:1ef::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 17:43:08 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Tue, 22 Oct 2024
 17:43:08 +0000
Date: Tue, 22 Oct 2024 13:43:04 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v4 13/15] drm/i915/tv: use display->platform.<platform>
 instead of IS_<PLATFORM>()
Message-ID: <ZxfkKGf4m4IRq4nD@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
 <39a8ce57a5e410e77ee7a22d1c99c98d12db2ccc.1729518793.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <39a8ce57a5e410e77ee7a22d1c99c98d12db2ccc.1729518793.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0250.namprd03.prod.outlook.com
 (2603:10b6:303:b4::15) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB6836:EE_
X-MS-Office365-Filtering-Correlation-Id: ed5ca88a-ac24-45ce-1d18-08dcf2c0fdd7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?74HRA4L572b/Z5AQyDgzJhxJ/ml9jiRTkMhIJnMncebNxgg7ycXpw/+PXwuz?=
 =?us-ascii?Q?P45bLdT7kbegdgCp6XKdtENtJqZYRzl6xPHdxyzr6k9KsGn2yTCS09XUClCS?=
 =?us-ascii?Q?C9G3Lh5jL4DetXWGeNT63aXa1VclnzW9d5n/0LonfmY1UjmdTRim+MkFcwIA?=
 =?us-ascii?Q?6N4yA7ZsmCuiKK4TNSSjeMSWl6Pgmz/hyvY88E+MoDVH28FQrba4p6WvNQ0w?=
 =?us-ascii?Q?FZUuD+oq8QDLcanmtAq1m41rwUq6eXIL49NCvZ4fxvsrZPpbeNejcK8Z+EFW?=
 =?us-ascii?Q?786BitVqghvcWUqqRXoRbbjiMBPNymgfZ9cITGE6QmajWRZNMILrOrX0RTAz?=
 =?us-ascii?Q?+zoN4EReu5+vvDVmsTR9ROqoNsmKwkIJXkah5VGMwZ4oAMRr2cR0aw69iYH/?=
 =?us-ascii?Q?Bug/R3fVYmzJblFX29Qosx3p7dZQU81JIuO5bDgAOX5uXlHjddpXoNlWD5iw?=
 =?us-ascii?Q?AMGHkVPx6i1HfRuVpV5wwlO1APCjC7HksA/lwXiXbuNi4YwwXFCGN2F1ddLD?=
 =?us-ascii?Q?bVvyalokjcn/vEcuydva/dbnaEWqv9KH16TYWzngl2ARpab5mdA8TagYgJ8K?=
 =?us-ascii?Q?QNiI6U+AkVUy4W/Cb8obXFEjrFUMww6N4OCZ+369W2fAmGA1meNS0py+CmqQ?=
 =?us-ascii?Q?l0kbcOT3afK/W54EcoHQ8zpqxXdYIwapSaILFoL8Vs2sgXP5FOqw8Y2Ts0nV?=
 =?us-ascii?Q?SHOQmDT3OX1Aef5t41UodWZwjil2CJi3FbnvDntzsG3xCt0afKTwwKvjAq+K?=
 =?us-ascii?Q?itx6RBvUP2K0RzPN8MXm7K7/gv1tUBjvUqa2xDIp1ilHwcKYdIYtIWve7Ls1?=
 =?us-ascii?Q?HVIq2+0Idi0/5eo2m36Fl88smAGa0pATHyWbiz+VuBcdE5pQEMrolsPiY7tM?=
 =?us-ascii?Q?ugeidXCqoTLvmnSdoqv7wAULxUucW837qa9JvLP1p+Ij/LL2dpyuyYJSG3rM?=
 =?us-ascii?Q?gVvXeoRjTBa1FR8Fj2+h47eO6+D9u22AdEiKMYMJJVmd7zF59ZVMmGAh9Anu?=
 =?us-ascii?Q?JJ21yqt/YfdiMg1raD2KVMRGk9dALd/Hk0m/L2RG7R2YK5GxjCcBJn3D2wdR?=
 =?us-ascii?Q?YwXkKzX+btTfGADxNyrlpWL2/DeZXLabwoc10wAEmAVDYY/c1ExfhndXNinw?=
 =?us-ascii?Q?2haXf7GcET80w/KCHEDaY8Yj8EIE/yIqKWRou4tzNb473pyj9L35s6p/46Qo?=
 =?us-ascii?Q?ptRynHFYIYa1rZyerQjyKn/67m+Io75GpOSrfdyI2HT7bnpfg9hhikrwHGp7?=
 =?us-ascii?Q?sT9aYLP+l9bzs1va+K+pu8J1ar/okDhfCrAorOO4xPLqoHMevA3TN9KY4Vrj?=
 =?us-ascii?Q?bmiod7YOyRatBOA18eVed7HH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?b0WaU2rnjG8iu/9Nw+lINqhtJaWumDJh1fR07yssAJtPSo5jf82RvHmXE/QZ?=
 =?us-ascii?Q?T2AAmN0PrviZwbqePVc1CrMFt9MKZtapHd6sl94KNYTK9CdqHJyF1bOLU/HR?=
 =?us-ascii?Q?QG0SLgpQzptt+8bQ59y0vvMEP3uoAI1SMNDsKIo29CtpeQgrhVqKLKvVeTkc?=
 =?us-ascii?Q?PU+wEZf3j6DxdBIPYZ8rYRcx3KMfsdzPhGcVJos+3q3g75ku0N8Ud74BLX1G?=
 =?us-ascii?Q?4tstz9UnFWFHeiA7k8Xzv4lEOGpwXagvgaqZEwU49+PUNuYOHlOBz4YYi6XK?=
 =?us-ascii?Q?NABSsKvRpK/XcIlgDRs/VB0+e312jhKZz/l5vVVT/EetWDNstR+jlHTCNmbX?=
 =?us-ascii?Q?iHVSan9QjdgWCnBHerqZt3QefVGV7FNg7Hsv9nrns2vUyvf0LqCAXkrzFcJW?=
 =?us-ascii?Q?nFIlZbM00oiLbtqDcWMGQCjtZr/GAjS7ZdVx9dSmzoqEtukPLBn1y2YmRBNU?=
 =?us-ascii?Q?xPnKjPXEontyP63hulGOJFLjAqiwOCCJu1OA9XdsozSXcZn2o2/b0OnarsDL?=
 =?us-ascii?Q?iThZh/VukubuobPdr1pYCboclDFXLIDcQBBeTfeCQ3SOkACNX7SxZ0vSR9Ud?=
 =?us-ascii?Q?QuFY1FWdYYi8L7Cl+0KIM7mI2jEMiTLVDrGdVeBstF6bkQJyDMRGvrSHbDg7?=
 =?us-ascii?Q?PuexnW2O5waQ/l84rWNd7+aOJcv8fqTCwPGXZe2ziQN2v7rGBYU0QVbuxFRi?=
 =?us-ascii?Q?99/xEpc+5pCej3iI13Q1W3Ze+kEml2F7stCh0wk5SQdDEf9UFDYDRvbafRsX?=
 =?us-ascii?Q?Iq6IvM3bikNHnrYv6jlJJgOCs6bGjifyfwzRGRQvb2jXcEbYRAYv2zK0dMp7?=
 =?us-ascii?Q?dChraleuhHwR/DTYI2sQ1MRztbmn3061SGNlg3j15Nc1iSlh8geocov+UjRz?=
 =?us-ascii?Q?CsUjbWq5f6DHhnqKGCH3NsPoC3l6OFPIf5p4lbUabYS91UOkVDsxDzGv9M2Z?=
 =?us-ascii?Q?ThIGDEGvrx1GB/fmCo+felPu8e+cwuTHA8S9yUEQBhnhKt4+IW0L6VcGkQjq?=
 =?us-ascii?Q?PdeemJksJPuSq2I4JJil/nE9sA/0D7HV0AarOkDXgoesdLMQ8HWqt+tIcMvb?=
 =?us-ascii?Q?erajsyyE0gRcitxQFn4XXgHvC0xTtuMMlh1HHUQMDr7iFceLsmVV6+J5fzzy?=
 =?us-ascii?Q?wlg6Bot1U93szGDgnOEMxlku8mOiPLlO109MuM8i0R8a2WmAzhLXJsL6HxJe?=
 =?us-ascii?Q?kSQXyHeGlBzJp+PNrCZwxlCqosmbG/ShCCcwUIDzCdwaMP4Rmg3TWDu3mvlA?=
 =?us-ascii?Q?vc9jxB0o4tttaqLJGyEbkNyRb4YeS/FItexr8WLrEX2IdSaqD0SodgRsfbSd?=
 =?us-ascii?Q?GOzUpVlTpLOJO8Q8e7tPgtGJaOgtJUt4nxHHdzUpAtgNO7YMf3qahRl8A9ak?=
 =?us-ascii?Q?mh1isTmY6D1eiv7eAAyHY9ryvuq15tIL+qOsJncS1PXbeiYuk3X95AfTgL3R?=
 =?us-ascii?Q?6PpciO+bHRQDE9I2+fdNHIXWHGThYqnltCdgiYJ/br5JXInFWCc/hwqgKacA?=
 =?us-ascii?Q?j6j2plUCOns9VZJP2WUYvrAkmu1lfVBcgYu1PePAxxMFRHxBwJd8HTGPOvQ6?=
 =?us-ascii?Q?Af9s33BfCLaUSAXijSrWvr5JYvSL0tTt+o88e2v6xcP77aEGiu4cVhgsnDPE?=
 =?us-ascii?Q?gw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed5ca88a-ac24-45ce-1d18-08dcf2c0fdd7
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 17:43:08.7034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V8Sud4Jhf3UtIskWDewsMsEhQfy5wYCi38RpQ0KdE8+eGBk7ihWXMTEEQu+bAXX6Vb2mWXtQ4IlP+kYio3dz0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6836
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

On Mon, Oct 21, 2024 at 04:54:14PM +0300, Jani Nikula wrote:
> Switch to using the new display->platform.<platform> members for
> platform identification in display code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_tv.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> index e40aff490486..bfd16054ca05 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -1093,7 +1093,6 @@ intel_tv_get_config(struct intel_encoder *encoder,
>  		    struct intel_crtc_state *pipe_config)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct drm_display_mode *adjusted_mode =
>  		&pipe_config->hw.adjusted_mode;
>  	struct drm_display_mode mode = {};
> @@ -1167,7 +1166,7 @@ intel_tv_get_config(struct intel_encoder *encoder,
>  		adjusted_mode->crtc_clock /= 2;
>  
>  	/* pixel counter doesn't work on i965gm TV output */
> -	if (IS_I965GM(dev_priv))
> +	if (display->platform.i965gm)
>  		pipe_config->mode_flags |=
>  			I915_MODE_FLAG_USE_SCANLINE_COUNTER;
>  }
> @@ -1197,7 +1196,6 @@ intel_tv_compute_config(struct intel_encoder *encoder,
>  	struct intel_atomic_state *state =
>  		to_intel_atomic_state(pipe_config->uapi.state);
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_tv_connector_state *tv_conn_state =
>  		to_intel_tv_connector_state(conn_state);
>  	const struct tv_mode *tv_mode = intel_tv_mode_find(conn_state);
> @@ -1349,7 +1347,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
>  	adjusted_mode->name[0] = '\0';
>  
>  	/* pixel counter doesn't work on i965gm TV output */
> -	if (IS_I965GM(dev_priv))
> +	if (display->platform.i965gm)
>  		pipe_config->mode_flags |=
>  			I915_MODE_FLAG_USE_SCANLINE_COUNTER;
>  
> @@ -1525,7 +1523,7 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
>  		tv_mode->dda3_inc << TV_SCDDA3_INC_SHIFT;
>  
>  	/* Enable two fixes for the chips that need them. */
> -	if (IS_I915GM(dev_priv))
> +	if (display->platform.i915gm)
>  		tv_ctl |= TV_ENC_C0_FIX | TV_ENC_SDP_FIX;
>  
>  	set_tv_mode_timings(display, tv_mode, burst_ena);
> @@ -1627,7 +1625,7 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
>  	 * The TV sense state should be cleared to zero on cantiga platform. Otherwise
>  	 * the TV is misdetected. This is hardware requirement.
>  	 */
> -	if (IS_GM45(dev_priv))
> +	if (display->platform.gm45)
>  		tv_dac &= ~(TVDAC_STATE_CHG_EN | TVDAC_A_SENSE_CTL |
>  			    TVDAC_B_SENSE_CTL | TVDAC_C_SENSE_CTL);
>  
> -- 
> 2.39.5
> 
