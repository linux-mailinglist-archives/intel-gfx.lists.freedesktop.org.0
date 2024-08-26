Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB1B95F2F1
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 15:32:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EB0310E117;
	Mon, 26 Aug 2024 13:32:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gwWGk6BA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EC7610E010;
 Mon, 26 Aug 2024 13:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724679149; x=1756215149;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=e5g0GIj4LkXs3G6rtVGLErH1iFWVmtzZGYt9U+H8sLg=;
 b=gwWGk6BAXgFzxzt1IRsmcacv5A3QoIPELSAftgktNeMUwqt64ATb5LFj
 xBFh/b01W8aoLLUcHEFIjJMmWYbegDyTxFIQxzKpsMwlnE4SWoIIWoF1E
 mOQ2grBj01Z92hAAX8xvHUkoRmExn/nCix/xlZVnP0z2O8gViFex+cZrH
 /XJbCyO+nFEPdpAC3zEF+B9mEkZr9yYBXZg2oC7DQqtGSh3hp+qGxoKmX
 YFGZmxeWzNry6C0GCS+Wn8Cpyb7EojuaaKvY002GBg3yPD+bAO6RHtdZ0
 JH/Bx1oCpzJQBk6/XniQ5U/HzOhkSHscVjV+wUlY22xFE7pH+kr37R/RW w==;
X-CSE-ConnectionGUID: 5ogVJgdbRx2bObpI+uzCMg==
X-CSE-MsgGUID: 7TiVxSxvTE2uW/uulKI/IQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="22625115"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="22625115"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 06:32:29 -0700
X-CSE-ConnectionGUID: G5Se+QZcQ1yIOp5ZDskwkQ==
X-CSE-MsgGUID: iEEqLIkKSPy8a+3SzW1hAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="62822099"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 06:32:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 06:32:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 06:32:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 06:32:28 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 06:31:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qat2ghUxZ9RYOvHLJFg6ybZUQ+JGtQXphWN3r+V+egoa2/BEv3ICXJeZ6g1PBIW+XJhGfVktVS2PMK254bazfn00940mKO/Y2R8KdwkWcgwcTkMomU9pqv8K9mOabpzGbdq8rCN5apDU7BEdyWJ0eHQ/N8ln2pYy73poK9CjkmnrRZODMx16ijI8b/Z0mDe7yjeh+53+Vy9u9PHZgqGJv3oYE5wY/X7FDGVqiDE8rerfCMU82lg2pU4fNB12Hh4BhwJWjtqX3OwK0DmV5FOETex9tPdo0yv7W05JUQSQjoVueWk6BxH1Cfy1qmOe8bhNUQ57CTfoIU3ARCPBvrhBpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jt+MBeBxjuxgzGRv/5gsn+uvjV+VOR5nYErj+Wi/Dr4=;
 b=y72392kOaoP9AgimSTIShW4d2STisixRjFwDRNeJleIjLnOxqq5G9pkMzABre8SZpJ2pZobOQWfilCcZccbk+ul5NBI7TmnqirWF7OnzAMw9HP+hFiA/x43UT+6zRbGqD3mlzVzt8wiU9q3F3jW7eX1zvK0gJtNBV5NapWyxBfoaUNREZk8Zqa9UwSPP/2BED0zcjUU659nANB+7FtPauyuBxvMAuwpgbIU0Ji68jk+2E2JCA12CKUeQEuSknxcjWdfgj2AHiHWBeysbFD/leMt4jmMBmpYeqXo4gcqJ8hEyRxp+VHerXftewyIhvMFB4jXaoMr6DIV1PuD8JcKRlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA0PR11MB7863.namprd11.prod.outlook.com (2603:10b6:208:40c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Mon, 26 Aug
 2024 13:31:47 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Mon, 26 Aug 2024
 13:31:46 +0000
Date: Mon, 26 Aug 2024 09:31:43 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v5 2/2] drm/i915/display: Add function for checking 64k
 physical alignment workaround
