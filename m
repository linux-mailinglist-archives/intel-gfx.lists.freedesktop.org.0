Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE9FAE8533
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 15:52:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12A5210E730;
	Wed, 25 Jun 2025 13:52:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UjA5BE1j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D9D210E72C;
 Wed, 25 Jun 2025 13:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750859546; x=1782395546;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=MxBa6UcGemA5h9vDt3aEZDGg0mgnihYwnVwvQ2S20s0=;
 b=UjA5BE1j8bs/ifJby6Rz/XEfzowZrkGhKB4IpxKznwKUMniRJGfQRegK
 7aHH+FnEk4D74vZbhQC/PNv28W/Hi3FMfN9eMG15X2iFKvQ7G+7otWaMz
 ru+tlx3xa/Ps47fpOzg8qOafDkGT+7DNvIGgi28JZB1akVUsLChENgLlS
 71QiUzTN2XuAIybC35NmuM4F0ycMbDYV4BFm5kId4R81mKpJmeq/f+Gck
 JTLv42rwZ6gG1QzIkrTioYW2r10a0QRnOqx4aK0OVeLtqTvdbqY+Ven/M
 Ku55tMkBH1gAQiX8mT1+A6CfK/m6YhOaRyj7m0xIcccmoGq44PNoxPbdd A==;
X-CSE-ConnectionGUID: YI2YtBA5Sue4u6ayWdc/KA==
X-CSE-MsgGUID: CSCxesiUSxK0eJVCC0PjKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="78557243"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="78557243"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 06:52:26 -0700
X-CSE-ConnectionGUID: f4q1NLkATXaDcFjeNMleoA==
X-CSE-MsgGUID: BhN3ZsYJRESplNM55deccQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="152932241"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 06:52:26 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 06:52:25 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 25 Jun 2025 06:52:25 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.52)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 06:52:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=THejDm/eyhaYcgmpQXi1+bmFKjAQ1WcDnAUHiM1e3XNRpphhxt3/ni3iTj7y+TdI0ejHrKL2jczjDnKjIvGWgqOqSGfVKx7xsZfCCwvPA+YPwraWl58+Z3pIfDcXV58Sa6QbmtZayrKHR+id40xew8gtBiufXfKQOUu0BF4ZKX9PuQEwLt7b8DqA2a5E31uZ02DYKjo+XJOxp+IuwtK4LdV5yg9OUrsQpRurtPfdbC042yx0e+aAR6kIFcQWq/mqLvOhknBdBaiBZTKRykr//piw4in0M5A6jEbRzFbomKVTDeuidPZ2+Tf+y0/6KugSAIh8SwNlI9FOntAs46h58A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CPNl/P3mK4U7p53P0hPXYxHF0X1MslvmvU9nOw6Qhe8=;
 b=Oyo1+XaewYNinGrCgLwqqcfSomPOP7BnEcob2aSfH2IvPbz2vlL5PRDTq9HyiEoCPFNuDRwBnGggg1diAAb4/3wfyW4TqR2dOchzSnYcvuqmhJMclnoMnA95imBOTMPgNA80NYidF4qwH6sVIv6rmIIAMeeKBQC6tIv9D72myMpCKpi0tskXvgCq2cuKo7rhBNYT+JX/6BseG0DqO/GZkBwTau+1xrLj3lgfIiMCjAbjo2r1JMPkh2MGlu8AiNMfTbq0gCSKYG9U6HCYta+3O93TFIKlJHf5GHasCyX+/OGrIHUKsXf8kwLUc+pAvjn9tcTy8sCVjAYTT13NA6VpQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by PH8PR11MB8038.namprd11.prod.outlook.com (2603:10b6:510:25e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.29; Wed, 25 Jun
 2025 13:52:22 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8880.015; Wed, 25 Jun 2025
 13:52:22 +0000
Date: Wed, 25 Jun 2025 09:52:19 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/power: move enum skl_power_gate under display
Message-ID: <aFv_E1ltKoRw5kW-@intel.com>
References: <cover.1750855147.git.jani.nikula@intel.com>
 <495054983b74163ca7dcbf5a1b6a24099047bc64.1750855148.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <495054983b74163ca7dcbf5a1b6a24099047bc64.1750855148.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0012.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::25) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|PH8PR11MB8038:EE_
