Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 089F7A13DA5
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 16:30:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E2A410E9AE;
	Thu, 16 Jan 2025 15:30:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HXlRJfsp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB4AB10E9AD;
 Thu, 16 Jan 2025 15:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737041440; x=1768577440;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=X7Gwbyb1IehZxFmHM+t96wduCPfnZwazxluQSpZfOSQ=;
 b=HXlRJfspzwEQqy9qkNYbVCaIyUsqJveVpswcFmX02rRwAxybFPDDVaah
 SGhLtwyr4rtGasr60E4YPynw2nuN8IYuI76G/k1rRmvVcqXlmMiV7WFZ0
 tq7ahI2u+/NctjoCsdwokvxLFw2i/kqehLJ+9KP9hR65PP5YaA2yT3VD3
 mjmb0e610ozlhK5KT+B7Q81clYhCuu3fHX7nxuBeOk2qWJ/zpDeo/cvFa
 KvBykc23ryQzvwqbBrnVz25Zuhqzmwxg3TY0+xpC1Eyc35J/PSTVPP8JR
 M0Pb2XpVaXDBIbzqe/jP42pRk9xymyWskIQgpbd7cpoCVps3D99n3Ls7L g==;
X-CSE-ConnectionGUID: afb6QtAmRp2sN0crVLvB/A==
X-CSE-MsgGUID: x4hKTFCIQX+FmBMm1YWxOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="41368895"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="41368895"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 07:30:39 -0800
X-CSE-ConnectionGUID: coe4y8AjTXiJZaNb1S+jDg==
X-CSE-MsgGUID: oQrxTx/IQ/mhr1pGEp1QEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136394083"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 07:30:39 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 07:30:38 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 07:30:38 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 07:30:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uEXy45CJs0iHnjZiapRcMRtPAR+JGsXoyFdfWumR+mHNELGL6o1WWl0B7QVIT4qZV2qvnJ0Fc6zJt1rubZ2CZLfaIJNZWHOdsZvF+rWhFGPnC4j1qFsK/aqfo3Zw3M4kOQaJfsd452nVXTkPCT7hb2PoYNjcpfo8nAmUCe0nvWWFlvsi2OuERZDcAoZJnA8J+ordGHxbA6708WTyw3h8Ukz2qW0zSqNTJ8Zjj5u2Ar36pecFGvh5RjU4AuU8uf00jKrW4amnwBsBYCxKyLMmIBc6R2/3eceECxnOjbp+vj4NRgjW4CXaLOEmhlMQ0NHBQ6mEkaYDU0/7GJirWXHn8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7GSKg5uYMonNvGa1kTu5T4kFspAe2XZvcNmZPztbQ50=;
 b=vERFdfPEqUxojQBwofmSCvJF0/e7YXYzy7NZbchpStdcDpr8z7R94uOLfl7ZWZBbo0f6/9FpwqkdiL78JsFpjp1rFDo3QW/hgbZidFHqw8gwiMWCHR4rWVRVPgHYpWqL4wi0DaExzrTSshyaWho+z8z1OdCVMvX/uJ4okn9wsXv0aKR2bq3thU7KCsIKMhqmFrBsBz19jY25YpJGFUika+zmIPBi4Mxkjeh5GcB3NTBvSFmYYxOFX6cgDGK9hLNkNdWX0IrSDxAllxi8qXt1KNVsPzeH30d+vKe40h7aLGTpkRO46TcXitVFjsmzONsDg9AKwMzW+pCZPgLNS5BtwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by DS0PR11MB7261.namprd11.prod.outlook.com (2603:10b6:8:13d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 16 Jan
 2025 15:30:36 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 15:30:36 +0000
Date: Thu, 16 Jan 2025 10:30:32 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dp: Correct max compressed bpp bounds by using
 link bpp
Message-ID: <Z4kmGN0RrY7VVBzQ@intel.com>
References: <20250116095416.68325-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250116095416.68325-1-ankit.k.nautiyal@intel.com>
X-ClientProxiedBy: MW4PR04CA0223.namprd04.prod.outlook.com
 (2603:10b6:303:87::18) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|DS0PR11MB7261:EE_
X-MS-Office365-Filtering-Correlation-Id: e08e348f-938a-4c12-53c3-08dd3642b944
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tSNXz+M2qF045vIOOOyS/t/LJeseBsG+JPM5gFIsSgT6Dmh7qmNajKz9HtJ7?=
 =?us-ascii?Q?GBCQRbO5DUf5wAfCnbMmqsv56I/E8ykyud/mI3CrN2d3F1oxytwbgTMhhOrW?=
 =?us-ascii?Q?hFIisqEQFLtgbKmqqzK6KJDfVrFq/28E8/RqEvcw2OAfrLhGKPMJgozFt1UZ?=
 =?us-ascii?Q?253rYhxA0EtpRFXfYOrc0D9IrXvoS9Xme61F7JfFZmuh74YeOvKdLqNStFDi?=
 =?us-ascii?Q?Qyj6ObzP5T4tO3pI0AsZSPE6s+L8fDyZ2ZipJRF5OV1dGT3wcK+oU0pmm6x5?=
 =?us-ascii?Q?NORfs7v9MMH3Py39dvkRyP5ROnxKbNemd6V+qlhQJzATJ8V7ivICGe4y2JZV?=
 =?us-ascii?Q?3lxw92ZAx3hW3Ze5lwi5Wa2Cqx5wtByRxT0894JjSEaDEzESH5R4EKZQcDfm?=
 =?us-ascii?Q?bAew9cJ8U8oyVckjU866pHek3Y9+1E/oRHswJ/t32HrUfweCMWAKIefydiLF?=
 =?us-ascii?Q?zKiuZRCXEOH+peP2eMNpjD1xzHNgxLdxpfUqQQy2/OUn6ME/NdlqR9wO+NeL?=
 =?us-ascii?Q?o/zbzuPa9luEsUz2lqwpm8g92tzaZLTDZZOdAENsxjGtMGMyINT3FrXUVvNy?=
 =?us-ascii?Q?KewKEkvFW7B5xjTMjlgGO0wWxF0+bOSSqN4BB4WIgDnINmXql0nQEN/rbgSq?=
 =?us-ascii?Q?nUKz60a/StZGA5bEai/13NJvbGIDctKBSZxXmPN0Gz8DVQZXPkY80l8Ksu/b?=
 =?us-ascii?Q?c+xvrFi7w0EfqfHYaz/lAHbx1UGn3kGSXVCDLFd9bmeodKJX0DL7cqnwP1Er?=
 =?us-ascii?Q?rXNFaM1KCptUdQJDwRdMbBDNj84lDFs1kepK755UncNgafk0bPqqR7pGl22C?=
 =?us-ascii?Q?X0x1NDCjvMm3K1mH4cGppKXOIIF6sZedxIIzSNPGKRooE4VyfWD5lvVjYWTN?=
 =?us-ascii?Q?fOnmb4AWuFGyWVvhC8w9FYPFbFtpx9nBiMZpCd8YI6PK79wX4duG5RitpK0s?=
 =?us-ascii?Q?hM43jAHsXvKWQKRkfqJzlHpR7sJBalqHsjsNXyrPRSZ/hPzP+Ne6CiZwOaT5?=
 =?us-ascii?Q?wMA5KOFHDi4UoX2N/eYAY6h0T9cwNiICcRqzpyIC+qfrcGQ/jGhlBRwufUv5?=
 =?us-ascii?Q?eGXr/wnoLBKJZn4U1iSO+uV+kp4KYGGUCtg5aJ0n2L4bmnPkphG7xQS1pi5s?=
 =?us-ascii?Q?vqyADH1tMF07IzWgVQL8aDmWUcQ1lxwsFxge2CcFMUms6BJRbKZGh/rwfkl2?=
 =?us-ascii?Q?8k8OSHivLqBreIxBnajaCMaiM7XdQNVRX8tLOqr5jvVN8qcp5WQcKPm/vGX1?=
 =?us-ascii?Q?xvNnv6vhdWjUQacxQX3gQFvtqZX3pQp1fPJgZHdx9QRZ2BdFtG4MYRRl/+HI?=
 =?us-ascii?Q?C2juqGj+BCZYr4JADGweYWTG5ebYQTyppqYKO+efB5js3CEx2caOjPkyC4PY?=
 =?us-ascii?Q?XbSgrZTIEDMdf0C/eqZW1P3gvXP4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2sJ14iiizH8fN7kBv6UW7b//LyGcZ2pFs2TLF6FekNkBtFqSTBrYVsI6Z/TC?=
 =?us-ascii?Q?sqnmLI9ibE0ATtLn+TUw69TasYDOf4qQuDe6MaCjd1OECMlonIQ048gJVw/j?=
 =?us-ascii?Q?yc1qos2gPMuEK9aV6fgzs2NvwB6OfjtERlZK/QILAILOFGdxDbRlySVLqlft?=
 =?us-ascii?Q?slaf8G1k06SqxL+FT7hCYjvCOcf0UR1EAbi6LoOqnN+9O1u/O6/OvBhQSI4V?=
 =?us-ascii?Q?Nf+ka7QL0f4M2OF4fOgE6Vz74gCPz16Vr4PV8DHrhiooN5moBQHjGjuL8+6E?=
 =?us-ascii?Q?G5Ae9bQyKpLkWBlu/XQqcoarCtqXpRo5nYutcHaSOzFtUfghcUzG7MrP577l?=
 =?us-ascii?Q?oH5yXBTZLKjJsSHaacJYCp3iiUOpxfSMb2rD6yK5uSiKLRrn3TK3iBjaYSBy?=
 =?us-ascii?Q?MUrGFGHqf+ylGqSe2CcTcT9C0kVi0OymvLuDiENfCYpaps9BI9YYaCxuWS1X?=
 =?us-ascii?Q?aJD1hJAieBlA8dP3T46AeNK2uCUbaeZqYguJt94SlxtYYdQe3W54WxGhBZo7?=
 =?us-ascii?Q?tNiI2t2Xh0nhsSNWnArdCKys1Vp4jxxDFwbE/Sv5lgSpAeKZvMQLjYajbpZW?=
 =?us-ascii?Q?sk76zsMrrvo/8t4D26gzZ1gUiK0ad7ICgV+PlwtO5qlhYA3miNBk6OaDe8Dh?=
 =?us-ascii?Q?iz6RwuqhxK7fRDrPutZKnmvqn+hWQ54QNV2CVb/hx08caWul+VvLWrBpSHVA?=
 =?us-ascii?Q?X8oqYtyw3lvPJPDyhkIe+hCGkjVw583r0oPPq/1SXLg759HJ1N4oapocvQ6o?=
 =?us-ascii?Q?4EpDDutH+/wLM11CndIGXA7IMYpW/UIIs7K8JV9qrAEZzBksa7nzDaQNNxrd?=
 =?us-ascii?Q?SwnXog3cW4DR61ZoWt4dDzp0T2qQUWXegWDjeRz03xXntAV+h1drK8tqPsxn?=
 =?us-ascii?Q?+2V30ecsZEvkiqfUjhgvwOsXPdFKFM1jCIJb+hGkVMXqtC8XHGUWexHYN8he?=
 =?us-ascii?Q?Ejmv9T983foDvXUFbgi3iEuOeNSCvBQlOvCFTCPEdSEtDx+PGlf91oPAH35I?=
 =?us-ascii?Q?/G/jv1gfBnehrUhqXRbX8Ti4Z03qEPb1c07F59yy+Rws9Tuvr/leTE0/7A7f?=
 =?us-ascii?Q?MhoBtcrGjx63ZmxYlPDzDBMk/KyUk8f9JaRnL1AnGqfJL1cU5S0mexhgezOM?=
 =?us-ascii?Q?/i2AZINDDBcSgu8/rjsPiAPTtsnBXv2ngIjVRxsCBNyvMnY11OeenY+rADFI?=
 =?us-ascii?Q?N11dLLxIixaiNAI3Zcb24FfmuTWU8xqACTCFQzF6FqiPTosnNz6WkQl0AtAc?=
 =?us-ascii?Q?DHWCo/tSQQcp8ggb9pu4kz4Tj+PDkqMrcLj/15D45p7OaGIDGdpQgxMu5vfi?=
 =?us-ascii?Q?jik4Xdqe55RlsnTMUpyMwZL1Hj89cEvtbX2tDOM8W4/Q2qKpialOnxpLlSHV?=
 =?us-ascii?Q?dLj7L6o8OWBy749ajltbWZ1lsic3xhSUxD6ga2AAso2ODUMh+Spwv1GpqN3s?=
 =?us-ascii?Q?XMcFgDfSeg/f/U4/KV4Ajn0Sb8vLRP0q3W6v6z20O9FX65cRWbo7R0xAYCOA?=
 =?us-ascii?Q?kdUB+ahUZFMfrNkrfvWgOa7vVt3D9bD4evhvLmDGAWVb3OLXexA2MmkQPlEB?=
 =?us-ascii?Q?XF27bKv7lheJ7S8RKOYLx2FZBYOog05kzNTg2/cPWHcX/ZJP6dREZLPO3mwQ?=
 =?us-ascii?Q?DQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e08e348f-938a-4c12-53c3-08dd3642b944
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 15:30:36.3105 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U/dtaRlLNOFg4KSQvb/CHVZW3MQY1rPnlG9qnZikERhf6MC59NAUfz1fHlws7GjXbOcKZQ5PiOH9cODybHi+Tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7261
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

On Thu, Jan 16, 2025 at 03:24:16PM +0530, Ankit Nautiyal wrote:
> While setting the bounds for compressed bpp we ensure that the
> compressed bpp is less than the pipe bpp.
> 
> This gives an issue with 420 output format where effective link bpp is
> half that of the pipe bpp. Therefore instead of pipe bpp use link bpp to
> set the bounds for the compressed bpp.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++--

patches to i915, even when they target only platforms supported by
xe should also be sent to intel-gfx mainlinlist...

>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1ad25c37f3c2..47fcfbcb893b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2068,9 +2068,12 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
>  			    int timeslots)
>  {
>  	int i, ret;
> +	int link_bpp;
> +
> +	link_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
>  
>  	/* Compressed BPP should be less than the Input DSC bpp */
> -	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
> +	dsc_max_bpp = min(dsc_max_bpp, link_bpp - 1);
>  
>  	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
>  		if (valid_dsc_bpp[i] < dsc_min_bpp)
> @@ -2113,6 +2116,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	u8 bppx16_incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
>  	u16 compressed_bppx16;
>  	u8 bppx16_step;
> +	int link_bpp;
>  	int ret;
>  
>  	if (DISPLAY_VER(display) < 14 || bppx16_incr <= 1)
> @@ -2120,8 +2124,10 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	else
>  		bppx16_step = 16 / bppx16_incr;
>  
> +	link_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
> +
>  	/* Compressed BPP should be less than the Input DSC bpp */
> -	dsc_max_bpp = min(dsc_max_bpp << 4, (pipe_bpp << 4) - bppx16_step);
> +	dsc_max_bpp = min(dsc_max_bpp << 4, (link_bpp << 4) - bppx16_step);
>  	dsc_min_bpp = dsc_min_bpp << 4;
>  
>  	for (compressed_bppx16 = dsc_max_bpp;
> -- 
> 2.45.2
> 
