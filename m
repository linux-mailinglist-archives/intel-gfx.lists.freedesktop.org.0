Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5636A44C30
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 21:14:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D59710E0F6;
	Tue, 25 Feb 2025 20:14:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n61ofzhK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4AFC10E0F6;
 Tue, 25 Feb 2025 20:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740514492; x=1772050492;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pf4ScaxR5HWUun/kGbaFhH1eZqwYep8d31ltSyfunPM=;
 b=n61ofzhKOJhK3ZnOFj7GMMvlAp9sBW5MZSiih5fB/9HWtMBsSar4Wgk0
 PEVlNl5ojYDq0wVKj8KRVKozvQ17iT4u3W/YnbBtQ43kwRbfjRilF+LxL
 whf0wTO1ZX4YTFLd7P1HAsB5v68eeOtksSY9yUzKMfd/DiOftzvxuvIQU
 GySdLOBK7DNLLqjj0miCuUn9KmpjkCAhT120/yU/AOSBDiD3qk1pgGOey
 1DPZO5ei1/lk1ooYnvxGxvojK7ruDrbG5rC7Z3wy22m8X0xGmrd0JCZrn
 TS5KcIwRBDdSVcw9eJRJBFBEyF5SDzvlsUIPXDwjsYlePEi4Q5U+49pGv A==;
X-CSE-ConnectionGUID: 3oNOLVftS6WaHAHjsjQ2jQ==
X-CSE-MsgGUID: xxUxa4K1TnKvtxflq3X/iQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41476360"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41476360"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 12:14:51 -0800
X-CSE-ConnectionGUID: 1jC2PXd6TyOhYv+7+PvftA==
X-CSE-MsgGUID: pNCICjgfSOqV3naKoIz1/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="147313247"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Feb 2025 12:14:50 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 25 Feb 2025 12:14:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 25 Feb 2025 12:14:49 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 12:14:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZeHX1hIZA6p6hq5lWTMIr0jixy6W2U+PRbNjiV8y0q2l/+FHHXLp/HlhQKOxXY/vJ59G+c/Bo/p5y6gHDbd1u+cGSRfZgVeWFO2zpzb5SxTZ9pE510wha/eenVbYdHq3pZwgtCOnAJdClynIp4QWiBR63lriZ1yiZvp0eEUMVEUUJ08Lq5jOnVJkLANLI1t3PL1ASsWuiXWkPSSdV9b351Vl+Y/4isfI+XxIU+Q5yvsTmEHQNz8/IVrsQEpHVLgTD4nqlflIi7oRSdOIW7fAb2IzNAHMwRMs6nS51Cwcqrb+ZGqqPm5ZaaGZPTFKHxJIdyEbrQ4DU4bAeke+uIryiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EC5+2/AWHdaKuc7GVC3bqnFB6S78HHZ9/bD6GNQiHpc=;
 b=us+tLH2DTc3emevQwD/SeBRb+OS+OldSEkr1b+O8OKvwhYF4VkzzwMaJy3wGSlnU+WLAPrvDe/uUr2sNRxHHoiIAHTD854aOgPcF17nCwJ5mUG0jS1ymvMEmeq867yifuqlxIFk1zth3l+qge7G+bvgU08ayYEiD1MME3Aiw+S2RKp/wyAe0F6V0ZxBoDo2Hr9zSFu+O1+oqKwlTkmADE1wG9+fdeU8NN5uUEcPxJZUXCYtPZsL5B/A9V0hcr94U+W84FMBTYgvUyjG099Z67q/sn+BjsTsRr+A5VjPgEXLtxuDvjiKmd08/0YiJ6LU/jlDFME2CHrdEowiG8oVUPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB7277.namprd11.prod.outlook.com (2603:10b6:8:10b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 20:14:04 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 20:14:03 +0000
Date: Tue, 25 Feb 2025 12:14:00 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 4/8] drm/i915/reset: add intel_display_reset_test()
Message-ID: <20250225201400.GI4460@mdroper-desk1.amr.corp.intel.com>
References: <cover.1740481927.git.jani.nikula@intel.com>
 <1e92734af3c4ab75b487e5f8ef891acee53de9bf.1740481927.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1e92734af3c4ab75b487e5f8ef891acee53de9bf.1740481927.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0068.namprd07.prod.outlook.com
 (2603:10b6:a03:60::45) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB7277:EE_
