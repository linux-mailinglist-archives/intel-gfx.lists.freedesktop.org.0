Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D014959091
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 00:40:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A49110E531;
	Tue, 20 Aug 2024 22:40:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dk7Jkftl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A413110E50F;
 Tue, 20 Aug 2024 22:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724193618; x=1755729618;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+QWpa9qQoo69uPPO4ejOJN4DiY4s48qHdPxPKLc11Cs=;
 b=Dk7JkftlQ8lQjB91ZeH4s6L5BsLPIxd0zlOsadJeV6vOBUQ5gs6aymo/
 pvEDnzXi/Wi9qVoo0q3wHo7cTM4BdHVFQO3hOZapL5ClmVis/7zdzHlx/
 QVRKZc2A4TyDiSRjDWc+NVb0KhZrM2hadgO+KdV0U5/idRcnAk8uSul2I
 3IxumQdvnu2u/JSlZbSxWdFHjqISuWa0TpoM+rje/bfvaUAkKmMFb+RPr
 oopStY/cLNg30nJ9KexUYbs6t7nd5G8ENF0DNTDobkwh976g7amcBMfSd
 u9f+HF3aHoYkYNqNIJRI5znqgZ9hmJzFD8CxqNDPhD2S5CVcZKDJI0W3Y w==;
X-CSE-ConnectionGUID: ix1jhNJOSPiLm/XRTObrDA==
X-CSE-MsgGUID: qeUMjb5wRcW46KDmPxa+iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="33189429"
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="33189429"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 15:40:18 -0700
X-CSE-ConnectionGUID: 2WqKMwNuTUKpld5BCATs6A==
X-CSE-MsgGUID: zCvQUmbGS4+UWr00JdXL6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="60592007"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 15:40:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 15:40:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 15:40:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 15:40:14 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 15:40:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k/6B+0pghEu9LzCk8CHhEThiTptAI6Fk9NerqBJ42A6CfX7UOVBAB5Sg2dDTR4usTnVnWls2lNankY/MfhyTQn3dnn9iFFjflECHGVp01Hd8BswH5DMh7dutqIna+0Z0cmmTPxbaWuptP8oPbUcHCbenKdP5zr1X9mS2QGHZ6vQps7reMSycpRd6uS7rtYka7Y0tDQWw2QIfbR7b0wy7o5+/XpNTBAY7uhypgK/0XRTc+irqfkPOFT95tykTYofFvQLaxrRD6bobGIi8VnFUCG3fxD5f5sjkb45p1wdMYAhLhDouKyxAcBmIe0lJBLhyOQLWjZiopdVYrqaFDhxiVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W6SxMh9b1pLmIRerWeRuFdUJNRw8Y20VRa/YrupQMwg=;
 b=SRLDdXeGFhMTbaaYUslUT2O8u+lXZe3ERV85EfxCdKDmiOBiX9dq/8JV7qeAhVCCi4uYF224LYsP39ShU7u8I3j8fi7CgTm28uOWHPizELA5WlUG85XXSsJXkI8P5Avx24s3/eEvdc3M0Cmw2+zg1P/Zwm83BJre4qqsSOor8Hf5jwUyU3cKLrrq/oCZ/7SnfzDhPwJ2B0eQCGW325TzoH8GLt+r7P+8QWumhbCX2PXWYR1zTkY2+Lqw0GBUtCieiIBEWxcNe76k+0J3NPSTT9XdyX9zrjHy1yahDN2n0jdHwMB2wEUOeY1A/htoCoG4S+tQI8Vk5UXFaq4+GFMYmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW4PR11MB6864.namprd11.prod.outlook.com (2603:10b6:303:21b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Tue, 20 Aug
 2024 22:40:12 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7875.019; Tue, 20 Aug 2024
 22:40:12 +0000
Date: Tue, 20 Aug 2024 15:40:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 03/10] drm/xe/display: remove the unused compat
 HAS_GMD_ID()
Message-ID: <20240820224010.GO5091@mdroper-desk1.amr.corp.intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
 <67571bb0b10fb5c99dba57757f2213ef39bdedbb.1724180287.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <67571bb0b10fb5c99dba57757f2213ef39bdedbb.1724180287.git.jani.nikula@intel.com>
