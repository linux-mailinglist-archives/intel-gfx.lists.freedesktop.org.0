Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C1B9BF38F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 17:47:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0BAC10E737;
	Wed,  6 Nov 2024 16:47:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EJ7/rOB+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 708B910E736;
 Wed,  6 Nov 2024 16:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730911645; x=1762447645;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=S1hRlXOVJxur1Gqhm6P68j6+3mpgajZz0oXpoOxZ/Xc=;
 b=EJ7/rOB+YosYK4vq0mr0wt3zYiMTbVrjaB8hlvEDj2IYUSOV+IIz1sx3
 lnZtflAP16jBSd94/YBqI0QpQcwzqhcTaDUQkIwQGyzUUv4gkdEdy6Vok
 aCpo+WjR67YJRGAtVXELwZ8n4S/jafwXGQPnj2gpPZ+S80WfxxOJby2qm
 nmmXGQ95EqCoGBF7wn3DfJLmsSzK49nrYaL6jFbph1olv1AyjQsILt4R3
 jtxQTyqImVp2tA6fy9XDlKypkcJyLUqKHJrM/ez8PkTiU/7pwRcZXkGpY
 pZ1x/HNmkWWHenrA9FwDlw4rjUCxwKEtqZ2o63CsI6GRTO6PL0FrlzTyE w==;
X-CSE-ConnectionGUID: BeEpIO0hSiagHDloBKSO/w==
X-CSE-MsgGUID: 4jwRIpmFS1OMNf++Bw/z5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42099048"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="42099048"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 08:47:24 -0800
X-CSE-ConnectionGUID: iPbf+9ElRgycrXtX2ogI9g==
X-CSE-MsgGUID: j937BrcvTh2y4Eqzkm674g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84550826"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 08:46:32 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 08:46:31 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 08:46:31 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 08:46:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NpkigNmURp0Lx6v1WZlRcAgXzgkdZlqFccV3EvgJ8wqLg/61qHMhGNk0E13eSrIeCu+/BUM6jROS8Qaod6HGsNljnnhXiRY+2LBwATEUbB1NSSWiOwhlDp08GgJIETjGyB9+bjj47UAQvPpkpA52K/TEzlsGjBd46uQEwS+zYEj4gETNpPTHYlAocz4Gf5nH2TWHOETAoPDrWdXyulgTcZP66r1jsB5mEA6e+m/uftTQVA8NkIdRUd3T8/nUVMSjxUNOr2X+VClS3wY8Kx4XHq6X9ZH8RvQOffuIm1slVnAA3ixenbIJtHo7hHnsaerExhDlUM1Zpb00BVdhnoFTFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VMsLJ28BeOQdT8mh1nIgLBZwO8QFH9S4h5ZJHa8qsmo=;
 b=epCec1GrCAsuaFmx6dXF+rZL4LwAwW3lssvn02+4wc8sOxm8CP1/gJbRjfN45W/HRloL8DVNN6QRoi8vbImDwemEvGnMPXu9OrJtRD9yR1uwQyA3ODxotQi7nLxIjhopAuvnNj45Xdv/9JG7GmM+p8NrCyuU80Rk6gIg9/yv7rWvWQ9AUoCG55E9+feCPNY/2M6wvr+KNfvKp74LYuU0hnKiiynH9REQCqDz7wL7CPMmhUE2zCar+JUC7nV3PEnYzUOIebYx62VNSqemZQyMmvfm+40TK5/LWVusdb9gWYxwSLGsIJHH4HgKRO+ifNb5F2dY3/JDRx0KU1ob219wQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM4PR11MB5995.namprd11.prod.outlook.com (2603:10b6:8:5e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 16:46:24 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 6 Nov 2024
 16:46:24 +0000
Date: Wed, 6 Nov 2024 11:46:20 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 04/15] drm/i915/display: convert
 HAS_DOUBLE_BUFFERED_M_N() to struct intel_display
