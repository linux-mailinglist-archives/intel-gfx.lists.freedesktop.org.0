Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DC1CC5825
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 00:44:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 387FA10E309;
	Tue, 16 Dec 2025 23:44:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KRcjggn5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4ED310E307;
 Tue, 16 Dec 2025 23:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765928656; x=1797464656;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RzbQjaHz+gNUMmCk47vlhde0VhMJgLu+GNMGAWDolcU=;
 b=KRcjggn5oEX110kDgU2dl2ZheRhsVCFWDi7u6ujAVmI91CZsAhbS8e/U
 OeLEUjnod2Pb5jGiaaj6TGg8sSE8ZEvSDiV3soRTSHnLCPj3Qk47SwnEQ
 Om8/aKZW0X8z1+A6lkeloc5xrbrWhXbBW5aatQWmIDqCLjgwGOVRlpy4L
 ZeUImpp7ba4rhTE3SGbhal2agvZnzHZ3R3/Zme45JVqjplvbq/kwxn0E6
 lDC41+A+d/O4TQGSq7ido4R89ZoC6XsvIB7mZRW9abovX17aNcz0yaAaD
 1QWEz4sMHTC9ChV7mVa/JCU8teIvi3+PdKOsN6cMcjJRv76sHzd3lKtux A==;
X-CSE-ConnectionGUID: s2bFmxsVTIarY5q64JwJ9A==
X-CSE-MsgGUID: Fo5ZqB4ZR+CvNuDfXe8Jjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="78167930"
X-IronPort-AV: E=Sophos;i="6.21,154,1763452800"; d="scan'208";a="78167930"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 15:44:15 -0800
X-CSE-ConnectionGUID: EETG5uD5Q9+xSmBnTbyRgA==
X-CSE-MsgGUID: 3BuSaKWsQgOp5JpuKFgdlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,154,1763452800"; d="scan'208";a="198944527"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 15:44:15 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 15:44:14 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 15:44:14 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.5) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 15:44:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ogGnAEAAb/PJEtKrwk6/MFRg+JljRFyPqI/8mLOXyZiWAwKyy7vU/Rsa5QeoiWazDa84fe0nO/2WXDTvt30x922SDRtnC0I5rTCOEa1PWXuSPCrlfi+N6zTJHbfOefqnDsr8+gqeS6+M1Ljm0u3V9gPBwU7G+FAnf//pKhnrG3z2g6rwWnj8MIb/KuAvdEBUV/6Ja8J8zq5osrnwU26xFQEudee6U1+2WXhfiH0w4hyryddSXltkVttbBBTaAuLt+op6o66EPUunDpUDdxahBcpI7uZFjp9Sb86XDZnz6Nf5wxVPQklna1GA/G8Yv/jFFP/dVYSxWsjz5p9mUnbB7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aaQYzbDjMWRb22xIbbMqF4Zmk2YGQcB2Jers7ea+D9I=;
 b=DhHZ/hF1PoZtKGrfjVqjP2G8cX6CbYBf4LvHENHMS+ANPRhxQcewNuKFkIC8Y+95r/MMV3LzMzQT0E3ecvo47Qwul12WB2Sfo/gvtbesAfCgRF82nStOliwn8ogiqrKdyCUKQwayDebcAG6ud8Lpychd9G7kwam121mdPGAfERlzV+TUob9BwczcMCTsDAzBixukk6mSclcOS9sapSogvaO4UMi6sSHIpK7jop/9K0Mzks+Pi0j49/vCUQoaDz6S6p0KWcZkk2sN3e82wNgGZhWjHT3uE0HXqmdJG4FrXWKVOhFPqKcAxHMH/aq0YGnBUZLG+fWgSlW3OKy+LFdPDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB9501.namprd11.prod.outlook.com (2603:10b6:8:28e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Tue, 16 Dec
 2025 23:44:12 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9412.011; Tue, 16 Dec 2025
 23:44:12 +0000
Date: Tue, 16 Dec 2025 15:44:09 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <ville.syrjala@intel.com>
Subject: Re: [PATCH] drm/i915/display: update the wa_22014263786
Message-ID: <20251216234409.GA1180203@mdroper-desk1.amr.corp.intel.com>
References: <20251216140508.975258-1-vinod.govindapillai@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251216140508.975258-1-vinod.govindapillai@intel.com>
X-ClientProxiedBy: BYAPR02CA0002.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::15) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB9501:EE_
X-MS-Office365-Filtering-Correlation-Id: 97f5ed4c-7d9a-4730-e79d-08de3cfd03d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tKm3vWZ9xWBbz+Bp47n0t3mDzeKCbV/6OIbXiE8qG9zJnKU8VfW6/F/Y2PMK?=
 =?us-ascii?Q?Nyr+vOZkmW85MJo5/MfExPFSKKoKWEQzBUbhx941UTtrOqCmMslGznlZpBKB?=
 =?us-ascii?Q?DgZuSM3SVz3lEDV8eunVWZndmMSu8WgX5mGgo+SuT5wog4HwjNgfYPuE8daB?=
 =?us-ascii?Q?W3vi6SQ4uv4bq1+fyMiY/LbbSUo9kAy8JFPqLExZRnMY89MFb3b9n7+Fa28J?=
 =?us-ascii?Q?08618gIEQAK2GdhMgunRcs5kDbJEOMLfs9A0fLwSj/sRS9wdpIkA59+z4+ca?=
 =?us-ascii?Q?QATGep5OThG1Eu4Gg9YQFxcBxLbg69Pf8DlIET+lnLr3ZSEg8DX8m2Zsasvj?=
 =?us-ascii?Q?UdzM3tlIIbo4/SJS8ac+y4pnoP/frZMtRxLVB9bRc29I0/4kpH48tZISH0Iu?=
 =?us-ascii?Q?opw3qBfeRA1e8ZG5Pwt+4Xhdqb2oqT7+xQDV7ctoIKDIDXyUhss5MvP5wSWU?=
 =?us-ascii?Q?9IAM4dpGB9h8J/IIG3PsBspYV2i9PJYvYng6H9l/nY1QlPQk4r3GQFK1fEhK?=
 =?us-ascii?Q?KeoYnLeE/Y1vCN566ZCD4d4QDgCrRdzfc/gIH3NTWvlu8E9CXb33sZe8+oPa?=
 =?us-ascii?Q?CZNgAObCvuHPX0vbCvIkqAvf4+j8oJhcnJmWoVdke5hzU2e5IfNqhgvE9j7n?=
 =?us-ascii?Q?SDzQYS0wiYDeJr866Ykzuy/8SpnbVx5+1fczpJj/n7hbK9R3DONinUpQbw9e?=
 =?us-ascii?Q?B3UgAXNlkwIg11hICDNTvaInnKhYBokCoaXyfWCPp3IHYWIMPaQLLEyP48PS?=
 =?us-ascii?Q?D8+eg8OSlVn/FuuQ9iBi8ssWelrVMgEKYtkAJ380qQ6Au5/AF3GK9yPGBXGM?=
 =?us-ascii?Q?coNiKO5wosprBXZ2CbQqh0MPnwarOpVUkNoiHyGMKE5kBgkG6yVTVXXP9Ux4?=
 =?us-ascii?Q?G55pcgkW5LR+Sc7vUZuClJAVGCPeX72xyZd5WYrJ07rsvX3s9mC2iyQ7EScs?=
 =?us-ascii?Q?NdeVLMFssuI2GGpayi1pFgWrXj00t7Ubam4AjVHD2LkggHbl/TSCKqqsWRd+?=
 =?us-ascii?Q?vsOzre2rWgdFRrAT3HZ550o+lnr+TfzLaP+LU+69b3rtj1QOTU2yFh8j1xlL?=
 =?us-ascii?Q?iuTjLK81z6nN0Sz1Az1LpvrMXJPT4wqsWZEbwSH0XKGEklYlgVEWt4/nnPTb?=
 =?us-ascii?Q?n0eHfOdc0Y3vmfS4cUt545nZw/jo5f1pY4Cdy2akK15ug6iyFpJMpAzA+doQ?=
 =?us-ascii?Q?RM6AnBV1dPN/LKipNIfM171XW0zkIxBIEBll3i6DQu4tRbOwaABAdljKnuJf?=
 =?us-ascii?Q?fx6REL4tu0jnUFdKwgAMl0ufoT+z5/Yh9C/ZMQthHqdDwWLjEZCJNcl73Nvu?=
 =?us-ascii?Q?I3XmE8ifsl/Bu8xdkOzhvgB+d6jwt8CS0ll+Oa5qX2l2hcdE+sUgSSOiBV2I?=
 =?us-ascii?Q?mtV7cHZuSNGCaXKu+ecmPN7hLnHgeALCJ9G4sPube18a8U2ldB2NVzgGK08a?=
 =?us-ascii?Q?OoTXfcOcDgkWCr84Pe9hBoeiJDz1A9tI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?guuuGDPTTuU7g8yYeFxDsVcjFmeDjX+zd7Z1YvfaYZ+qJYvpnB12df9msO7M?=
 =?us-ascii?Q?7b9YEMGQ0kfqj1LJzvQJaGOR851VIRWiCCRz4mZrIjFfEQslMaySdTrJV64M?=
 =?us-ascii?Q?aALe2yaF5m1wBHM0IHFB9YUlBRAk9Z+Cul0b52SkbJSQE99kesldE7bXrVH3?=
 =?us-ascii?Q?zeovvlsedb9QfDy3S36IpXiBr21AOFsyXUuXT56k/IeY0rUcvbXORnSma2SD?=
 =?us-ascii?Q?LGY5xe7lWTSjwek2OP3AYztkf4ozy9G3Z2a4uO8/REZGLdqNz1KNFsRvZxOc?=
 =?us-ascii?Q?br9tscHVxokil9iWBwg8Q8TMapZVGxQrPglWn+riSdin8+AMErY93ixcNFhD?=
 =?us-ascii?Q?Xl+mEWE425i944L88yTocTSxnYNYxv1PdUhk4FNdcAvxXJo6SeVA7FZEO3re?=
 =?us-ascii?Q?qwc5jAX3s/4+v4c2soAvvTEutZCg3Lkn6PIL3XJ27PYGWG1orjUIBkF5qomD?=
 =?us-ascii?Q?PI4yE5QdMUPc8yPwIvjPZN+/7KZCyMn5T5LJRSR3lYVCR+U6jYMfjwhcKByA?=
 =?us-ascii?Q?mueNRbS/9VNTF81M4Ad6QbEDKHW1oQ+rcH0srYMndZ6f4X3a00ejE7xP8HBA?=
 =?us-ascii?Q?uP1K8n6bsPsEgMlxpLejL8Zwg9kt93KaIGQh0Hy/iqAgx8xWjPzMieSKUIaK?=
 =?us-ascii?Q?U2Ffty0UNHRAcZB/QDjoHdqVyRGITsas57oULle6TOyo/HSoGgF5NUW/Pz34?=
 =?us-ascii?Q?1+wkNE3AUsLm5emOil/pIFIs2QXvAjTN2dqdoFlQ+OE/CpP8C7OxJsQ/KG62?=
 =?us-ascii?Q?qqiaUgukYhfpg+lNCl1B1hNiCrtAXa8zmwjKedreMSpDacXcvNKXkk7FXP3h?=
 =?us-ascii?Q?FCj1wrj9EHD1PSH71c1tkOCuyvIrELpl8cam6Lrg8+GCRe8y0AnuEaul6Z1z?=
 =?us-ascii?Q?TfZ9A15WDK3m4+Q2TuXFfUG4yy/1r1qG7njk/4CV8lg9RQXySdV8eUSPo5Nd?=
 =?us-ascii?Q?ZmpfY2qYDLT9MLw1kVaAsAw/8bphg3WxxhJaJiszkvnIrbFKPG2KKtUJ2kxd?=
 =?us-ascii?Q?rFv0T0rgxSywF01F0wfLbk02Qi5yVtHK6xM7g16tMzvmEK0k6JqP2OaQ6veX?=
 =?us-ascii?Q?4D8jXPUuk9RjhKh2kVP1rrpKbE2MWseQvbtcAjSmk2OQAEzrJOIV0ouXQf19?=
 =?us-ascii?Q?hTmfoukIAQIq6rfOUy/brHNBCYZJKwfp4GyJzWHT2F/J3Id6CkHvvR2xtqMG?=
 =?us-ascii?Q?tUW0q8wl4N3/psb8IqhX/lKvkgMgiv7IGWE4MjkwhF5ZeG+c2hoQdRhJi0UC?=
 =?us-ascii?Q?uG3OnbBtbNNU7O3Nkztakk+mYzT1tixmNdjYCjr0rFeHDHOW5CCeFekQ8gzX?=
 =?us-ascii?Q?UL2HwyvqDM1DXxXtjX4YaVRIwkto5ahrrt7hkGI/lEC49lgD6XiowyiP7MdZ?=
 =?us-ascii?Q?3mO6BCRYIpMs1V+MI3iDOWDWCAiaiuPMQ/No+TbhkgyGar05G8rYOJRmxUUa?=
 =?us-ascii?Q?r/tTnXzigpcjqHfFd2eb8j+qrTZscWEEpNNfjxs8JMsNAJT4x++wxTov64B0?=
 =?us-ascii?Q?fbja8jaL9ye6WvjuAm5d4mBYXmz+Xyu1zTg2slTTPAE2gI+Hx5WTrohyzbHr?=
 =?us-ascii?Q?A73NxJGo0Yva0sU9QsrBBRbrUU1zlkE2AyVsYURrglZHAvMQKMqq8keFXTb4?=
 =?us-ascii?Q?yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97f5ed4c-7d9a-4730-e79d-08de3cfd03d7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2025 23:44:12.5093 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CMmi6VYCXKgrShwswtUHdva6VkL8AU4a34/vyMjXODPlH6WWD8mPzfXIgho/wn7iidIPzmYjXjZqupkVuwB4BtlSitrMTrminN7D7CXIkwI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB9501
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

