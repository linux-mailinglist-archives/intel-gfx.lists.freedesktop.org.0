Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FFA8C778C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 15:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1989C10ED18;
	Thu, 16 May 2024 13:25:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gWKI8Tx4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3F0A10ED18
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 13:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715865930; x=1747401930;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bPNAvzqct3qh1I6UHbzEQtzJn/fZ9vvKvloymIujrq0=;
 b=gWKI8Tx4fagj7dS2wvRCPcMx+Ghq4swUtzMmWoY8T2uOvNeESnxpBj5E
 Ty9JyZHKR6uwDwmnQWAYwk5Ty4Bf9VstpfRlJ+mNkgwR0tDwON0CIOdRt
 Avu/Spj9Z627ZK/w0s7UhhDWQ7ksccel1b5hUVaaNitR96/0iqM2/ucCB
 qENu6wy3F1gFHYe8jnAPMvlrbC5dXubiSDiWemxD6V5An2wsniMxzAOKj
 xcQsD3fNsYnbeECM3SY3UX7jDJZAzETRCSYhOWLzHKzxmqUqeUii72wnK
 uM/Djx9UsAO8IJF3fxMEftfnC40SbM9vuoQBO+HRKmYJUGSntC9Mulh59 w==;
X-CSE-ConnectionGUID: zbkzrz/RSpG5G5zAi+gDDA==
X-CSE-MsgGUID: g0kF51+RTFavvSlOQrRTSQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="12097813"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="12097813"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 06:25:30 -0700
X-CSE-ConnectionGUID: CUGXV4MESDClHqe3hTXO1Q==
X-CSE-MsgGUID: 8m565CCIQs+TjjPBl14Uxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="36305483"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 May 2024 06:25:31 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 16 May 2024 06:25:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 16 May 2024 06:25:30 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 16 May 2024 06:25:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bWTNPq7HLQMaIwLVasYG5b6mwdQrhI4LI169NnWnogAVycsSg6zJVF2MujEq16Gdz3gFrpRh4ogHql2GRFIEO0MMuHbIZ2cTkPGgZvzS5dxbcsZ+/IcT17rTlGz8oyLZD7Qp5YlrzaPePgXNyJ1wA9H5jJZZlGHlxu3bnqRkAtpy2ryVqYAWnCPApvtU/nXN55/E2x7mwGDlgIFG/A31icZWhissT9YITjSaUca1YK2AkkGkKKb1V+THxTr2CL2mB7z0l0dzKY6mQEgXddCvEkLE+OKljJTsBzoHlL+07HEDAhXqPc/kR81QLVeLtyDlSQZdN+g7wesSv6VZ5c+p7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sn8fSn0Q62QCdGdiW6KjR2aZq1Gp9l6sCdftX0cvsyc=;
 b=PL0aA2DI9X0pq0k90TEngdZTTKFCA/X9jO8VpQMM5ofQhHpIhdbSAJae+JzjzPv8S8tAXGyI9CQJ6I60n0lMRtRvWeWk91+pdGkMLCTuAuHeDAQlc27MU8cLSvaEIrCwdft/x5KMZgm7mgexFr2tmarbON5VZmiHJkhCUoxbB5NanwzhN5UI51PCr70pFDRrLUtgctFoIerfGofqAH4sW/n4pgmEs/Zl0pdYrQWcc7mRiIRAm2j9K31magyFmJdkM/Jl/tS0TNWIYhyzC3L2qVBEoWfXnHjTNFwjVKmp1qiOoMRWZ28yF3mgbthUNmTMERsL38rvKTBVBisjfPLpDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL1PR11MB5223.namprd11.prod.outlook.com (2603:10b6:208:31a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Thu, 16 May
 2024 13:25:28 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.028; Thu, 16 May 2024
 13:25:28 +0000
Date: Thu, 16 May 2024 09:25:24 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Lucas De Marchi
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 2/2] drm/i915: stop redefining INTEL_VGA_DEVICE
Message-ID: <ZkYJRGJ4X4qO1n83@intel.com>
References: <20240515165651.1230465-1-jani.nikula@intel.com>
 <20240515165651.1230465-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240515165651.1230465-2-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0278.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::13) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BL1PR11MB5223:EE_
