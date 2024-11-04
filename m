Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B52ED9BBD01
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 19:15:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5319310E0B5;
	Mon,  4 Nov 2024 18:15:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JoftMsBe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C42710E0B5;
 Mon,  4 Nov 2024 18:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730744105; x=1762280105;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BYCYMvmwTBDBDGr+MnajW3pvLH2ESNQsOFtAF5cM/18=;
 b=JoftMsBeX/H+L9iRxaYMQI1TFOaE4AsjO2/na+dGlZ6UC+uDY6gPv0dP
 C9eXH2zqa9pAxnkF6fYjm1HcsVvoScWfAXL/v6qye7+BBpFJJuPi/jYAb
 W9Wuv0MULB6grTTUA+ZyBDeJhaeS/971ddGphKS/FtfN1mV/OP9sWGhmw
 /9rts+gDwXWhRuc0IpqLpAuQPQS3NqYBs5x3l7QLCC4XcB1MRYHLZwRBZ
 OAYqy9Sy8XfVX9qut9+jR6+fb1KtXkz+xmB91er7tICvgZwnLOX/69/RR
 cPttXootrMu7VpggGA9ncAwDFKty02RR5ATAoHodqgee9hWudM4ubEZnE A==;
X-CSE-ConnectionGUID: hPdEGfw5TXi39nEYvEj0aA==
X-CSE-MsgGUID: Vmzm43R+RUazWLVFW0/qNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="18078731"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="18078731"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 10:15:04 -0800
X-CSE-ConnectionGUID: 8psu3UpHS1+EZ2AeYzaYfg==
X-CSE-MsgGUID: uvrqr1QBSL6HpOfW9JreFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="121211779"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 10:15:03 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 10:15:03 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 10:15:03 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 10:15:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kaHTYElJib88LhCfsKii4esYWOroeBPs2BO/xZqLdlSlQ91LyAn6Irzl6fqL6z86NQTTROL9qCusnHPYsgt0mY1GCT6MxZKApOFXmKS8C0MMOSYPoVrelS0R5R02tZ2nS6BRFGZzp6/TzgNYBaR2fWf5ct8zl2MoGSQ3bSdXQg4lY6waOo6OCRrNWZI54mhRsK4oVQ6V3IRLfceKGOqIq9X0pTQqjr2I4aAtzTg9nE/bk9Fe/Zw77K6SaZ6z7axe2xQfI+M0zUhaRva01YGDHeDMaTrf2A5lYVCXUZ5ZatwFOsyoDY8dQ8TLcCRmtkAMJVE+nvFlI4oBX0qah6mltw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gsO/63whK2S/3fvzlhIMp11L+MkehVJejokx6fe14CQ=;
 b=uskgCvFp9eFOIlyXtNwfB+qhv6XGv6fgcE5qeVq1Wl6DmPQzryhYsdL/4QhvJ19mnN+DwELbGiRhOKWDzxw1UrgsK9pEc9gF/GuTb3Gh+pUPbZs6NvXYPXfNUnWRTnFz/Tp29V2ZO6ABPcnX8eDhKCKArEQ5Rp6+sb7yGXdb3FfBtQDPH3tfwx8E2A0rSBMaQF87KPVw5M3DVhBzP0gkU+lylWKI/LdiQyYh3w9Bj/qaU+E7b7WdzYHEFpgAq7pJoCiuVItNsemuNFGrB814LpwvGS/BVpu5E1wnqo3lV43d0BIiM9lScZD0bU3F9QYJ6RTnF5bE62X8j2oV97CZEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ1PR11MB6202.namprd11.prod.outlook.com (2603:10b6:a03:45b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 18:15:00 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%7]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 18:15:00 +0000
Date: Mon, 4 Nov 2024 10:14:57 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
Message-ID: <20241104181457.GK4891@mdroper-desk1.amr.corp.intel.com>
References: <20241104083143.631760-1-suraj.kandpal@intel.com>
 <20241104083143.631760-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241104083143.631760-2-suraj.kandpal@intel.com>
X-ClientProxiedBy: SJ0PR03CA0153.namprd03.prod.outlook.com
 (2603:10b6:a03:338::8) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ1PR11MB6202:EE_
