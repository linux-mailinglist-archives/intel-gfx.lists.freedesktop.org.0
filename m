Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8CA9936BF
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 20:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A08D510E408;
	Mon,  7 Oct 2024 18:52:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IcELpyzL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C34A310E408;
 Mon,  7 Oct 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728327142; x=1759863142;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bSLSYXOg/cqaaesAMQYchXtdO9BqNUv8Y+65onfUh9w=;
 b=IcELpyzLMpgqbM8PDfcBzrE5elZ0UAUbq75Z4ttDfJHU7AcFrvwc1vN1
 FjGwYTBH5tGKdwDlS/04Jl42W1N1r5l1Ts7klbisCWoCO+nSvjdG3R04Z
 jRIVcBV/4NMXDucKEph3AP5L2k9Ggnzm1efseiMQgZ/t9d6epEe/t7/tX
 xrqv8UfZ6vYmNiEX2aIGG+MXw4SlDuvAQ1T4G1eq6G0xZ4E15jWF4IKqq
 UmZP+SLwNHrNESz5pq7AVScIxTqymRyNozXrPn88XI/3hw5z6VS2sFSom
 vAUjQ5rWFOUGlryRYTQm9Psemt2I9O7/Tfo7AYeN/UeJMlLIpzpS/BrJC w==;
X-CSE-ConnectionGUID: G3/hSH8gTXO56cEjLY3CVA==
X-CSE-MsgGUID: F1FqL3PBQ+uIarKiiuDXjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38620668"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38620668"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 11:52:22 -0700
X-CSE-ConnectionGUID: KMt0wTNgTkWlB0q+0jCiBQ==
X-CSE-MsgGUID: mcCfGVxZRNua2eU/XAk/Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75403788"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 11:52:23 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 11:52:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 11:52:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 11:52:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AGdpjPk7tGCYlOYCP9ZxXg8I066sevdzCzlxAhn2PXNC/PVIPvnPleHBIHFNen11wXx099fPFt6Z7ddn4VNpp6iWkA9XPy+18XCzXDTrqSiAfmAyufJu5AADVlCmkVJDg6hjNButuRgfRgP9HmRan3eadUFFgjwjP1ljxyGezqMYWaw/HNqVMikDFxtucspw88GmKx985+V01PSCkCLE1+sYfbXhGseCfqny3IyH5pv8QAAVMBgxxnNUHl+eGz7euDFqV4AjSy6YC7D48fXiCkgZX8OAa9Zv03Q21lqBANsNbqRuuRNYRjAOxRfhIwa6cpTFnQpANbIh99luHFLgUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/19OteysIbfhmAl8VygsoQw6+t0YxQbZs6GLTxRGH6o=;
 b=nmMrhavAkCtcSeFoGr5tTPcvJqu5oDjm+mu+l+rZb5zTbALjmxPMLK0n0bN3PrWfIilS2fPS0sqkrWP+Amdegm3CKjUiWoGoIYNdmuLynp1SvB84z87WVmfuYdMulW6pY39ai0cG+GbRZ9X4mpX4D1N78oBsPx9BMenmcUo1zAKFcGjpuSHdsdDjWuKF/LN9t/L+uV3XoeNLSjPrWAvk51+z1VIaA/mTA2oD/i3liKURPQXn1WWttvp7OImN3I9sCxgwG1KKRzBVh64po951ynXfdMl99d9MQgIgA0fppW7gAlnytBySPti29OevP4VnOXZgLAakHpYhl/RySlnaOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA1PR11MB7942.namprd11.prod.outlook.com (2603:10b6:208:3fa::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 18:52:19 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 18:52:19 +0000
Date: Mon, 7 Oct 2024 13:52:16 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 01/12] drm/xe/display: Handle stolen bar readout in
 the same way as lmem