On Tue, Dec 16, 2025 at 04:05:08PM +0200, Vinod Govindapillai wrote:
> For DG2, wa_22014263786 is applicable only if the number of active
> planes is greater than 1 in pipe A and pipe B. Cursor planes and
> any planes on pipe C or pipe D are not considered for this.
> 
> Bspec: 54077, 72197
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_wa.c   | 29 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  6 ++++
>  2 files changed, 34 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index a00af39f7538..ffc2356283aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -7,6 +7,7 @@
>  
>  #include "i915_reg.h"
>  #include "intel_de.h"
> +#include "intel_display_types.h"
>  #include "intel_display_core.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_wa.h"
> @@ -53,6 +54,32 @@ static bool intel_display_needs_wa_16025573575(struct intel_display *display)
>  		DISPLAY_VERx100(display) == 3500;
>  }
>  
> +static bool intel_display_needs_wa_22014263786(struct intel_display *display)
> +{
> +	if (!IS_DISPLAY_VERx100(display, 1100, 1400))
> +		return false;
> +
> +	if (display->platform.dg2) {
> +		u8 pipe_mask = PIPE_A | PIPE_B;
> +		int num_active_planes = 0;
> +		struct intel_crtc *crtc;
> +
> +		for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
> +			const struct intel_crtc_state *crtc_state =
> +				to_intel_crtc_state(crtc->base.state);
> +			u8 active_planes =
> +				crtc_state->active_planes & ~BIT(PLANE_CURSOR);
> +
> +			num_active_planes += hweight8(active_planes);
> +		}
> +
> +		if (num_active_planes <= 1)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
>  /*
>   * Wa_14011503117:
>   * Fixes: Before enabling the scaler DE fatal error is masked
> @@ -69,7 +96,7 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
>  	case INTEL_DISPLAY_WA_14011503117:
>  		return DISPLAY_VER(display) == 13;
>  	case INTEL_DISPLAY_WA_22014263786:
> -		return IS_DISPLAY_VERx100(display, 1100, 1400);
> +		return intel_display_needs_wa_22014263786(display);
>  	case INTEL_DISPLAY_WA_15018326506:
>  		return display->platform.battlemage;
>  	case INTEL_DISPLAY_WA_14025769978:
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index fef2f35ff1e9..5b0a83cb5386 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -944,10 +944,16 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
>  	 * Wa_22014263786
>  	 * Fixes: Screen flicker with FBC and Package C state enabled
>  	 * Workaround: Forced SLB invalidation before start of new frame.
> +	 *             For DG2, wa is applied only if the number of planes
> +	 *             in PIPE A and PIPE B is > 1. If the wa condition is
> +	 *             not met, this chicken bit must be unset for DG2.

I might be misremembering the FBC flows in the driver now, but I don't
think we come back to this point and re-evaluate the workaround once FBC
has been enabled as other planes get enabled/disabled by later atomic
transactions do we?  E.g., if we initially just have a single plane
enabled on pipes A/B, we'll apply the workaround as expected.  But then
if we later turn on an additional plane are we going to notice that the
conditions have changed and that we now need to disable the workaround?
Or alternatively if we have two planes turned on initially (so
workaround not applied), but then we disable the one that FBC isn't
bound to are we going to notice that we need to come back and apply the
workaround?


Matt

>  	 */
>  	if (intel_display_wa(display, 22014263786))
>  		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>  			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
> +	else if (display->platform.dg2)
> +		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
> +			     DPFC_CHICKEN_FORCE_SLB_INVALIDATION, 0);
>  
>  	/* wa_18038517565 Disable DPFC clock gating before FBC enable */
>  	if (display->platform.dg2 || DISPLAY_VER(display) >= 14)
> -- 
> 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
