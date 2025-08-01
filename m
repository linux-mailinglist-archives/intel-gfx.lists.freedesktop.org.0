Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6590B184DB
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 17:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FDEB10E8BE;
	Fri,  1 Aug 2025 15:22:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kk93pWO8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CBCB10E8A4;
 Fri,  1 Aug 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754061773; x=1785597773;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Kpzwc/dPMsr15k5zMO6eGXOo0zTDCWU0J4KJsAI0TSo=;
 b=Kk93pWO8cT6dPln1UOnc+ooqLRDJ0SSuliEE/2lyCZ+G3tE4fF1+03e+
 kXf6BAQsWY/alJrDYTDAvCtd2XkK2G3PVFxsfoaiVzen4AQWMmNXXIy+N
 sjnLyWKMP+/FSi3+EfZqCKWmN7TsDHun23qvfrFIEeP4mEL+kBRbqCbNb
 KO+q45KKea4tRsWDn/nkWkVw8eI/ghjAnn+vqmnXCkJ5yChP7+YY8zZVd
 RJtpRJNLPlLf1D4QxrtXPOMY2lmim8Sv7jRHQNrx/7MwcEqRhQYTrxyRc
 QCcweD7O9Ws/6mAWKclyS9sa7J3ipDlDOQ/E61w+ffFzTrKBAFk54Ks5s g==;
X-CSE-ConnectionGUID: jmWOeC7hSQC1PERfcHtnLQ==
X-CSE-MsgGUID: nF613LaDRgGse98RDCbaSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="67777607"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="67777607"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 08:22:53 -0700
X-CSE-ConnectionGUID: WBS8Wd4yRFC2K0AWl7ugBw==
X-CSE-MsgGUID: e4iAhNFWStS12V+jF8cfBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="168971001"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 08:22:53 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 08:22:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 1 Aug 2025 08:22:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.75)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 08:22:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ocyRU9GryyVwoRmUTyw7Elle6RiPwAJ0SuFJxbnEu7pc/1QaEIbVXkibxxnSjiPeMg+SqcBilckFsb9Z5giRj/zlGAEMUmuuKhhIM1fqMoNp+ZpVzUoZDQmugHNdgs7oysPZcwd78xjJi9Uh5MlYj1r0Oi+G+v67v3myC2B6KXnMmmkNjk+NjbQonS2EUf3g+lgLK+W9EsEbaBwSjnntiVrgz+KwUbO4m3KKw+Bd/ic1f0EM8jgwKoD3GH62MHhwHIaQHvlHDCvyBpfTPQaGUN4+gMO7ryxZDYljGo0ORMLU33Z2528OgJeKeBRKoiPBKLe3zS8hA6EYM/U/7mEfzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j8/+x1vo8tYOVgHwqnpBS64D9Smc6wMBmQpEceibzwA=;
 b=hxD2Durqo9ABkoOI9DAtD80A3vUqU3828DLzBu1HoHs6ysHmBwBG8W79pq5nGBvKkeXX6GQGxqWvF2lnmFvhFqcZPACBv9bRDIvKfHVuGWb/XL+wTUwv3mL4pU+6piVWjniRSd9owcDDh//yUfrTBKtPqaEJ7+IswvZT8j3gpD4nt/yl2b60ZjIx3N49jdPP51ef6a+REK0OaHd5zgb79S9VWyDNJT5X1ifMb6PTsYvgWpIyjCMzBxKLLTJp+ihAfLqEUMxxakJdVIhKz8hRPCLD34/MmdBnKl80q6ovhNRubxDd4CUt8vIkzjf//P45pq7OQsrxHBVKQZJ23LY2TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CO1PR11MB4851.namprd11.prod.outlook.com (2603:10b6:303:9b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.17; Fri, 1 Aug
 2025 15:22:34 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.011; Fri, 1 Aug 2025
 15:22:34 +0000
Date: Fri, 1 Aug 2025 11:22:28 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/xe/compat: stop including i915_utils.h from
 compat i915_drv.h
Message-ID: <aIzbtCt7eGyvtwnK@intel.com>
References: <cover.1753965351.git.jani.nikula@intel.com>
 <6338c8524e600e048b56c5484624cfb51ed49d1d.1753965351.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6338c8524e600e048b56c5484624cfb51ed49d1d.1753965351.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR03CA0017.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::27) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CO1PR11MB4851:EE_