X-MS-Office365-Filtering-Correlation-Id: 6725246a-daf0-40d9-c89b-08ddb3ef8292
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?aEpULxlx0DJD64Jo71UK6GKOaQ2/+46ANPMGMsUSsQOAPbSauod/N1ejkWHs?=
 =?us-ascii?Q?K1lYshNdZ9mu5TG/CwKIOESf7mjDr9n+vuEa0wlm8egaYSdkXwc0tIfKufl8?=
 =?us-ascii?Q?YIh8f89Q1AWDPA5BCBgcR6s6hY4OZfdeUeGlxQ5QPk7awEnmDzPTRMYcakP2?=
 =?us-ascii?Q?/rgh706Dx9JF8KFoaG2FjFrz09zk/Xe4sI+m+6nCfFFvN/gETjv1QZ+0VNNy?=
 =?us-ascii?Q?eIr6p8+6ptjgxfdl0fq+WluZYQM2XKs30mG8fLNV6ON2qBaL7N1Vjr+QR7Xr?=
 =?us-ascii?Q?MVTw2VNTg+FNnzV+V77dXjcMuBPC1VpUC0QnT5vaAKvEBH/x4tzBcZWSrjPb?=
 =?us-ascii?Q?gR3VfUXRGxDIzTizM32ZV7+EfTJLQRk4zL7H4DjRSLidCl51XEOzfYvV5EWi?=
 =?us-ascii?Q?PbdxfpZ4LSbi5dXdrxrci4AjHZsYL83iTLl8UX4cOevFDYM+cd/icNUkdtGd?=
 =?us-ascii?Q?gRRTE3MSEijOtXPitfOfcO85Ejd0MZiNValUv6H7snD+HyqxhTZ3lJjX9yf1?=
 =?us-ascii?Q?Wj68j7VWNihME/Q/DiNty0pDqE/+RYZMesyC06eoUavNpWVJXCLqrWn5+iak?=
 =?us-ascii?Q?S4DN+GvCDr2Mb8bjbW/g0dtfwTG6GdhfN5NxVBOiF8TW/0M7qxDja5aiCDtJ?=
 =?us-ascii?Q?a93ZjLSkuEzXTmcTFXar8ghhXdfWwGC59AAkbetQS7/54+FmkTgIl9mY5yn+?=
 =?us-ascii?Q?BepRtgGQSQrPZsPBZCYcpu8DvnqM9p4Y4KaWXDZKJqnpJ7VObQiJZDWY9MXQ?=
 =?us-ascii?Q?jQKjix8RyTT2g15/gdHjUrrR/MbIxp4cuj+3QwhqW6N3k1rLBFq4r9Pf3iUr?=
 =?us-ascii?Q?SBshdyHPmZl4QDGL7OmOTaj42eHZ68+FhCD2zxEaVPuFfTIDlm/Y6Z47R2at?=
 =?us-ascii?Q?yT5E9YX9e8Gtyj8vIGBUXop6ICbXsT8J6yRVj3kUbE7yYM37+X7fAWhfhIwx?=
 =?us-ascii?Q?eFlpWkR7kNPfmz87jPjDld3+DJxhQ1FkrqnXqFrJ7dlD1cidAmljZLQxKb+R?=
 =?us-ascii?Q?CP1lIM07VT2mqtZpJDQFAWFUUqYSmNDS9WdrdNCZMGYqFunFFOcLvF84sSt8?=
 =?us-ascii?Q?p/UWFpqT6YemV7iARfGf9cyYZ6kQAV0BhtUVaFUeO4um6BNn3fUQXoSv9oug?=
 =?us-ascii?Q?iMuI4u5t2I0TM1j6BPDsuYuLH0r5PyZ0MekfoOAjqH/CKM4ij5ExirKi2Xgl?=
 =?us-ascii?Q?BHwCkUMhplorQSd7Jz0AMt+PLVv1AKTlJFPRoHr0As7bBns599LDvmPQhSsI?=
 =?us-ascii?Q?tUoA3Tgiyn/HgrnNBf2kp5ezijbXawYM7GJqvAlvEpm7NUhz5pO0qWbGq/ZV?=
 =?us-ascii?Q?VYuo1URAulO43c/0H/3xoctDtXW5Jgy5KnkFgSjYWKP96RffW/O8Y2ByOyez?=
 =?us-ascii?Q?TamiYE9jIBRNQHTwpOKbP7LUJ/3aQ/1GLgfp//belHcorW+iJQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QkdwUw7IbHhsz3l0BMWCKf9M/dOuUkq6xMKU37hfjNYyHSbnrIX1JksNvx9z?=
 =?us-ascii?Q?APXmXyhPO5Y9GRGEkkTI0MrjatjyFfLKBfqhk5I2Nzjag7c2QEJAkkwTjVtj?=
 =?us-ascii?Q?bD5uW3LOiJqOhXhIlr2jsHDvRPBZ28wjTQAOqT36P+RgOuvMpYtmhuQk65O1?=
 =?us-ascii?Q?czGVoT2SBVBeAUxdNz/LViist2ZYHvcY9TfUNhnYSinEuZ9vM38RfiQsJSbR?=
 =?us-ascii?Q?RL2k9iB5TjY1kFg9nFIw5BqF24W6JHKfRGZlY0luJf7yw9d6Tloi+rXCFBNn?=
 =?us-ascii?Q?UxY5Zy0kVzCH7ZHag9BImyV9ZXxYQjxMCzI+XGkQoar+s6Be91k0CHbPPnl9?=
 =?us-ascii?Q?NlKKdhN7rH7gx+fWglJ8gX5CgBY4gx6F32fdW+GXgbntRWhcM4kstMhdc7JH?=
 =?us-ascii?Q?nyRtmKEixDOggb+v/4irkG4jY6xQXq87IvQw23zeBEMojrgD81C0IkXx4FOJ?=
 =?us-ascii?Q?0h8oBvwAdz9xv0r6eF8Gu9V9WWVJL7z15bKbibJi/ojKVneGwdLX36bCPrGX?=
 =?us-ascii?Q?itBXi/f72EuGNdsa+AZlnK3mWzKCwEKGoVs16KUJJYJLLGD6Rvon7BcAt2Bc?=
 =?us-ascii?Q?etuTgiu40YtTCpQI/ccq2rSP4WUdBiYMseppNiDqzdfsniMtv/nK985i0n/g?=
 =?us-ascii?Q?4mWho5a07ZTmh7ihE6uRh/KIrAQZYmWJrfQgaQmelelNlXvPlkyjDv4CA8cT?=
 =?us-ascii?Q?aDdzPaehDZGQMzBgdTUjO8L9hUDSDvro2KrpfO+bEL6k97laQSkcU4xmhRvH?=
 =?us-ascii?Q?LJRMZbLdMfxgSGP10WKtmiyBGmNXsA2IF7bm0W3tqXGTyE3azwf9yWEs5UqI?=
 =?us-ascii?Q?nw0tyfvHJoHioo1Id5e5xIbZ2bd0sANWt5c95PLSErSPQnVM3LfccG5zdjbK?=
 =?us-ascii?Q?hO4Lw+WCUCe1Fl2TyEumV67xe7WQVv93Gv8msMrUmApdyY7P6fTD3GgGSOlP?=
 =?us-ascii?Q?Bv+UOKstSnbI2gFPo9VANCxn0wb3dLPuXgGy5/CvQXdB3HT0zzwfO9IywIhE?=
 =?us-ascii?Q?0y9upQAwWkfFtiarT49weQ5M3hjyYdbdFsA1KZXPz13bY0v/WQa36iyaoiF0?=
 =?us-ascii?Q?8MKKTBcn8XEegNNj6B0Afn5O1aqYqzY0pQslcQLc03vdAW1PHF7CaVPnbUYq?=
 =?us-ascii?Q?5M8AMLRWmh+ABvvAMQNkfRj2ZIKuokr37uDc6UIG2VhvqwumWYAmbuUlpAn6?=
 =?us-ascii?Q?EVuT+YFBXGdkUCOmGwJ/P5E/SqFdj5hNdFNo9IAjS+euhpY79pCGUQAKv35c?=
 =?us-ascii?Q?5r228S1zBZZsddQkp8pB9LJaaTV/Jorv4Vs185BoJYLiJHa96QTXA+Tu+DN8?=
 =?us-ascii?Q?+I5d8IR4ta8e5PAVld9OI2K5Zfp/H62DFYx8MeQA9/0izS2KxMobnznHbC34?=
 =?us-ascii?Q?jnrU6MRD2yXMPJMtT2z4mo/Uee1qKttMouWfFcInUPc9zb7opoAScqCk+5cN?=
 =?us-ascii?Q?aPQDRNENr1rHx0DyJdOm75LRFSZoCvbHRMkqMsif1FLnzUlKa7HfeOirybo4?=
 =?us-ascii?Q?ecJj/zGkH2r4m0S5g8Z+XftryQ2J/YQ+5qFk+w5FbPXew57Ye7UzVUc5sFwh?=
 =?us-ascii?Q?Wz40YuESISjj2bfih7vKmIT2f9EXZzHtXiXFXpEfWxLdl6DmWEQjECBNKLbW?=
 =?us-ascii?Q?8A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6725246a-daf0-40d9-c89b-08ddb3ef8292
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2025 13:52:22.8372 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dMh5Wc7cVkOiEpHQgR/ugLSNChZjQBDp/XUQxUU5PrH+IP7KZ3id+K+9FHRf1dsctcsCMCGs7/GB3R0jA02MFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8038
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

