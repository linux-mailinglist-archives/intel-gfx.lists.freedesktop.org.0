Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D7867454F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 22:57:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3008410E274;
	Thu, 19 Jan 2023 21:57:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 393C610E274
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 21:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674165436; x=1705701436;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=P1fYjj0c+tpvdx5M69sFmXhujhL4Uf4xLQQDxM67Grs=;
 b=egTpKNmxsPnK2RWIIcOYDXsuinZNik+YwKnnFy9xdvfpDkXLqeLHySr2
 zXdER775jv0mvTdFwrcsRrOyojuB/sF7lSZG0yLNq7dx4HiO3e4Ph91PS
 8x97FDaj5qAgRz4xeKoDoV2YSVzzB/3fXdGd13gcQXLPD5xCgFjgoddNY
 845oxWuErsZgJkTBk//7L9vJO7cAYNcpn/+Pcuw0JUERR6wVdpVjcGjsX
 SvMJa/zQHGi5stgZlfqBweNR/ZowV+eFBBo2M17heLDCZ6BVuOg+CecmK
 HD3t3NmC67xsBpL9evrv+YCbl9wJbnUD0xWR4M938THnW0zDh+dqDTBgg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="325476042"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="325476042"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 13:57:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="690794802"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="690794802"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 19 Jan 2023 13:57:15 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 13:57:15 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 13:57:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 13:57:14 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 13:57:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b93Cqbjgvx8qHNV5LOQ3aNbAZfIlXO+vxiQDhI8xSIcMHQYMTFR++z5fsKXMple611cCSMeu8f6B7P3pKgf/I8f5mvtAzV8joFCj+21E2eIwTfh35QlIlmGUXK9Vi1gothQDnu1UEIgzX/lPhAsJ2cO5wkY2JOqA1LApUHJnlh2j+5xlT0JwvQefn1/V+EXTjGw4TNaStfxCqrnlx/7mE+RW2+DlVYLGeFw/rhSEG+cUfKOlhMAcvRODZhD7HyM44KoJ1RBzXgP6mIRI1PzUZt966jaO5EWB46xMAHVQ3ECaCZTdU0w1IJueUwB/62qwrUuV8SzHjNnfbGPZJCoUVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P9SvyY+qtR7JwBYGitxCe9hLaFuZcO1OnLDBU2iB5Ts=;
 b=g3B/Any91Qc7fuhnOx7CfaJAvyOR4HFPofRcW72Z9+XMjPuCnDJKhSzWiZ7e2RHaKUFWrS9Vx8/qPBOqDw2PQiVupRimLJeqHSJxiyQm5GHJryjFhTFwYBOVemumXuvobM3ne+9SIdx14S8JaLbvBtIrQB00lPCTe73sUpQ1lxoZjmrs/EG55AQKVsq7oebodcsEmfdqj6kTYi/FtBYQzdY11k4Db5ugIfMuwKsxe1OgxQhDaWJjj9kogUVqQmWfRDOLTj/eFeZGRfuqfikqkH7RtxvrgGWn9TRA06Sas/LNFO+3bp6V8tIOYJSIxzVnbtZS4legvCLC9u4M64SS+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN9PR11MB5419.namprd11.prod.outlook.com (2603:10b6:408:100::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Thu, 19 Jan
 2023 21:57:13 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.025; Thu, 19 Jan 2023
 21:57:13 +0000
Date: Thu, 19 Jan 2023 16:57:09 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y8m8tYS9Oma09+7i@intel.com>
References: <20230118155249.41551-1-gustavo.sousa@intel.com>
 <20230118155249.41551-3-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230118155249.41551-3-gustavo.sousa@intel.com>
X-ClientProxiedBy: BYAPR07CA0105.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::46) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BN9PR11MB5419:EE_
X-MS-Office365-Filtering-Correlation-Id: 42b00b98-0f5c-4c44-e3f9-08dafa681edc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 59Mir6g5QjCu2WvIQDhFk+Xsj1Qo8zyBwjsGpCx1lFIr8fzxJuV4N1gYk6vcqEzmY2p/dZT+oLc72J2psNzqsoPNLZtaDGpssFATRfdqwUJztArX0dj3JH+yG2goLUQ2eIw764RfjViKgRvmPjQDix9ZnmOsl1yzP+KWMPDIceHf58EhncwRhcqq9vbNOJmmd5VWJB4zsuT+W+OgtKXfDDwxEvq2x02moSywnNxWX2lAXrIgrEDSyKJn43h5gCLTAhhtXRz7sEMfdy16Jty7jv49XdVh4eW6Nk+ngAATrJh82uWqNqcDo2nrp7hcYY6ie7udRVkvg0yaR+R0BSF6xu4pPROqVEkWwraAXSxnEQI9xZ9boVh+klcmwDn2FyzVd0DWbD7Tg9KPI3l+u5kehvECrFOCd1t3jI8zh5nBdLYdde3M5NPlt47ZY3NPanWogC8TxwlvFgpD28n4UcjlQJHlhf4662qmmwjjypi/Z5Qrs1Z7qh0MoXRo2LTcffKe3n5nzF96g9DTWtphFe3sGW58hgaEjGYq1NJClDJMmKCH6Ya9utCG1kNMk8ZQgpWhoqFSa1gDM6/b6PwalT0ept0jte5ZI7yiABhjfNmKr/4hcvqPJDN1ViLdlpeU32UmVBFB//PK1L+4kDg5ybL34DZrv76n0gVLNO6k5qwxwL40XdgdiFZYVL18WUSWmQO6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(346002)(366004)(396003)(451199015)(82960400001)(66946007)(38100700002)(66556008)(44832011)(6862004)(8936002)(5660300002)(2906002)(66476007)(4326008)(41300700001)(8676002)(2616005)(186003)(83380400001)(26005)(6512007)(6636002)(6666004)(478600001)(316002)(36756003)(37006003)(6486002)(6506007)(86362001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?74TBR0XlWZ2gtvFBechgiG01UydODhkh54dgBoI75XPvkHS0LeW3+IQH9Lna?=
 =?us-ascii?Q?P7bYcgdjw9266WXbAvqYPskccuC3bHmGss0bzM6ZdLftveHuDN9DeGa8f4L3?=
 =?us-ascii?Q?M9gPdiFn0EqBl6/4zOYn/Suex56vqaoXoq4qMYsm3A3hCQhL/VZZbH/Q4Vy+?=
 =?us-ascii?Q?SeQ7fpLhEo36Vf3I7a/jrAhwDHcyl98HLjyHkFju3ZxnaQ7OYgwHiTQFeNkc?=
 =?us-ascii?Q?7YBaw8SvEPW87Qzw+yVI6LKUipdPBXzlzkz/zr3oqGqrSv5+uCS7XQ27REGq?=
 =?us-ascii?Q?FCGY2UA+cGTKkY4BWGp9xui3UtBKSH9KGKHUOeiLLovIBb0B2qqMiTYyVdb0?=
 =?us-ascii?Q?F0hVXkUG8cpbqsxNDjOvGPd0svq/6LkW168au5xMNXDjefIJEBawNKa7/Aqy?=
 =?us-ascii?Q?+83L26FRapIQoZtlUjavNqrxZ2Jifocb73uQtRQ/k+CudO5mcfFARfhCT7hV?=
 =?us-ascii?Q?OMRNDBaPHz5GqmKGnLGc9wOQqOuOnbptbEORenG3xMhGVjnnTr+SU7fAhFZ0?=
 =?us-ascii?Q?QnydOjNqW3A+DKUdPjIB9ovZuN3tfgVly7lnBQVmwW9ud/dEIY2wxieREQjR?=
 =?us-ascii?Q?492NbCHLPfdcMbHY7TNcfJFncN1MaboRlwD2RLHI49h6J6tipkT6eLs1lgoF?=
 =?us-ascii?Q?1XscanQnKnglv4Z5Nj/PmgfEC9zEqL6myYsw0iWYCkOMGdk3myQVtfcwSum0?=
 =?us-ascii?Q?uCrg6IhUQsj54RgW55VoejXXvVPTL1wlecN7BsU5W0CNc25xejwDgqt4G2n1?=
 =?us-ascii?Q?ZAFAhZcroEhdXihgJJUF5KrScAhngQEHG28Dag1W8nly3wz1pjP7OntufAzq?=
 =?us-ascii?Q?sYFQuHQgIUdP1S7Do/0s6TZQCL2T3O861g//9XYoBH3xQK26eREQnBe7EPo9?=
 =?us-ascii?Q?H6SUy29yQDA7VQWfisRTkZR+kholPLewAA91UC5BjmzN2K02ZjuwS8HT4L6A?=
 =?us-ascii?Q?DGLYmvA6BamaglinA5cniuVxLEANSkRLE49KzqWvvEDIuDMc2Beox03R0ng8?=
 =?us-ascii?Q?679elGzEXjpt9EhO9zG5NUmDXS4DN7xM+I2N3m0m8JTTD/7Uh2meNF9XBEZn?=
 =?us-ascii?Q?OXBUkpfPb9gY4j/z2o0I2t2b5YxxyzVYVhznXOOeIIo6fcUG5VwqYDKorVq1?=
 =?us-ascii?Q?0fNn2q5bj8GRDnN0OmhYjZLuW1gXpdRtN2A3n3o7r58KE6nyu6FpUInALlcC?=
 =?us-ascii?Q?DFULFQopYMaDSAVf65+l+KqPb1rV7BAaSqmNq1li/OLMi8rpB6yl7ri/Uu0r?=
 =?us-ascii?Q?/CNNa/V4u8zFAdkOBvM2sDv/nrX3OFLptoKrMeg4rqmwvVOFcrVKQdcUZW60?=
 =?us-ascii?Q?7DFicBkvlE9st1TvYlCTYl9ltXaGuqPJyE0LYg/lGm7E+aR4OayT9A+x0wcU?=
 =?us-ascii?Q?TvfLb1QxSc90kC90ye9KG9w+7A54iP/rXm9TUqEaroHwPmk6dBIqeZ63DTUB?=
 =?us-ascii?Q?6pkqvkLjmSACeeCU8gDtxaNPqHlly7UpZEi5eUu7iHW1HSJPpfd7f+ZIPSqU?=
 =?us-ascii?Q?IM4cJuJ3sukHwVFBX4Vps/LJbomEyaGzVMiNwwXPyaGgGIssHD1dO6PXya8F?=
 =?us-ascii?Q?RnSvgnjD3DXSDtSeZkySc5zwOF++ZHqjc0kOvKHSWZab6cvZiDxP2tu9soJt?=
 =?us-ascii?Q?hQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42b00b98-0f5c-4c44-e3f9-08dafa681edc
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2023 21:57:13.0956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5tQDxXdg2LAIRoHwqq5dLtv2Ny+1xwTn955XVk3sP7Q/5bJwwUqSGR5wN/7qY6zB1BIZiVUV7qbQKYnN39yAQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5419
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/gt: Move LSC_CHICKEN_BIT*
 workarounds to correct function
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 18, 2023 at 12:52:49PM -0300, Gustavo Sousa wrote:
> That register doesn't belong to a specific engine, so the proper
> placement for workarounds programming it should be
> general_render_compute_wa_init().
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 65 ++++++++++++---------
>  1 file changed, 36 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index ef6065ce8267..918a271447e2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2341,10 +2341,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		/* Wa_1509727124 */
>  		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>  				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
> -
> -		/* Wa_22013037850 */
> -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> -				DISABLE_128B_EVICTION_COMMAND_UDW);
>  	}
>  
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> @@ -2373,21 +2369,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  				 GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX);
>  	}
>  
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> -	    IS_DG2_G11(i915)) {
> -		/*
> -		 * Wa_22012826095:dg2
> -		 * Wa_22013059131:dg2
> -		 */
> -		wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
> -				     MAXREQS_PER_BANK,
> -				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
> -
> -		/* Wa_22013059131:dg2 */
> -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> -				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
> -	}
> -
>  	/* Wa_1308578152:dg2_g10 when first gslice is fused off */
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) &&
>  	    needs_wa_1308578152(engine)) {
> @@ -2412,16 +2393,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		 */
>  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
>  				 MDQ_ARBITRATION_MODE | UGM_BACKUP_MODE);
> -
> -		/*
> -		 * Wa_14010918519:dg2_g10
> -		 *
> -		 * LSC_CHICKEN_BIT_0 always reads back as 0 is this stepping,
> -		 * so ignoring verification.
> -		 */
> -		wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
> -			   FORCE_SLM_FENCE_SCOPE_TO_TILE | FORCE_UGM_FENCE_SCOPE_TO_TILE,
> -			   0, false);
>  	}
>  
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
> @@ -3006,6 +2977,15 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  
>  	add_render_compute_tuning_settings(i915, wal);
>  
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> +	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> +		/* Wa_22013037850 */
> +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> +				DISABLE_128B_EVICTION_COMMAND_UDW);
> +	}
> +
>  	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>  	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>  	    IS_PONTEVECCHIO(i915) ||
> @@ -3027,6 +3007,33 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
>  	}
>  
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> +	    IS_DG2_G11(i915)) {
> +		/*
> +		 * Wa_22012826095:dg2
> +		 * Wa_22013059131:dg2
> +		 */
> +		wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
> +				     MAXREQS_PER_BANK,
> +				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
> +
> +		/* Wa_22013059131:dg2 */
> +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> +				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
> +	}
> +
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
> +		/*
> +		 * Wa_14010918519:dg2_g10
> +		 *
> +		 * LSC_CHICKEN_BIT_0 always reads back as 0 is this stepping,
> +		 * so ignoring verification.
> +		 */
> +		wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
> +			   FORCE_SLM_FENCE_SCOPE_TO_TILE | FORCE_UGM_FENCE_SCOPE_TO_TILE,
> +			   0, false);
> +	}
> +
>  	if (IS_PONTEVECCHIO(i915)) {
>  		/* Wa_16016694945 */
>  		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
> -- 
> 2.39.0
> 