X-MS-Office365-Filtering-Correlation-Id: 0374cab4-1fad-400a-3d12-08dcfcfc987c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qb6YRuAFUdALa3rFsctbVKKDEWFPsaHusLL5JG+qfKfrHonQzjFf9MZXpW5k?=
 =?us-ascii?Q?fFsosNd/JSZIh8VaKKebfuXG07KMdaLbGHulKDxhZlp6idpqtr23Sr4Otq3f?=
 =?us-ascii?Q?AvKTSu9vQpLxaZAUGPgUl8yvzT0SxRpwe4vk1mzy2GI06uM2aGPF2SLAjA9U?=
 =?us-ascii?Q?Ue2ig58rL7vTLCBRvtdHyoK/CpKzbiJ7rq0Yd8boOAxFQT5b/dnF4BV7vFaJ?=
 =?us-ascii?Q?oMuQI1P01bUos+g48rvfiyCjcf/C+RVmSbub5qBdSvCZvPlO3K5FUXo38EvS?=
 =?us-ascii?Q?/0WRCiQpcEyb15HZulnXjkKXeGCCaPgJWntlswIYQSdte3/iqgczi4AJAZpn?=
 =?us-ascii?Q?UDeH7aQAjo395VKpTXy5YYJ4vj7kfDVmHu6EBVdj+2tvFQbeeGAilo0APTEi?=
 =?us-ascii?Q?1jzHRXI6qrxgv6CMDqokRz0aL46ClRlgWWIE251yKr6N8XCP3YGj3bGOtEI+?=
 =?us-ascii?Q?exCQMEE2jFEAiSQj18+FQZBI4G+KCqNLgVDYJ23/4KhYvMvpuomIctLhD/fU?=
 =?us-ascii?Q?M5vSuC/C1P5LI7ESbnBI0Z63YROckWjXdTk70ayG+w88n9Gb+VWHUx5O9zqi?=
 =?us-ascii?Q?rnRZ36jPBfhc9cBaRZwurEhqwerIJyqfhRC1LFzEtcw+VcUXLI5k0JSYEJx/?=
 =?us-ascii?Q?CV0ppmhfVF5JQrtR4R8ZGn7k3PhCR97m/nwXs0caq0LP5zMBg9Qlguv6E6gr?=
 =?us-ascii?Q?s4xwt2iotY2Y4d9lifoPTCMZYwZhaU9FAobSdHhjdd90sAh7R7vcmWd0hZG3?=
 =?us-ascii?Q?evap+3Oj65kCaBDz8tRhT49H2Red6zv10Iv4hdxCenzsdWWE2hmI/yib1btN?=
 =?us-ascii?Q?dle8tkpm8K0vKNc0DHj7cBqmylPCrt9S56MijTBKUDK0MDtASpiBOFFDzoO/?=
 =?us-ascii?Q?Ul5xRi18komVdr6K0z/nWPrzFG/j8NOh5V77uvIMikKEvruZXuFhS4unDFjx?=
 =?us-ascii?Q?7eGS1SgcsmxuUn6ePIrUl3X2hIE5aKgHuo8IOttCoAo1zRC5zgO0uBReL8Ab?=
 =?us-ascii?Q?3UoUluDFOTuUvh+Dwe/2mC6M01OMR9HDEI8P6jaZq1gr5e5u/N/4+0p38UmA?=
 =?us-ascii?Q?WE2FybUepLCJ6F175c2PcAH/Em6VVbT339iQwhUTEPA5eAd2lSRAJjbZErv9?=
 =?us-ascii?Q?3IyUD49JwQP2Xnz5H3diols94NHWqLLbbaZL9lw5uw36E/q7T4FGDGgg1eY3?=
 =?us-ascii?Q?fxqkyeH8thp+3xomVxTI/d0WE+6R/hcLNY3+sqFXb5DFKXJlMGQ1wF3hkLSx?=
 =?us-ascii?Q?haN8ZfqtZic/1jnZOLs0yvR8qa067Axn6NyZqM9ioXXCRsK129nMVPwQ4/RC?=
 =?us-ascii?Q?uk+RHHo8i5e9u6DrulLa3rYz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zfIN1hrybIWbxMpwkmhWbPzGjUw/s1OEVvAbqpIpbP0M4Jw2TPYEaq4HkaQa?=
 =?us-ascii?Q?ZhvRTp4bJml3kW06gs3i8H/LGssA7Ry/7VekdjLSOmlCoU5i578CRhmFUZee?=
 =?us-ascii?Q?UHYEYEI/5s8jBprjhctOo0lOjMQtJdn2MkkriGT3X6SW+ByYRlK3W3sMAlbI?=
 =?us-ascii?Q?/lE2KZYLCGvzVqybPdQp4xd+JVU5JreyGUDmVnExMc0RHT/V7ODMR89zPhGk?=
 =?us-ascii?Q?oduS0X2RT6YW/EMbcy8yfH7IgnviOr5qJIqNJtLlXZGu4PTMwAEpGMtOQAsa?=
 =?us-ascii?Q?SHLSpRnyuPwP5DTu1I4QbiYJwsu04M4PiGhdvVrZsPK1/ENwV+MjOTM/zhYW?=
 =?us-ascii?Q?Ea6Vjq/Bx1hlVsCfFRcsS+SQkagkGCRBr6z/kaYt4BZ7VEGbSGuVog+u3rC2?=
 =?us-ascii?Q?ABv/qhOrT5+URZuJXp57mr2HUILt5wgwButnZDNbNZSZCNntWkDgnYSZ/Avi?=
 =?us-ascii?Q?1KYq/wG+vNFGx/l5DQNPpYW6jPb1MN+ES0qnAfqiGjJmh/QXLwPqRD2G1hdX?=
 =?us-ascii?Q?f2oLxdXjZer0khleDHTKr0hDU0pvyxn9PZVLjjsG0JzpgtVOemIurw7YMyRz?=
 =?us-ascii?Q?rhNFn/e68HdWWfbT0gC+S2EuOId7LHUDmhffQjubv5Ggm8nPQMmKoPoiy/pY?=
 =?us-ascii?Q?SBezlSSwUjiFqYp9/KVmg1SlOtpO3VDH/qLNBHQEEcFvqj9oSFrsYjCaeEyf?=
 =?us-ascii?Q?vteWy6hEnoe+aP57GjUBkltCQRbecX9k/fbDA4loCstul/k5xGXuYq7E6DcR?=
 =?us-ascii?Q?4uiZajw2oGAKyTCGeuNYQxzcwv2hN3GfKVZW8PWx/vy1V1u/3S1ZZcgMJFD6?=
 =?us-ascii?Q?soHQx0abQEsyuXgHCfGhAoEcshukgravG0lLKy+ICvhO3lfiFetbu99Ta8Iy?=
 =?us-ascii?Q?/Se8txzI0zLNzknZw5nPPX5Rp5gMLXdmp/aDtMD68meNcW3luRyl41y/8Rq2?=
 =?us-ascii?Q?+b0OCviYP9EB6aExZxzt8jNghTEBewQDDfctbiENilS/6VfcQMzbP3YccAds?=
 =?us-ascii?Q?/4WFxW8hGMK+cAVlHxKC64rgRg3/YJjcy/Ue+kAtq9pRA4Joj/m9DfyUe4Om?=
 =?us-ascii?Q?eEnkyvY2nNhCXTKdR82sx1YsgCWqU3tTXyH/BYmPnS+YCpmBBZPVY0cdY9V4?=
 =?us-ascii?Q?Bj+jT2Urn1wyrRwZPUUWsXsC2yX9C9fnPyAKxrVv5xkGXswZcc7fVRi5ff8q?=
 =?us-ascii?Q?ZNHoCK3o8MP3kW8TeZIqYjnQAwYozHuG/i4DcvUJt3R9+vVQvXy8JT+pcOeD?=
 =?us-ascii?Q?eZ9ksC4DXNL9SWyZyaR7Q1vBDxcjFKc4Uur9/PBo+UgpeQBkY4S4DNldxCJf?=
 =?us-ascii?Q?GuiX8VhClMw9autPH9Fb3JE79eTfxox3pabADkh9ZE2iAR9wHIgs5ubK6jap?=
 =?us-ascii?Q?2tx77l4QnXrAHtw+NyA8T1MxujNsjR4qe/LMsAz+xzjFVkgESRPwnklwReuE?=
 =?us-ascii?Q?R/sp/XksyYV1GFHLRQhN8V1T4ATkgTOEPSjrQTNyC0ND1zK+auhE0wBweLfs?=
 =?us-ascii?Q?CO4CHVFCerBfzL0ty70jh3VjVoHf7yxz6MCGylXVtVDZj5HgmnXwvA0GZ0T3?=
 =?us-ascii?Q?bKtoThwf+F25ZCx+Lgmmia3P2lsLAJ6BXmrKbzX+wvZuGlF2pJn+RxE4zhl/?=
 =?us-ascii?Q?yA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0374cab4-1fad-400a-3d12-08dcfcfc987c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2024 18:15:00.1817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DyTDwo9xPp1cn6S3TO+lbKEfjZq/xixu+JYUpKOyHd4x1gN8pkukkUVByOwjkWsT3azXTdos4SW5qh7kR710rpI3bONvCYfYnMTVII4uEdc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6202
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