X-MS-Office365-Filtering-Correlation-Id: 5372f3ed-8028-4422-e1fd-08dc75aba6e2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xcGHFxAabh/rZrfKgRSnx0bg0YV9djFRGaIxMu/MnvKEoRGw7tylSz+ktXNW?=
 =?us-ascii?Q?SB7hRKemO/7aQoFsPqARoKBejEMQcdFBUroY32Jv9ZLXHlW5CMonYEdThRty?=
 =?us-ascii?Q?1Z6oW2QhLlYbxypMU5AHQZgsXgeF6JbxwNo8NnI4knew/kAS7oawLriSVJMC?=
 =?us-ascii?Q?hC/cpbUFZKj9O6gjUfkj2K6wtkvD79kT1UoeLLgdUTS7S0GG+YXCTDESrbGU?=
 =?us-ascii?Q?Je2gBNIgPmGUAjd6lWvfplEx5zusxC0jsRZR9Y9LsssSpHdpEREBBPeL5itH?=
 =?us-ascii?Q?Mqvpq/usszOP60JScVpWfsNA6mOS/xLt7WgCGVln0/DFBdDeE1Sq6e1+SYPq?=
 =?us-ascii?Q?IzxevbbOv7AiZV5bdIEQtESmsVrL6DZ1mYqCYj/fDP6jIFcwAILJjgUKjIdf?=
 =?us-ascii?Q?kI3Sy5Prz4pscEHwmLbI09UA4W3rQ3gdV9RI5N6hz4CLs0QJPBE861G81mgW?=
 =?us-ascii?Q?LdQZwF6dy0o4WhV74W8KeQjRarq8lZIPCP7yx5DmB5IZC4TpubuPw5ZFEetu?=
 =?us-ascii?Q?rnLe1bW8GTHr9RqcAwGjaw2sYo6KCXMs3Uq5eyCOmwu8uZMiWJYDm7+oZuSR?=
 =?us-ascii?Q?rzp84sPFXzFb+LuUP2zUEj1v6BTgSaJfL8UTn7QWY2A5TS9Webc6xbt8rLsn?=
 =?us-ascii?Q?SfuzZMzXTinLhcdaD9QQsgJ5r4RwC8RYG78wCdc2IE9wiPvDpB+QhtRAr6Qx?=
 =?us-ascii?Q?lVXbUD7h8xe7ji0d1gCv/7pVs0l8kqXi0zWQyb5PoOv9UUizq7dD0HED+8Ha?=
 =?us-ascii?Q?e2v0cqZiq5hOhYOxXbG5649Rb5YeQeFNhE3d6bEQ0E+yLVmvIO7WRCgtXlyV?=
 =?us-ascii?Q?r2FjjAG0g2wElfiQ7AA3q+ZvYQlCBrAjD6IwQrqyaGpPAzX5jwyOitCSAjWy?=
 =?us-ascii?Q?oMyibGfGNtI0LliRWFZ1tSwIGr+X24tZ9oKRx7zq5k9RlVDnTzLvoSYoLAWk?=
 =?us-ascii?Q?IiFcNzldPeqGrQnGJUONMw1aZvDboB4x+fajP/RJvHRh8gYAV9q6mSyJjhEg?=
 =?us-ascii?Q?9nx4rerMVvk83RLB9ZiFIc/xcCYUxUFHoBAldyDHwmB/WGfs1AwQsDWJCur7?=
 =?us-ascii?Q?9TS7wMlF9Mo5asmh8r5SnardLtmtYDcagaUwTD+yqDKTrcIHtW9vILBriocn?=
 =?us-ascii?Q?dgUeF0rknRPiWdKbvvPNPjnF59srS+v6KIZR1GRiz3/M4nnj7a2J3KlS0CKT?=
 =?us-ascii?Q?48IA3UHDrUx+ajokTdla9mW98pi3/oQ1hj5d113uiqKKpmFewjKHpwdjyEQK?=
 =?us-ascii?Q?2K/tkKU+Cj8ei8jD+CY7JfqlmWV30Ii1xgCHAfY7mQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WzrFU8x+tka+ZML17bQk0M2W5v1aj3AZmFKt9U7d7rujYmLT2NhVSqZkkIDk?=
 =?us-ascii?Q?PrRKKK9vXCVEnH8Iq4DOEBzt5mAN0NlYvwSDXaJkmCGGTBXS0rNCvyqb9D8D?=
 =?us-ascii?Q?NwY+5Qk0kadeBzzMRhdBUx63CEvxETOU4OUCU2EqpEbagwJZnW+wTGRvji4V?=
 =?us-ascii?Q?BSBIjeEWFietrxZ3G0dSlaOju9I6wi2v+pU73r4eHYPJ/S596h/CqRQVhJBm?=
 =?us-ascii?Q?ounaf5E7h3/J6ZWOmegY/ZZ9/A0hn7Bx5vEjxGDMiVErOkZ4DF1S5/yS/+DE?=
 =?us-ascii?Q?m+IdhFLR7d8HX5RMw0da4DSWYImC1A0ffPnoB6DK058Rii4XZIJvH4bWgErq?=
 =?us-ascii?Q?jAw4OpwGZ1NCKAYNtUcuCCt3hsPa5HroqC6B6QHJYasf3sAbpuKYjr7T3c7k?=
 =?us-ascii?Q?9A4XlNInXocwtW7R1jJiU7FH+0ZHrDkGynScfYuGGWYiHhBpMFvhACPqr253?=
 =?us-ascii?Q?zlzg7Zk1zKbN7WYALt9hNw08TEfnU9SNDP/UnlkTdZ4xiYfN5zDC0AlbYvZ8?=
 =?us-ascii?Q?fZynL/+dbX2EiF9Nlu7PFQwxdbt7ELqx6j236e+FFa5j7kpgCSMQop68gyp/?=
 =?us-ascii?Q?ISyLTkMSgxVY3qBqbRqyZX9N6wLX3MokUHSTjzTrZopxMRC2giZwIXumNkDY?=
 =?us-ascii?Q?8xy2zbezP+ArhDMMLx/WIC1sgLNVqTsxx6aJInsF638C3SDRQJTRtcSI79zJ?=
 =?us-ascii?Q?UaFAY2927xTQ/qS4TV7WnWAiE3uPGmMQdqfCmL0OPtF+ie/l78cx3g3jDxt5?=
 =?us-ascii?Q?9o4Thrq0YtBXdMx+VaDTI6zgcwNrgQyVU4XGPUp3JFfDkg2ZBHdpfRviZdY0?=
 =?us-ascii?Q?reFUVlGFpa120aRN+koyTkCHN1Y8Ocx3FY+3zun+OAtekY+coGL/JKjFZXua?=
 =?us-ascii?Q?c1NAls6E9rRYr/HtG1zphxPPnUHR+H6ALBtg+HF0Eww8N4hSFdgUVX487cFT?=
 =?us-ascii?Q?qfCkkwxFGVvWOdn2r5CbJJGH6wxqOL+DxDwYTi2xHtTak/vmUMX39zKoZ8Ou?=
 =?us-ascii?Q?pwy546Kw9cxWGCwaUYxKPlXHifBXFARTmnc2wzVwj8anbfygyGXwj10/ZGB0?=
 =?us-ascii?Q?nBbTWG724FZH1RXBb/pVeRPq3x9Rs6G5J57lSAQslj5kWKcFH+sko8dT/EpA?=
 =?us-ascii?Q?EgqVyCFtslTsYLqCG4WxZ5CnBjcDKITVfOSaWequ8Rbeu3aOUypmznWBCwqQ?=
 =?us-ascii?Q?FlWahH918gRPX7w/EpoF+/zr+B+a8uJ6iTx9Kku2zl0OqZiNCViqAgf4vI+E?=
 =?us-ascii?Q?4k+AB6dkdZTnl5d4cpezKN2JduQRCsmlTLRs51rTcv+42J3bnmvSnoomkomZ?=
 =?us-ascii?Q?SH0hTOBcdQKm6l13VxR2cOhIe3MVo1vaok1ifb6IEAGmlmV/TZUatqwz+x5N?=
 =?us-ascii?Q?00JH0PZrp7Zg06/dzSL4IkZ0dqonxfUthuQ5s/XAM5N8GFkt5pRF75+7YZRh?=
 =?us-ascii?Q?Ayh3FC9cQICQnTmMQQCxTV+WjGsqgViQ9oAJFE6lTxwU+SSwuGCBPpnDwH0x?=
 =?us-ascii?Q?LupBS2LYlUosoh017zg7DvdalOxB+i7VImDvXwY8Dq3qC201rbYnCGwhmAGR?=
 =?us-ascii?Q?ExRDyvrZo/nz21KV2u3nT63Mhd3st9asrswuNI5uBgYEjmpiEssBHoDa6TaW?=
 =?us-ascii?Q?4Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5372f3ed-8028-4422-e1fd-08dc75aba6e2
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2024 13:25:28.1342 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: El3SH8IqD+V+CpAzFi17s+L8HAT81sL5KkJfybARRPYfnCmw5LAARWA+CrnLg7cJfgrtcarA9oECEeGkC/vRjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5223
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