X-MS-Office365-Filtering-Correlation-Id: 841758e7-90c9-48dc-a2fd-08ddd10f3d75
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ych3lTrP7Yyw5bhm0swM0/Lwplr329NK+JlTdu/MMT+2uzgn86ZJpkdmpm2Y?=
 =?us-ascii?Q?BudFCg+mTjX7LsbxiSXjKIogSv/C8XNAVDYB0YEvM37snv9G1SA3DiPn5Whu?=
 =?us-ascii?Q?3/9+93qWsM0RmgGitWI+tFZpb3VSXYC9k6J1SB7dG5lA1VBDlovdL5/oCUCW?=
 =?us-ascii?Q?zMSdVMRyssvWX2yWeseSm3lyejB8eOHcFw4q9jiDXZ9cbb9tZabSlDr2RL04?=
 =?us-ascii?Q?P1hDcQhz8TU8dBfGw7kYnEtlrU1rTnrpOXW74JfoMlxYcWKDV+b1KBdx4S5r?=
 =?us-ascii?Q?geAfGlsuNM6xLy+yJf+XqskmQAzQiwxGNpz4L0Dq7cY3wDJVB92JAQYTKb9g?=
 =?us-ascii?Q?ZCcBggs21MVbu4E/7d3pytDZcJdUMXbHc1Hs0JQPS73TEphRVnUOsGXJhYxR?=
 =?us-ascii?Q?dsmfl+irvRirjdh8xcOTnHYhIBEZK7IMdohrPDImYKg0TCYsXlkrKIh8eYIe?=
 =?us-ascii?Q?82bWUJjvVUnGoXMFDRDuId0H9EBRMkE9Wk2xw/f4a+pg+AL1SZQ63BcFYVPC?=
 =?us-ascii?Q?MW7Vjf1pkraSuWzzP5LOvqAYYlIx01T+Ggx0LznW4ZbeYLQtPX8zKI2SP37H?=
 =?us-ascii?Q?vdDFgVCodc8y71DQCjcNPUvqKVq8BcF1NJL2UMpW7vx421zm9r+7ainfG72V?=
 =?us-ascii?Q?nj847zVsnVVKeS/ZViRNPF440Md6EODgjXtAjhFpQO00dikVt8PUTIZeYSNR?=
 =?us-ascii?Q?5E3CfgsDnrn0CsYmagiBK5YHChx5l6EUs/os5fEtNRZYaUVVeJH5iyi2txpc?=
 =?us-ascii?Q?q7bp9e7KxcgboaPRNaIHpzPYDkHzWgWZY+AG4hWfRXdkeKd/ElFl5np8po4I?=
 =?us-ascii?Q?YGfvM0uVCgesE8X5+IHNpwP09kNsEDWK1/lESHizDarG7JEe2NmGKajy5XCq?=
 =?us-ascii?Q?s/6cI3Yl7lhRCT7yMuiCLJ6JmewPpu6nkCVb9YlqlcUfeXDUqnHnsF4h+p0R?=
 =?us-ascii?Q?U9t6Xpznr64Ody4aaB8UDGRpJE3N5oYZaVvVdmHeowzqClhgy9Mhr61uQdju?=
 =?us-ascii?Q?sNSvm8eU9rGlMFMFXGN5GdNepNDcHuBF88TyjYtkLlhCy9eH4TQ5SKCjEduz?=
 =?us-ascii?Q?y18UUug4os7ZXpPW3EPjR4TPDz6U1MYW6N6uBNFI+Cu91d0i9zVipAP6dT7m?=
 =?us-ascii?Q?BwwIZ5cYXvgXr9sIDazTMFri07MjzLfkqlV8YsGbWNP9L7EqO09y4n6kxask?=
 =?us-ascii?Q?/pE3g3mPYIlSOUZ/b7WPtrGGGAxuVsaYQqZX/JmXsHsOOZie9vVP7auboJqp?=
 =?us-ascii?Q?8JyZxf/VU1dRG9YeOAUTMYl8nQD6UBzpaYnjZm0CFKCtIMM28xq3omdorm7T?=
 =?us-ascii?Q?qmpZPQ7sYfSr5aR55Y7qLEMb8wrllIu5KvehF61pzoZ0RgBZdS15ns5YZX4S?=
 =?us-ascii?Q?cYBW1TOG+YLh6osQ830Rt4KN57ugNYGHny1vOXD6cAmyJj6MUH7i4lNIKXH7?=
 =?us-ascii?Q?lvGdm5rkGf0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8aMLoOMfioKsTAOAdZ92HzI1EuVU3TY0t9EtWt252Q00wnatItJnAouQL7F+?=
 =?us-ascii?Q?DdUQfBIXBmJeXRjsn0sccez2OZzdTlpu/PJOruBHwwXpdrD1LiSKV8MpMq2y?=
 =?us-ascii?Q?qKOXfJbOnuLf7rclkB4ZQxscvs6OyK3UtUEXVOEMjrLoEM/SOtLdXlHaQQfy?=
 =?us-ascii?Q?3OgOFAmZXNPYYyUHUWRnYzy5Hdyg2bI7DEbJO6bUrbXRuqNLbX4RxtUytAXa?=
 =?us-ascii?Q?CbwvpUaVCl5ssiQeoUHED/thWN8fupP8IUimeramg5g2faph+cxPJ+valZ+T?=
 =?us-ascii?Q?OX1ENmmXdtNuRnFl9wfJNTkw5cX+1ozQMrYAl/XATuK4UWsVoB+nmhdY+1+l?=
 =?us-ascii?Q?TkQ26LA/+PBNH1gjso1iWPQr0o2GrNs8rdFKBRGFA9DKbT+ziCMcfFZjQgkh?=
 =?us-ascii?Q?MwruI4+JHiV8q0+BoWVnBtQOZq42BtYL/yFVeLCOZY47enu3kBOflSiggAhX?=
 =?us-ascii?Q?jGJmmHGSZUFGT9kpbLId2RUehBE1b4CZmemXTjnEUhLbivtD7ts0vZF8NzQw?=
 =?us-ascii?Q?s/+C6cKIr2AviMsE4p6QVch+IwZTutETp/SK6AJmVeBO/2pqQj+UGRmivTe6?=
 =?us-ascii?Q?Ox7B1yb2AJUbRlALcQiOpoBMNjTTJgz7I8n8LOVcbon+ADqDm3mZbiM5yu2B?=
 =?us-ascii?Q?MOxNJFs5TTKrRQm3PM6zUYmb0NdyIzUmkYzvwZF65IarnDbzzMI5k4VG418A?=
 =?us-ascii?Q?hXxeAvwiCmAu2ddnVYLFmwTuDDkFucboBqpQEXdZ5q6ZNIbwjGwH/ENXEr/D?=
 =?us-ascii?Q?iQSKy7s/3lp8WL8NXFKH1IWRWxQRG1B1hEMx2gCKUsE1H2z1ZNvzRPIGB5T/?=
 =?us-ascii?Q?56E/plkuC9E7fSwky754b3yye9jBardiRxwh6n8Vq37k5cTI65jbC4/wb1Dn?=
 =?us-ascii?Q?lZP6GC00o16vfEfxSUoJvOACU/gi05nTd9NNkqMZEdLQdLyH+SFpDfudJIub?=
 =?us-ascii?Q?QRlqE5Ik8jRNhhjponKHSi1lNdCVS5/ppAhFT01zDhddetXzD+kx49bH/3p+?=
 =?us-ascii?Q?wjne7Jb4sZV0FRKnE/mUUF0KzLNi8ZAbxqDL6G+VPmnWL2nMjQE96uuAsqLB?=
 =?us-ascii?Q?t0jQZDTiQkhPluR0eXAv8G1NKHxT07o2Cq3NzADLGSUzMHeiTtM+Kz24/A83?=
 =?us-ascii?Q?JElqIbA5NvTNkUD/zubRRucxsmivpZzA82lmBpYPinypODJ8dkQ94E8uGUQ2?=
 =?us-ascii?Q?y3FIF+V5w55+9zqyupdFXVQRLyjd3YV13aDZ5InWey3hNIJ80iVvgL7zKwf6?=
 =?us-ascii?Q?72yWmF5idrYxBTGUMQyMgK6loqjT+b09MFRCko1PxvN5INwT/6BVi9e5nlJI?=
 =?us-ascii?Q?v4/kEEx55vEotwNHdjFlLwHEWmZFnUf5oUcCl5edO2FZ+VeqIFwPZJf7IaJr?=
 =?us-ascii?Q?UNGz+LN4hRHdMIZ92P5zunlOpcsVz021Em2ZIrtQ/YYtIbta4p5elv62W0eo?=
 =?us-ascii?Q?aqKrmkcOevy7vc1KUNf6Cn+Ux6/DgPsJW34LDOf7eD9hwuyd0qcqlbbf2gaD?=
 =?us-ascii?Q?NT8xzmZuYN8qwm8XilP6gbgq1tDT6z1GC/8BujiOrdklCzh+9bLW74aTgT9t?=
 =?us-ascii?Q?j5rTSP/ftSDmh+gouJ9mW63kCjDWVut7WKLEjTihgE4jz8HxGDXxMGAlkvEL?=
 =?us-ascii?Q?nA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 841758e7-90c9-48dc-a2fd-08ddd10f3d75
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 15:22:34.4148 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pmaJh1Nk7Ew0t0G90Yv1SWLUSwtXlROjdRl7BV0au/JNwv6tP7KuJ7beeHTaYquYbEMZLgadYKEnkRlAnkRJSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4851
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

