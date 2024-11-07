Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2C79C1137
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:44:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0347B10E906;
	Thu,  7 Nov 2024 21:44:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pi+g8m3W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67EB810E904;
 Thu,  7 Nov 2024 21:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015867; x=1762551867;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=J3xWc9SPkRqdZ4QumbcxgZLmr2qOasKa178CiPo0uG4=;
 b=Pi+g8m3WdB8T3JVgWxnORXWT1K35v4TmMIYQmYwlWZzKYqqrfr9C5z1y
 g7WoHqMp8TtlKd/J11v/yOyUNw+amoNmrwJV5pF9ICS24DHkmPIq/T2tj
 FMlC4Jqm+ZabcQUwcupq6zKjz1cwK3rR2UFcUYDScbuH8rUC7ku+ytBV1
 aJpRxaemG9ERDqYcSnPGQnDClKR38xLf8sKwvSZAs3KiZKzEBpchxvG3b
 cftmJy395mr53ektaDMJdOMru7cb25QIC43T8AcNIvcL0WKmTljOmWZxj
 yYRUi+WTxRuBKXtK8yYvBKbMKWu0+UCP/1DL3jegFuk/J7CB/ZYNx5Iaj g==;
X-CSE-ConnectionGUID: 5MPdKXi2QUu37wGOOLQmsA==
X-CSE-MsgGUID: 1L5mDhVvQImc3Sm9NdVQsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34576944"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34576944"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:44:27 -0800
X-CSE-ConnectionGUID: vSXaeQUnSY6JD5GAZxdjUA==
X-CSE-MsgGUID: PxotvQScQTCMIjHJ1g+lEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="89890467"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 13:44:26 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 13:44:25 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 13:44:25 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 13:44:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TAjR07p+3lBivpVQEqYtLyTW0dr93M3qzz2lLbU7A9wmUIm71LIFBsGkcDOcAbxTDbOrmRPY3FNEuxWE8fr65xfNHCQ8Zf5+PYy9KRqPQS5nrpQC/06i0Dmd3pbuCHFBCrHUg7U8M5kXv5ng3PDQ/v9h3Ng4EGiTZouCKNa+MecdN1DPI+0/qWUY99row4hkYBMARa/YW3fqWtPsz+dYQeBqC++A8eZH0rQsKjklD53XN8HJNZGCfMUPMuc04c70zu2ywzCEj0auCi9dlqqEU/4YajZRHYvqlpCqId89f3tiRaAVaAJYeqYRYSamscOEEU5J4nytCX7Oij5T5tMSIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aFNjDZH3ysx83o9cF2Asg/xa7I5brQQQHRzvnF1GSkA=;
 b=fV+jRDsXY/qvLNP/NOBsC4WWxhQeBVNSd7ihfbuMkR/vHVWRS5RNUQcr7+HqOG+MBvSSM3jpgPBUmDSLZSD3FVgw0ETssdDZT11fsuEPhqTok68S8Ny9GBQbgVqYsNTPFz8cMZUyIdxbnq0oDzwQUfxOjfwN3nR9CvhJZXMs8dKanIFmJruAeZN40W22CwVktWj9+SUj9cgG5PYH799J1JLtDJSuYLoc9R3AlrpyIG4KrVcftdmBKfoBYA7EZqYe9HRc47SyDX+lfdHC+8UDPX6jZ6uJXFiaZRSZV9LV/JDpiffjUqMFQgWEfg8G5L7tAZ5EltqIZwC/kbB3JDBSDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA1PR11MB6616.namprd11.prod.outlook.com (2603:10b6:806:257::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Thu, 7 Nov
 2024 21:44:22 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%7]) with mapi id 15.20.8137.019; Thu, 7 Nov 2024
 21:44:22 +0000