X-MS-Office365-Filtering-Correlation-Id: fe233500-6b3d-4e96-ccd2-08dd55d8f2dc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?loVyf1LLGVQwVTT0RHqzp933GwgxvIK3aQrhDSdx0PUlqnKiKB7h0Ipfm9mE?=
 =?us-ascii?Q?TRHWwpp/wOGFOOa1PE20Jp+4waEWKMWuGIQaD+OiD3W9NoCqLN5k5Qjw6RxI?=
 =?us-ascii?Q?DKvGrFXVkUm4L6fI62uo+4sKEbXm5g1gdgxZcRus8mZhliHxu/pL/fSiA1sB?=
 =?us-ascii?Q?o7xt96utkb9c6b46DQ63oz3k+d+o+R0EICOpE1BUGpZS61NPDapGzDndgF1Q?=
 =?us-ascii?Q?DjTMWxhlA2+SB9f4up7+OEvaQDZpCTIijS6OfJ4gjRVNeiMYVogDd7TCjpLU?=
 =?us-ascii?Q?op5vAZ1VnDdfyF1rQMgFCo/HKwEqfBQeT1LFyrOao9x5ku1gXCgh5rH+Xz2Q?=
 =?us-ascii?Q?bYHZhouOMR7zQ4SGtvstoVENs7oUS4/oHnr/yAwKfLgaClXVIxNrQuUjVjug?=
 =?us-ascii?Q?z3PObplIJz8AMYGhwSYLIYpXmqZrmniqpskZ1U1V8pWJv31wCxcrd7Ws9+XG?=
 =?us-ascii?Q?ez5/mf1CPC324qs2GVxCqhjTom/X0aS5eqpFawLWOhbC+qKMa77Dzddw77yz?=
 =?us-ascii?Q?nkSiL4UXbYroNZXpb4wDzIsdltdNBxZKBFd//IBleO98c2xuKfOrDjvnBI0y?=
 =?us-ascii?Q?Gryt1gNkuK+I4IJtpWEMHcJ0vkT8ZYbZD3OQo4lGzrvZ/hbnJP0q+UUbicBU?=
 =?us-ascii?Q?dlrMATPKywk4fepvMo+GFIDbINM/KTElQZvjsCSXxtuSy7ulo7Ajsbv3y0ZZ?=
 =?us-ascii?Q?6FgrvMAQdYVTlJcqo5DGcscgdt+MwZQcTKVScGCmreA3Tu4Qea3T/SXsVc7b?=
 =?us-ascii?Q?7dbRc6mmha453pCv4ilNE+94qo+Iyygj1fkB/IylRYRYNob62oNSp8a8A4OA?=
 =?us-ascii?Q?QeUC16gDq+ULSqm1I1zO13qJrWV58y/m6Y1KEZ8mplpAxm1Vo0GnEpx3g2oO?=
 =?us-ascii?Q?CQMUjqK4mjdGUqHuK3gJa+3Utqx/1xyIgqZAdYi6KHvnvA0ein5EEJkmqo8V?=
 =?us-ascii?Q?NDk7aQ23zsmpo4Pk9gDC/peDLhf4fStcD5SCUk8v86GNenaT2e1IAuqwwYqo?=
 =?us-ascii?Q?UcL78vKoQwfIrj78RVfJYHh8FzmJsNZUtRPPA/Znz6mnuBKK2TfXG5VTwjov?=
 =?us-ascii?Q?TqVlleHYJRMBjB3RtgilFonVqG7lWvPAiU8m5fFF05J02CDu98hAn52F/5yo?=
 =?us-ascii?Q?9QVclDsUhr3pXtYVI41P8AKazOluTh2f69tk2nigUVlpYXOQKmN08qYRiwnO?=
 =?us-ascii?Q?n0f1rE2C4UIB9qul9l1DESO74Q8F71X9diqNDa2bkvfmQyEls9vYEQ8PU2Vd?=
 =?us-ascii?Q?a5ETPPs32Qef1E4h8ev8hwEgMObJv94nf8lOkGwt8AsSKj1/5aYDpaP+l/qz?=
 =?us-ascii?Q?CaG9bEVSaQ7XrMfjYsT2WJtzrXHq1YZrz5HLqQ+ePJLtcWB9kRnXTrlvFonK?=
 =?us-ascii?Q?TO33Hy0Sa/ZdD7eThXjNoCI9btyw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K0Kp8dX7ocJre4GZPsNuiGj1dQrd18ZmIPM5VOqd1udyq/WCvcmdp2jHzolV?=
 =?us-ascii?Q?o7V7UJOlng6A99wsEL7zuGULBWdLFuIYoci4ZwTT38srnSXPyFEvQGatJfcB?=
 =?us-ascii?Q?BZt3xvTDbNV3JJDO08KAGEpXeBIKAQ+CVRoVxRufo0arT7xUTbRAwfjplBUS?=
 =?us-ascii?Q?meCc+kQk3X5jV8oynuKgztIF962x7FQd/yC2mf613jM/Qx0D3T2426z1dDYQ?=
 =?us-ascii?Q?FfyeyTIC6i8fzh0pmOdlCmYwTox71CPAzaOYThAp+jNRNKev3CSMzp2otKjY?=
 =?us-ascii?Q?KCT1A20RqFXG3kXuMXQK+cStY0sDQqzxYSdtyNdkDHjwr8aoQpC3k4/7JGaz?=
 =?us-ascii?Q?mn225bxWsW5ovf0PBnDaNvn+Bb1w0uhkMflis/zmHhiMLoclPf72/xnk+aK+?=
 =?us-ascii?Q?QguKw5fAoEml1ZSo+umv6pShJIKeqBHOxqGAzkH4Dh1c3cenU3CU2AKrFDgL?=
 =?us-ascii?Q?wqBD/y4WWfFGufZE46i7t5tRI6spuJaVLIRuUcXTcZKtWsoAQkw8iERKPrmu?=
 =?us-ascii?Q?mBFF9Hotc1/RE1Q5Jn5O9ze8WcdTF2IxiQwb11in0tCzdNoQr4Ua2JqaDldW?=
 =?us-ascii?Q?F297eUZ/y1dtUyYsNKcs6Xx7WkP2hIs+UYjwrulE2Nd708ijwVDkZIxVQl/m?=
 =?us-ascii?Q?kk7EJU0y60ug0kybDY4CG9wBL2d67iHo0A6Y34xfWNGq9VkQ3Q3GLPxydopf?=
 =?us-ascii?Q?8BN+KH/Hp0w1sXZLBfJPR+Y/sQy0a3UVyYEE8XUDJQnr2ZWy9SBB8yqJriZ5?=
 =?us-ascii?Q?EcwqWTv+Yr5NZVSyMl9gMuLdqIwLUMWYIH+mH3zcOK5a8rree0PMn7gZ4zT1?=
 =?us-ascii?Q?2GC0j6xnrIbX/tFnR1QanPzufUg9RU7nhpDul3LTOr/6YYTej7t9tkLhy1pe?=
 =?us-ascii?Q?ZaNNlvnxJlPloQaQzSYtJFxYy/xkp+J4NRAYSmkmmrl+AjQrygEv2t+9hQYp?=
 =?us-ascii?Q?39k8fC3Ow6lecy+GcbXij8ZVuBWGJLIWfB/ol3AwdX+qx4Or99LVBGsIgGJ3?=
 =?us-ascii?Q?gTgPRDLhYlCw79wQCdQG6Qc5kqZqHErzjgm+hRLDXP8PaNl2wjVxR5T3PYsr?=
 =?us-ascii?Q?ZNH3Mlb3Y3lUMVVcRT1pFEvZ4XZ8go6fnTltgkBUg1c6cFUoUVwm6bT8PGm3?=
 =?us-ascii?Q?YCNiwf7Rhs2cxI6NDuHjAkhcs7EgVyzHUuN1lYruSdKT8WIRgW0tPvTagCGO?=
 =?us-ascii?Q?AnlRejJMiT7dm7L3/bT8ljbXYvKYq5U1eEHIHzOqCZAZUSYZVPOa1kv1PQWF?=
 =?us-ascii?Q?IfrbsCHPAQSK1rVCFPwyspyF+HaJESzcVq6uU4cwZEQq2HtxhmV/enQn8YX/?=
 =?us-ascii?Q?sPlXpXUPe70c9MHbeQxYlZi56/oeWVV6bwVWV65GlHc5U4FeTFPAuM9zNRUr?=
 =?us-ascii?Q?9w0W7WjYfbUONTRkKAEe4+WVWPq3I0YGhLZFWgpccbpVL8VA7iRgznX83Znx?=
 =?us-ascii?Q?vCB8gYUxCUzT7D+9jaJhKr0xc3VvyJ5KO4lbPIUJh3bNULIwKqI8T4X7zC8I?=
 =?us-ascii?Q?W+SOXVd2cFueyupeYvT2iWrClgPpaixWzur2yILVJUF51ubSq+WyqNHbTxNp?=
 =?us-ascii?Q?7H0LC+0IT2dCbXXVVn3ixGQjmaR7QKPOZ3KjNQZLk+LTu00nE9ZwOE0x6IFN?=
 =?us-ascii?Q?EA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe233500-6b3d-4e96-ccd2-08dd55d8f2dc
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2025 20:14:03.4975 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gddQR/V+j7VRBEhV9g7DFSXRDmAd5PGkoBdI1Tz100XJAEyksU3qHTJ3N8Vpujw6Rrvkw+D9S/L+C8sTycYqy2SvdDNMPYcDbi3hHEeAKcc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7277
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

