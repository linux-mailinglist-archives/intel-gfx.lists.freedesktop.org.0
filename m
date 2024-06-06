Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0571F8FF17A
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:01:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4918310E064;
	Thu,  6 Jun 2024 16:01:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J3vDhNIi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 717FD10E064
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717689678; x=1749225678;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kW/5clE5e976vqRBhxRgiG/CV/T9sSONHIA3M6AUu8o=;
 b=J3vDhNIioy1Mi1NOR65cK3IBS6wCRdcRlx0be6onxIv23s8ujpPqssw7
 LdRAZ/B5ROTO5kC5oWIBjEf1qbJp4BBktzLCXDdO+N1Lkhf3iIxzf5XQ3
 SiywkovjO8J2//gEE7OsdzAN3zIN3L0Ij4oxTWM+Uo64MG6SKuNdEii+T
 tOV18zTsniEClDDBCF24i1hqItPYvteoOKt97bm32f2qPiAyJHZTRVhKw
 cTa7L3dEV4g7EKOVOBwxX9XWnGziu9TEDniAWvh8GVbgF2gWwtWznKFGX
 3FRZmZzAIED0FZvdkgYhqqRZqB/EFpvEGEUNbJ2to74eUc+Elz4SpdXsf A==;
X-CSE-ConnectionGUID: f1GABDsXT9OiPfACMIjCjA==
X-CSE-MsgGUID: HI6YNvcbSVeJkLUKIimguQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14177688"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14177688"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:01:16 -0700
X-CSE-ConnectionGUID: G99CmcxrQ+SJjxEMNvamxA==
X-CSE-MsgGUID: Peg5DZNfQReb8szg9ST8GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38690698"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:01:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:01:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:01:15 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:01:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TQ7LHAXVuqb3xaZOfmb75A2Tbj6PbLFyYGC4jAWusiMm+XT6Pd3nL1byVAx//mFGFSyv4pySiDrLzpi9oslHKwYsEldJLfQOcc86KkDyymTBLjqibzo+vx/3vAJmAMaeLZpIPxURNnwqjSxLnPgJQl25V7lFnwkwMDIsp9vKzoh2DjpdRHdN+czArCd5Eii5YojflcSs/Yo11nJk+aS886YIxRpgBo3/N13byAoL8DFsG4n0mFX/HYlGYSG3JEkVbfBaHPVPQoNiInAWn7HwC0IpAszxQTK8AIEQc05TUyOlbatX8iVUdGiwHeaELPg6PkAk7g6FL9Z5E9t4mUABeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CBlxGdRnLaLC88smA4L0Kryek1kBdAzSNxctCOGQjdg=;
 b=NXi52xZny6/GZg76weNMSdVu7E1UfGad+GOHybM/lSDMPFzkubY3hOGBrRkVHlr6iUzFe+sFD+wkUmdn6Jh9Qsa5YvbhyqZKnq81Kso+AdUVFpyGIjK7Y2Vjs3rk7ULqTk6Ya1YzzvvNRyvSkAllNMLOn+BDP92vM9h6+p9GJl0WfJsHZrQn5hzqNOYsNXSW0UJkISeZb+qdiwaokHwthuJqvVotJJTBJxhxeBLRCHaLX0k2jgzxltbJxzoawT4g8yM1FaUYCxSPVhtr7ezxjqTqBUE7ZReKZ1/0D7rMVDHBIau8mxMk8X7HFVTxHu3epq/P/KhEzRwgTxk50NPCTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB6836.namprd11.prod.outlook.com (2603:10b6:510:1ef::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Thu, 6 Jun
 2024 16:01:13 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:01:13 +0000
Date: Thu, 6 Jun 2024 12:01:10 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 29/65] drm/i915: pass dev_priv explicitly to
 PIPE_FRMCOUNT_G4X