On Mon, Nov 04, 2024 at 02:01:43PM +0530, Suraj Kandpal wrote:
> TRANS_DDI_FUNC_CTL asks us to disable hdcp line rekeying when not in
> hdcp 2.2 and we are not using an hdmi transcoder and it need to be
> enabled when we are using an HDMI transcoder to enable HDCP 1.4.
> We use intel_de_rmw cycles to update TRANS_DDI_FUNC_CTL register so
> we cannot depend on the value being 0 by default everytime which calls
> for seprate handling of HDCP 1.4 case.
> 
> Bspec: 69964, 50493, 50054
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 28 +++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 8bca532d1176..54efba65ef5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -31,6 +31,32 @@
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
>  
> +static void
> +intel_hdcp_enable_hdcp_line_rekeying(struct intel_encoder *encoder,
> +				     struct intel_hdcp *hdcp)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +
> +	/* Here we assume HDMI is in TMDS mode of operation */
> +	if (encoder->type != INTEL_OUTPUT_HDMI)
> +		return;
> +
> +	if (DISPLAY_VER(display) >= 14) {

As noted on the previous patch, this outer 'if' doesn't do anything
since none of the nested if's will match versions less than 14.

> +		if (DISPLAY_VER(display) >= 30)
> +			intel_de_rmw(display,
> +				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> +				     XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE, 0);
> +		else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
> +			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
> +				     HDCP_LINE_REKEY_DISABLE, 0);
> +		else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
> +			 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0, STEP_FOREVER))