Message-ID: <ZsyDv44QsES_wnua@intel.com>
References: <20240826095041.75416-1-maarten.lankhorst@linux.intel.com>
 <20240826095041.75416-3-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240826095041.75416-3-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0050.namprd04.prod.outlook.com
 (2603:10b6:303:6a::25) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA0PR11MB7863:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ad665f1-b958-4f58-bd66-08dcc5d36e90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gAQPkJFefNsRPzZb2jd20nzwQLVGrETWMNC1zuBHMIaZIyUoyWV6trE6hpcA?=
 =?us-ascii?Q?/PrpirEISqII/GuKkT7ig2OkZTLEetkwFhqpL0T4GN2PZb99DUAsYsXVPVA+?=
 =?us-ascii?Q?J1/Np5yWArh9XLckqSblff23hl2voXGFWoMuxkgKl3ylhC8FBWbAOgY1Ki3Z?=
 =?us-ascii?Q?FA79PtcvmnrsPYqNJmzujQCdwKaB/VFxYkz4TrlGummCS4M+vz+gR+0xh2BQ?=
 =?us-ascii?Q?RBPbTBnpT05vDYiQExFBbvoaEJQxnarD/MoSgQNfP8mjvRZls24VEmsfRZpl?=
 =?us-ascii?Q?DcoV3GYX8gQ49cR5LF7gUqp2YoumtsfhRgC35AZ42Mvzuoq8B7wslUXCPCpg?=
 =?us-ascii?Q?iADee+Qdb6p6T8/QrvvAy0MgJouWZoA4uzbJJx0jbCGHu0hHEY/e0MekygTx?=
 =?us-ascii?Q?RHXdwbGzN6W4oPYXFMIW5BJkA4i54EZQM/Y4rp97KRvtfeDaOFP40HGL8EMl?=
 =?us-ascii?Q?rZTNOmYpv9olLfRjsoJLqm2W4sWtdkp1U36/1L5NVY9fxBBakQu8cppL9LGI?=
 =?us-ascii?Q?LxGNo1JLlGVErUEI1eEAye/OI54FkzpVOHPbnOy2SGXYO7u3oTsi4vOA9V/r?=
 =?us-ascii?Q?oWznlHC56hQCqrOM3ct1OG3FrFu6bnqurYE/6vgdYyNOulpOye5dfIzMXcxf?=
 =?us-ascii?Q?WDdEzDo61+fnO28LUqEioHTYFtYxKIhD1ErDuu+WJh/B6seRRCBDW7EU65Bw?=
 =?us-ascii?Q?3pHQO0CgbyAW9nnIKPcfNmtiWlIf5uqGRVze4zzOgBJy4hmriG7HlYzHk1Gc?=
 =?us-ascii?Q?7geYXsQ6+n/RHXLpEeyzpH5UrQIGnDbX7dzHqXLowW2Du+H3xHIZE+DZOoQ7?=
 =?us-ascii?Q?EY6wdfWc9o0cQJEWWhaWNLfag8UzQRRMsEHX2Rpsj19rUhbULZ9DYeJERE66?=
 =?us-ascii?Q?TUTnXIp6Xo6mdv6hQiRaMvC+gx5CxG/0v0uwVLl9KjH9wsqUsO7NNTJbkrhM?=
 =?us-ascii?Q?9QLLhNPlE1L/byD2Ifz9BhA80j4IOQi1ivOc2BHSWkKoPENuT5g1AYtBuWYh?=
 =?us-ascii?Q?qjxm1n57CYAKyYmq645ilRBrDfqNA5e+zm/udCIcINGD8teLV4gTzIKDk8Pf?=
 =?us-ascii?Q?SLws+NIHS4sJgk37EUY1QtAKOoAvr4GH5BZOeZEk2z9AO4Ai1TmxI2exuW6c?=
 =?us-ascii?Q?tbxgQOR+zJnUUY2rqKjgxfdCfn70f2YU8bXUXtd++/STBi0QfSge7C2e8T0A?=
 =?us-ascii?Q?COe9dRm7w+kppjh1QaeXSjaQhI6v3NzQv3Is+alZ07MdW3iSfsitgjvAWUnm?=
 =?us-ascii?Q?EnqFj9CS/4kJXMrIceIYYear0wMwpZIBOHYn5wj/IJmoBDDxquZzReTr673n?=
 =?us-ascii?Q?5unfwd745L4H5zsUYVENlqHJhdFl1hQly5U5Kb7iy9bH/g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dLyDggLwoLDewYE66KZmt3A87r33FVnBNyYzVETGV3toBAiKgPfk8bdpYY5A?=
 =?us-ascii?Q?Yum8Z2OZZqh8fc2kohMNiMAVVq0AMsaSjJ02IYzr1VnFxFqKLo5iMXf67U/3?=
 =?us-ascii?Q?nA/RrfqRKvp+r0zS9MFZKGHT4mUeaUYeLEKsdQpvJTEtvSIsROiHGelChsBw?=
 =?us-ascii?Q?mk+teuuzcnNxPV2lP+PhQ20xhM8ntcuVFImQI3K8fk1zAMcPOk4ZX/gOkKgE?=
 =?us-ascii?Q?+Y3T4vHvf6sI4H7oB77ieJs5BPIPQgPXsC5rdjedb1jcw1Y+zjiD62KW/Idp?=
 =?us-ascii?Q?gGNzmHE6pi46Ar5mYW2/OGyosRZALWgLhvt2knOsGZ1zDTA99vKqSitNl0Lw?=
 =?us-ascii?Q?WVKv8zPHrWrTEmcobOwdt8PDHFfgo8ck1MN5RDxcWxj6OW0K+oTjgMyyrwNf?=
 =?us-ascii?Q?9ph6NzJ4WHXhq+3To+tdJ0YNRlFtoaNfe6RtN9LT+cpIWYdnCu3gaIwfEGoa?=
 =?us-ascii?Q?JRB32owQhnFQ7oBo1mupWoRqmWTMFMB74KYsVQDqqbOSJNuV2+3EUees/SuU?=
 =?us-ascii?Q?fWfPUu0eLtBFUpRZnMoejMaRdz64uz8G3jzwjMjFQq2x78os2Oseqpl+9dRI?=
 =?us-ascii?Q?cUjMIbZWEJ+6UWCSmwN5ZqFCgR7HrRo02svMXxdnPC3W8jpKEgqH0m4PhqtJ?=
 =?us-ascii?Q?aWTmDuYBhQ7ikTihT0PU/HXqRrnysufjIx1qtizlI/tUZXfO7/t9FVyO7Sj0?=
 =?us-ascii?Q?Ux+toi4wMx5XQ0uhy6qWX8VxslCdabbjIblse2RenfjGqp62m0VFnCCe6v/D?=
 =?us-ascii?Q?J+r6AoqGZSVnRDpc+8h2t2+iidcT+an2bLPI8mY7PF7Vk/uJBUfTpUi8K1Iy?=
 =?us-ascii?Q?96gA1nAL5goJ+z26BxuJjNlk/29JNH9VOMrPKPXfDguC9bw2t3P17py1CLnU?=
 =?us-ascii?Q?Jc8UkLGCPTKk82B2X++eLfP/AxQucOw+tcSSFC4SZbeNHz4AzHps+/pyvKCu?=
 =?us-ascii?Q?Xr76PvHpuSC/UrJvW0MQfRffI5e57bq83D+FLhdkPGMY2TnsZqOZMiCXE0zX?=
 =?us-ascii?Q?3pGVTHeCPYM6qX0EXXyWC+gOQXhAyZWnCuRIV2N5XV5BMK3ZgnF+xNRCQ9l8?=
 =?us-ascii?Q?BrziAmNpMw2hRvNiwtbpY4dc0OPXHFQXul4diYkA7sWphvhLpxeJgs441rtN?=
 =?us-ascii?Q?2+vApvu7rXcfc66Au0atIu5BPSR/mbsZAw51oJIpzBpXPlcO+FA+M3bZDE0k?=
 =?us-ascii?Q?QNxnX3xPihmRkBmT7cvgTYfS+ZdcFF5f+cUHzm7Td++WuVGbhLRnoaID0LDk?=
 =?us-ascii?Q?gF6xL9k55ZOUWmcUtJHERBrZhM5IFzciUhegEe7ye7PA3HcYaXGH5aD6oUjF?=
 =?us-ascii?Q?l2+IxzHGLwSzwhRQaNKZKu2SgEpvGJY/L4CVh9TasKmicQNbkvOfvQqnYCIz?=
 =?us-ascii?Q?wi9h3YrrszFhXJej/bUenl91ExXkQVAOPjMUXONaZ4XWoKrQtIvz98E0YrFk?=
 =?us-ascii?Q?5H3HjrHGU41rKKS3+KUO3Sh+aYse7eBpl2oe/cObzaLlTH07dqa8IdKTljuW?=
 =?us-ascii?Q?jecoPMXMYSDuvwWRBonmXgJwq6+Wt87unUY3ybW8S9Pq2YsPqc3fbXxvIud1?=
 =?us-ascii?Q?grWSwe1Xg9lnJN+j6J6p+jGwBrzAzMnxNOKZ7/NpVabxV5oUhOATKedFhed1?=
 =?us-ascii?Q?pA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ad665f1-b958-4f58-bd66-08dcc5d36e90
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2024 13:31:46.6309 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L/MPqjdK0CKLyHYRpJm3Xxo37f4KFThXImfsqXn8stRV/cU8sYQsocExs1PZdiUFLnF3yj49S/SBjVCZfq7stQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7863
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

