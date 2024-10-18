Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DE19A4A28
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2024 01:39:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F64710E9DB;
	Fri, 18 Oct 2024 23:39:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FN4Tvnx2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C632E10E9DA;
 Fri, 18 Oct 2024 23:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729294744; x=1760830744;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=p0wOdbj+b9xRBhIY5TFjVn4kDn8KCENXeZDH5Xuqx8Q=;
 b=FN4Tvnx2MPYFP5itfpgpof+s4qjxXlIdm9dQnfA/dDgh3xyoDoFt8e35
 o1THQzwDLLCcEjVkI9hp3cj2qyI8PB7quQ5RANLVsapg3tOvaY/UpL7ox
 Gpdd3ZwcWlc7GwlKI5+gZ6l77fpM3kZmUK8iZp4LGvBRfCsF6ozyw3DeT
 bo3lnIH3gvoD8tvUPHnfUiKhbl8nco1+1+N3ClH2d7MW//saPwu0LHIsr
 2v74a0Ybi8qDxnkDFjvRGUJJr2Y1Cmj7opX9p7dg43TJY6FCbrvMXHVIB
 PM0k4eQ2NfYkadmSU7sR0AIH0kvPVRx1avbwWoHvIJGjqAtwjGtfv8bP9 A==;
X-CSE-ConnectionGUID: OVw5ox9qRkyWXF2PLKFCAA==
X-CSE-MsgGUID: 00ainckHQHOiC4QEc/GPqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="28935762"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="28935762"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 16:39:04 -0700
X-CSE-ConnectionGUID: SpgCjp0kRnqIK1gtGA+hbw==
X-CSE-MsgGUID: tLIuytZgS7G07ZaKEtC33Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="79415371"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 16:39:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 16:39:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 16:39:02 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 16:39:02 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 16:39:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o1vRFyyzv+SHyRfnYjO9+Q2bMTVLZgSu+AwwAe3rgyCy/4pvI12OKP8ihs4UNmCtMw2ji/FFNPATSSTfRxr2gHMSb5EYd8NoQGyL1RVpdwTRPPDu1iigvJl6nIz7PQc52MMFLoEO0JRGd6S81sKG0z5X6ZFT0VKm6DPF8LviEvfLqfElpHFWt82FhaXY6O341WG9njNGFzKoJfKpvJ1nbhKbPvCNfTX1HHc26C6H8lEUxYNqiccPzlrVWm37EjJUFRVlCYbsl6fs/9uZaDO8oSmTXQdNr8rTv3iOIJqz+5cPDvxGEHieEe3gpthNzzwXA/DYBP/u7tpUeCTi9TKo5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Oj5QYQPkaBgRBNF/c16icSKwQkSWjoD8cs42h+IH7wA=;
 b=MYqomCX8TVQ9w7ZPK8VMueLib0iobUAq9BYnvdqWkiiGhqJW0oTI5dP65vtnwn0tnietGMFv0R6B4BTsSH7V6Yxezvohy69UbLfR9mM1rARAJduJYm93fXIhc4wAP+Ooy+3DuFVK8v3pLXHt0PROSu64Ws5DEXwUeESS6pn5YabuCwnXxDqPeCNs+dtEAIbGL1SU8a980Wk7PGikbFzTYW0TLWpieYt5QNPYqyNjD+g9Koz217cRweMUPyUQnpxg0mZUCCDFcjF1O/Bnzykp0nGI9m5Q6b0IaQUoN/yE+C4z0SeSxWEkhKd/tfrmgyZXFOFnHe5ElaXNqQ3S4j1pxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by LV1PR11MB8841.namprd11.prod.outlook.com (2603:10b6:408:2b2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.24; Fri, 18 Oct
 2024 23:38:58 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8069.024; Fri, 18 Oct 2024
 23:38:58 +0000
Date: Fri, 18 Oct 2024 16:38:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, Suraj
 Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH v4 5/7] drm/i915/xe3lpd: Add new bit range of MAX swing
 setup
