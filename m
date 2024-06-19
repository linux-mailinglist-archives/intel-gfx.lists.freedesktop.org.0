Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 094DC90F60F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 20:30:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA7810ED6D;
	Wed, 19 Jun 2024 18:30:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ICbMTqrO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62B5E10ED78;
 Wed, 19 Jun 2024 18:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718821812; x=1750357812;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WVn4ph9S9EFbayDzd3wngqogXRFdoUCoux8VC6W8NoI=;
 b=ICbMTqrOKXGf16+5UHjmPNXr7RvvbVdiJGLjE7H5/jNJJ/0KFux4H/X+
 dwDBk7BuvMHuJLaFMVtFcLpcsdJRZBP9x3mymKxq0nCAEUcd7CX2EGbrA
 ZkpRCthB47TzfEMTBs8KDBWS43CZklT72Um/fTdX6+x9LC1quwjjeeVrW
 OuDm1nPXrmQbaCP++0gGaDIu3+xoraPit3xjPQqvk+thzig40yemdWC8J
 m46mS2dYVZb9eOqPTV+nZOyB0S30Cdz4lWcosbAhMTrsNH5b3ZIsU+hxF
 rkpiud2RAajkwUvGicMJoQKocXliL1UBJg7tQ9dcGNbEDYVrfFm+9H+9U g==;
X-CSE-ConnectionGUID: UngQD1a/TdyHe2utstJgPQ==
X-CSE-MsgGUID: tlAn5q3dQgGePX04XEtQwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="26462879"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="26462879"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 11:30:11 -0700
X-CSE-ConnectionGUID: +yDUK6wvTTGYKLRjrbmWsg==
X-CSE-MsgGUID: 3oy7wLTKT1mpVguureB1Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="42114898"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jun 2024 11:30:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 11:30:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 11:30:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 19 Jun 2024 11:30:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 19 Jun 2024 11:30:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nNYIBzjtXP60M1Jc4PFrzODBa4Als3SZiHjf41ecvW+LUZr0ShtdM/79Jf0oRRUCnk8yaQXvGmQmA6Mb6W1OLzCmFRKB9gXcaTHgadJa7U2VHnIdoSAuFZKnZaJdHrqrABAA/6+Lp0k55rU+Yp5QemVphkuyZ5C86q41f4LSdJUvD/j2E7TB34R5q1wsysV2IX/XhbJIW/6yUhCq7xnVb/edfQ7QDLSoPHZACMyer2UPkgFLPQoVo3vzzGHEXg25qWwf4tOviGw12BeGOJ/iLM9OJ4wR1FP7DQuXCpaK/nso52SN+iT8j8O4CMt/YIPfGqn4C52F2E1qrLapO1mn3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9r0sPVTXSwq1fFGDNwKmk1Gt8QeMfUr+skoLwyOmlH4=;
 b=ZPqAkwDvgLuq23vLTUN7SLNBpLv+RzIHBmzeGQvIQJUIowZjX4PxX6siitGxRZT2A5i+om97id6S6zV9C0mIvTgiKcpcGaCLZ9APGv5oxA/5FNMfr7JsoJcLibBmMa/fcWsbdZ3ytnZ8YFmQe9AB0S+yRdHDGcLZdILlpI8NP+hJeUziij3e4dkzMc6xo3c1qqvHBCA3B3uUfr5n3QOgQ/RML2MtiApawyiXCuKh7OUcz1apZCWVWVnQEeyUEuMzEG8eDRJeqmq7m8/0oOB+CC6MhJzj23nrV/Cnf3YyGMr2Go/aKebEynQYR05JQCRH1SqtBgSGsWfoEdbm6PdT4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.19; Wed, 19 Jun
 2024 18:30:02 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7677.030; Wed, 19 Jun 2024
 18:30:02 +0000
Date: Wed, 19 Jun 2024 14:29:59 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>, <maarten.lankhorst@linux.intel.com>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 2/6] drm/i915/display: use a macro to define platform
 enumerations