On Mon, Aug 26, 2024 at 11:50:41AM +0200, Maarten Lankhorst wrote:
> Instead of hardcoding the modifier in xe, the alternative approach is
> setting a bit in the modifier description for 64k phys requirement.
> 
> This removes the hardcoding for the modifier in CCS.

Please change this commit message to explain the change and why we need
that, instead of comparing this to the alternative option.

> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> 
> ---
> This might make the changes more palatable, but I personally believe
> that hardcoding for a one-off check is fine. My optimism is that when
> creating a new tiling format, the previous lessons will be taken into
> account and this case will be tested.
> 
> Yeah, maybe just go for this patch too..
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c  | 20 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_fb.h  |  2 ++
>  drivers/gpu/drm/xe/display/intel_fb_bo.c |  5 +++--
>  3 files changed, 24 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index d2716915d046d..5139172a8a3d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -169,7 +169,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
>  	}, {
>  		.modifier = I915_FORMAT_MOD_4_TILED_BMG_CCS,
>  		.display_ver = { 14, -1 },
> -		.plane_caps = INTEL_PLANE_CAP_TILING_4,
> +		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_NEED64K_PHYS_WA,

This is not a Workaround, but a design decision. Let's avoid the 'WA'.


>  	}, {
>  		.modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS,
>  		.display_ver = { 14, 14 },
> @@ -420,6 +420,24 @@ bool intel_fb_is_mc_ccs_modifier(u64 modifier)
>  				      INTEL_PLANE_CAP_CCS_MC);
>  }
>  
> +/**
> + * intel_fb_needs_64k_phys_wa: Check if modifier requires 64k phys placement workaround.
> + * @modifier: Modifier to check
> + *
> + * Returns:
> + * Returns %true if @modifier requires 64k physical page alignment.
> + */
> +bool intel_fb_needs_64k_phys_wa(u64 modifier)
> +{
> +	const struct intel_modifier_desc *md = lookup_modifier_or_null(modifier);
> +
> +	if (!md)
> +		return false;
> +
> +	return plane_caps_contain_any(md->plane_caps,
> +				      INTEL_PLANE_CAP_NEED64K_PHYS_WA);
> +}
> +
>  static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
>  					     u8 display_ver_from, u8 display_ver_until)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> index 6dee0c8b7f226..8a84b9abf9b91 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -28,11 +28,13 @@ struct intel_plane_state;
>  #define INTEL_PLANE_CAP_TILING_Y	BIT(4)
>  #define INTEL_PLANE_CAP_TILING_Yf	BIT(5)
>  #define INTEL_PLANE_CAP_TILING_4	BIT(6)
> +#define INTEL_PLANE_CAP_NEED64K_PHYS_WA	BIT(7)

