Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FBE8C1C2F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 03:45:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81D6A10E057;
	Fri, 10 May 2024 01:45:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JaiHuSwR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63FFD10E057;
 Fri, 10 May 2024 01:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715305514; x=1746841514;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mglDir89Hy6OBrMQMwMBHjRClX9ap1L+fOkNmBcae24=;
 b=JaiHuSwRgPEv2JEDPyVlYKGKrM0OgQTGzy35bo3VgtL4p5CObT/PADOv
 LDkqqQRM3zl8Uu5OXdnyF8cDxOSVdKmtBBDacdXWaNWdk2LQ4CLgYuOT1
 gFUxPkTTN3P4JDWCXdYYTOCTb37hnFl2CKWtAgGvBwBmXRcLajUIcpmud
 xaGvVOQgo/ePRy6gIwO0tr8w1JicjcfM54UJnQTv0qn+gS/IH5Xyn3jBh
 /WDym1wGWDVwGIiyurMfp01ZIHiO7Hv9/NuWKQXBassYjJTEBHjPVGUoi
 AFO7FmM+xgjKY6ZXuFMHg7RMKqB5YSeR9HwoThd69Sm09Ns/wbknj1yWp g==;
X-CSE-ConnectionGUID: bOMGqs3qRcirBnzVr5uRGw==
X-CSE-MsgGUID: lL9+v4QSQ9SvciuqWEztww==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11105491"
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="11105491"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 18:45:14 -0700
X-CSE-ConnectionGUID: 04jUp+HCSSy5kQQAxkznbQ==
X-CSE-MsgGUID: igjpBzM1SY22OZ8Eejg/Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="29390299"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 18:45:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:45:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:45:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 18:45:13 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 18:45:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e3vGg7AlWpCkzdhivIJDm8+kDe6M51wpzveRqpuR466HqTbBhAOPC8sG5Nxb/wLnCT/w2jGcfA0kTBJf4kcjfF5RR1JuMPPRaRTpiZeaHmA6cFcmNgYKfC+FETLwAkRv7AeR5UKqK59Fmn2NqePBE5EHeDv3YzsylabF23iN3Wfdlxkq8einhX3p9RNCtz1qMOIRcePn5zHcmX0f+S78zGV3sPuYdjb9k5HPZ+alKfqLR2xM2f3efOOjBsoYC/49/R+49g0Ee3jiMGbnjuxZaGVREbgsQ9sIrUoJfYRMjuo/jpkir1g7+bchSbafPjfUq5uON/TriQJQNwNgLsTeOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5N2fH/dhUhap491EQA4jKELkFono+OPn1juxOyK862g=;
 b=lOACEVvBcYze/SNJksolqkOntYkp5xq3OAGnMZUTDv7kT8/Z1IbUy4JuPb31V8a7NeazLoaf7mLDAX9OFlIUlVIzuODwpCU7Z5NCzZltM60uuwT5NeJnr/O94y/whNyKRxJWHelHvDiqKC942HeZEzt1K5tVVRhqq8l2/huLrEDluNJTQYqBiKCngnWqGXYIhyZBnvSNPUKUBHljf5nlwmXrDYk+DBAiQRNqWmgsAez0WkKcjf0Og+7Bv1i7TSEBmLQZMTzqtwV4c6Mdtmq4v8/4eMhwudgsKUX9LR1vOFd054pztRRLFRCu20Cr0cCUpm4v//EFrfh33W7+EOianw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6828.namprd11.prod.outlook.com (2603:10b6:806:2a3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.39; Fri, 10 May
 2024 01:45:10 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.047; Fri, 10 May 2024
 01:45:10 +0000
Date: Thu, 9 May 2024 21:45:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 2/4] drm/xe/display: Preparations for preallocating
 dpt bo