Message-ID: <ZnMjp4VQ5Bq5rW2S@intel.com>
References: <cover.1718719962.git.jani.nikula@intel.com>
 <da792d0f64fd47f4f5adb45643c9a28605c84daf.1718719962.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <da792d0f64fd47f4f5adb45643c9a28605c84daf.1718719962.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0258.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::23) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN2PR11MB4712:EE_
X-MS-Office365-Filtering-Correlation-Id: be26125a-0661-4359-9962-08dc908dd54b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|1800799021|366013|376011;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wyDgUWucHg55At/h/lDn09mA8ZPd0q3ILhV2CwYeAigBscYevhoWKut76lWr?=
 =?us-ascii?Q?O8Qz+Nv3/A2Q2LfVbWJ6fEJ+kpGrAKC5xW5KBo6SquVjLOlm6DyrG6g4EXrb?=
 =?us-ascii?Q?6mpudlwhFdOS9gDN0VSlFA5F3l8O+c7JjLHhykEYl+TMqs2JbWsR2f/3JG7c?=
 =?us-ascii?Q?Z4DFGO0d62M7mH/Sw4rd4ST4PzEcb8ixZufGubEuQaZsWLjflVJhlwPHMU8Y?=
 =?us-ascii?Q?EjK1d1G8mtSL3ytrKcqzMGgXmzW3f3/mRgAlR+5OyxcLkgCZhuvI+/jRKkSf?=
 =?us-ascii?Q?z9PXTyqj/M2KOHT1ViUN6KzssLLNfomFKhtu0SoU1JUM3IVgE4p21ii3shx3?=
 =?us-ascii?Q?+QHVFCZvsaP5kNGKmAdZomT5nzgqPqej5SciWvfxkNiCELqJJ+hYjnWbUG9T?=
 =?us-ascii?Q?9WyPUQShvHJcE1r6Cr8cKTugysMivsLInPxJxsvcikVYMBw6Sgldu9vL3HES?=
 =?us-ascii?Q?diJB+orFYZSYYbllfpk0s0Ijn1NEv9V/asJCd+6RfKNm2g7HBMYp22NebIjy?=
 =?us-ascii?Q?+6UbS0T2bRQLdMzOoGZpzKpyNJtChUbEOF3JDsvrf0uLlmXz8RL9HF2iHip+?=
 =?us-ascii?Q?6Aq/p3MK5T3myVo+W59YNjbJvFuacU9IQ7PIFLmiG4/FCbvBFyyllINOLoVo?=
 =?us-ascii?Q?jWfpedOu1tZ/FPj9pOAtjoNgB4UIuQfrbBhowbEKUJS/zUsSHLE9I9tRa1mo?=
 =?us-ascii?Q?hfonI2GENmIeaH7nfSW30lTOGueAkmzXudJGjFvhNG4wzkZxvHx6KYfwgUap?=
 =?us-ascii?Q?Rl2H/PvuI5UH5iuLpzXfheEC50cT/wrRbkbc2nnJAdmYgrF5xwz2Xw40msiW?=
 =?us-ascii?Q?kk+TVSKpTu88wmw6awmfm8wPbAJtYPk7wCEGQ+zQeqot5/EchoRG3yu1tsge?=
 =?us-ascii?Q?LwtQ4MjEDp3nk3k8+/uUi6iKbLvJkJFu902ftE3WVYwXrddi5iT8nBUA6ffh?=
 =?us-ascii?Q?I75HbD9hKVgxqgwlEFWoi1aUiB81z9duxe0LvSyL+BMufQxfUS7e0vZUO/eX?=
 =?us-ascii?Q?RgjUdbQmZqNulYKOlFjIu2ANnMbjDPO/NV9VRzuvPE5M5WnknPaT8zIc9sHl?=
 =?us-ascii?Q?T8Ym7ozOATsHsFn++us38iSYYa/k/UES+Fe2lRWmUWft/iDlGW5A08RFbwae?=
 =?us-ascii?Q?Axr2ykiVUdl9VDTZc6Ae1MaaJm3s4jKi7fpAUIiQHdsgMVAdprPQSayqdMA0?=
 =?us-ascii?Q?e2kANIqMmkh9p5H2vvQSCVVPeoUxfTBdEhqWIt5OfmgcoW++mOH5YBgorLZr?=
 =?us-ascii?Q?HyMbCxKyvr5OQXHoptCWVi7GjsqA47Q+uAvBDhq/PXgEFlTlawviJZmx5M54?=
 =?us-ascii?Q?1P38D7bSwPqUNlJN/+NXo96H?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3ete/Sx8er3k02a+F2++rHfAbwQl98QtXfU4WSFaUMf4xP7+7NfSb8xUt3cK?=
 =?us-ascii?Q?OMoIJN1RRB1nsZ/KbA22Al9H5gJPb3Ocg8KKUlSIfFIIMk/W7NIjvJWbfOTI?=
 =?us-ascii?Q?bwaWNGo3ieqtX1G+MU9O8pOzL5d7MtKcKhiB9aUaZYXnTLpy3+SA1vDNdBbq?=
 =?us-ascii?Q?TYnp55v07z2/pNgQGVLcjDpZPH8XpC4521z88OWTtDJOplYbbPqR8zpCkGMj?=
 =?us-ascii?Q?0OnQ4f55lhE/75rxGAFn0RBZeytepLl84ny8PV0FdLHPUSCy7hXME6IgmXd6?=
 =?us-ascii?Q?ENcNHHSpFzcZfieoqKHSOBMLt58xrMNBgf4H5YA0ZwKtBrh+LqyAk0ljmf2y?=
 =?us-ascii?Q?msQiMF1DIX3CER3q18SEDtb5CbhT7NVoOm8nCQSqidwAd6RecprIOkTLMT1H?=
 =?us-ascii?Q?CveMnOCWbWpuU91CuQNUbTV1e1hb1Ij4JfaOOS4wGQWTiC7snTe0MbWnuoxz?=
 =?us-ascii?Q?RxUAveJ11c2R9yX/9WDIjfbmiUNe2EyxqOupu16IaaJnj/gzecFL+nKlv9/G?=
 =?us-ascii?Q?wvzI/yAYftIwHtd9Xg9jfcA0eUUjUycFT7bhyMPzEjJXNdN6a+qbWrr2FytB?=
 =?us-ascii?Q?rkxFD10DzT3QqurrK4SJv/Brc/fnRRa8NtjoEkuv9m+C0Cww8C6q09qa7yRK?=
 =?us-ascii?Q?TTOrkk+RVA/tbRxg+VZIDnnoujfRXJ69D4dOkwDqNkLQCl+beDjFsFiDPP2C?=
 =?us-ascii?Q?1VTqrJcI4Melh3bsYNcmbS4T0feJx1/N9NuiK9vpsmrg1e2tzSWtFgR2PFPy?=
 =?us-ascii?Q?V2dWprYMr9PK5v2BoDiSwXVbdZPZVSZtZZrCrIqDH/Wo2tk0XbA8dWT++hjW?=
 =?us-ascii?Q?AubsF/XjfSFhfoW/6I+mE6VfQ+B3fHzwJiuKykNwCWHsDIWBo+ZAqb89TE78?=
 =?us-ascii?Q?je+CXWaoW6DazErYrRMjXoWSdfb5eHHGwTIuaHDCC75lsV06EEQ8zv3lc/8l?=
 =?us-ascii?Q?eFiRv7r9GvCcZ1hHlo9zYah5I0HgaPHCfYcHPL7/Ojk3TBb7y7r+agQFKtGo?=
 =?us-ascii?Q?tvugIFLwFW6BDAgL/m1IiIdYhRKPW5azXL18JNt9ssewUt0nFtKCVvXIoYEz?=
 =?us-ascii?Q?ygSHGzvH9giTo2LlEQsoMxNUbLI5ZD4NcBIcx+27dXGghHoHS+1e70VvfdhL?=
 =?us-ascii?Q?YcZ6l7lIc2DGhFWvfBvgdCyl2MRzxl09hrI5JcymmPe2b/+tMJzTv8ZnvGiS?=
 =?us-ascii?Q?Gfws4fLtQUMJnq4WZ0ehih3FK+kUn3zGhWYfZVzvYw4vSBGYLDOjWzNYG6kl?=
 =?us-ascii?Q?8oZCwmDnW/+qh1GRTYYuGjnsEElXipM9k3Imixb3GW65N5nZOab9Tc4PF7Pk?=
 =?us-ascii?Q?N5R6zfeWDon7tMNZn80Phd88zN9ErnXoodnz6ClEiHrTPni38CI1bfTi7dh2?=
 =?us-ascii?Q?DwlYNQzT/QHB8uVI98EhuU0yTmDIrPL+1WqifpP2lUrkRS6JtQEfRliAtr8E?=
 =?us-ascii?Q?EaNtJyVDhjBhcHs89qdF3/uves2gXqTDspCCvXTwlYt3fgifmxSkEGfDsY0h?=
 =?us-ascii?Q?dMqU+YDBkvijyfNmuGLqPVO6oRTkZoSi0V+Hbb/TEWGIJHTANGSPeNRbA3Fn?=
 =?us-ascii?Q?XsSVmQZcw2217YYvPHM6DxlEx0bIicsNYaUeUb2O?=