Message-ID: <ZyudXJbl-oROSODH@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <3b045c864325b9ffbbc00c9b6f0f95305798223e.1730740629.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3b045c864325b9ffbbc00c9b6f0f95305798223e.1730740629.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P221CA0005.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::10) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM4PR11MB5995:EE_
X-MS-Office365-Filtering-Correlation-Id: 6eac8835-312b-45e9-cec2-08dcfe828c6c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uQgT/Aw/ZIZ4SU7Ojb8IzP/6w2BhgcAKniupzDE26zGbd2k+7T8YW/nWC9d7?=
 =?us-ascii?Q?Vovu+iXAO+rHTsruFC8ZjKjizJOjW9lS0cFLhML4z+FVKor8enXYjK/+4nY4?=
 =?us-ascii?Q?pSSBI8WRFDLjUiJuiHlAdvmFbz5wTt5WmPTty9kAIGGhUQSOdU1GHSfOMZW+?=
 =?us-ascii?Q?VMlZ2Ons4+HK+yG2uC5WDgUFueU8F+JywOWZ0HbPcysEMuh+URPIcssccYP3?=
 =?us-ascii?Q?bbERCcIQKPwzO4NV8PlupNtupqSzyGcmmtR2LK7k+Q4HIAwLZaWzl1iVXzBw?=
 =?us-ascii?Q?m+on5IxmF0He8Lebzty4dCPVaKhR4JzTPNKFZ+o70G7cdxjBs157aToICHmV?=
 =?us-ascii?Q?EbYh8Ak/HMUggI8Kfjwb9R98K1kU8NdyXkLJs0o+5Jb6G0kIqFDVSm3LMiVg?=
 =?us-ascii?Q?lETjaE3LBdFKfYt7eakVtO4nBAZE4fBsl35lEAHWimqBScEQvKu1+mJaz4jE?=
 =?us-ascii?Q?14SSEytZZ7zRouAEpUQgVMjX+5G84GdAn+HaaFhBjdh7l7KFe6mAVBwbYTWE?=
 =?us-ascii?Q?iUzdJj1cU/q5o0roeuS8tipnl08S2EI9OdCisN7v4GG/O46lWeKJuIovJcv6?=
 =?us-ascii?Q?VzNL7lsKfELpIxK5cZhulwh8+8DZtXPIqrlshstaxRwQAH5thgNcMx1dki/q?=
 =?us-ascii?Q?SjwHyaKyZjTd2Be34vJtSKh0UFaKyRkFvXOJDhWOy5m1TDip1+6+X1zMGHuo?=
 =?us-ascii?Q?KVuw6dMs7sfqNzy7f95S+UvZ1xA8q9jerN4JsSb1spRZQBFpM/H5KUb5FRpQ?=
 =?us-ascii?Q?WW5dHQQ2gvRAAQ85kG3pcFleOBT2q2AXlKt2/fg/RXolFKbLJSi4y7diuYsI?=
 =?us-ascii?Q?80q06/BSBPr2e6o4CX7bWAiJaP+ZIQzjwlTvktdQLXtlbUUwITBhOB2q57f+?=
 =?us-ascii?Q?4sOtA/0o2GgoPn/PaT3EBY1pmPMFS6kl60n4FWD/KlcNT8xpoGkazhylyZ73?=
 =?us-ascii?Q?4c94FRqPCOaW9YdegBAbXREOeQyolXz543a9eHSY+3vBMBMKsElcoUCNlOa4?=
 =?us-ascii?Q?sw8Mz7r9XqkYvVWe0tH0eECbFP6j59kVPSVTLjfMDDY4hNhDc4V+C2oEwu1F?=
 =?us-ascii?Q?SK2AlX9dyf4vxnKu1azkgjXGdHMzKifLANe20t6IcSF1HyoB6RaPX8FJObG0?=
 =?us-ascii?Q?00LAqynsMJtDDqgr8AdWoYLSopnnDegFSnBkMcDWqRhM9KcgPoTa1ND9YS8j?=
 =?us-ascii?Q?AqL8/yYc75brX03lezDzfHhoM3v2U3yQuL37/l4byKKR4YGZwKR4EjSFjBA3?=
 =?us-ascii?Q?seRcI5Lsj9Np6lgK1deKYkejjGPVbWW63KnCHTrLu7DJaY5Tis/yRXoNjulh?=
 =?us-ascii?Q?nL9jZkfyho3bbSJRdjMw6LWE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RIBMyKdc4GRWaCsULLWSq5WdY0Mrq0fU90nV+2HO8FS028FbC3+rwtpQbRiJ?=
 =?us-ascii?Q?EmJ0kFppVCb6hPtS9LaptYyc3YPqg8wx3oY35akm8fgHWXYcGrZQSsddQTYE?=
 =?us-ascii?Q?4BGjFOKjPaLGGNpMyjjfwpR3UT7yOJ9aoJW4NN5zP5M6cyusjbvKhmYLAyMR?=
 =?us-ascii?Q?ElYxWcBjRF5TWlNZSEJ8WkdpymXrk5N3XthLq/t9U4/H1NIEzAIK/onAsJHr?=
 =?us-ascii?Q?dHlx8KkXK8zj5CtmTSRrrJxbdCcW5dG6TOX2Hn1xvbKgC0TNlAE51OO9rWQS?=
 =?us-ascii?Q?4dlpogiK1DVJQmyrf7mYnmmuU85QEGsvmoR0wcpE0s2txuwe4hHI/RTxK/Mq?=
 =?us-ascii?Q?roHEKfDEesvYXFgoWPNaesD5qDiIei/qU92ROyutsz6InF2r4c+G3o34XggK?=
 =?us-ascii?Q?EfQs84NcByiqsciNOZtGppz62p2yiOcsXbt5BDpecdx/XAdwtRsAAo7Q6X03?=
 =?us-ascii?Q?lBP45havTnY3zsr0emgvScA868Y2e8LOsLgMWQGhzjmQVEceHR+rjc+DZKk1?=
 =?us-ascii?Q?CYL2XYWa+rAl0St2AeX7/QjKzsXrp1bYHDIe2vfikhikQIDVbIVlMAuCRgkg?=
 =?us-ascii?Q?Y/oIQXHij1FxKXX2dS87sQQnvV3MNFbxeuekoeRSTbq023hOIhljl6W0ai9q?=
 =?us-ascii?Q?ErWbE59xEEs1T/Mw59+3E5vGUPUK5Rslivy+oFiuFswbGXD8tGE+pf1PF/z/?=
 =?us-ascii?Q?Mghyi81lSzMpQ7jE9E1CQaqecdmNYFVt/3NOn4ymikuS7pOGNWr49hA4ci/U?=
 =?us-ascii?Q?GFsKdCN6U+Nf6oQTMXGKX+z1JUkzDaQxCpwiTXV7Drof3f5sDXxpZJgOgc1a?=
 =?us-ascii?Q?rU+e82hGSurChRUVY4J4Ogl3ETIgCrrhR3KylTNDQlLr/gjfg3VmJpUSCveW?=
 =?us-ascii?Q?/Otq+3VNkoWqSxHnCnqi0PKHK03fgCFOXzA8xzL/zHkcB2o2qVR8BV4dZBrX?=
 =?us-ascii?Q?n8ST5IklNJngIzfkUDIU7eavOP/g5dPDJDRQHLUF1oRzcs/TSCnU+Gs3+zbk?=
 =?us-ascii?Q?wYNu+Zs89e2WQbG3qh/btMcFxa6zyzOQtWrhIrkL5ctkuKjVBYFoqc7Ed5XY?=
 =?us-ascii?Q?cVkVsiOHyb61E8yL316PY3OE8FOH1AwzzhlLhbyYPU5lF1eikbyIbvewrEOY?=
 =?us-ascii?Q?MwgScCR5U9lf9bofhEnbCJUF9WMdjj108BJ5YSx5szTj866ohzCPW0H6CBvI?=
 =?us-ascii?Q?14Q7fNUDoMh8g+bB74/P/ia1ZYr9I34vgtbbnP5qO+BixcTR8G24wk9yklTX?=
 =?us-ascii?Q?J7Z860ERtUhVwS7CXcV5jcceVjuHUHNNN69vUZwcTZKRXgI2bYH9JWJcUDHn?=
 =?us-ascii?Q?yZcO4btNea3epiAl22syt1+dfnHfwIH5qhAAaQ2LLBzTqP7RG2DHHiPbgU2m?=
 =?us-ascii?Q?wBhMrif/5zZMOq/ZQ375Y9z+Xrqfjd7yoQK8J9puspfm3u2bVkzwIMDtWq6P?=
 =?us-ascii?Q?hboc6XtgaQj4mpXrenPIsSfQPS4WbBF9AKsXKzHpBn8RCTncgNW5CPDsmXHY?=
 =?us-ascii?Q?VhyXbsTMpDqHpZGpxpQ6bj8ARf7sHdIGVWuJtbwtn6ta4QER44M7QIvxn2C2?=
 =?us-ascii?Q?FOpPNmNUJLDD95uW63BFqkpsUFUDMeuQJqStZ+Lcm4lG2liHwJ9PhpHoA/Nt?=
 =?us-ascii?Q?yQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eac8835-312b-45e9-cec2-08dcfe828c6c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 16:46:24.0335 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: acq5GHWVEldb7ea3KyYaUXEFcTNBc55CyUaLsb7VDg5z8czxnPqf2VkYufo39J7GhA0rrLHtV5C6I5rCZqMj0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5995
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