On Wed, May 15, 2024 at 07:56:51PM +0300, Jani Nikula wrote:
> Now that the PCI ID macros allow us to pass in the macro to use, stop
> redefining INTEL_VGA_DEVICE.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 87 +++++++++---------
>  drivers/gpu/drm/i915/intel_device_info.c      | 91 +++++++++----------
>  2 files changed, 88 insertions(+), 90 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 950e66cdba0a..cf093bc0cb28 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -795,55 +795,54 @@ static bool has_no_display(struct pci_dev *pdev)
>  	return pci_match_id(ids, pdev);
>  }
>  
> -#undef INTEL_VGA_DEVICE
> -#define INTEL_VGA_DEVICE(id, info) { id, info }
> +#define INTEL_DISPLAY_DEVICE(_id, _info) { .devid = (_id), .info = (_info) }
>  
>  static const struct {
>  	u32 devid;
>  	const struct intel_display_device_info *info;
>  } intel_display_ids[] = {
> -	INTEL_I830_IDS(INTEL_VGA_DEVICE, &i830_display),
> -	INTEL_I845G_IDS(INTEL_VGA_DEVICE, &i845_display),
> -	INTEL_I85X_IDS(INTEL_VGA_DEVICE, &i85x_display),
> -	INTEL_I865G_IDS(INTEL_VGA_DEVICE, &i865g_display),
> -	INTEL_I915G_IDS(INTEL_VGA_DEVICE, &i915g_display),
> -	INTEL_I915GM_IDS(INTEL_VGA_DEVICE, &i915gm_display),
> -	INTEL_I945G_IDS(INTEL_VGA_DEVICE, &i945g_display),
> -	INTEL_I945GM_IDS(INTEL_VGA_DEVICE, &i945gm_display),
> -	INTEL_I965G_IDS(INTEL_VGA_DEVICE, &i965g_display),
> -	INTEL_G33_IDS(INTEL_VGA_DEVICE, &g33_display),
> -	INTEL_I965GM_IDS(INTEL_VGA_DEVICE, &i965gm_display),
> -	INTEL_GM45_IDS(INTEL_VGA_DEVICE, &gm45_display),
> -	INTEL_G45_IDS(INTEL_VGA_DEVICE, &g45_display),
> -	INTEL_PNV_IDS(INTEL_VGA_DEVICE, &pnv_display),
> -	INTEL_ILK_D_IDS(INTEL_VGA_DEVICE, &ilk_d_display),
> -	INTEL_ILK_M_IDS(INTEL_VGA_DEVICE, &ilk_m_display),
> -	INTEL_SNB_IDS(INTEL_VGA_DEVICE, &snb_display),
> -	INTEL_IVB_IDS(INTEL_VGA_DEVICE, &ivb_display),
> -	INTEL_HSW_IDS(INTEL_VGA_DEVICE, &hsw_display),
> -	INTEL_VLV_IDS(INTEL_VGA_DEVICE, &vlv_display),
> -	INTEL_BDW_IDS(INTEL_VGA_DEVICE, &bdw_display),
> -	INTEL_CHV_IDS(INTEL_VGA_DEVICE, &chv_display),
> -	INTEL_SKL_IDS(INTEL_VGA_DEVICE, &skl_display),
> -	INTEL_BXT_IDS(INTEL_VGA_DEVICE, &bxt_display),
> -	INTEL_GLK_IDS(INTEL_VGA_DEVICE, &glk_display),
> -	INTEL_KBL_IDS(INTEL_VGA_DEVICE, &skl_display),
> -	INTEL_CFL_IDS(INTEL_VGA_DEVICE, &skl_display),
> -	INTEL_WHL_IDS(INTEL_VGA_DEVICE, &skl_display),
> -	INTEL_CML_IDS(INTEL_VGA_DEVICE, &skl_display),
> -	INTEL_ICL_IDS(INTEL_VGA_DEVICE, &icl_display),
> -	INTEL_EHL_IDS(INTEL_VGA_DEVICE, &jsl_ehl_display),
> -	INTEL_JSL_IDS(INTEL_VGA_DEVICE, &jsl_ehl_display),
> -	INTEL_TGL_IDS(INTEL_VGA_DEVICE, &tgl_display),
> -	INTEL_DG1_IDS(INTEL_VGA_DEVICE, &dg1_display),
> -	INTEL_RKL_IDS(INTEL_VGA_DEVICE, &rkl_display),
> -	INTEL_ADLS_IDS(INTEL_VGA_DEVICE, &adl_s_display),
> -	INTEL_RPLS_IDS(INTEL_VGA_DEVICE, &adl_s_display),
> -	INTEL_ADLP_IDS(INTEL_VGA_DEVICE, &xe_lpd_display),
> -	INTEL_ADLN_IDS(INTEL_VGA_DEVICE, &xe_lpd_display),
> -	INTEL_RPLU_IDS(INTEL_VGA_DEVICE, &xe_lpd_display),
> -	INTEL_RPLP_IDS(INTEL_VGA_DEVICE, &xe_lpd_display),
> -	INTEL_DG2_IDS(INTEL_VGA_DEVICE, &xe_hpd_display),
> +	INTEL_I830_IDS(INTEL_DISPLAY_DEVICE, &i830_display),
> +	INTEL_I845G_IDS(INTEL_DISPLAY_DEVICE, &i845_display),
> +	INTEL_I85X_IDS(INTEL_DISPLAY_DEVICE, &i85x_display),
> +	INTEL_I865G_IDS(INTEL_DISPLAY_DEVICE, &i865g_display),
> +	INTEL_I915G_IDS(INTEL_DISPLAY_DEVICE, &i915g_display),
> +	INTEL_I915GM_IDS(INTEL_DISPLAY_DEVICE, &i915gm_display),
> +	INTEL_I945G_IDS(INTEL_DISPLAY_DEVICE, &i945g_display),
> +	INTEL_I945GM_IDS(INTEL_DISPLAY_DEVICE, &i945gm_display),
> +	INTEL_I965G_IDS(INTEL_DISPLAY_DEVICE, &i965g_display),
> +	INTEL_G33_IDS(INTEL_DISPLAY_DEVICE, &g33_display),
> +	INTEL_I965GM_IDS(INTEL_DISPLAY_DEVICE, &i965gm_display),
> +	INTEL_GM45_IDS(INTEL_DISPLAY_DEVICE, &gm45_display),
> +	INTEL_G45_IDS(INTEL_DISPLAY_DEVICE, &g45_display),
> +	INTEL_PNV_IDS(INTEL_DISPLAY_DEVICE, &pnv_display),
> +	INTEL_ILK_D_IDS(INTEL_DISPLAY_DEVICE, &ilk_d_display),
> +	INTEL_ILK_M_IDS(INTEL_DISPLAY_DEVICE, &ilk_m_display),
> +	INTEL_SNB_IDS(INTEL_DISPLAY_DEVICE, &snb_display),
> +	INTEL_IVB_IDS(INTEL_DISPLAY_DEVICE, &ivb_display),
> +	INTEL_HSW_IDS(INTEL_DISPLAY_DEVICE, &hsw_display),
> +	INTEL_VLV_IDS(INTEL_DISPLAY_DEVICE, &vlv_display),
> +	INTEL_BDW_IDS(INTEL_DISPLAY_DEVICE, &bdw_display),
> +	INTEL_CHV_IDS(INTEL_DISPLAY_DEVICE, &chv_display),
> +	INTEL_SKL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> +	INTEL_BXT_IDS(INTEL_DISPLAY_DEVICE, &bxt_display),
> +	INTEL_GLK_IDS(INTEL_DISPLAY_DEVICE, &glk_display),
> +	INTEL_KBL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> +	INTEL_CFL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> +	INTEL_WHL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> +	INTEL_CML_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> +	INTEL_ICL_IDS(INTEL_DISPLAY_DEVICE, &icl_display),
> +	INTEL_EHL_IDS(INTEL_DISPLAY_DEVICE, &jsl_ehl_display),
> +	INTEL_JSL_IDS(INTEL_DISPLAY_DEVICE, &jsl_ehl_display),
> +	INTEL_TGL_IDS(INTEL_DISPLAY_DEVICE, &tgl_display),
> +	INTEL_DG1_IDS(INTEL_DISPLAY_DEVICE, &dg1_display),
> +	INTEL_RKL_IDS(INTEL_DISPLAY_DEVICE, &rkl_display),
> +	INTEL_ADLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_display),
> +	INTEL_RPLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_display),
> +	INTEL_ADLP_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> +	INTEL_ADLN_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> +	INTEL_RPLU_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> +	INTEL_RPLP_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> +	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &xe_hpd_display),
>  
>  	/*
>  	 * Do not add any GMD_ID-based platforms to this list.  They will
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 82bb34416fb1..862f4b705227 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -127,81 +127,80 @@ void intel_device_info_print(const struct intel_device_info *info,
>  	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
>  }
>  
> -#undef INTEL_VGA_DEVICE
> -#define INTEL_VGA_DEVICE(id, info) (id)
> +#define ID(id) (id)
>  
>  static const u16 subplatform_ult_ids[] = {
> -	INTEL_HSW_ULT_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_HSW_ULT_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_HSW_ULT_GT3_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULT_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULT_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULT_GT3_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULT_RSVD_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_SKL_ULT_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_SKL_ULT_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_SKL_ULT_GT3_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_KBL_ULT_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_KBL_ULT_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_KBL_ULT_GT3_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_CFL_U_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_CFL_U_GT3_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_WHL_U_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_WHL_U_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_WHL_U_GT3_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_CML_U_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_CML_U_GT2_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_HSW_ULT_GT1_IDS(ID),
> +	INTEL_HSW_ULT_GT2_IDS(ID),
> +	INTEL_HSW_ULT_GT3_IDS(ID),
> +	INTEL_BDW_ULT_GT1_IDS(ID),
> +	INTEL_BDW_ULT_GT2_IDS(ID),
> +	INTEL_BDW_ULT_GT3_IDS(ID),
> +	INTEL_BDW_ULT_RSVD_IDS(ID),
> +	INTEL_SKL_ULT_GT1_IDS(ID),
> +	INTEL_SKL_ULT_GT2_IDS(ID),
> +	INTEL_SKL_ULT_GT3_IDS(ID),
> +	INTEL_KBL_ULT_GT1_IDS(ID),
> +	INTEL_KBL_ULT_GT2_IDS(ID),
> +	INTEL_KBL_ULT_GT3_IDS(ID),
> +	INTEL_CFL_U_GT2_IDS(ID),
> +	INTEL_CFL_U_GT3_IDS(ID),
> +	INTEL_WHL_U_GT1_IDS(ID),
> +	INTEL_WHL_U_GT2_IDS(ID),
> +	INTEL_WHL_U_GT3_IDS(ID),
> +	INTEL_CML_U_GT1_IDS(ID),
> +	INTEL_CML_U_GT2_IDS(ID),
>  };
>  
>  static const u16 subplatform_ulx_ids[] = {
> -	INTEL_HSW_ULX_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_HSW_ULX_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULX_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULX_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULX_GT3_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULX_RSVD_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_SKL_ULX_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_SKL_ULX_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_KBL_ULX_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_KBL_ULX_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_AML_KBL_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_AML_CFL_GT2_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_HSW_ULX_GT1_IDS(ID),
> +	INTEL_HSW_ULX_GT2_IDS(ID),
> +	INTEL_BDW_ULX_GT1_IDS(ID),
> +	INTEL_BDW_ULX_GT2_IDS(ID),
> +	INTEL_BDW_ULX_GT3_IDS(ID),
> +	INTEL_BDW_ULX_RSVD_IDS(ID),
> +	INTEL_SKL_ULX_GT1_IDS(ID),
> +	INTEL_SKL_ULX_GT2_IDS(ID),
> +	INTEL_KBL_ULX_GT1_IDS(ID),
> +	INTEL_KBL_ULX_GT2_IDS(ID),
> +	INTEL_AML_KBL_GT2_IDS(ID),
> +	INTEL_AML_CFL_GT2_IDS(ID),
>  };
>  
>  static const u16 subplatform_portf_ids[] = {
> -	INTEL_ICL_PORT_F_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_ICL_PORT_F_IDS(ID),
>  };
>  
>  static const u16 subplatform_uy_ids[] = {
> -	INTEL_TGL_GT2_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_TGL_GT2_IDS(ID),
>  };
>  
>  static const u16 subplatform_n_ids[] = {
> -	INTEL_ADLN_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_ADLN_IDS(ID),
>  };
>  
>  static const u16 subplatform_rpl_ids[] = {
> -	INTEL_RPLS_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_RPLU_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_RPLP_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_RPLS_IDS(ID),
> +	INTEL_RPLU_IDS(ID),
> +	INTEL_RPLP_IDS(ID),
>  };
>  
>  static const u16 subplatform_rplu_ids[] = {
> -	INTEL_RPLU_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_RPLU_IDS(ID),
>  };
>  
>  static const u16 subplatform_g10_ids[] = {
> -	INTEL_DG2_G10_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_ATS_M150_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_DG2_G10_IDS(ID),
> +	INTEL_ATS_M150_IDS(ID),
>  };
>  
>  static const u16 subplatform_g11_ids[] = {
> -	INTEL_DG2_G11_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_ATS_M75_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_DG2_G11_IDS(ID),
> +	INTEL_ATS_M75_IDS(ID),
>  };
>  
>  static const u16 subplatform_g12_ids[] = {
> -	INTEL_DG2_G12_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_DG2_G12_IDS(ID),
>  };
>  
>  static bool find_devid(u16 id, const u16 *p, unsigned int num)
> -- 
> 2.39.2
> 