On Wed, Jun 25, 2025 at 03:39:36PM +0300, Jani Nikula wrote:
> When the display registers were split off from i915_reg.h, enum
> skl_power_gate was left behind. Move it to intel_display_regs.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h |  9 +++++++++
>  drivers/gpu/drm/i915/i915_reg.h                   | 10 ----------
>  2 files changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index e101105da4af..fdac72fcebee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2195,6 +2195,15 @@
>  #define   HSW_PWR_WELL_FORCE_ON			(1 << 19)
>  #define HSW_PWR_WELL_CTL6			_MMIO(0x45414)
>  
> +/* SKL Fuse Status */
> +enum skl_power_gate {
> +	SKL_PG0,
> +	SKL_PG1,
> +	SKL_PG2,
> +	ICL_PG3,
> +	ICL_PG4,
> +};
> +
>  #define SKL_FUSE_STATUS				_MMIO(0x42000)
>  #define  SKL_FUSE_DOWNLOAD_STATUS		(1 << 31)
>  /*
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 04fb40867cc0..cec6e2e2a262 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1204,16 +1204,6 @@
>   */
>  #define GEN7_SO_WRITE_OFFSET(n)		_MMIO(0x5280 + (n) * 4)
>  
> -/* SKL Fuse Status */
> -enum skl_power_gate {
> -	SKL_PG0,
> -	SKL_PG1,
> -	SKL_PG2,
> -	ICL_PG3,
> -	ICL_PG4,
> -};
> -
> -
>  #define GEN9_TIMESTAMP_OVERRIDE				_MMIO(0x44074)
>  #define  GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_SHIFT	0
>  #define  GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_MASK	0x3ff
> -- 
> 2.39.5
> 