Message-ID: <7hhss2oz3x4eelf45tcjgubnrlyq5rloztk62ub5r4yfyrptrg@vo3x3bf2r7dn>
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
 <20241003154421.33805-2-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20241003154421.33805-2-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0155.namprd03.prod.outlook.com
 (2603:10b6:303:8d::10) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA1PR11MB7942:EE_
X-MS-Office365-Filtering-Correlation-Id: 576115bf-dd54-4e60-b7f4-08dce7012b70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1ioCMZlNFIZqkZvHlbT4P2Eke3T8kgw1dptF9CHePjBhlz46YTpZv2OfjUwc?=
 =?us-ascii?Q?KVHJq57DjKFPPFu7hh25RzRZ1730bwhVLMQh6DzEMDWIuGvwtksgLKHD+Xin?=
 =?us-ascii?Q?aoXOIUuSA8pa8SkTmytuTGafVrBjzWiXOZjRyRef+hTTakJgV7IuRnDj9P9r?=
 =?us-ascii?Q?7OfpZbn8r8rzJN7vWU5QD/NRclgSV7vKwlUfgM81bP6mcx4sbLg/xM5QP5q0?=
 =?us-ascii?Q?lvPS7ODTazy/oIvMcDVVwxWMWO7PbHEHBbnbaSjFNpj+dlIf2etDwkZ4CiXQ?=
 =?us-ascii?Q?d4bhRH0vF4vcxjJv5zKbIxFtfN5Y/qKl9RMENT48D01mhIK1B9bwcq6PoCVj?=
 =?us-ascii?Q?HxaXl0u/IpTw6W1QLH4rpxLpPAaLCfDjVsSh2MlYeJL4pPlBKltmXKg/PEpk?=
 =?us-ascii?Q?+q+Cwccg5qhjAlrDhcuLnOuS8Ij/DvGYqACnW3aKvGBDwKVUu9SWZyCkfq4N?=
 =?us-ascii?Q?Ajm+ugx+ZgxSgH8PnZ0oaRZo6jmf/jTscMgUOfam6A6tNFri/5iXXQLed251?=
 =?us-ascii?Q?vya+8MLRwIc9+qoFaZmzawPjFazz/GYjnLp0S4amk+fx178TKIMUiIno67sW?=
 =?us-ascii?Q?AKlnJsf1+m2Tx5mR9B1y8vkzFP+qKy4IgsUTPOLO3Irzocj/Iq3uJUsqBCEM?=
 =?us-ascii?Q?6Qts8eXzsBO3CZIDdEsSWEiQsirap1oHfry1AWp1AiDWI86BGk/H97lXeocs?=
 =?us-ascii?Q?uP0Q/5uyEVmhoUgTrHVbhNzznR2Iklr0Ddoa+waTMBoSNk/xT9QayZ9SeJmK?=
 =?us-ascii?Q?AujcJocUd3NVckiwI16/RWz1eekOXsJHT/64gATT01JygljwzqA7NjOfkG6i?=
 =?us-ascii?Q?fW7lA/YPY+StxQJWFFQC9ycM+LntU35f6cislIJv5/+hsGou7r6gO6xmVmIh?=
 =?us-ascii?Q?O4PspKKWNqcG7zGyOObtOcf5mXCMUsEM2wFWcYJSgfpPGeBJxgRbuE6LmDpu?=
 =?us-ascii?Q?cB9mkouMGGLQIRX1ikPc4YbCtdiPrNv09siRyaWbvzZNGx50gn3g3w54ESI5?=
 =?us-ascii?Q?w4B3431cckfxIGQ+aZc8f/u5AY0lZae/AE3CysJ1VNau99JunVYLZYJRl3Zp?=
 =?us-ascii?Q?ZID6FdOGjPwzwafWu7WETLXDCdusXyFcYQHzZONVtWIloFPH7Hqw9oW2M7Fp?=
 =?us-ascii?Q?cTOal2l0jI5Pen5tebSvKAOncPnmtmId7YN12T4Zg16Gibnf4vzUa+GaN1KI?=
 =?us-ascii?Q?b4hglHAgoVF8EeVYfeXO1cOYTkNsTEBI/a0koZSQ2rL7+ZCuGVOIXQVgoj1V?=
 =?us-ascii?Q?LgIhfllKHcce3RJuHHwwDrA/+iaDq8Omzevyn4O3Yg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nppJo+RK1Veax1NXojaUvXg7NX29MrB8zlwsfBS3pMnCqdLYfh32mSgPiwrQ?=
 =?us-ascii?Q?DaJ4hvnIv68xZZbQM/yT11rDt7IQOXXdJHyNFeS6Cpu4iDoNfAgilDzrhNPJ?=
 =?us-ascii?Q?URmkplodXQql4WKtgaCJB2vEJJ9LYW3R9Ng5LXXmP4yqq3de/xZJK87+7UVN?=
 =?us-ascii?Q?++FNi6Za3tx9USniSQTeslxOn+i97qA7DZKSwSg2liwtuhX1yBS8TqYGR3+f?=
 =?us-ascii?Q?0lU++GXb0FXN772ZWFIFJKZMdj6ZRggnum5eiSJzjbKbv1tRP9OQu6Ro7cTN?=
 =?us-ascii?Q?gMh/zgVAcTMhPNZ/daVVCa2whf4uzzSd8kDaZ7btCoMRIU0q1GMPjyVI/blh?=
 =?us-ascii?Q?LJI+zBddqnuX26IoDBB8egI3342jwLV0vacUg6BMCF8avgHH3SD3f2MrBXf7?=
 =?us-ascii?Q?22aDUzYddlo5OnrWVnFj85x8oKGyNa1XWovBV9dbGWc/WK8mqqOAXIcz7q9f?=
 =?us-ascii?Q?njepmmor7WzdTA2Sko7iyFM0Ic6G/NE5ZuTHpiHRLk4uuAI0ozCvUNvt7cfy?=
 =?us-ascii?Q?UclbG/+Pht3cv9FjahU3aTfTsCGuoHdCV81j2V8cvD6S9NI5YzT+BGrldLeZ?=
 =?us-ascii?Q?iOW+1hRcrZOQM44Xir6jA13rjdWZOF7TSesiN1pqOllOfN6mPhjndJqaxECR?=
 =?us-ascii?Q?M1AiJz53JBeaelEo9G0VtSy2MCS+Wd3nHGTpvxWdOS/I/GZgKxiLpqfCIekJ?=
 =?us-ascii?Q?mgMu3qG/rgwehi/rmkW0kPULGZQcX4ZSSJ79MDNlNdqTPxHJiC03t7sozpGK?=
 =?us-ascii?Q?o4KWw1HFjYU32drWfri2nOzCboMiG3Xn8pFTsjtfaWi4uoNDcOphedEDlSio?=
 =?us-ascii?Q?NkxvP+qg0qNLON4gcaZkK56AvNX6FZ+2xcW78wFzZwMIks+f7qJWeIcXgRug?=
 =?us-ascii?Q?ARyWywjKZTZnLA+VysNE8N2j6J8zohEi9g//Ktsgxkx9v12vXsLpezvL3WO4?=
 =?us-ascii?Q?6lEkrbb+hOBdwCzkAnGCBVsA6x+W78ESedV6hIyFadOzr/lRWC+B8j37DTAe?=
 =?us-ascii?Q?x+mYn0AfWUh7Lxc8G6VBVyBNSmQV413QMdLF2nGoV0zkx5RCU0Exd0Qpo+JK?=
 =?us-ascii?Q?lXDX0hGKYHFu3VFkvyN0Ec/hZlqOwaI03zqmJDM6PVqY/HdziJh+J67GCZSN?=
 =?us-ascii?Q?rqW6irp2/VwadqjklgrG9tjVsHtJRhEvNDs/aowohIBH0RlTMHJ/FS3G7Ber?=
 =?us-ascii?Q?OxuY4Tsnw6w+r3nVORgGq90c2DFxNYE0zrMWXz4P63DhjOUSfxnIv/vhlbvo?=
 =?us-ascii?Q?CvKJsHaKaIeyUen9qhAoPE2Tq6TI2lUtL8hPTrb/pD9Ez4GYQS1OLbgfsCBR?=
 =?us-ascii?Q?JO9zxqPzeM+I04NuvmcBGFzm1Ws1qH2aHBDnOXC3KCVXbr03ZfSGo+eMTQj2?=
 =?us-ascii?Q?JvZiN3scmF6YLwDraSehiAUtMFiBT+q4eb/cT1mC2CbttS97MMukA9n75rFe?=
 =?us-ascii?Q?TK8jsZ9ObzfJKVjuZtCBl+DoAhrbYMaa8gWYkRHJbcoLzO7XiPeFD+zqmHlv?=
 =?us-ascii?Q?+voJIizs1lrEVopXzvtTG9VPCwbz6CIsOAkRoJlapn4OXkVIGAhs8iYuZ0pC?=
 =?us-ascii?Q?rl1ABEqJ0OF4h/NuAY6u3YMFPsg9uw52r9ce3J3RL/DZhhBHKVXBH0O5ZvJD?=
 =?us-ascii?Q?xg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 576115bf-dd54-4e60-b7f4-08dce7012b70
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2024 18:52:19.1136 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xoQ1z2iL2tZOv/IYSQETU6cTFRW6b3AGniM+kgoESlmMnkiM9pusuOP9JmdEaAblmeccHc3d+K8V1N0Kf2Cf9aPu3R1vK6vHv0Cid3c46u8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7942
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