On Tue, Feb 25, 2025 at 01:14:18PM +0200, Jani Nikula wrote:
> Add a helper for checking if we want to test display reset regardless of
> whether it's strictly necessary. This will come in handy in follow-up
> work where we want to check this from gt reset side.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

As you already noticed, there's an unrelated whitespace change included.
But aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_reset.c | 8 ++++++--
>  drivers/gpu/drm/i915/display/intel_display_reset.h | 3 +++
>  2 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index cef9536c461c..b7962f90c21c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -22,6 +22,11 @@ static bool gpu_reset_clobbers_display(struct intel_display *display)
>  		intel_has_gpu_reset(to_gt(i915)));
>  }
>  
> +bool intel_display_reset_test(struct intel_display *display)
> +{
> +	return display->params.force_reset_modeset_test;
> +}
> +
>  void intel_display_reset_prepare(struct intel_display *display)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(display->drm);
> @@ -33,7 +38,7 @@ void intel_display_reset_prepare(struct intel_display *display)
>  		return;
>  
>  	/* reset doesn't touch the display */
> -	if (!display->params.force_reset_modeset_test &&
> +	if (!intel_display_reset_test(display) &&
>  	    !gpu_reset_clobbers_display(display))
>  		return;
>  
> @@ -41,7 +46,6 @@ void intel_display_reset_prepare(struct intel_display *display)
>  	set_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
>  	smp_mb__after_atomic();
>  	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
> -
>  	if (atomic_read(&display->restore.pending_fb_pin)) {
>  		drm_dbg_kms(display->drm,
>  			    "Modeset potentially stuck, unbreaking through wedging\n");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
> index 9a1fe99bfcd4..c1dd2e8d0914 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> @@ -6,8 +6,11 @@
>  #ifndef __INTEL_RESET_H__
>  #define __INTEL_RESET_H__
>  
> +#include <linux/types.h>
> +
>  struct intel_display;
>  
> +bool intel_display_reset_test(struct intel_display *display);
>  void intel_display_reset_prepare(struct intel_display *display);
>  void intel_display_reset_finish(struct intel_display *display);
>  
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