My concern with this version is that this doesn't seems to fit
the 'capability' bits. This is not a 'capability', but a limitation.

Wit this in mind I wouldn't mind having the previous patch where
the limitation was recorded.

But well, this case here make it more expansible for any future
platform with similar design decisions.

>  
>  bool intel_fb_is_tiled_modifier(u64 modifier);
>  bool intel_fb_is_ccs_modifier(u64 modifier);
>  bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
>  bool intel_fb_is_mc_ccs_modifier(u64 modifier);
> +bool intel_fb_needs_64k_phys_wa(u64 modifier);
>  
>  bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
>  int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
> diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> index 6775c2557b9df..64bcd10d3f538 100644
> --- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
> +++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> @@ -7,6 +7,7 @@
>  #include <drm/ttm/ttm_bo.h>
>  
>  #include "intel_display_types.h"
> +#include "intel_fb.h"
>  #include "intel_fb_bo.h"
>  #include "xe_bo.h"
>  
> @@ -28,8 +29,8 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
>  	struct xe_device *xe = to_xe_device(bo->ttm.base.dev);
>  	int ret;
>  
> -	/* Only this specific format is affected, and it's only available on VRAM */
> -	if (XE_IOCTL_DBG(xe, mode_cmd->modifier[0] == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
> +	/* Some modifiers require aligned 64k phys pages. */
> +	if (XE_IOCTL_DBG(xe, intel_fb_needs_64k_phys_wa(mode_cmd->modifier[0]) &&
>  			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))
>  		return -EINVAL;
>  
> -- 
> 2.45.2
> 