X-MS-Exchange-CrossTenant-Network-Message-Id: be26125a-0661-4359-9962-08dc908dd54b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2024 18:30:02.4632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hd5MEvYoQJP4nd8dG13dFlaWBNQriisFoKI5zd2gacS4ZL6i4nA8y9XMshVL8Mc5SY0EM8EcfvdA1v4Pj/5G7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
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

On Tue, Jun 18, 2024 at 05:22:52PM +0300, Jani Nikula wrote:
> We'll be needing a macro based list of platforms for more things in the
> future. Start by defining the platform enumerations with it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.h   | 115 ++++++++++--------
>  1 file changed, 61 insertions(+), 54 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 13453ea4daea..aca3dfd5e7af 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -15,63 +15,70 @@ struct drm_i915_private;
>  struct drm_printer;
>  
>  /* Keep in gen based order, and chronological order within a gen */
> +#define INTEL_DISPLAY_PLATFORMS(func) \
> +	func(PLATFORM_UNINITIALIZED) \
> +	/* Display ver 2 */ \
> +	func(I830) \
> +	func(I845G) \
> +	func(I85X) \
> +	func(I865G) \
> +	/* Display ver 3 */ \
> +	func(I915G) \
> +	func(I915GM) \
> +	func(I945G) \
> +	func(I945GM) \
> +	func(G33) \
> +	func(PINEVIEW) \
> +	/* Display ver 4 */ \
> +	func(I965G) \
> +	func(I965GM) \
> +	func(G45) \
> +	func(GM45) \
> +	/* Display ver 5 */ \
> +	func(IRONLAKE) \
> +	/* Display ver 6 */ \
> +	func(SANDYBRIDGE) \
> +	/* Display ver 7 */ \
> +	func(IVYBRIDGE) \
> +	func(VALLEYVIEW) \
> +	func(HASWELL) \
> +	/* Display ver 8 */ \
> +	func(BROADWELL) \
> +	func(CHERRYVIEW) \
> +	/* Display ver 9 */ \
> +	func(SKYLAKE) \
> +	func(BROXTON) \
> +	func(KABYLAKE) \
> +	func(GEMINILAKE) \
> +	func(COFFEELAKE) \
> +	func(COMETLAKE) \
> +	/* Display ver 11 */ \
> +	func(ICELAKE) \
> +	func(JASPERLAKE) \
> +	func(ELKHARTLAKE) \
> +	/* Display ver 12 */ \
> +	func(TIGERLAKE) \
> +	func(ROCKETLAKE) \
> +	func(DG1) \
> +	func(ALDERLAKE_S) \
> +	/* Display ver 13 */ \
> +	func(ALDERLAKE_P) \
> +	func(DG2) \
> +	/* Display ver 14 (based on GMD ID) */ \
> +	func(METEORLAKE) \
> +	/* Display ver 20 (based on GMD ID) */ \
> +	func(LUNARLAKE) \
> +	/* Display ver 14.1 (based on GMD ID) */ \
> +	func(BATTLEMAGE)
> +
> +#define ENUM(x) INTEL_DISPLAY_ ## x,
> +
>  enum intel_display_platform {
> -	INTEL_DISPLAY_PLATFORM_UNINITIALIZED = 0,
> -	/* Display ver 2 */
> -	INTEL_DISPLAY_I830,
> -	INTEL_DISPLAY_I845G,
> -	INTEL_DISPLAY_I85X,
> -	INTEL_DISPLAY_I865G,
> -	/* Display ver 3 */
> -	INTEL_DISPLAY_I915G,
> -	INTEL_DISPLAY_I915GM,
> -	INTEL_DISPLAY_I945G,
> -	INTEL_DISPLAY_I945GM,
> -	INTEL_DISPLAY_G33,
> -	INTEL_DISPLAY_PINEVIEW,
> -	/* Display ver 4 */
> -	INTEL_DISPLAY_I965G,
> -	INTEL_DISPLAY_I965GM,
> -	INTEL_DISPLAY_G45,
> -	INTEL_DISPLAY_GM45,
> -	/* Display ver 5 */
> -	INTEL_DISPLAY_IRONLAKE,
> -	/* Display ver 6 */
> -	INTEL_DISPLAY_SANDYBRIDGE,
> -	/* Display ver 7 */
> -	INTEL_DISPLAY_IVYBRIDGE,
> -	INTEL_DISPLAY_VALLEYVIEW,
> -	INTEL_DISPLAY_HASWELL,
> -	/* Display ver 8 */
> -	INTEL_DISPLAY_BROADWELL,
> -	INTEL_DISPLAY_CHERRYVIEW,
> -	/* Display ver 9 */
> -	INTEL_DISPLAY_SKYLAKE,
> -	INTEL_DISPLAY_BROXTON,
> -	INTEL_DISPLAY_KABYLAKE,
> -	INTEL_DISPLAY_GEMINILAKE,
> -	INTEL_DISPLAY_COFFEELAKE,
> -	INTEL_DISPLAY_COMETLAKE,
> -	/* Display ver 11 */
> -	INTEL_DISPLAY_ICELAKE,
> -	INTEL_DISPLAY_JASPERLAKE,
> -	INTEL_DISPLAY_ELKHARTLAKE,
> -	/* Display ver 12 */
> -	INTEL_DISPLAY_TIGERLAKE,
> -	INTEL_DISPLAY_ROCKETLAKE,
> -	INTEL_DISPLAY_DG1,
> -	INTEL_DISPLAY_ALDERLAKE_S,
> -	/* Display ver 13 */
> -	INTEL_DISPLAY_ALDERLAKE_P,
> -	INTEL_DISPLAY_DG2,
> -	/* Display ver 14 (based on GMD ID) */
> -	INTEL_DISPLAY_METEORLAKE,
> -	/* Display ver 20 (based on GMD ID) */
> -	INTEL_DISPLAY_LUNARLAKE,
> -	/* Display ver 14.1 (based on GMD ID) */
> -	INTEL_DISPLAY_BATTLEMAGE,
> +	INTEL_DISPLAY_PLATFORMS(ENUM)
>  };
>  
> +#undef ENUM
> +
>  enum intel_display_subplatform {
>  	INTEL_DISPLAY_SUBPLATFORM_UNINITIALIZED = 0,
>  	INTEL_DISPLAY_HASWELL_ULT,
> -- 
> 2.39.2
> 