Message-ID: <ZmHdRjbDnmLqF7Pw@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <747124e5eebdb58b06d70a0aae0af4dd7e6b7d86.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <747124e5eebdb58b06d70a0aae0af4dd7e6b7d86.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0361.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::6) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB6836:EE_
X-MS-Office365-Filtering-Correlation-Id: 5acf63ca-6056-4709-8f05-08dc8641e36b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?awrvb4yDRU2+60Z/48xzbSBn4clmES2SQtSexWlLVolZ92mv8j0iOcJxVQzp?=
 =?us-ascii?Q?mt3P3GwjMb0gEvgnUNzLgkWUBrksLYeaMXWukVmneKlvmfS3jTQ+UPGFgTBv?=
 =?us-ascii?Q?XIVrxH5RZal4ZuUEOuQk4rKmpyd29H5azLRXsX1zt6FLk4op2xqON0cW6CLI?=
 =?us-ascii?Q?jl8N7ow+0WXl44cJYer+vsOVV/doTbinsj7Gu+YaNHQbnwxdYPirK0h9VrAk?=
 =?us-ascii?Q?bBRYola6ixwsrI52ePraMnlzZpTFsEpWzdZwtzbs85K1Rijj6+nPqkNEoax3?=
 =?us-ascii?Q?h9+mDne4vNwXYEDPHO58LrC1LLq9KFNuowPx8eGpgh0PxMSUxQHn7w+GBIbJ?=
 =?us-ascii?Q?38e0jsHnODF7RQ6wMRrOzofF/ck9vNxR4Ne9l8KwAFrxr+5SZSEyMo6SV0wJ?=
 =?us-ascii?Q?EgAny0Xm5zYXwMzVTRqbV0xTBaeUYpBIVf9oI8dW8BzbIKOjRXmFquqpmqNi?=
 =?us-ascii?Q?1WfthfCH+5FhJpWjX60RIRPM315xaW+qskDVNBw+jsQvZreoAL/PH5EemkSi?=
 =?us-ascii?Q?kGBaZqhGRWCd/0lzXc/trRpiF9G6hnveWHoy+xWXo/q1i6f7XJ9VoqXouJWL?=
 =?us-ascii?Q?5fX0+Zqb8awzc0K6u0EYmE92DTMAoFfClDETR+yYUyrtfjEYoXGmZlytvH2Y?=
 =?us-ascii?Q?68ylACFtNzbCIybuXdAgHliSReLa5CtT0/Fxf/DYqBM/q9HP5961eDpEvMLC?=
 =?us-ascii?Q?aixu8Wb6Ru+4bBNNc2AHhXX4lbCCg2FEKexBaHfZHeXWKbyCGsABozhVgMYF?=
 =?us-ascii?Q?jCEuBO/rz+kAOJPqgjfZS+/l3IFEXbyokE6ijRvg7mvRGL09FeSosp4wvlNx?=
 =?us-ascii?Q?g+l2wP2Ie8lS8hFIlDp4X+Lsfg8w+F/7blwnD5FGNrNkt+R3e3wp8jrfFUkx?=
 =?us-ascii?Q?mamcxaqxMNjwMxakH2DY1yINRrZ892NHuPand6jVK/p7mQIHsXBb0qtNXUAp?=
 =?us-ascii?Q?mX9se6RQwy1p7eoYMu3WyxBRfRRpj+4nanyQC00S7kBtas5/6VxeItyYXM/d?=
 =?us-ascii?Q?D20LXRcBG6NK0k8uwSCCuzpgJABAlYBwHDwNPxKVSfec029JQsiOktJrXqXU?=
 =?us-ascii?Q?kgH0ypWQXw7SeYL0JQr+jTNZ52EPhmUGoD7ENU2aZrZU1IWuV9469JiRwTJK?=
 =?us-ascii?Q?OyJk0rP/Po3rBt61PlWrht/8OAMsg+Z3pQsK8S/5zrTWlCQ/hBPSe5mrxiFN?=
 =?us-ascii?Q?4MvC6APB0U31+LE4h+V1JOoasGWfRdW+IXQoLviCYNdcgHCwCaeO8D+v7oqZ?=
 =?us-ascii?Q?oUvvB2bSjIzaUg33a+0u4SasaMmdz1geIIy5V1/zZnPaTJJ+n+FQrE6/UggB?=
 =?us-ascii?Q?/7N6MDGdpJWevxM3HM23YwU2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8kDLHPmriakOtlv5+Clypj+LaZEh6W3pzox1xVU9dLoQpjJhOfg9uu6hsK1V?=
 =?us-ascii?Q?uYpnNFqdsFTlAlMoLIdidpS7/ZViJZ85vL3CwU+EGnNMqYjGEPCiUjfTOF4C?=
 =?us-ascii?Q?1YhPNqDWsEvotnvaMfocIrDpePNswqNXiqWayx7sf0Rg6/MvQR2cAllzdcip?=
 =?us-ascii?Q?j/6wh8LHmILSrJbY6NgjUTZBVLvcNpuOkXlyslgOmZ3i3A4qTvF76++WU2Zk?=
 =?us-ascii?Q?OcXDxYo3vKhOF3iF/GRyiQqxa+Gbznvv+CbFDlG+WnIjBIodKaZeCnT5b+J9?=
 =?us-ascii?Q?7MlTFvHYWyPfk+M3ke19OjTuwQnyjLnYHcH8RUlTIydW2y/j0MTDzlC+w/pm?=
 =?us-ascii?Q?6bKvuIO3g0UmKPOzSxhnT18dGb2Rs4oMEHlGcGpy52Lf2ZHVVMH9lOFZAfR3?=
 =?us-ascii?Q?3e6VTIAHNfbXzvslIh9KdnrTMKoTJu9esE40LI/fnz6i/mpbMbbQJxsaGmzh?=
 =?us-ascii?Q?NdqygWcGKmdU5a5xeb5T3gYMVsjq24JuFjGcVGOTQ9JVw3t9oLKYQz/ZcoqY?=
 =?us-ascii?Q?NpyBzn9KkbTRVSM/u330vWFYWG2hpwXek5fzM6iVqtUhb/U93Q2G39jOlh9p?=
 =?us-ascii?Q?87eHCGU7ngllQjKyQkNfUcInNhU3HrwtL6lQwCgM1BfO8e8asrmWQxYedY2T?=
 =?us-ascii?Q?bvXDMYXZW/fWY3DwFxZTWY9pevA6gS0mfHkVvOSEHifYohZjGJdZPCzmloa6?=
 =?us-ascii?Q?O9Bl43YqYvaqJQ0r2BO1pmDuWwBijz9mHg4OmtzXby18k4wukg0vbokB3flr?=
 =?us-ascii?Q?maNh5+B5+74dxZg3x98f43/lKklbvTxjix5uFOB7Qu07+1dYi4MnM/xBVxT6?=
 =?us-ascii?Q?hpaAZ+tamPiYCx1Y1I0lx6AQC2WltLOSWtsM6YSf7vBxtZ5YNe+H0yUfbXjb?=
 =?us-ascii?Q?c7UMNln0rI+QB4rvNDdiRhRGRujRde7NEWcb453pmG3/FJL3pTpz8sZ4zFn6?=
 =?us-ascii?Q?/5sKqp5lf7u+Y7VSQlKeD6cOF66c6KFnGvIKA5Nna0ojNmZALUe3JSK5260f?=
 =?us-ascii?Q?uxPggSc9EF2cU6oeF1hVAUeIQ//C9egkhgt9HMyOeGownNUel0/oGQc3aFy3?=
 =?us-ascii?Q?DhfyTlPqjg/xIjjjGBWvN+fAUOmpahl8uIbYz4pddnJr4PwCnomEKNnGp9fO?=
 =?us-ascii?Q?Ikso1Q9gjsrz9tx8DWcksiF77BoVB8Io9rg8Ice/XbCNediAV2AZA6YW+8iT?=
 =?us-ascii?Q?GAFrfBm7RuBI/BkGuKXnFO3orSBJChA9VnOODvYp9023Yx0cNi2jerku7Sx6?=
 =?us-ascii?Q?K9FE3ylXyZzstz42a4VdVGpvlQ2uBB7uQhpq15zYOa06YpeS24/boD/1SmkA?=
 =?us-ascii?Q?uIVdNhzxANdxdmao/ikqCUp2SnhkWtBBd3evSWUZQJBZHhfKzZS8CKMOs7zN?=
 =?us-ascii?Q?qR3jvcvQkOD/IBl197X8uMAm1onBvJAAgiU4RpgpYSodFg1WH4ftvzMEZUZe?=
 =?us-ascii?Q?bUdkkO2ePw1eYd32qtAEymLWcwrG+zhCJQG6pP//v2CF0Ic270TKHhHmnpdp?=
 =?us-ascii?Q?gidlOAngBlc3NU3cw+XbDJ+9J3VAQlarM3eW5l+/Sx27b3etxl1K392UWJzw?=
 =?us-ascii?Q?YT+XRrRuc8zlfSLiiNeI7+ObHVFKwIomctzgNVEW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5acf63ca-6056-4709-8f05-08dc8641e36b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:01:12.8643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DDjlYn+bjURS5y2B/6mIcgT9c6J0Wz7CBIzPusn826yLrZXU5kIgOunrsmyOJILFXBnE+KnQ5G8Q1j3OtU6tjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6836
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