On Thu, Jul 31, 2025 at 03:36:16PM +0300, Jani Nikula wrote:
> Expose the places that need i915_utils.h, and include it where needed.

again trusting your compiler more than my eyes

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c               | 1 +
>  drivers/gpu/drm/i915/display/intel_cdclk.c              | 1 +
>  drivers/gpu/drm/i915/display/intel_display_driver.c     | 1 +
>  drivers/gpu/drm/i915/display/intel_display_power.c      | 1 +
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 1 +
>  drivers/gpu/drm/i915/display/intel_fb.c                 | 1 +
>  drivers/gpu/drm/i915/display/intel_gmbus.c              | 1 +
>  drivers/gpu/drm/i915/display/intel_hotplug.c            | 1 +
>  drivers/gpu/drm/i915/display/intel_vblank.c             | 1 +
>  drivers/gpu/drm/i915/display/skl_universal_plane.c      | 1 +
>  drivers/gpu/drm/i915/soc/intel_dram.c                   | 1 +
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h       | 1 -
>  drivers/gpu/drm/xe/display/ext/i915_utils.c             | 1 +
>  13 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 9c268bed091d..276ac29e4daf 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -36,6 +36,7 @@
>  #include "soc/intel_rom.h"
>  
>  #include "i915_drv.h"
> +#include "i915_utils.h"
>  #include "intel_display.h"
>  #include "intel_display_core.h"
>  #include "intel_display_rpm.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 228aa64c1349..8ff20415770f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -31,6 +31,7 @@
>  #include "hsw_ips.h"
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "i915_utils.h"
>  #include "intel_atomic.h"
>  #include "intel_audio.h"
>  #include "intel_bw.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 8586ba102605..cf1c14412abe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -18,6 +18,7 @@
>  #include <drm/drm_vblank.h>
>  
>  #include "i915_drv.h"
> +#include "i915_utils.h"
>  #include "i9xx_wm.h"
>  #include "intel_acpi.h"
>  #include "intel_atomic.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 273054c22325..cc80c72ac9d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -10,6 +10,7 @@
>  #include "i915_drv.h"
>  #include "i915_irq.h"
>  #include "i915_reg.h"
> +#include "i915_utils.h"
>  #include "intel_backlight_regs.h"
>  #include "intel_cdclk.h"
>  #include "intel_clock_gating.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 48cac225a809..6efe5524cbbf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -6,6 +6,7 @@
>  #include "i915_drv.h"
>  #include "i915_irq.h"
>  #include "i915_reg.h"
> +#include "i915_utils.h"
>  #include "intel_backlight_regs.h"
>  #include "intel_combo_phy.h"
>  #include "intel_combo_phy_regs.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 0da842bd2f2f..b210c3250501 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -11,6 +11,7 @@
>  #include <drm/drm_modeset_helper.h>
>  
>  #include "i915_drv.h"
> +#include "i915_utils.h"
>  #include "intel_bo.h"
>  #include "intel_display.h"
>  #include "intel_display_core.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 637f0f23f163..6a74805570e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -36,6 +36,7 @@
>  #include "i915_drv.h"
>  #include "i915_irq.h"
>  #include "i915_reg.h"
> +#include "i915_utils.h"
>  #include "intel_de.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 265aa97fcc75..740e5c930521 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -28,6 +28,7 @@
>  
>  #include "i915_drv.h"
>  #include "i915_irq.h"
> +#include "i915_utils.h"
>  #include "intel_connector.h"
>  #include "intel_display_power.h"
>  #include "intel_display_core.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 3e51deca0c21..46d6db5fed11 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -6,6 +6,7 @@
>  #include <drm/drm_vblank.h>
>  
>  #include "i915_drv.h"
> +#include "i915_utils.h"
>  #include "intel_color.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index ec3fe75f2c6c..950dc79dbdd4 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -10,6 +10,7 @@
>  
>  #include "pxp/intel_pxp.h"
>  #include "i915_drv.h"
> +#include "i915_utils.h"
>  #include "intel_bo.h"
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index deb159548a09..3eeaabdf59e8 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -11,6 +11,7 @@
>  
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "i915_utils.h"
>  #include "intel_dram.h"
>  #include "intel_mchbar_regs.h"
>  #include "intel_pcode.h"
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index d8cd66a96621..b8269391bc69 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -12,7 +12,6 @@
>  
>  #include <drm/drm_drv.h>
>  
> -#include "i915_utils.h"
>  #include "xe_device.h" /* for xe_device_has_flat_ccs() */
>  #include "xe_device_types.h"
>  
> diff --git a/drivers/gpu/drm/xe/display/ext/i915_utils.c b/drivers/gpu/drm/xe/display/ext/i915_utils.c
> index 43b10a2cc508..1421c2a7b64d 100644
> --- a/drivers/gpu/drm/xe/display/ext/i915_utils.c
> +++ b/drivers/gpu/drm/xe/display/ext/i915_utils.c
> @@ -4,6 +4,7 @@
>   */
>  
>  #include "i915_drv.h"
> +#include "i915_utils.h"
>  
>  bool i915_vtd_active(struct drm_i915_private *i915)
>  {
> -- 
> 2.39.5
> 