Date: Thu, 7 Nov 2024 13:44:19 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
Message-ID: <20241107214419.GS4891@mdroper-desk1.amr.corp.intel.com>
References: <20241107022807.869744-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241107022807.869744-1-suraj.kandpal@intel.com>
X-ClientProxiedBy: SJ0PR13CA0059.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::34) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA1PR11MB6616:EE_
X-MS-Office365-Filtering-Correlation-Id: f5dc8e43-dcc2-436f-c3bc-08dcff75573a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?lWv7EOxzm8HCKF73K2EkIhs6YhYVbiBL12/TO1+PGTb0/ykIeKdAsJOO+TEL?=
 =?us-ascii?Q?XldiaXWSeiTpezr8+gFEEoWkul+iuMN2396/aVGmGCZwdC27MlykyxdfZ5nT?=
 =?us-ascii?Q?sYI8Jhcz6RTnKZ43sUKeoMzx3D/Fe0eQbdrgFeOhbGj3/7YANhMlTvpUysx6?=
 =?us-ascii?Q?xlRPSNMW5651YLt9h/MiOW6f/dQ1ZKYH62bYCc+L8345tn0W0Oscx1ObjEFv?=
 =?us-ascii?Q?4PtZFJ2KQMbp47VQuo3Z0QI1BEnfFgAPORC4KIKvR594jyCWpRkIfy89YLZG?=
 =?us-ascii?Q?Iod5s8H7HIzR8VG7RE9zaMLdgHIAF+3/O6cPfkivtlW02sFOgfQy9mGPYYXa?=
 =?us-ascii?Q?H6YDhlDtU+Logq13KTOfAon3TFh597nWi2ceP3yfNo9TSYoG1v9mJMNs8mjd?=
 =?us-ascii?Q?vkoscNrMjocksaXBojE5rQG38gq2pbSPTWRrx4pMurH7Txxudpr0x0AFErkr?=
 =?us-ascii?Q?Hy2/VvyJKYPRH7epthOnM6sODLrw9t6GkDV0ZLeE/dDLWrm+ic2VumScj0pw?=
 =?us-ascii?Q?ujxQT2fYXlB6fxdVxuUnI/asLl3kiOMDlxOukA3W9xGR2H1+it7tW5yK4G37?=
 =?us-ascii?Q?Grr0l3oXNeZdjB4y5oaBPTdPmIxmfeHgyihZ9bI5TR3lIyOLgbZykfUXt6Wr?=
 =?us-ascii?Q?jd2ucGSaKGkBD8Me6y4m9Uhnn0L+2v8F5uRS8k++l3qoqBtkoCNRhk3MXRX2?=
 =?us-ascii?Q?BdHfjENyQJou1/pmtsjQM1K2qBAJsPc5tnT4u7q40cfcKm9qIoWdEyTGPQE6?=
 =?us-ascii?Q?fZRZ4ToksiHuqUbz4Rpn5l9uhzZcbaHza34NflPaCV6+e9JZUCxLiRdWFXIq?=
 =?us-ascii?Q?IxbdOveuJbd5HVMHdIAOiANHm94FSHI6mFovV916dLNfN1Ls+QNV1cphWK1/?=
 =?us-ascii?Q?39fPR09PIGdxMYdkslIcdgZ53gK0HqtCJ5Ch2KiEWWSLSnTpIJeTN2qaq6Ri?=
 =?us-ascii?Q?IZlb+sFcgcH42qrgIHafOr5Vsj7XYthjQN8SS5VigvxHbs0awZOR1jgiB2o5?=
 =?us-ascii?Q?2qPg4ftyD0zcavfqijC1FBf4xjSVtJ+TQp1jC3JNdkjmCVyXo6vFptpLoqa9?=
 =?us-ascii?Q?88ooz6RXIOzUUEkikqjnH0u7ZFvj682d0JKTs9nbtjasKl2XenEVPu+HQrrH?=
 =?us-ascii?Q?seIhGFNSMr6UHWaiEGEivxVWDNdSMSsM/l0vhyfXsLVRvrkmlMJ08j37vYc0?=
 =?us-ascii?Q?VYRpe3clJcSFN8lNFuCD6k5I0H/w8qsv4vYutXMAJlxRs16kalE7sZXCgKh7?=
 =?us-ascii?Q?N0g2UNQkfm2EgXHZEaDk7fTWDKcwZV2qhbgFXBU33C140cbFrXztzFxjC1ZI?=
 =?us-ascii?Q?8DE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/FRZbAjmVKlR9zMTd9IxUrQy1gRYg/7FDTSgRsTnHqIqB30DczFGqUEf1kSX?=
 =?us-ascii?Q?CvJ39Mpv4typJC0KvVOJQCC6WxPy0fjJ4YxUeurZ2YbjkT87gOj+HrZfP9mY?=
 =?us-ascii?Q?geAwd0lqFtPpDesSEN9G4T6truRJWvPJE7kDo2KohwJfD81GHbBQBrMi6BGM?=
 =?us-ascii?Q?jqC5cJr4fddZZRQzX0KcjcOAV0WzlZtsCVeMnmh8hP4hS6FbxaOanc4dUdEW?=
 =?us-ascii?Q?DOiEibr0GpbXjWlWW3KQNIbBGuquqLARGA3ayc7O/7ECuPEcbO/N8jvjXgui?=
 =?us-ascii?Q?GAiuzyAMDi/coSVeT/Sbm5iIkcpsD6mxb2rIBHOP8VlNkO8wTdPDWI9F9mda?=
 =?us-ascii?Q?/CoH2Rb/PHyn189T1Dhno7HUbLvJSzkdCFj3qQKlta0TtptS8g3UUrFhf+qc?=
 =?us-ascii?Q?f56KkSzdvwF8TP0oQJ4bCx2lGWf9mVm+SrjAiiUyYP5TnYuhPG7l7VJ2tGsn?=
 =?us-ascii?Q?XaUhDzzPyUg+urD3+vz/v2EccJM/z269q2uN1p+SqW75Y3Di/k24bOX7zo+n?=
 =?us-ascii?Q?f73m/W+5f7V3YWqhmy9hWk913ztEaYJBNyu5nhAuBeXAMO8BrVHItq2bTmzG?=
 =?us-ascii?Q?S9SfxYccSYFyxZplepCC+gC0uf4NZmTrdV0/8UigBiaCb/3gWP+pR6FCYLMg?=
 =?us-ascii?Q?4vHDegIOlrS0nPoVVA73O19yOBmWlCiuDpJRHU93sOSnpDnYPNheDeUfrjMv?=
 =?us-ascii?Q?4mZX/Qk7XA+4DMfprNMVL4bD63pzKY7TI+3PXTOzuCh4H6QfhcvcL2WY7j7S?=
 =?us-ascii?Q?RK2a/1mwJW2DjcPEwLuyDB0G+2xBex4Q5aDDdp99IWZXS1B3iPDO7+R/N6d4?=
 =?us-ascii?Q?ae1J/FFGpFHU8PhQ6BtVMi5PUszEAPiooFMeaaylb1/yPYWCLdmoF4rx2lzR?=
 =?us-ascii?Q?P2dAxTMGMbJrC8y2s8qVUB0jnAsUZvUwaBTLYIFYqCvrXPwGd55i3W7lCURf?=
 =?us-ascii?Q?K1sialzeWlwQ0zsRBhP7++MjV0RGygAdtWmohZuSX7lDiM2FcITOMBuQ1MtJ?=
 =?us-ascii?Q?CF/uGfpip89o+kIfjrUI7YZjIBb3pij75eQFpl0/VaIl7EQDo8ZkettcoKGN?=
 =?us-ascii?Q?4uoHar0sKsPUC3FDMP1Ef6f/PVN4YOrVdDhL2RkAgp7f9oJLGIB9g0G8VOL5?=
 =?us-ascii?Q?QhYcJs6xpvgr48K67qZE+k93lGJN8qiaLmQbZgO17laqxGYr9qzxTDWUE5zT?=
 =?us-ascii?Q?SyZJNCEW2oY4CnUDA6pVnetNMJv/eCIoONNZCfPuaN6YYxFEX1sE2VRBMIAX?=
 =?us-ascii?Q?gD894rWNWDCCdiBthjfyMCLKAbr3qp482Rz1noH7R6by6YINtLS2kmDxvz/i?=
 =?us-ascii?Q?cxeQ/VCITOYTrZ4FcpL/Q414X6RiksCiHNdne2q8HG6pZ28hUVvSzIawksmI?=
 =?us-ascii?Q?nb4RB3d9HElvfYLFyKtTse8vlYYtrJAmMM/1YzRjf8vAw4g1jp+EXIJ9nxZq?=
 =?us-ascii?Q?eKqzT5GLMgaB7wNhL8mF/zd8+SrT7fOHN1OfBj4eZqhHyECSz9sFwR8LnPh/?=
 =?us-ascii?Q?mz7impR/vwSVdBn0eL+CEp2WOrY/nyNwqzHK3JqCGVdbpRxOWnPuQ2rXzGN+?=
 =?us-ascii?Q?cYf1ZGXOcaHx3nko7uRqvm4FsdxpCUbWko8iiWskD/91X8p5BqcDvABsGN+w?=
 =?us-ascii?Q?Ig=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f5dc8e43-dcc2-436f-c3bc-08dcff75573a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2024 21:44:22.0880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wwRyaaLiK9E6CbPYj/CS0JCg0M5Qgy78ndKZ4l0V91EFdzSe3FHZntmB0/KxHlSznSKc4sCF0Nq4dcr1eoAjEKIKOfRp+fu6a99MCwL//K4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6616
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