Message-ID: <Zj18IloH2XdlVX9q@intel.com>
References: <20240506103604.146146-1-maarten.lankhorst@linux.intel.com>
 <20240506103604.146146-3-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240506103604.146146-3-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0286.namprd03.prod.outlook.com
 (2603:10b6:303:b5::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6828:EE_
X-MS-Office365-Filtering-Correlation-Id: ae1f0399-200e-44c5-29d3-08dc7092d3cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?NpA1C8AU4m6jZH9W2N3azWerPwv96Noahq9F1LQolEqTsVoIl2ZcEXXg/383?=
 =?us-ascii?Q?9SGvRzICDaFAkftN7kU7kqOg9YiD+tEgZ4NlSYozb8BrNMXqTDGYOFihqKKq?=
 =?us-ascii?Q?P0jk+N05yosfwFGfXMJAjx+WoTeu693j+PSI303LUayfHVs97ZsMVQ11okk0?=
 =?us-ascii?Q?yesR48Z+0gjpReihDUMOIY7JEQGnNZR+MMqcv1Aj16llxBqyj9T6/GUHe8qX?=
 =?us-ascii?Q?keHV/j+vMuuilZR1u2CpiaWzPVJvyF9NprHAUY4AX3IS5UiAAz+PdBlXoIMw?=
 =?us-ascii?Q?/lOaBqPJwIAvWzReA5SKyE3Ct593OznE7kDzNmU1hKHr5wS2HQJ9QTruDNua?=
 =?us-ascii?Q?uvnmIwwWKVDW2S7NvMrBXD1lwQF9Kgt600QzdFEWHMQxljkDNlAU3k2qkP6R?=
 =?us-ascii?Q?cQY5ANilw9xsLYTXB0XsiovuErjceleuWcSjEqKFIiMXAaaNOrJkqf/GfUmj?=
 =?us-ascii?Q?PmX8EuTqnKpj2Oz2NzXUGHX0em2/zeQsyhbK953ZjO+V4KFRwrm7FfAsDtCU?=
 =?us-ascii?Q?Qe249gYI+Lvn0qoD4M0KCNfvODKZuxkmffmEYSDRnKL4SXEYnY1HcMZhBFyB?=
 =?us-ascii?Q?20KNmFea7O3EYPU50+LiQ5BdV3iXt4ZZWoLm++m4jpROsl+5B+11nsu5dgqI?=
 =?us-ascii?Q?1wuTfd8mQR5JrMSispnRMGJ/bFIdfVcHYVhywNAR8Glf33CmvHt91KwedNhE?=
 =?us-ascii?Q?DP1a+N83D0x4WgwbgIN0Zqu72UGzfmNO8DPfaCS+OMjhJtNkfUTp1S2L6Vfv?=
 =?us-ascii?Q?E2P5Z48f8p5AJEGiHayVqjeO8UzmUkkqtRfhJcwugTpnSA4NED08ZW0xZV3k?=
 =?us-ascii?Q?Tleontwo+9dUDQusbCqEroI3NYmk8t0J4xYZEh8aYTN/jpZ1Frc3tq0/giLA?=
 =?us-ascii?Q?xxEJ6oLjC/qjyqzzf8N88V8+j3mjvVo3nGA/3sVEv7W8/LiDT2KDp3h8Wu5d?=
 =?us-ascii?Q?k1qKqWNj0X2j3YngHo+3MJ7889xYxcIvSpsAMF55t+mhQVvX9mbLdoJrk6/S?=
 =?us-ascii?Q?HRn/GuRI2prHqVKRObHdPzoz+KZJnf1ID3YRfk+xme6YAKkdN7MSkFv3sl1H?=
 =?us-ascii?Q?rZZNEJykPDWeQM0c9L96j218qsbGPMnTYKM3IQoSHrkdZVYFJVioJm1kJpSL?=
 =?us-ascii?Q?7Af8Xn06f5CIrCSD3vV9uGytqK88Mtlb+3OImShwx51PRorn+vKaEa7B8JXv?=
 =?us-ascii?Q?7MiRLP61IG4Zc19FCvzdn01pbd0w2LScvTdtk0IwtZaY6jUCk8D+fvZTSf5L?=
 =?us-ascii?Q?zn/JRDJPKKMv6DFnIKWydYIIqPqNV8kOY0QtsPIz7g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3+aom6bUH1kbVll7+QfWEEj6SvfDVdjsWc4matP6S1V0f4v+Ae+4TTX0WwKB?=
 =?us-ascii?Q?DYZe/Q3sOZQVZaZCR5sE4UFHRtrjm8e5jwMU9NkLMuI/ngAGjZiT7uUVNUa3?=
 =?us-ascii?Q?7KnorPn3hvpT9EuHPlAcj0boUpD2Q0+S/yjHyAT6D9qGPMFfkQJpPyOyLFiZ?=
 =?us-ascii?Q?r59LqFJHSP1ioz24MzgBsdtiaYAzClkmL1M1Ut9cs8eJu2d7STnXgxCCQJKh?=
 =?us-ascii?Q?kRD852HI1JKCTqoBC3ABNtNdMsm+mbm3Bp9wOAND7fSClYfzFgnJAATzF6Ra?=
 =?us-ascii?Q?wuUrMzwMbxxAvclw92OeXTtTUDTQHDe+bN6YufuTCvN+aH9lOlmzW+h62F7T?=
 =?us-ascii?Q?VToH+97/3umKjt141hiuFCIpxG9ZnacXEy/pBQ7reTROJNtOS1mJ3ql4Hwrs?=
 =?us-ascii?Q?J7Hh00e2pp8bGX7hWCg0oX11NqLdMa6171wkJ4QE8RS4fdPuJUEf7URm9z7M?=
 =?us-ascii?Q?bBAzdQEL5C1TmhURhjPS8H+kZ4KOISzjNa5pG4FqPPKbV76j+I+BEZoZYYlx?=
 =?us-ascii?Q?kR7mcg2Z2Bd2kraPC+Q6Da1hwTQOLLNnpomCQDP/lmrE37E3D0/diPIQYYIO?=
 =?us-ascii?Q?pjyqQiLgQbrrmVHW2+2VDQnRa8IGXIfPESbYk2QKP2NOExIuq4hBc58tqKY/?=
 =?us-ascii?Q?qaoSx5ge/+tFqGLzFwzSw1KMT1RpnIbwnBzJAYRPUuX7PnSP4V91x5eeX/Jv?=
 =?us-ascii?Q?R219go6rwiSuGc/oOcbcE8mm0XHj3y1ITaBMHp97FWE0Tgb0ry130y17O5Si?=
 =?us-ascii?Q?OC89njUhVw+Ubf+DcC7URBSjoPTj+WLXZeIY/XXiwJEeVNGYZuyEKCe19ijx?=
 =?us-ascii?Q?dB4cakphXC1mE5hOdEJsT3cU3LjcWEYdimZzvbdZbiuNuScowORsKk6GzFze?=
 =?us-ascii?Q?JQWftShVoQehuQLRQZayLjgdN76fF8lVxWl/rOVmrswGTLZ0do3bQ6sXARtN?=
 =?us-ascii?Q?1vQAFKESX5mzx0d4I51XsOpuaz3MGaHmhMRZ2P67AnBBkwbNO6pWPtAn6EHl?=
 =?us-ascii?Q?fH0Er635bsHGTyGeuodbdKjhXoA0yAmH2MfsB5AwuXiEHlHWODbOEpTdogmL?=
 =?us-ascii?Q?MxlozX+zFChnZW765iJPgbVB+uV2YntNGZqole5KEG2ELsZuwDtz5xrZwHu6?=
 =?us-ascii?Q?WKrQ80CkihOhC8orB80u+9wdG+kzE9vF7NESAmJu8D2nrOLUSeYYEjL+IPBc?=
 =?us-ascii?Q?G/K3v65G9e//7Up6khfesKCkRcRqMm/BXCX964V5jI2/8GVAlgoOVLkqx3gn?=
 =?us-ascii?Q?8gaW3D9z+ZU6rzSWe3rCnevWmPqj0dgaaaPBZDoLbWRmzNg7hFsL86E5CeEB?=
 =?us-ascii?Q?zQQdxz32ULOWQQLd1V3ufjSqU8BZ9G1UOF2h1DEBA2sVa9usbd27hH51wviC?=
 =?us-ascii?Q?MdclmuA6jim1AkRC6u5wSmcD+6IETjpdXctL5Zve2GKIgNd/U6MJrjOdjL/N?=
 =?us-ascii?Q?UOiOCEkcC5Eqv400zwiTXUj081UFW26+zCoRK3+G568hyZhkwFCF0wCi7Y9O?=
 =?us-ascii?Q?4B7Waw/7LdY6nU+901ZhtuWp7TboYnrmwQcgBxdrh5qDcWvXaKR1ltfnkir0?=
 =?us-ascii?Q?4YGFc0Nr6j+eFMG/DPeZr9bpiWJi4CY1IjV0vUcWlrNaOggCG0SIv9YIPn/A?=
 =?us-ascii?Q?oA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae1f0399-200e-44c5-29d3-08dc7092d3cb
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 01:45:10.2778 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4u4+NUXY05w3TFup8uSTQ42mryPlMQZdzwGoqiw1EHFA6tUA190hH+zNgLeofUSm+BBKeU5swTaMh6/Ir8MdWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6828
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

On Mon, May 06, 2024 at 12:36:02PM +0200, Maarten Lankhorst wrote:
> The DPT bo should not be allocated when pinning, but in advance when
> creating the framebuffer. 

why is that? (just trying to understand to see if I'm able to help
with this review)

> Split allocation from bo pinning and GGTT
> insertion.

I have the feeling that this patch is doing way more then this.
Is it possible to break up into smaller patches?

> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 159 +++++++++++++++++++------
>  1 file changed, 123 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 3e1ae37c4c8b..5a8d6857fb89 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -77,47 +77,130 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs,
>  	*dpt_ofs = ALIGN(*dpt_ofs, 4096);
>  }
>  
> -static int __xe_pin_fb_vma_dpt(struct intel_framebuffer *fb,
> -			       const struct i915_gtt_view *view,
> -			       struct i915_vma *vma)
> +static struct xe_bo *xe_fb_dpt_alloc(struct intel_framebuffer *fb)
>  {
>  	struct xe_device *xe = to_xe_device(fb->base.dev);
>  	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
> -	struct xe_ggtt *ggtt = tile0->mem.ggtt;
>  	struct xe_bo *bo = intel_fb_obj(&fb->base), *dpt;
>  	u32 dpt_size, size = bo->ttm.base.size;
>  
> -	if (view->type == I915_GTT_VIEW_NORMAL)
> +	if (!intel_fb_needs_pot_stride_remap(fb))
>  		dpt_size = ALIGN(size / XE_PAGE_SIZE * 8, XE_PAGE_SIZE);
> -	else if (view->type == I915_GTT_VIEW_REMAPPED)
> -		dpt_size = ALIGN(intel_remapped_info_size(&fb->remapped_view.gtt.remapped) * 8,
> -				 XE_PAGE_SIZE);
>  	else
> -		/* display uses 4K tiles instead of bytes here, convert to entries.. */
> -		dpt_size = ALIGN(intel_rotation_info_size(&view->rotated) * 8,
> +		dpt_size = ALIGN(intel_remapped_info_size(&fb->remapped_view.gtt.remapped) * 8,
>  				 XE_PAGE_SIZE);
>  
>  	if (IS_DGFX(xe))
> -		dpt = xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
> -					   ttm_bo_type_kernel,
> -					   XE_BO_FLAG_VRAM0 |
> -					   XE_BO_FLAG_GGTT |
> -					   XE_BO_FLAG_PAGETABLE);
> -	else
> -		dpt = xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
> -					   ttm_bo_type_kernel,
> -					   XE_BO_FLAG_STOLEN |
> -					   XE_BO_FLAG_GGTT |
> -					   XE_BO_FLAG_PAGETABLE);
> +		return xe_bo_create(xe, tile0, NULL, dpt_size,
> +				    ttm_bo_type_kernel,
> +				    XE_BO_FLAG_NEEDS_CPU_ACCESS |
> +				    XE_BO_FLAG_VRAM0 |
> +				    XE_BO_FLAG_PAGETABLE);
> +
> +	dpt = xe_bo_create(xe, tile0, NULL, dpt_size,
> +			   ttm_bo_type_kernel,
> +			   XE_BO_FLAG_NEEDS_CPU_ACCESS |
> +			   XE_BO_FLAG_STOLEN |
> +			   XE_BO_FLAG_PAGETABLE);
>  	if (IS_ERR(dpt))
> -		dpt = xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
> -					   ttm_bo_type_kernel,
> -					   XE_BO_FLAG_SYSTEM |
> -					   XE_BO_FLAG_GGTT |
> -					   XE_BO_FLAG_PAGETABLE);
> +		dpt = xe_bo_create(xe, tile0, NULL, dpt_size,
> +				   ttm_bo_type_kernel,
> +				   XE_BO_FLAG_NEEDS_CPU_ACCESS |
> +				   XE_BO_FLAG_SYSTEM |
> +				   XE_BO_FLAG_PAGETABLE);
> +
> +	return dpt;
> +}
> +
> +static void xe_fb_dpt_free(struct i915_vma *vma)
> +{
> +	xe_bo_put(vma->dpt);
> +	vma->dpt = NULL;
> +}
> +
> +static int xe_fb_dpt_map_ggtt(struct xe_bo *dpt)
> +{
> +	struct xe_device *xe = xe_bo_device(dpt);
> +	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
> +	struct xe_ggtt *ggtt = tile0->mem.ggtt;
> +	u64 start = 0, end = U64_MAX;
> +	u64 alignment = XE_PAGE_SIZE;
> +	int err;
> +
> +	if (dpt->flags & XE_BO_FLAG_INTERNAL_64K)
> +		alignment = SZ_64K;
> +
> +	if (XE_WARN_ON(dpt->ggtt_node.size))
> +		return -EINVAL;
> +
> +	xe_pm_runtime_get_noresume(xe);
> +	err = mutex_lock_interruptible(&ggtt->lock);
> +	if (err)
> +		goto out_put;
> +
> +	err = drm_mm_insert_node_in_range(&ggtt->mm, &dpt->ggtt_node, dpt->size,
> +					  alignment, 0, start, end, 0);
> +	if (!err)
> +		xe_ggtt_map_bo(ggtt, dpt);
> +	mutex_unlock(&ggtt->lock);
> +
> +out_put:
> +	xe_pm_runtime_put(xe);
> +	return err;
> +}
> +
> +static int
> +xe_fb_dpt_alloc_pinned(struct i915_vma *vma, struct intel_framebuffer *fb)
> +{
> +	struct xe_bo *dpt;
> +	int err;
> +
> +	dpt = xe_fb_dpt_alloc(fb);
>  	if (IS_ERR(dpt))
>  		return PTR_ERR(dpt);
>  
> +	vma->dpt = dpt;
> +
> +	err = ttm_bo_reserve(&dpt->ttm, true, false, NULL);
> +	if (!err) {
> +		err = xe_bo_validate(dpt, NULL, true);
> +		if (!err)
> +			err = xe_bo_vmap(dpt);
> +		if (!err)
> +			ttm_bo_pin(&dpt->ttm);
> +		ttm_bo_unreserve(&dpt->ttm);
> +	}
> +	if (err)
> +		xe_fb_dpt_free(vma);
> +	return err;
> +}
> +
> +static void xe_fb_dpt_unpin_free(struct i915_vma *vma)
> +{
> +	ttm_bo_reserve(&vma->dpt->ttm, false, false, NULL);
> +	ttm_bo_unpin(&vma->dpt->ttm);
> +	ttm_bo_unreserve(&vma->dpt->ttm);
> +
> +	xe_fb_dpt_free(vma);
> +}
> +
> +static int __xe_pin_fb_vma_dpt(struct intel_framebuffer *fb,
> +			       const struct i915_gtt_view *view,
> +			       struct i915_vma *vma)
> +{
> +	struct xe_device *xe = to_xe_device(fb->base.dev);
> +	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
> +	struct xe_ggtt *ggtt = tile0->mem.ggtt;
> +	struct xe_bo *bo = intel_fb_obj(&fb->base), *dpt;
> +	u32 size = bo->ttm.base.size;
> +	int ret;
> +
> +	ret = xe_fb_dpt_alloc_pinned(vma, fb);
> +	if (ret)
> +		return ret;
> +	dpt = vma->dpt;
> +
> +	/* Create GGTT mapping.. */
>  	if (view->type == I915_GTT_VIEW_NORMAL) {
>  		u32 x;
>  
> @@ -152,9 +235,10 @@ static int __xe_pin_fb_vma_dpt(struct intel_framebuffer *fb,
>  					  rot_info->plane[i].dst_stride);
>  	}
>  
> -	vma->dpt = dpt;
> -	vma->node = dpt->ggtt_node;
> -	return 0;
> +	ret = xe_fb_dpt_map_ggtt(dpt);
> +	if (ret)
> +		xe_fb_dpt_unpin_free(vma);
> +	return ret;
>  }
>  
>  static void
> @@ -259,7 +343,7 @@ static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
>  	int ret;
>  
>  	if (!vma)
> -		return ERR_PTR(-ENODEV);
> +		return ERR_PTR(-ENOMEM);
>  
>  	if (IS_DGFX(to_xe_device(bo->ttm.base.dev)) &&
>  	    intel_fb_rc_ccs_cc_plane(&fb->base) >= 0 &&
> @@ -282,7 +366,7 @@ static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
>  	 * Pin the framebuffer, we can't use xe_bo_(un)pin functions as the
>  	 * assumptions are incorrect for framebuffers
>  	 */
> -	ret = ttm_bo_reserve(&bo->ttm, false, false, NULL);
> +	ret = ttm_bo_reserve(&bo->ttm, true, false, NULL);
>  	if (ret)
>  		goto err;
>  
> @@ -320,11 +404,14 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
>  	struct xe_device *xe = to_xe_device(vma->bo->ttm.base.dev);
>  	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
>  
> -	if (vma->dpt)
> -		xe_bo_unpin_map_no_vm(vma->dpt);
> -	else if (!drm_mm_node_allocated(&vma->bo->ggtt_node) ||
> -		 vma->bo->ggtt_node.start != vma->node.start)
> -		xe_ggtt_remove_node(ggtt, &vma->node, false);
> +	if (vma->dpt) {
> +		xe_ggtt_remove_bo(ggtt, vma->dpt);
> +		xe_fb_dpt_unpin_free(vma);
> +	} else {
> +		if (!drm_mm_node_allocated(&vma->bo->ggtt_node) ||
> +		    vma->bo->ggtt_node.start != vma->node.start)
> +			xe_ggtt_remove_node(ggtt, &vma->node, false);
> +	}
>  
>  	ttm_bo_reserve(&vma->bo->ttm, false, false, NULL);
>  	ttm_bo_unpin(&vma->bo->ttm);
> -- 
> 2.43.0
> 