For new code we should definitely be ordering if/else ladders in
descending order.  So the Xe2 clause here should come before the MTL
clause.

Although it might be cleaner to just have a single function that takes a
boolean parameter to enable/disable rekeying?  E.g., something along the
lines of:

    static void
    intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
                                         struct intel_hdcp *hdcp,
                                         bool enable)
    {
        struct intel_reg reky_reg;
        u32 rekey_bit;

        if (DISPLAY_VER(display) >= 30) {
            rekey_reg = TRANS_DDI_FUNC_CTL;
            rekey_bit = XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
        } else if (DISPLAY_VERx100(display) >= 1401) {
            rekey_reg = TRANS_DDI_FUNC_CTL;
            rekey_bit = TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
        } else if (DISPLAY_VERx100(display) == 1400)
            rekey_reg = MTL_CHICKEN_TRANS(hdcp->cpu_transcoder);
            rekey_bit = HDCP_LINE_REKEY_DISABLE;
        } else {
            return;
        }

        intel_de_rmw(display, rekey_reg, rekey_bit,
                     enable ? 0 : rekey_bit);
     }

And we can move the stepping-specific workaround implementation to the
callsite to make it clear that the implementation of enabling/disabling
is separate from the decision whether to enable/disable (as impacted by
the workaround).


Matt

> +			intel_de_rmw(display,
> +				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> +				     TRANS_DDI_HDCP_LINE_REKEY_DISABLE, 0);
> +	}
> +}
> +
>  static void
>  intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  				      struct intel_hdcp *hdcp)
> @@ -1051,6 +1077,8 @@ static int intel_hdcp1_enable(struct intel_connector *connector)
>  		return ret;
>  	}
>  
> +	intel_hdcp_enable_hdcp_line_rekeying(connector->encoder, hdcp);
> +
>  	/* Incase of authentication failures, HDCP spec expects reauth. */
>  	for (i = 0; i < tries; i++) {
>  		ret = intel_hdcp_auth(connector);
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