X-ClientProxiedBy: CYXPR03CA0044.namprd03.prod.outlook.com
 (2603:10b6:930:d2::17) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW4PR11MB6864:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a61a326-d26d-49b9-6ac1-08dcc1690dc1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mbqLSUDLS0H2UU6jRV1enemTlbktIrfCFX4zzvAK6kpR9kztVKI1hykG0vWf?=
 =?us-ascii?Q?/5PQMIkpmdQsT7xTRDFThzK1AsuhYt5+7fnHXyXIcfm0rPK/7Y4le31GUtb6?=
 =?us-ascii?Q?zIaMcVO9QRHVcOggAUn9VLoGHXCVmgBaC6W0VqTV2BOs6CSj0xxcX1waKMvr?=
 =?us-ascii?Q?Z01hMX4/ITbXnjzXC6btGLAhSvzYJjooQjjLBtfY+0NeAvIFiQh8jv0HNI6r?=
 =?us-ascii?Q?GsUGie7luSAMBqer4x8/RA1nHp62g9iXiYoIkWnquB6IzFmUpDbhPG2Sdhg+?=
 =?us-ascii?Q?tsDpFc580Cu1h+R/mVmHPHc1KnGxb0Kwetm+9AMiBQDIwJLIlu4Mzsj0jcKe?=
 =?us-ascii?Q?whgB4f58AuJesP7HFPY1pA/DFBNVhoALyVuzAx1P2+P0lbuWWgGOInmD24A5?=
 =?us-ascii?Q?1lnqoXRlneSjjFbVR5gJ+b0FTBROH8r/o4k815mZEzrisBdkwR0NmZFvcvjU?=
 =?us-ascii?Q?uEQkpv6IgM8Ph1rBzhejN4o++laVdDyU0RHvCtZoFaV2Ob2wLMbWTQy6Rom3?=
 =?us-ascii?Q?EpQ3B/jN67ew1/efJPwbRn0gXI7PH3zDOJFCEx8+cU0Ktf1W0bCjtGkij9lK?=
 =?us-ascii?Q?qRne+vLu5QW6RdoRZvMj9HD1wh3DH4UCi5hove77W9HecAaMsELS4lueYyvK?=
 =?us-ascii?Q?MEdadeqimdHgPhpXVdKsLOQB3NOYwaeqiTJ59ixFgwT8kohjFAENG9ul7BCq?=
 =?us-ascii?Q?Kmm39Vbko2KdiJ7PVx4aOYvRufxCZ4EOQ297jXEZrrNz2zZ/nSTSzpO8S/Id?=
 =?us-ascii?Q?1ofE2GVB9wUox3eMjt3koGsKEiXChkbFK53U3BEWNXRHDbj6ZdJnRIiUPmtR?=
 =?us-ascii?Q?a1a3YP4sSnomXZYe3V5CRIHebmC/FqyTSiOIMJ97Blqg+R9NIZQotnwK6vMO?=
 =?us-ascii?Q?dAcfW7dVExY7Y/JDXUyfozm4nxerYiv/IYBRsbgTTIVfoyYQmu+uhl5CVbFZ?=
 =?us-ascii?Q?WsiGP6ba8dKpsQXbMSvWHosa1IRrfiz+OnjmaD9dnNgjQWYkvdALlecxIm5M?=
 =?us-ascii?Q?iru6t5QlYCTNT89xQwD+fd36TlZXjh0hLzP/dDL0usByj3C55TEt8hlOhQ0I?=
 =?us-ascii?Q?5HyMS4pzwZUhwg8BUr4GO+IiRqZCc2M4zz0cvJGPIK/N5jTeIjmCq2EdSXzU?=
 =?us-ascii?Q?SXqv7Q6yTSVUPVZmo6xwx7IGiBTmtGyLF5tbXipZHoIlrjV5o6jX2GrRO8Pl?=
 =?us-ascii?Q?LUbBbQekMs0fUSIWoaUlWx3XEBOUCDNqbeLgpGlC8KP32+shDjeLcUODnpwh?=
 =?us-ascii?Q?FiHEXXvxbVqqrwih2S3fNxynP1TZZZSHW/X6l8eZ8+/O5f1VdxD3GJY58Aph?=
 =?us-ascii?Q?c1D5/A9gtIor7MHz8pcjhDh3Yy6+8EaUUkU7CbycLZZDuQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?W1hQVvSZd+45hbYYOCe4TCcCiSKDSNNRbH3SLyaK1B+LtULmsLygnEjDuKZJ?=
 =?us-ascii?Q?ikV4JiV5Od4g9Kq5jOymM/BXPitd6nG8Z6DmE/6HMJZk4SnK3uu6pCZdZjQg?=
 =?us-ascii?Q?wVlO7mxDQ8LZW4/pfZ1ZND8HxwDht8fRNaW8jaNwNlNDy9iHefaB0GjtqAzf?=
 =?us-ascii?Q?McnI2tpqeMklBcVAuFvioEnUBJoXGp2o/xbkO3irNRdLTW51jBif6uYUyF42?=
 =?us-ascii?Q?a6LAbgxUhZi0HIYb53T1jq0I0uQBft+rCK5wz+CkFYs/XhmTD+LTp8zLYU+g?=
 =?us-ascii?Q?HFmsOVVF+bTJZWK9oA/aLuiy/zDfYMbwz3XA3dZZDt0VgKuDsSSrpNHyKkIE?=
 =?us-ascii?Q?J2vVYS0+UKOWEyTkHkd5Zu43B6KQHFW51jLZFxkZTCO78M2pf8Kj9ynX1LLG?=
 =?us-ascii?Q?3q0YUTbwyBdl/3/4O+aTcvDsTwZUzkBbFiISax7ysOnAKbD6GFtfK4uZjgKs?=
 =?us-ascii?Q?wCdhLCOpdqjT4zTpVNkiesX2tni0LnrZvyb8xdGoYXChsLibj/gbfIG59XRN?=
 =?us-ascii?Q?mnU36kkZyA5o5p4qSfP3rQwZf3ftTGZQELVnbOqdBPyMJ4kKDMTr5SmJnp/w?=
 =?us-ascii?Q?UJHMa0CHH1ywt16K3StV0J1ZIo9ZcAsaWE8hx9SK4bEc0tTFvgsuCX3lGUyf?=
 =?us-ascii?Q?gBkdc++Pe7wF0hIqhyFCUG5tzg9WOUiU6RE7sjMhtdy1hvxxz27IF4vPKrV/?=
 =?us-ascii?Q?uU+eUG3t9QjRxTl6Sy7IUL44WrlIHsXQps3V4HGqliegIQgonkiqcrNyJApe?=
 =?us-ascii?Q?fS/9ZEDtJrHSdaUP3R8y6/3WRM3zk8W+67wVdYd8yH9pRndPLqwb2lmgcYxe?=
 =?us-ascii?Q?CzW8vteFH7ti1MNSSoordw4z9E5ATeUFa2lw3TYIj5ZkQmkpSICkD+cY8EQz?=
 =?us-ascii?Q?HD/bzC1c2yJXoIoo4SPmQ7eB5OTFrNNT+1qNUzfJI/0O91+W2oHIajnlEWao?=
 =?us-ascii?Q?i5lZVSDs7fPKjlJ4ltnGEECTXyYUbXJnaGo9Xkgd9ZQEqoYvWdeoV2Ey8K3j?=
 =?us-ascii?Q?zFWDQe1Zd9G8kkm0skTVBzFzarOEDtFx0I0uHoxggFIPuzsyAf3INfJBVNJ/?=
 =?us-ascii?Q?QvaJB9QsOOapFQdTPJM0lLI6WBhgY6TC9OGZK2P3cukIfWZiYQQEIbu5NoAb?=
 =?us-ascii?Q?m6dB00VTeQyhJuPQrvEtQ4vIpBQ3v0nXNxeGqxQ1bH1Ku967aPxS4Upx1QJH?=
 =?us-ascii?Q?feOKgxlbHYVNDwfScXcaHrpvF1MSr7lercm6Y5XXJTwRx8WfuLpARL66Eh4M?=
 =?us-ascii?Q?xz63J6aG4tomnXoFZwJjM6asbrCSQfhkBojNRgZOQQ8PmbfftZBzsNmsY/4w?=
 =?us-ascii?Q?YaEvTxOF29+TWbgAO7k4cyGpfXAQHjz5U293lGJIqJmBjpVl9jw73R5Gq7lB?=
 =?us-ascii?Q?1mDXuyjOFbfjmXhuIUxKD1TKrN7h2lQsiekaqgfxkBKZGt2UbZjfjecWeOg6?=
 =?us-ascii?Q?KBe5+YbuTajc68W01KfTrST2LWeWngM1jdKnkxRNx31aRnN7e2UXoC9gV3K/?=
 =?us-ascii?Q?bNvNpQslVObLwI27NWThoez9QD3OFyOxNO+2Hxk4ML0MQLQzhQMoBX+7DqtH?=
 =?us-ascii?Q?ATmY94ukND362cpYEn0/ZQL6Pttk1y4JddFBZCDPOitVhibHx676EsqyiKk6?=
 =?us-ascii?Q?WA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a61a326-d26d-49b9-6ac1-08dcc1690dc1
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 22:40:12.7271 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3/petejxHY42zSm+LIUHBenSA/CdxRlCn+y3u6syG8su20zZ2KxypmtI2104cOuGOsiFJLZwVS5FOwf+NLOODSrFJNtrh7S+NIgaOHliBz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6864
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

On Tue, Aug 20, 2024 at 10:00:36PM +0300, Jani Nikula wrote:
> The display code no longer needs or uses HAS_GMD_ID(). Remove it from
> the compat header.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index 82b934fe230a..7492979ac3bc 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -80,8 +80,6 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
>  
>  #define IS_MOBILE(xe) (xe && 0)
>  
> -#define HAS_GMD_ID(xe) GRAPHICS_VERx100(xe) >= 1270
> -
>  #define INTEL_DISPLAY_STEP(xe) ((xe)->info.step.display)
>  
>  /* Workarounds not handled yet */
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