On Thu, Nov 07, 2024 at 07:58:08AM +0530, Suraj Kandpal wrote:
> TRANS_DDI_FUNC_CTL asks us to disable hdcp line rekeying when not in
> hdcp 2.2 and we are not using an hdmi transcoder and it need to be
> enabled when we are using an HDMI transcoder to enable HDCP 1.4.
> We use intel_de_rmw cycles to update TRANS_DDI_FUNC_CTL register so
> we cannot depend on the value being 0 by default everytime which calls
> for seprate handling of HDCP 1.4 case.
> 
> --v2
> -Use the exising function and modify it based on a bool rather than
> have a different function [Matt]
> 
> --v3
> -No need for kzalloc [Jani]
> 
> --v4
> -i915_reg_t should not be pointer [Jani]
> -use rekey_bit to ensure when writing to reg everything is initialized
> 
> Bspec: 69964, 50493, 50054
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 37 ++++++++++++++---------
>  1 file changed, 22 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 4e937fbba4d2..dbcdd1777fa3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -32,27 +32,32 @@
>  #define HDCP2_LC_RETRY_CNT			3
>  
>  static void
> -intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> -				      struct intel_hdcp *hdcp)
> +intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
> +				     struct intel_hdcp *hdcp,
> +				     bool enable)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> +	i915_reg_t rekey_reg;
> +	u32 rekey_bit = 0;
>  
>  	/* Here we assume HDMI is in TMDS mode of operation */
>  	if (encoder->type != INTEL_OUTPUT_HDMI)
>  		return;
>  
> -	if (DISPLAY_VER(display) >= 30)
> -		intel_de_rmw(display,
> -			     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> -			     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> -	else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
> -		 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0, STEP_FOREVER))
> -		intel_de_rmw(display,
> -			     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> -			     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> -	else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
> -		intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
> -			     0, HDCP_LINE_REKEY_DISABLE);
> +	if (DISPLAY_VER(display) >= 30) {
> +		rekey_reg = TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder);
> +		rekey_bit = XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
> +	} else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
> +		   IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0, STEP_FOREVER)) {
> +		rekey_reg = TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder);
> +		rekey_bit = TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
> +	} else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER)) {
> +		rekey_reg = MTL_CHICKEN_TRANS(hdcp->cpu_transcoder);
> +		rekey_bit = HDCP_LINE_REKEY_DISABLE;
> +	}
> +
> +	if (rekey_bit)
> +		intel_de_rmw(display, rekey_reg, rekey_bit, enable ? 0 : rekey_bit);
>  }
>  
>  static int intel_conn_to_vcpi(struct intel_atomic_state *state,
> @@ -1049,6 +1054,8 @@ static int intel_hdcp1_enable(struct intel_connector *connector)
>  		return ret;
>  	}
>  
> +	intel_hdcp_adjust_hdcp_line_rekeying(connector->encoder, hdcp, true);
> +
>  	/* Incase of authentication failures, HDCP spec expects reauth. */
>  	for (i = 0; i < tries; i++) {
>  		ret = intel_hdcp_auth(connector);
> @@ -2062,7 +2069,7 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *state,
>  		    connector->base.base.id, connector->base.name,
>  		    hdcp->content_type);
>  
> -	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
> +	intel_hdcp_adjust_hdcp_line_rekeying(connector->encoder, hdcp, false);
>  
>  	ret = hdcp2_authenticate_and_encrypt(state, connector);
>  	if (ret) {
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
