Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 507ED9B5880
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 01:20:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFA0F10E3E0;
	Wed, 30 Oct 2024 00:20:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jmckq2Kr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D5810E3E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 00:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730247646; x=1761783646;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=XF/oQaQcZNYCP1ZDe062ObPs2iayT0MxMWkKFStKllI=;
 b=Jmckq2KrKNBDpNvjz5Xz1JxKMyG6S/AJ5ULj1eXtVVue6ouMmoM6B0ty
 wH+Z09qjlQpRKl+Ihkip555QQ/tPtQjykVCOhpLKgtse8hx3NmSVG8RZK
 /0ia+NqwA6+n+Nk53icgYWyg1emXkPZgDPuMjSbyZt2N53M981bXTNh8+
 jFZ1iZkFSORDpVqWn57g6PSvqXdEqr9uBvA5lv05Dq0ONEYp2wFFYsd8u
 pOsqM4Bv25ncGjaMHfKxKE6p9mkgPAR866lCgNXTrjvqV+2sTTEseR/iV
 V5spGu2/Abx923yd7rkj79UFDhRzCNjAekEam4TjSE5BybVf8N4N0ENZy Q==;
X-CSE-ConnectionGUID: T9N2H+sTTHuyUeryLREraA==
X-CSE-MsgGUID: N0OAMiiFS9iKdp6YeMSFIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29882568"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29882568"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 17:20:46 -0700
X-CSE-ConnectionGUID: ZIMGWoqDSsmNX/AyimhjIw==
X-CSE-MsgGUID: o/fH913hRk29ctND8d2Apw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="119615080"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 17:20:45 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 17:20:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 17:20:44 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 17:20:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qlX1ZIdr4tVcY1xyVPw2FJOwXEJPg5kwWAboawaILgKKlXax59K8qitnASU6RffdWOFGOI9Wi6gKRMthyqsxEulfeXmGtX8dQjZ+LzrWwy1jjv/uGChRI/narJllweoZWVjIu/04EEkaokEoJqN0obMG5qFKRA5hNFVSY5F4rFtkhUKVRlGM1hyTPgemi0S0xX7DFiDS+ns+m9w1Nld7H9UMRi6Ps1Gqg11TyfzFNZXK9cDSpOdacaF2yMgRqf2QJSHJGTvEKA6UYMLaomCVYkfXomGXubADGr8xjNNhagKkm4KhvulFSRmiPFBB3JWLYSRptHXN/smaS+aZUAc1Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K8org86ZCK/tdNyrCNUq56tXsQjFoCvx6/eHEXJUex8=;
 b=VqXoVhIYvBrz5H5bSf0u1soeGYnkEp8go+/pzPCwgUU2HAq2usAKRqmm8G67VgUR9qMdYV9Z29k18NTvUFe56VXeO5gTfRQEqoc8YfAhSnriOwAxuSNpIOYIIbvSWniLE2vKB4PZd8S2CYZWKCMyVZY6i4QXYG3YKhqAnM6iBdwYC4A9RPIexChxN7MYL3Nzd2/wfV04tCz30j3L6itZaTLNhXuUxBHfjqRS3RUER+6X93gRYdhEwx60Fw3JM8IdFMmXURQ5tBkdnVBtOVILTTgDVSYwM7x5S79pVvqlWnxbOCqU74dwBXnZP2fBR2SbC6tuhAu3uLJm4B9P6rCrVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB8000.namprd11.prod.outlook.com (2603:10b6:8:128::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.18; Wed, 30 Oct
 2024 00:20:42 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 00:20:42 +0000
Date: Tue, 29 Oct 2024 17:20:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>, Umesh Nerlige Ramappa
 <umesh.nerlige.ramappa@intel.com>
Subject: Re: [PATCH 8/8] drm/i915/pmu: Release open events when unregistering
Message-ID: <20241030002039.GF4891@mdroper-desk1.amr.corp.intel.com>
References: <20241011225430.1219345-1-lucas.demarchi@intel.com>
 <20241011225430.1219345-9-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241011225430.1219345-9-lucas.demarchi@intel.com>
X-ClientProxiedBy: BY5PR17CA0065.namprd17.prod.outlook.com
 (2603:10b6:a03:167::42) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB8000:EE_
X-MS-Office365-Filtering-Correlation-Id: 329899fe-e440-4c62-5a99-08dcf878b06c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?S+gbDOn6hZBO5+tyuZdaeJFy4YrrNRcN+uHLMpWIFlmgvN/zSaoQ3AL593kM?=
 =?us-ascii?Q?6wOWdDBuIFes9qDhWNTRB58ston8j79eddY4dZpLZGEJ5DU8i7XGvgwQQa/S?=
 =?us-ascii?Q?H3F5yt4Eiv7jZlL/VLEPXblqcAwB8ZMx2I0ixl7vV+Zav/s8iSDEUosnkFgS?=
 =?us-ascii?Q?REGKTTvDcH9M3Uf3TnYAyvzrGe3jdGEIMJvRJXyoW1K5bktr1Gi7S8vkVTyY?=
 =?us-ascii?Q?J9SfIqbtyDZuasjJc+/HjyO3hBP8+WrLhocu6M+LUrArF4eh4Ljz9orsI+Hi?=
 =?us-ascii?Q?l/w5Oi2KoH7E73miGtIkwE5SElZ/Fv/CyEtIEMemdkUlNIa5AtX1W/kzSncK?=
 =?us-ascii?Q?sNedMkTUSpl8ZgVfHAXolAuxjgSLy5t+35Hq6JbzXyOMblS+3ibh2Pipj39Y?=
 =?us-ascii?Q?u0XLvDdK1BwY+SNrIHiCkTf66OjgfXGD0vcXsOeieatJuxJ6mJsEDdpWRKNA?=
 =?us-ascii?Q?CFnEBVmVcgqyHykvKQOVcjW4sOX4n1PfiXcymIBxxHXF/ZBZhVnCaV34gI/s?=
 =?us-ascii?Q?8W7gPy4LJb49akUId8dh/d7dAJpmln2NyWTy5JZ+dZdpX4z6nFknLyPbJwHt?=
 =?us-ascii?Q?+rje/6NG1a1K+owEKNUENP+R9Xa12YSIMECE5b3yjehHFxd4JouIM9Zhox+g?=
 =?us-ascii?Q?sBCoytsXFUKRMRp8BNiLsk6q/g6cjy1n+dtjw7IhvuOaSui0FRKZwsJFfK9s?=
 =?us-ascii?Q?bUfbalEjjH9iFxk8/CEsfPwxIdcyNvQQv0DWI0syL3lekn2f/FQB8NCL2ynS?=
 =?us-ascii?Q?8kTOhi/qdI8Ot0yo4hqoM1UGATxnCv0yMWKVBi43faiP/TfK3GuBvwMHgE4w?=
 =?us-ascii?Q?Rqv6N/tlvtTu60EruBeipLbF6AxYfmNqvgl0a9pMEuX3nw4IM7hv3Nn0kp3p?=
 =?us-ascii?Q?tzaJ3Unx9M7q3xsrxtEEbiefNvpj6u8alBfO/OATFwtAmngHkeMRtVEuyG0X?=
 =?us-ascii?Q?YCnhzHBFo4O54hIOO2pPrOiemNPx8YBEM1vvlJqZn7qTVwjC8+fFsODM07RK?=
 =?us-ascii?Q?Zg8Aye7wRTxjFFc4z72y2gUbLUIrcWgczSiGKmCCuvD3pS/2qKVzz+T6pegv?=
 =?us-ascii?Q?uzf/RYxHCJFcFu4ly2QzDH58w/NWNpTT/AZqrl1IGXpZoDHcI2F9c+x2Nls7?=
 =?us-ascii?Q?0xbXhDLRRUhp6iBzRskwBH7H3e3K2UxuPreMI0oimfcEcDDwzIW/yfPzzPvM?=
 =?us-ascii?Q?OsIO37xk6KZB+0BAPWZ+NxRpu4cyn31b+hs6Jo/0dGTt8bB/2GPG/hsFriIj?=
 =?us-ascii?Q?ISF2HHILl3dYg4vmBwckWr6aknjgxK+53rdJzhBiSjk3iqQZ6MzUZt6O9ysh?=
 =?us-ascii?Q?irzykEe7457Kg91XTf0pgkzO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lCt2oKu484HrM26g0XLtzTItoKvGL4r2D3i0m5dtnvYxKRCD0dlP1UPLKten?=
 =?us-ascii?Q?1C3msFi3O6Je9qDvb7wrtBdAm/OdVL7IVQt7UEVSvlNA6IboolK7zVDZbIDq?=
 =?us-ascii?Q?YVnW2DLbGhh1xKOcbJeaQneb5Uv5h9UwnVQLE8Dqgyaa0LBuh6aEBvG0hFwf?=
 =?us-ascii?Q?1nPBmReQGWJVrL9gH70UueFQm65zEDFTywIzWeSJCr5qJRTTvNYGX0Bg5AMc?=
 =?us-ascii?Q?6lvILE7EgyeXfO6o9qke66h17VnJMctTnTVsSIW8F0iRgV01y6mnrxDS/oTl?=
 =?us-ascii?Q?qYRlz2StnoYIbF0QNgCyZOj1fYF5aLSq3KLTOXbDX7KLEsna5asuvpEv5Pwz?=
 =?us-ascii?Q?nVKL++SLuWjfBYZybqmvCjYS8dBfbFOXmogBqInL39lE4QMIPTNtXIWwVQbM?=
 =?us-ascii?Q?Ov/ZkEPYs3n1+ZKSQobE8dUX3+A7dDrdzGarSUsacnLqDupEoxxLpv93PtTZ?=
 =?us-ascii?Q?C+V4qKz+Ox8+zPZQQ/H3Ct86Y3+pPTgRu7rtFjmukoZjMIQ9/7M0OXYBsWpw?=
 =?us-ascii?Q?1klDvgfvep8QtMXgWTqQxq/S5+nmUR35jPISPReGZnBzwRWI60a4u8rdPb3Y?=
 =?us-ascii?Q?aLIWUXBKC2TuS2vjCDXs1WB6F5hD1Fn0eWEd8Pc9+TJnb9DE64HJga84SJi2?=
 =?us-ascii?Q?G0dOU6zD+xrqqJu+IxarrgfCthPOXOgwH8Q/DQZecyD6sC3sktQMIr7rWhCX?=
 =?us-ascii?Q?GuZk/X5VQI+WXnP/P8vhTmhceSJl1llRrmGh2Xky5j+8EfmBNW0iz9/i/WxS?=
 =?us-ascii?Q?Mfe6Tu4AzNiNRPppYczjlmoDIJBgj9/SIETHZJTIBa3eoEi1pooovBeP8/R1?=
 =?us-ascii?Q?ehm+W9NWqfICjF0/UYdQ/NdNTxpzp+HfMxdvpHUbXaKFQ3mvgGuMk54O85uh?=
 =?us-ascii?Q?UcIq7SRMsYqfuK8Tmzwbbq5lQMwFuh8WNkcSe2H2GFdIzOHgNptMzjqzw4li?=
 =?us-ascii?Q?gJ0/mJ8i3sQF1Pe61rMBXlsFh6dfXS9YS31n8WqN1YOTw8/eIfW3K/WvcHS5?=
 =?us-ascii?Q?QBNWdHLJklU5dwWAi0GcMECgkqrnMnbkRW2HPrTSXSr0NDZKyruWM789Shqp?=
 =?us-ascii?Q?W0fH1WmpEDTECsWslsFhKJdZFRMKyhV354FzKsGOlUPG4HXNca0/CLpyaUhp?=
 =?us-ascii?Q?KkPzU2CvDihrhvA3FAI+PzCXGjuw+ok/GZV9zB0GFp91zFuAHyGMWtWMX6ea?=
 =?us-ascii?Q?qWeEa5oeH35B6ezWq7iH3bitlNRhaRL6bPILrohE8OkrpEUiWFuCXM4OA/nc?=
 =?us-ascii?Q?OwPeE4iaVkybf57jsrPlLzt6cMM6LVEHDaPfA9u6oUlWaS4BzHKOSavuSEtZ?=
 =?us-ascii?Q?45QvOEt3vWZEDGFEu89WXwfTqHUBMsIVqnHIZhYmaRhkq9qx3nNA/aI3Gbyd?=
 =?us-ascii?Q?0qloMLCj85lhnuWAMr0OUUzDhcbxYOzxXZ7U2nUYro/d/o7AZzbF5E+et/B0?=
 =?us-ascii?Q?nwdsaXupNNVaILG2qm8L5L9jqChJXBzUDrH8QfTe3tKDQdDpirBDwuZZPMhT?=
 =?us-ascii?Q?64egajnWLgTWJGwiLQh23gKKTfWdyNQJmfed9ZWUJErU7pmXBwPIiUkDTKPQ?=
 =?us-ascii?Q?HKOVMy4rnHvkNg77uiEQw2qYaOBucrh3dV4HE8eE6c3XZA9m44AzUbKoHLVh?=
 =?us-ascii?Q?ZA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 329899fe-e440-4c62-5a99-08dcf878b06c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2024 00:20:42.1369 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DI3RyU1bCrpGlbRc8yzIWb3ZLyxaySgohjeVvFeL0AAoMUcd8yonc7qiNcCkHRJy0x0X6hWDnGqPaHWVwkXWCzKoqO/FoRSm+33vS+lnzfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8000
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

On Fri, Oct 11, 2024 at 03:54:30PM -0700, Lucas De Marchi wrote:
> When unregistering the PMU, disable the active events. This
> allows userspace to see the change and possibly react on it, like
> reopening the fd.
> 
> With perf-stat, "<not counted>" starts to be printed:
> 
> 	2.007597571        500,909,500 ns   i915_0000_03_00.0/rc6-residency/
> 	2.508569383                  0 ns   i915_0000_03_00.0/rc6-residency/
> 	3.009405012      <not counted> ns   i915_0000_03_00.0/rc6-residency/
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 35 ++++++++++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_pmu.h |  6 ++++++
>  2 files changed, 40 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 2f8004ade6d36..1466464c119df 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -515,6 +515,18 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
>  	return HRTIMER_RESTART;
>  }
>  
> +static void i915_pmu_event_destroy(struct perf_event *event)
> +{
> +	struct i915_pmu *pmu = event_to_pmu(event);
> +	unsigned long idx;
> +	struct perf_event *e;
> +
> +	xa_for_each(&pmu->active_events, idx, e)
> +		if (e == event) {
> +			xa_erase(&pmu->active_events, idx);
> +			break;
> +		}
> +}
>  
>  static int
>  engine_event_status(struct intel_engine_cs *engine,
> @@ -539,7 +551,6 @@ static int
>  config_status(struct drm_i915_private *i915, u64 config)
>  {
>  	struct intel_gt *gt = to_gt(i915);
> -
>  	unsigned int gt_id = config_gt_id(config);
>  	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
>  
> @@ -591,6 +602,7 @@ static int i915_pmu_event_init(struct perf_event *event)
>  {
>  	struct i915_pmu *pmu = event_to_pmu(event);
>  	struct drm_i915_private *i915 = pmu_to_i915(pmu);
> +	u32 event_id;
>  	int ret;
>  
>  	if (!pmu->registered)
> @@ -620,6 +632,13 @@ static int i915_pmu_event_init(struct perf_event *event)
>  	if (ret)
>  		return ret;
>  
> +	ret = xa_alloc(&pmu->active_events, &event_id, event,
> +		       xa_limit_32b, GFP_KERNEL);
> +	if (ret)
> +		return ret;
> +
> +	event->destroy = i915_pmu_event_destroy;
> +
>  	return 0;
>  }
>  
> @@ -1263,6 +1282,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
>  
>  	spin_lock_init(&pmu->lock);
>  	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
> +	xa_init_flags(&pmu->active_events, XA_FLAGS_ALLOC);
>  	pmu->timer.function = i915_sample;
>  	pmu->cpuhp.cpu = -1;
>  	init_rc6(pmu);
> @@ -1331,6 +1351,17 @@ void i915_pmu_register(struct drm_i915_private *i915)
>  	drm_notice(&i915->drm, "Failed to register PMU!\n");
>  }
>  
> +static void release_active_events(struct i915_pmu *pmu)
> +{
> +	struct perf_event *event;
> +	unsigned long idx;
> +
> +	xa_for_each(&pmu->active_events, idx, event) {
> +		xa_erase(&pmu->active_events, idx);
> +		perf_event_disable(event);
> +	}
> +}
> +
>  void i915_pmu_unregister(struct drm_i915_private *i915)
>  {
>  	struct i915_pmu *pmu = &i915->pmu;
> @@ -1341,6 +1372,8 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
>  	/* Disconnect the PMU callbacks */
>  	pmu->registered = false;
>  
> +	release_active_events(pmu);
> +
>  	hrtimer_cancel(&pmu->timer);
>  
>  	i915_pmu_unregister_cpuhp_state(pmu);
> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
> index 3c1cf594954d9..dd4cac95d032b 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.h
> +++ b/drivers/gpu/drm/i915/i915_pmu.h
> @@ -10,6 +10,7 @@
>  #include <linux/hrtimer.h>
>  #include <linux/perf_event.h>
>  #include <linux/spinlock_types.h>
> +#include <linux/xarray.h>
>  #include <uapi/drm/i915_drm.h>
>  
>  struct drm_i915_private;
> @@ -152,6 +153,11 @@ struct i915_pmu {
>  	 * @pmu_attr: Memory block holding device attributes.
>  	 */
>  	void *pmu_attr;
> +
> +	/**
> +	 * @active_events: Events currently open by perf.
> +	 */
> +	struct xarray active_events;
>  };
>  
>  #ifdef CONFIG_PERF_EVENTS
> -- 
> 2.47.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
