Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 060506A1F3C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 17:02:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7195F10EC6D;
	Fri, 24 Feb 2023 16:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0272E10EC6D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 16:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677254516; x=1708790516;
 h=resent-from:resent-date:resent-message-id:resent-to:date:
 from:to:cc:subject:message-id:references:in-reply-to:
 mime-version; bh=blDGMe+jN/2t1KHE0RlDPLgclca3ZXMmZBJz+aaKaF0=;
 b=nm3JuFFbDdFEzRpOaAYwzv5SV6tboBBT+gH9tSV+skt/A1Y0QySVHB5u
 TW8RmZo+vh3Y1SuQZzmMrgfNAutDhRjzYHEkKavJQGjKTMGzvpfwypypG
 +hU4QlBjc5t4ZQzPD1vvAek2WSAGZxkxaQOCFl+ZDMV6z+hSjeAxDGjZB
 T0CRuB3uDGkrgiu0Pi3mEu09NPkeT6ZsjBH32n7XdEQL0WXXEUnn6iHcx
 1oty1xutvnru0xuQYHaEUIaSJliF5YLaUOWNb1LHzp+a1dVWLQbMXmBaM
 4s72lf3tyDgOClZewRjDp9HzMBKTjoN2O/BckAaHnokrzBNIk7A0XyHgZ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="321708377"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="321708377"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 08:01:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="736830978"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="736830978"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 24 Feb 2023 08:01:40 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 08:01:40 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 08:01:39 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 24 Feb 2023 08:01:39 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 24 Feb 2023 08:01:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iDOn1S/qJ0Nx14PxK8PQiMmH+l9NvV1xl7FbtGahY59Wii4ZNNgWmW7b0FAECcUCM2ZOaG+oLRkkCgfK95bvcsHfB1vUqxwyntzcYtCw4UROj2vTXpDwJjm1RUE+Uuv6qqqKDnvd6Eo1AQDHwKDmvIsC2n5CKyuzuzcVD1d9tNthhjSVU5LGQiOhMQkTjvJTdYwP8xb4VDimeFHDhKCaCRWVtTXuIHrMRHZeSs2y75pQaIbrVoSLU0lmx1RJQW1wI9jOvL+ox0wz3dcQ9Z0Umvpftgr/K8vLrpZ7/j87V+nsMimQSKLNelmu2PDvqb3aiq0IC8BTqce1JQsbmwQ0Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RLFsOfUL2BDCspC9jV4L/psNGjosxvHwAQ/I9++wy2o=;
 b=TzkV9YWqKSgbm7iXhxhcqxT6c+z4Up65VIALukHkZUowYMgW4oPM5ICid0l8p4b9GOxP3xpZad+jaCNVo1H4MvxYbWwbeUTD1eLoSfNw2hBoT8Nsz/Daf22xQAqkMZSZH/g/auAlzII+MutXGAXxNfMrN09fahPL6T0MxK8+3sgke0UpPOt3xGHtto6SL0dVmBlV3jyE2P8cRiqZ0Cn7rZLJp1kDV6nXI5HIRcicfiPnSpPXsclmGXOnIGxbd9NcrCL6tAbtnX9s7tqmDi5JAtyA3C/Wv+HkJOOQT/LGOmxsDKhXK+IZLrPJm8WAytyxj0agjGW7UCxosZk+KpyxBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ0PR11MB4975.namprd11.prod.outlook.com (2603:10b6:a03:2d0::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.24; Fri, 24 Feb
 2023 16:01:35 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%7]) with mapi id 15.20.6134.024; Fri, 24 Feb 2023
 16:01:35 +0000
Resent-From: Matt Roper <matthew.d.roper@intel.com>
Resent-Date: Fri, 24 Feb 2023 08:01:31 -0800
Resent-Message-ID: <Y/jfW3yA6gHs6U7c@mdroper-desk1.amr.corp.intel.com>
Resent-To: <jonathan.cavitt@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <sudeep.dutt@intel.com>, <stuart.summers@intel.com>,
 <chris.p.wilson@linux.intel.com>, <john.c.harrison@intel.com>,
 <saurabhg.gupta@intel.com>, <lucas.demarchi@intel.com>