On Tue, Jun 04, 2024 at 06:25:47PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_FRMCOUNT_G4X register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
>  drivers/gpu/drm/i915/gvt/display.c          | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h             | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 8 ++++----
>  4 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index c6e68c0604b3..4f3b80cd1674 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -125,7 +125,7 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
>  	if (!vblank->max_vblank_count)
>  		return 0;
>  
> -	return intel_de_read(dev_priv, PIPE_FRMCOUNT_G4X(pipe));
> +	return intel_de_read(dev_priv, PIPE_FRMCOUNT_G4X(dev_priv, pipe));
>  }
>  
>  static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
> index ad21b8f65d6b..3681dca165c6 100644
> --- a/drivers/gpu/drm/i915/gvt/display.c
> +++ b/drivers/gpu/drm/i915/gvt/display.c
> @@ -647,7 +647,7 @@ static void emulate_vblank_on_pipe(struct intel_vgpu *vgpu, int pipe)
>  	}
>  
>  	if (pipe_is_enabled(vgpu, pipe)) {
> -		vgpu_vreg_t(vgpu, PIPE_FRMCOUNT_G4X(pipe))++;
> +		vgpu_vreg_t(vgpu, PIPE_FRMCOUNT_G4X(dev_priv, pipe))++;
>  		intel_vgpu_trigger_virtual_event(vgpu, vblank_event[pipe]);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 05e0013813f8..d62da57afda7 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2257,7 +2257,7 @@
>  /* GM45+ just has to be different */
>  #define _PIPEA_FRMCOUNT_G4X	0x70040
>  #define _PIPEA_FLIPCOUNT_G4X	0x70044
> -#define PIPE_FRMCOUNT_G4X(pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FRMCOUNT_G4X)
> +#define PIPE_FRMCOUNT_G4X(dev_priv, pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FRMCOUNT_G4X)
>  #define PIPE_FLIPCOUNT_G4X(pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FLIPCOUNT_G4X)
>  
>  /* CHV pipe B blender */
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 00ee588fab39..2e027f3ee750 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -142,10 +142,10 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_B));
>  	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_C));
>  	MMIO_D(PIPE_FLIPCOUNT_G4X(_PIPE_EDP));
> -	MMIO_D(PIPE_FRMCOUNT_G4X(PIPE_A));
> -	MMIO_D(PIPE_FRMCOUNT_G4X(PIPE_B));
> -	MMIO_D(PIPE_FRMCOUNT_G4X(PIPE_C));
> -	MMIO_D(PIPE_FRMCOUNT_G4X(_PIPE_EDP));
> +	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_A));
> +	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_B));
> +	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_C));
> +	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, _PIPE_EDP));
>  	MMIO_D(CURCNTR(dev_priv, PIPE_A));
>  	MMIO_D(CURCNTR(dev_priv, PIPE_B));
>  	MMIO_D(CURCNTR(dev_priv, PIPE_C));
> -- 
> 2.39.2
> 