Message-ID: <20241018233855.GE4891@mdroper-desk1.amr.corp.intel.com>
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
 <20241018200311.67324-6-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241018200311.67324-6-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR13CA0155.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::10) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|LV1PR11MB8841:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ce08bc8-b649-4f84-dc61-08dcefce09c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?apFHVMfJtrU+MQhRl7rhicrUolACCkKXwWM3VoB3Z8K4nT6OJc+APaxQFzWQ?=
 =?us-ascii?Q?jjCgEGTFVTPvtuLVMeD5R7xJaI0JgdpCpfi0KTrL+NsoHAKstEesM+4BaQGV?=
 =?us-ascii?Q?I7S2Vd0RPd+vsTjTUQTZiivCU5IjBYfTgR+G/PPyb/bH68umlfWENXp6qMTM?=
 =?us-ascii?Q?2jGwAgxmIVLKClw2rSyUWEUdCOYc3BfFL49Smg8GA1a7BfiwUFRr0KvcSbih?=
 =?us-ascii?Q?7/spEEeVHo25tcAGYxa9Sg+fulLmtWF75xDogAi4XDoVKA9i+Gu23vMlotGI?=
 =?us-ascii?Q?V1jOg3J2SCCoVo3BHjubjxIVVqaocrlag1BdjMhKl7r+cGFkvl0LHStph4DI?=
 =?us-ascii?Q?mITNVp6kEJdNo86RS2eTpTDkJBuFKdpMWa1VjlWd1Mjc1mxBsKeEadslDiLd?=
 =?us-ascii?Q?e86Pka4PphKnBqC7ZI3M0TEu6EbuNensSiILL7WyDBG+ckUagiUarAE98tsF?=
 =?us-ascii?Q?I3Jqc3J4v1veBfMzSnOOtRZWBkysrqlSWLEKlpChLtNUkLvy1kJq+jlYlLd9?=
 =?us-ascii?Q?v+2TeXKZ5dceroODs8WaPg4A9Kcj3iicHxcwCJ4T/5oWrVO3ubY8qYBS3yEC?=
 =?us-ascii?Q?IP3VkR5OTr8k2myu37PrPACMt/9d+qiAXVo580NfBhHLGBM6S5xMUeweOoaV?=
 =?us-ascii?Q?LG6D6xCyJRg6rqjKuGITE1a6uvcP8yeLX/1XBH1gwZCx/vKQJqNFs1M7N2bl?=
 =?us-ascii?Q?kJjG5Ny/8AbXKPWi6yjRizp0KaLoDYaghfwWrmMv1RwcKhkGq8dmPXf+EqSd?=
 =?us-ascii?Q?g0qglqc3wgLhYtvoEa1x3nOgDjo44jUGtZTFecsWBhgggLAyLQZS5LySJZsg?=
 =?us-ascii?Q?j7TaOlSU7Pz3NTs+XuPVqv6diZZMQ5WYiaCWTa9csXqodndugH/rOEO46kI8?=
 =?us-ascii?Q?hEFAuk8e1y+kFZiPUi1YX1CL+GP1sG/FUx7LB7llcppL8R7vqEVk4dLWJEEX?=
 =?us-ascii?Q?ZoGKZ2Id8RParUclz8Gp313c9d80KlqKythYwqRrYc64eB/Gw1ZTTwQjGnZq?=
 =?us-ascii?Q?EH2Om1soqsnKEfOFUsgUlYYwl/hx4BlBUW3KPyEnknZc1yWCdrpjq/1vw5p2?=
 =?us-ascii?Q?IKIMLutnjsTQui5sqotHfCqJ0bAFjJh2S5ykamYzP4hBEe6Q1I9/nnj1dXq3?=
 =?us-ascii?Q?8ClilRWZS8kfhUrCOj6T3REJRAlyEGnNeTsif5NjB2wrYaXSTGSPd3Yiq1xr?=
 =?us-ascii?Q?CM5me17/6mXPzZIqJMvl/Hvpezs74wwwtrCWW9Eh1QhbbD417zsuLbx/OZAN?=
 =?us-ascii?Q?ccUvFAIsvM6sSNI0Hugb1zvPx4yERG96CPxCK5+cX8f3Q/1JivyC2SZ7ODlt?=
 =?us-ascii?Q?CXA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NwljThYsybHSilF/Ke+Fqtlhx8cGVALccjJBmrLGPBlWZSVqVfSMHLm5e6SM?=
 =?us-ascii?Q?FwnKNfLt/74a63PN65DizquKPuJ37fg8W/PjkF88JBbAzOhFCtaONHI7QdPw?=
 =?us-ascii?Q?grcWAC02xulRDK5i0Qpd5XRP99HpEVLPhN4Ji/nmPCQq+DpKgpHYZiQm0/bA?=
 =?us-ascii?Q?vWgTZguUOK5JClpfu3GU0eB6VCCCmB61C/Do5FWJkjHFYuKbRCZr/bXHJfsU?=
 =?us-ascii?Q?Kzp2H0weUwBJSGvjBoKKhAVPUMOa4w++a6o621maSbaaFDxJq2CB6Bw4YknN?=
 =?us-ascii?Q?Gu/ylecfCTFfg9z9hDD/zLzHPR++EfK1jqB8EiO3hfBFCFnAwDWXNuWUu1TP?=
 =?us-ascii?Q?a0S/5TUUMntmdbiH+pkqL3Qs07Vx0ck1XVExbMkCmHPMWvld9JJBi2/7mJMj?=
 =?us-ascii?Q?RVLvDnqUCQQG/KTNT4eD2hCMI2vCuHzcz9QrjuZTMU7gTZ5vBp7cSwsVnlGE?=
 =?us-ascii?Q?aZHv4YgKpekOfO1xk9AAaO9qIckwWf+YJEgsAVUNRuNXIvYXmfthihftM+QI?=
 =?us-ascii?Q?dJ99YuzvWdE9gVdXbXSTRKUCny06d+PvH7cHMK5SS08N9Y+kmZwx7iucTCo2?=
 =?us-ascii?Q?hPYTJMns7yN+LhvA3aGj4DFzG/PqPLxiR+XISooKcPAUkz3CdquybhKWJbRr?=
 =?us-ascii?Q?sk6Sss16bwDhceuhQnKTpdoG1uOee4y8s5MB8WMMkEZ7tuLLu7oYFsVbfibT?=
 =?us-ascii?Q?9vIOLKM2+y2hYFTFdc6L1ihOrQh1ljDRq47fzE7Rq4Szi3kzaZIS2qrwV+Nx?=
 =?us-ascii?Q?/mfpeO0Gt9olW0EkzlKLXS8AUUPITSGFQx8J0UHwEX6bkUg+Hx5FBtQ23xsf?=
 =?us-ascii?Q?h9KPxJk6gf7sgGdPunTd9d069Uf3KtrUfsfAu5k10uT556w0gvaWrEeIjkLu?=
 =?us-ascii?Q?5YPKe058vqpbETl7oJTNZ1LhTsKy8XJxQwozzP5qHhwzQb3mQRN0o5dTZlqn?=
 =?us-ascii?Q?VgEGE4YZt5x6EI5oO4LmzLm9+N7JmocaOT+M/lD624yY2N7Jeld4WWcIIew1?=
 =?us-ascii?Q?baQd42YeOin1y6llEWlQlhUVxGzQl5vwm9x2uq7j1ohuYoTYCNy4zdPzaulD?=
 =?us-ascii?Q?dQaN/xunBN9R61BfLMXrgEmh7tlxnznEVc344rIouOHds2rMoPU16R3CCuVR?=
 =?us-ascii?Q?1iPjDjc/ai1N7u23BeOIK9zsR68kZEN+VmHZMeic/L9Byu4KXtpzhZGW91Yx?=
 =?us-ascii?Q?gkfxBnlzA7zlN08GqitlV7NDLu4BR8dnqKD1qqVFwbWSI9Yekvm9jhdjNRq1?=
 =?us-ascii?Q?cQr/48BsJN1TalXNLDW3oPy2nTeEdoS+Vi2KkDsI5xXkWBlmGjrrTXMqqA5z?=
 =?us-ascii?Q?6lDHJyO7S74eeRNazDTAP/VN/CT2cKvcy1e3a6+hvgAAFrkSNPEiBfSyl3aG?=
 =?us-ascii?Q?Fs3UByAoHT7OYPPKgU5Rs0jTZOnmuh1ICMa2VjRALV0s7rPk/pgRoBya5MrF?=
 =?us-ascii?Q?p6nm/CfvGOCEH4xpI6ga44S28dSlYTaB4fC+WYJ+8H5zWAuCuWpHVcIDuOhw?=
 =?us-ascii?Q?HU+opALRfyqEkFWjv3vSytIggXs11FmFYjzGxofJd6rqPQpFgPWoiD3NhVhy?=
 =?us-ascii?Q?ETrRnmENGsaIRoWmgb6C5LcNpdbM1X0CBTDb3wNMVzghjLCkfE07yfhDrZi5?=
 =?us-ascii?Q?bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ce08bc8-b649-4f84-dc61-08dcefce09c4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 23:38:58.7959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3fcBcrL3gim6g8uFAa0DGX2DGvwmxvgbTxjZvc7DHu3WVLf9dlJ8EOEDTBXXpzYo3D8Wp6oMbiEMuZFrTLJPqkt26Qb4b3qE2vnE7veGeCE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8841
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

On Fri, Oct 18, 2024 at 01:03:09PM -0700, Matt Atwood wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> Add new bit range for Max PHY Swing Setup in PORT_ALPM_CTL
> register for DISPLAY_VER >= 30.
> 
> v2: implement as two seperate macros instead of a single macro
> v3: extend previous definition by 2 bits that were previously reserved
> 
> Bspec: 70277
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 0841242543ca..9ad7611506e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -298,7 +298,7 @@
>  #define _PORT_ALPM_CTL_B			0x16fc2c
>  #define PORT_ALPM_CTL(port)			_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
>  #define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	REG_BIT(31)
> -#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
> +#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(25, 20)
>  #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
>  #define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK	REG_GENMASK(19, 16)
>  #define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK, val)
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