On Mon, Nov 04, 2024 at 07:19:18PM +0200, Jani Nikula wrote:
> Convert HAS_DOUBLE_BUFFERED_M_N() to struct intel_display. Do minimal
> drive-by conversions to struct intel_display in the callers while at it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c        | 3 ++-
>  drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c             | 4 ++--
>  drivers/gpu/drm/i915/display/intel_drrs.c           | 4 +++-
>  4 files changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 863927f429aa..57b42554d656 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5322,6 +5322,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  			  const struct intel_crtc_state *pipe_config,
>  			  bool fastset)
>  {
> +	struct intel_display *display = to_intel_display(current_config);
>  	struct drm_i915_private *dev_priv = to_i915(current_config->uapi.crtc->dev);
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>  	struct drm_printer p;
> @@ -5562,7 +5563,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_I(lane_count);
>  	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
>  
> -	if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
> +	if (HAS_DOUBLE_BUFFERED_M_N(display)) {
>  		if (!fastset || !pipe_config->update_m_n)
>  			PIPE_CONF_CHECK_M_N(dp_m_n);
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 70d1beebbf8f..e11993a6f042 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -149,7 +149,7 @@ struct intel_display_platforms {
>  #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
>  #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
>  #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
> -#define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
> +#define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
>  #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
>  #define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
>  #define HAS_DPT(i915)			(DISPLAY_VER(i915) >= 13)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ff5ba7b3035f..a27da96d2c60 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1700,13 +1700,13 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
>  
>  static bool has_seamless_m_n(struct intel_connector *connector)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  
>  	/*
>  	 * Seamless M/N reprogramming only implemented
>  	 * for BDW+ double buffered M/N registers so far.
>  	 */
> -	return HAS_DOUBLE_BUFFERED_M_N(i915) &&
> +	return HAS_DOUBLE_BUFFERED_M_N(display) &&
>  		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> index bb39eb96e812..0fec01b79b23 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -68,7 +68,9 @@ const char *intel_drrs_type_str(enum drrs_type drrs_type)
>  bool intel_cpu_transcoder_has_drrs(struct drm_i915_private *i915,
>  				   enum transcoder cpu_transcoder)
>  {
> -	if (HAS_DOUBLE_BUFFERED_M_N(i915))
> +	struct intel_display *display = &i915->display;
> +
> +	if (HAS_DOUBLE_BUFFERED_M_N(display))
>  		return true;
>  
>  	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);
> -- 
> 2.39.5
> 