On Thu, Oct 03, 2024 at 05:44:10PM +0200, Maarten Lankhorst wrote:
>i915 already does this, we should do the same for Xe.
>
>Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>---
> drivers/gpu/drm/xe/display/xe_plane_initial.c | 9 ++++++---
> 1 file changed, 6 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>index 1b10ea499d8c8..cf139921e7817 100644
>--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
>+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>@@ -69,7 +69,7 @@ initial_plane_bo(struct xe_device *xe,
> 	flags = XE_BO_FLAG_PINNED | XE_BO_FLAG_SCANOUT | XE_BO_FLAG_GGTT;
>
> 	base = round_down(plane_config->base, page_size);
>-	if (IS_DGFX(xe)) {
>+	if (IS_DGFX(xe) || GRAPHICS_VERx100(xe) >= 1270) {

and with this you just dropped Wa 22019338487 from e.g. LNL.

Also, making igfx going through this path is very odd when it has checks
like phys_base >= mem.vram.usable_size

Lucas De Marchi

> 		u64 __iomem *gte = tile0->mem.ggtt->gsm;
> 		u64 pte;
>
>@@ -83,7 +83,6 @@ initial_plane_bo(struct xe_device *xe,
> 		}
>
> 		phys_base = pte & ~(page_size - 1);
>-		flags |= XE_BO_FLAG_VRAM0;
>
> 		/*
> 		 * We don't currently expect this to ever be placed in the
>@@ -105,7 +104,6 @@ initial_plane_bo(struct xe_device *xe,
> 		if (!stolen)
> 			return NULL;
> 		phys_base = base;
>-		flags |= XE_BO_FLAG_STOLEN;
>
> 		if (XE_WA(xe_root_mmio_gt(xe), 22019338487_display))
> 			return NULL;
>@@ -120,6 +118,11 @@ initial_plane_bo(struct xe_device *xe,
> 			return NULL;
> 	}
>
>+	if (IS_DGFX(xe))
>+		flags |= XE_BO_FLAG_VRAM0;
>+	else
>+		flags |= XE_BO_FLAG_STOLEN;
>+
> 	size = round_up(plane_config->base + plane_config->size,
> 			page_size);
> 	size -= base;
>-- 
>2.45.2
>