Date: Thu, 23 Feb 2023 16:59:25 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <Y/gL7TuxiaOn2JQD@mdroper-desk1.amr.corp.intel.com>
References: <20230223183954.1817632-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230223183954.1817632-1-jonathan.cavitt@intel.com>
X-ClientProxiedBy: SJ0PR05CA0131.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::16) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ0PR11MB4975:EE_
X-MS-Office365-Filtering-Correlation-Id: bb60976b-601b-497c-1222-08db16806750
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UMFfv9dPbDEq77+MUMvvKdQrtIw7p8fsNvsDhX9bTyKFci75Ayh9DX9tgvM7TpmnsIdE43+ZuPFy7ufVvxKpwG76kpScLs+uOqOoLDRpI+aPT4ZwodS4eInp5NezqVLFR55z3wP/opzIjJiQC37e878at3tiKyKyoiHHlWj2LBvK+dyZ3OSv13oUOCpHPqscQIc5NNGBM/xWhd/E8nE/Yvs6UOdrx7r6cfKPuC3bYaVe58jahvk2D3MXrFTxH+Aao5l4sK/IWf625PEeoV0LKau4BQ4ofg7Z6nJNE5gPUQzZfYl+yIjaQFVpGoHFN2FlKifqJugaU0liDtRxYoYkUhbixuTqu28e0ovejnFGeaiEPEZRvVRsI3pcy/oC/7jZfK6k2SE/IkBUqWAs9oGZHjxbtD+ZefKZzSmB4f1hqgy8L4QMk60txtWlo3v+L7GIqick4ffmcBRhXgigiinuC3Vl3j4Aohqovp2mFMG/WtW/q1UoHuRYmueubOpxQ/3JDm3zL6/LzpFf9HpKGWMwHy601hJM+HSCF7kavzqNljCAiGnVgLsEl8Qv/1YR9NRY7z/uvyWULN6ZIbgbF20Y9dbr1novsf2uIXpKxxlRy/svdTDajDDIIGZu9ujBq+gYp70Fkzqxm6346ihiBqaKAQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(396003)(136003)(346002)(366004)(376002)(451199018)(186003)(26005)(82960400001)(5660300002)(4326008)(83380400001)(38100700002)(8936002)(6862004)(41300700001)(8676002)(66946007)(2906002)(66476007)(6512007)(66556008)(6666004)(478600001)(6506007)(316002)(6636002)(86362001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RSjcmIPPDPm+AE+qdZ0xwGXrQa7GQkyM8D6Pe8nJbiwZOWqNA47qp0PkopNS?=
 =?us-ascii?Q?xbaRoCJrlB7xq2rCPg+bgxEFEKEPI2rYnbB8i0qjBlWTyGCiX9E0SgiFe0N/?=
 =?us-ascii?Q?H+6sADuWKII8gLSG+mT+HCE1v6s1Ac9nzkYDm1aIIDRnsi1NkjL5HK66WsGS?=
 =?us-ascii?Q?MbTWJuN/nmTHSU4ATGWi882NYrUqNNWsMnXlO3CE7RFw/i9FkgjVXPl/hE+k?=
 =?us-ascii?Q?HpWzYhR4PsAcBI5EuN4IgLcuI6p7phLvlnR9wfXkboaZMMoxcV1PERuOuhUR?=
 =?us-ascii?Q?O5UqH+zZbMYMRB32t5zzS8fwwJy4ikMV+0CnR3n4jaGr/1ufAVEXqnlpBFph?=
 =?us-ascii?Q?x/DaAKv6IVjGU0LlEri30guLcbz6qmHDkKkL/pYObGABB58wrAYhk0lVIXe5?=
 =?us-ascii?Q?MYZdAvwz2k6oNYvf3h53POnFOvimhsQHDhTlX6i9DlY7pDeAcl8PtCGmczIy?=
 =?us-ascii?Q?99kLeH1qX4lGXwV/mYjSemxmrDvS1uSlyYZ3wWQDopKCz1E6m4IXXA1a53fI?=
 =?us-ascii?Q?jA4oa0YSF/96p7713SZ22+0CjduNSZ2749iGXtlZp7I71Muo4sIJDODfmxb2?=
 =?us-ascii?Q?MURef96d9hoXZBJX6uw15u6LuchkYxxAox+aqEhwYzFmLRy4PuL/Mb+nvbf2?=
 =?us-ascii?Q?qCY0G71o3NEeXhFnUYt/5xtFixMLXJtGArsvrqN7FGJGoxj2CjXwiAxe0zTE?=
 =?us-ascii?Q?iKcL2SGq5fRIpujqp6HdlwhAcsH6N1Qi2uoxYn9oWmQ5Gljg4IXdfRhn8C/h?=
 =?us-ascii?Q?dak5a44PdGbD29j6csrFVPLkoeDAz1OPj2Omaq2sfpqzLKwlewpLaE9YgZ2K?=
 =?us-ascii?Q?OfQanyCDt2UnAnuy+PTloVx2rusYTbxh56gGFVZPTXqIFoBSlgGr32nZ+hmV?=
 =?us-ascii?Q?J+iQLCwfHupKJRjXKeVl4MNpfvHoO3B5FwHwFrOCOJZ2hDYs7KeNI0LmHezF?=
 =?us-ascii?Q?8z3a43Hu6+LGBKIsg9fnk3hwfMIWo2cpkC5p9CrTp5jm69e7mb6Lt0UgfpTr?=
 =?us-ascii?Q?U3LBpONRDwZd6iUDJBgIjdHrvvTqgrR3aL9WUJ+KDRXlW0/0N1iRz8kpWqn2?=
 =?us-ascii?Q?ZRziB0O0Gq1NLG4k1CifIzuXdv0dOehx+wTC+AqJSvuLv3BiHxFisX77oKlO?=
 =?us-ascii?Q?JTrMavSGUhf/GA9s9B2/CU5bobQoDMKpISmD2emK4qVH8vEXsJ95fH+h3EsG?=
 =?us-ascii?Q?7dLWYSrQEgRMX/Mc1dkglJooeKkTesngx9Exissd+KSLl0Z9K0r9BR56vZ32?=
 =?us-ascii?Q?Ema+1QWkmIKMRKWAufOwJRkrqjCJrUQ58zB2N8UBZxFO+rUuUvud/tDhGxBX?=
 =?us-ascii?Q?7RoUHrHahs24MvG3kdQf15nTf6RS9XAWg1tx14scs6eR7ernOE0gwzKdkoxb?=
 =?us-ascii?Q?5SI1sRCO5nnjX/VlRpcF+JZBu/cfyH+PCnf6UWdMGdlBRhbvg7dOC4K0Bw4a?=
 =?us-ascii?Q?q65IB6811P2yjrrWhI/lmRL0rP0J/FgqVjRlQ6rjJzKRigitRKvC+/Z1HTMK?=
 =?us-ascii?Q?g/m3Uhos//Fci/EMLFoYlh8cGWvXban3rtD6xD1j+RRlkUxV2m270iEpcIXR?=
 =?us-ascii?Q?o8nnDc+MbuFx3q6tX6JaI3j+2B9IrQ7zr3ILrc0ipqRy0NRfQEbV9PB2TlW5?=
 =?us-ascii?Q?YQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb60976b-601b-497c-1222-08db16806750
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2023 16:01:34.9545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r9aQtN1g7pnQf0rGgSifkBKdHLXtW+wO/BI6p8hoXSZ3CtWFiyLeOhyvVXAfHcAc2PVSD22/p3hdAbeWOwRxfQxAzyedVv8O56TYNADXXOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4975
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: X-Tile support changes to
 client blits
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 saurabhg.gupta@intel.com, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 23, 2023 at 10:39:54AM -0800, Jonathan Cavitt wrote:
> Refactor the supports_x_tiling and fast_blit_ok helper
> functions in the live client selftest to better reflect
> when XY_FAST_COPY_BLT supports X-tile and can be used.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Bspec: 47982
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../i915/gem/selftests/i915_gem_client_blt.c  | 19 +++++++++----------
>  1 file changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> index 3bb1f7f0110e..ff81af4c8202 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> @@ -108,31 +108,30 @@ struct tiled_blits {
>  	u32 height;
>  };
>  
> -static bool supports_x_tiling(const struct drm_i915_private *i915)
> +static bool fastblit_supports_x_tiling(const struct drm_i915_private *i915)
>  {
>  	int gen = GRAPHICS_VER(i915);
>  
> +	/* XY_FAST_COPY_BLT does not exist on pre-gen9 platforms */
> +	drm_WARN_ON(&i915->drm, gen < 9);
> +
>  	if (gen < 12)
>  		return true;
>  
> -	if (!HAS_LMEM(i915) || IS_DG1(i915))
> +	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
>  		return false;
>  
> -	return true;
> +	return HAS_DISPLAY(i915);
>  }
>  
>  static bool fast_blit_ok(const struct blit_buffer *buf)
>  {
> -	int gen = GRAPHICS_VER(buf->vma->vm->i915);
> -
> -	if (gen < 9)
> +	/* XY_FAST_COPY_BLT does not exist on pre-gen9 platforms */
> +	if (GRAPHICS_VER(buf->vma->vm->i915) < 9)
>  		return false;
>  
> -	if (gen < 12)
> -		return true;
> -
>  	/* filter out platforms with unsupported X-tile support in fastblit */
> -	if (buf->tiling == CLIENT_TILING_X && !supports_x_tiling(buf->vma->vm->i915))
> +	if (buf->tiling == CLIENT_TILING_X && !fastblit_supports_x_tiling(buf->vma->vm->i915))
>  		return false;
>  
>  	return true;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
