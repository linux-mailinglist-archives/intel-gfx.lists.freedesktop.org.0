Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E70D8978BF
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 21:03:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C91E10E365;
	Wed,  3 Apr 2024 19:03:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="imSwcEXQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC1F010E365;
 Wed,  3 Apr 2024 19:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712170997; x=1743706997;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Lj30lccK+Zff5y2v1/GCkKcg6hd5dMkJwt6/fX5LW1U=;
 b=imSwcEXQzp779KW7+XZS3gr6f/8k6HHNPUQX5af7GqUZs9+Q2TkOolj0
 th/4ILjOqxMbW0aGabAN3TQQ/+GgolQv77dauY+FAZu4o9aUfZd5huflF
 w9FWiabGx8GKhWC5ywuTKXq0AT9fJ9EE2eePIgPBGXF0DTP4WZjmcacaj
 i4xowBZJ+BYZ4d73il9JrP3FCrmqkEehxOgCK+EIhKGQOeKYIzOqQMPSa
 yuUJrD6cTGLRz9p3/sZKYquU3X/OedTGHLae1aMbMCDk8bs3i+BsCNdlr
 TtVwUJLlX8zF/GIjeTIitRhSUcClRjIQz+rYdbVQCqjY+8T/HTeyjMYhh w==;
X-CSE-ConnectionGUID: rq8rkL5QTNyW9L5/FuUbRg==
X-CSE-MsgGUID: H9CHGRBARcyXFsayQkQdCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7560911"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7560911"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 12:03:17 -0700
X-CSE-ConnectionGUID: EoK+JKKET8uBsZEIPNZBsw==
X-CSE-MsgGUID: eYsM8CZLQe6WXVHA0gz6yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18585975"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 12:03:16 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 12:03:11 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 12:02:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 12:02:40 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 12:02:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RIte21pkK0k/7CYLuRV6rEMfGg/KP1vmqDwj+0M6GSG5WRw89kXO24S9VZjUiQEbZtNgfW1NM/yvNqJ3I1twLQFWSEhzYBJRYCSDvKuX2slRtyNK6wYvnQ1vOzMup+bYT7lW6gc76MWTEGqRyWeoA5ugJTBEYIn7kY5YjQxN43n00HGO0leDs2F5eG7o96UCguQFldmirVW6d+jUNcSJTV181d9ebjHXEAf+gu9vDGbs5u0XtKGI9C1yba19NYUi9OUBQV+D8ccc7xmE8QFerv1YxQFXQuhcJLx+bPKzdvV6kLeI2y1y1JgHxWaxznUMcgZ2j7wynkCvP+La5p2NsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bXHI2GXtMvJq1OdoJoH5FqN8M0NdTI+7npRjCqWGejw=;
 b=Lelf0hPE60bWiOKVsJMRwFme4dI3QKPpRfL/bpossIW5H5zFCkl4aKUg/kNw4i4zYXqw1vQMjiI3qOTgojUN40+FsiMMyzux/Xxgf0LMIQmSlqKppIw41j01W18i+WTYWPwf2zPVzTrZJOkOHXbmiw/qfu1nfN0JX7OejPVlC9miTIT7b45IM5gnPGRN/pIsNacokbb/V+75V+W9k71XFFZhGZvgRi/KxIEgWPQgbswV81+WgXFma4+zKfi636Knc2EyT1miIxxhrqSMkRzVtnNWH+QHczHPSo23fbj7iz3olRhY5u3NokwToa7LN3VDkG8y2/cQcSBx5J/S5GpIPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CYXPR11MB8712.namprd11.prod.outlook.com (2603:10b6:930:df::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 19:02:26 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 19:02:26 +0000
Date: Wed, 3 Apr 2024 12:02:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH v2 05/25] drm/i915/xe2: Skip CCS modifiers for Xe2
 platforms
Message-ID: <20240403190222.GI6571@mdroper-desk1.amr.corp.intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-6-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240403112253.1432390-6-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: SJ0PR13CA0111.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CYXPR11MB8712:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: euWCKKjJaES0HOaUmGx+ICeldWnstjcj0umI4QYOQ/HgVt9tSTAunwF3P/lF4TNFF6cRRuuEp3X61uFzF/mjuOIdC0aHECiSTmW2vccRR7ddRZHoGwYKOpe3XUlZ3UAtSPfopMCg4di+bTzYGQiftwyl7UmFS6l+lsnr3guLCYQqnm/1c1N0EKK+FrXNj4oLZkE5uZp9Gw/zwrEiC5PZEsOvspG1CSVxApUj3JWI0IbTHVyJspZIBzqlEP9ZWxr2dHVmS8IA0qGygZCJQTit7lK4Ssg6QJvZ3WV+y3GyqW5UW6EOiQRajOPnSR6rFVeddp50X3GrFj2AaEQUVaYaFA5k/NV1GMWQjmSU9qMM4YO+9Gej62zUd0XjLfJWe/VIoS82HqVGKNtjoaEAQAtF1P4Fb+yTZG6OzkNzhv+068G9iY+65MGM13T5nG45cTc+5UuOX0a2Ucx66M39Ru50CmD3zAxGDiVsDyL3poY7JxFEwYx7Ut4Xnxu8hA9nip8HW53sv1OlGEfAlCVIfOWPiitB0jQx5EsGGUxXhTNXpuFATzu2ULzUawVDWPyNCbc69FBn7JrFMAC+1LiADR7ydp/WgISr74G7HRQahOcz9WGX/mqMmx3vcWj++O6xIwc+PzdNSpku6U6HPULjWOO6E2Xzkfg8GqRtm/sPOerQYb8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5+NaSOI9qWZPsBF2wYJJ+JWCYu/M3p0CEqLswZmZCwtKyE2z+sI+DvYmu+nq?=
 =?us-ascii?Q?L45TVg2yPRClSeRosXKLSjM61D/ZXFpLdnTtsbpY7iwoqqqst1TMXl+NTMpa?=
 =?us-ascii?Q?wNZh01hclqNrf1lI7zD/iz0OwIBc0tLhp414ZLn+kJOQBUErMws3TtduRoze?=
 =?us-ascii?Q?MGYI2W6K87gKiiP5vdgt+fb3QJ8hO5/M4ACBs6K93XOEOt+L7ZTPFYgmeL94?=
 =?us-ascii?Q?T1JFZB4GTNxTt/qGPIJ9ev8RgItuFPQHXsyzcRQ6K/nb3AroQafE1byVv/Gc?=
 =?us-ascii?Q?oVzceybdMr7dlvIuXTMjrjAgXZPNXtx7qqS6Mv8O9Je4gwBJEIP+IWehI8w7?=
 =?us-ascii?Q?kwe67nMDywq9dEwECaqZZMc7oPpB9oEB1QvfLumEkM0LDvCjyap9eH7FCjfJ?=
 =?us-ascii?Q?4M+cJh9du0FWGvSY3uY+csD4QI4Q8CTKeiOOjZ8jBc9aQFskkernP7MPGfm0?=
 =?us-ascii?Q?FuimH0ubnkxIxIlaoRueyKM2USivR0EmAzCRffu4bSqYA9/z18+XiddBayYX?=
 =?us-ascii?Q?vRNZ8OyNWCUhQjxwnn2bbACBnYVHqzwX+X0443h5A5oKSN8q1eW2/gq38Wvg?=
 =?us-ascii?Q?aZ/meBTtmEl6i2fJpRij4UN0yg+erswDPz/1QmTxhQKXGBeDnIfkecnZ8CIr?=
 =?us-ascii?Q?CYxQ8ysw+uHsd6ZHDZZID1adOT3QsyEAYGcmkqjJ2y6NHrcw92AJK01tthZ+?=
 =?us-ascii?Q?RQ2ScOlUAD8TaBQm0lsyytxqTQcSZdg8lLeeTKHUuVCch5zJuW0DaBTIeQN/?=
 =?us-ascii?Q?P338pC3z0oGW6lpGjWurUGgsbs793oM3PZuacxl2+eLGW4B4FDvCG6wIiT8a?=
 =?us-ascii?Q?ZX7zxETWVl2ZbJvs55B0SxEuiyz4qiJ+GmXrjhcoNXMA1lhqG+7ShM2xRc0p?=
 =?us-ascii?Q?AiLkjqgFNFOjtuUR20Z+todesz7rspjiVIjoIZT/ZZBG30oi+SxsD7/qitYg?=
 =?us-ascii?Q?t87jMNo1C80gEkEggzCO6F7B4CtIzV5p+NSfzEnTFCVVUbFq7tHENm6FVv7q?=
 =?us-ascii?Q?2ZnkRioqeyP7vL2968Tl5VxL+snH3SFTQYKIq9lS5Q5bxm+ggEHWxJgJyzz4?=
 =?us-ascii?Q?Lv9pqmlCeOA4o0Nj/s/6dSQbDih3bGL2cVeKJxe06+fpG3r4kA1g4umMK0tM?=
 =?us-ascii?Q?yzESINMaNvmBjgMDWOCrKjI4I4JLvUyBSaklRZa3FZz0DniLe5WnPZjsDXVS?=
 =?us-ascii?Q?gt60gSk1VCt5kT3i98GGueNy0Qk2j8JRZtaR109M8ZtalRiZpmTKfmQgO0HG?=
 =?us-ascii?Q?5mSNJzHc6/p1EE4OiifnJL+5uyNYmSNCon07b3z6eklqfK23Az5ce0rQKrfQ?=
 =?us-ascii?Q?lDlH5LSqKuFvU5ndPYpkgYWAidrjeCwwGD4vhdGfS37D9mowP4ZEVeXgPu7+?=
 =?us-ascii?Q?FRG1YlBP+Mt7JXuLlwvliznycTNTDtPQwySYOD6XYESvEJB0M+RxukZP6q1g?=
 =?us-ascii?Q?3M6496HjaQe80jGevCTQIX8gqasab9ObKAuhwjLV5pv28HwtvL84wKidh33D?=
 =?us-ascii?Q?eta5EKXZI3ndBFh2mUbv85Ccudk885QKgWkzVOqTcRrvBIvQyXXv97FNjK43?=
 =?us-ascii?Q?MNO30uTY1kotR31Bw7s2FZbkFX/g4/aR6NAJvDoCEmnIjqYQzCkHa4ffDwbd?=
 =?us-ascii?Q?tA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a6c7436d-261f-4ea3-9257-08dc54109a29
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 19:02:26.4106 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RXI62ZlUnu8M/USkcc9fnvQ01m98fetGjc1Dt2L5cVxMCC8M83vdIeKdVDDlxQLqdGm9n7JuJwmMzFSzfoMU99INRbconS0CeavJ9lCnCN8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8712
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

On Wed, Apr 03, 2024 at 04:52:33PM +0530, Balasubramani Vivekanandan wrote:
> Xe2 platforms doesn't support Aux CCS and the Flat CCS is enabled
> through PAT. No CCS modifiers required for Xe2 platforms.

The change looks correct, but you might want to elaborate on this
description a bit to help clarify why having the compression status of a
buffer in the page table entries (via PAT) allows us to avoid the need
for dedicated framebuffer modifiers.


Matt

> 
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 3ea6470d6d92..923e97c3aa6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -431,9 +431,17 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
>  	 * Separate AuxCCS and Flat CCS modifiers to be run only on platforms
>  	 * where supported.
>  	 */
> -	if (intel_fb_is_ccs_modifier(md->modifier) &&
> -	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
> -		return false;
> +	if (intel_fb_is_ccs_modifier(md->modifier)) {
> +		/*
> +		 * No CCS modifiers available on Xe2 platforms as they don't
> +		 * support Aux CCS and the Flat CCS is enabled via PAT
> +		 */
> +		if ((DISPLAY_VER(i915) >= 20) || IS_BATTLEMAGE(i915))
> +			return false;
> +
> +		if (HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
> +			return false;
> +	}
>  
>  	return true;
>  }
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
