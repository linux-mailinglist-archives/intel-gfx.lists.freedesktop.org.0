Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6B9A5D0FA
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 21:46:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 334AE10E695;
	Tue, 11 Mar 2025 20:46:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UCuUAHsP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F65510E694;
 Tue, 11 Mar 2025 20:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741726005; x=1773262005;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+e8ODtQiBvK+l9uiCM3XDfAupuJ/fIsEAYgJLEqN984=;
 b=UCuUAHsPeO+pyctkemlsXDncnzHy7ug4yhyT9xpRQqJ/eWtYa/VSrfvu
 Y4PZpjlzk5G2YEMF0cMbLJa9pHA9xhu+oBMfO/rjKFF3bRd2CnZZHgw9K
 tVDAXVHGYSMGCBNM9WMj5K64PCzf+ODanBbfa1AwwlwxJXZu8MQz8z58a
 /zHtTdLRl6fs6APOdKVJvTgs1KSFJyiHX3IxK7CuPh7e+sVqxvrp9z+Co
 AW5GNMMMmC/OGocbwRehrbMRauX3GRUADMEiK/A5uFHgRQgSi+G6Wv3CW
 /acsSiOu0ciMSRkPKBj1ek9iv7xMz6SkNT3B/ZPU/4c+lIP+N56Ew3/a0 g==;
X-CSE-ConnectionGUID: jYbgABEfSyapu65/PrTdXg==
X-CSE-MsgGUID: vUnWgthTTuaMCJ+5Dlq6kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="54168007"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="54168007"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 13:46:45 -0700
X-CSE-ConnectionGUID: xld/9r+QQ/2JcLnZz4kg1g==
X-CSE-MsgGUID: uDcQbQlgQA+3oLHD2m77NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="120383564"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 13:46:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 13:46:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 13:46:44 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 13:46:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zi/cbPDwQiQd3vSzlkzy4dI63DQN+QtFdGrYr9L3po/uWRZfni+7LcCZBdADt+qyc9RVGBjzs2z+bWrb8LFPOtSLGBtCeFbFqeSvNf+fXCwbQ1xCOP8punKXdw2EsDT6iw9fViTGxTe0LrSTqWSFHfAWma3+gr2DhUNTcN0dJK8PtffiF7fSaXbWz/CbOs91hTNmeo1iuZVZrGZcrMMJFCqvm2vfkon85ZMXYuJe3Njp17G4JLloYRM7T+IYcD8MvEBVB7CAmF8SIR47W6ld/nYkXGDPyTuW7Cu/OslQ+Hw0BgiLM15tVg8+Hx6tg9+WiSMPyF6jgSccPR6Og/tI1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xFrH6EVogWTX+lriknHM2243dAlSPKEVdovNb3F6cUs=;
 b=K3LFV5UxpGhu5C1QqaEGmP8VRdn/Z12jIMJHtgejfv6kcYuW3JrtlhWWatj8lbaF+US5FWKOlaFqCQMIWyuTDR6T/inpdver6Jv31RPgghLyiSnPdRlsJRSuwx93XXtGraPNiwYJ4y9rpXgNs8c7iAYcp+NQ637GdYHE1X3zlJbhSQ/Fy06y7JCKfuKafqPYL6SXHAW6GOHphuuezKTJGbzbnImP749ACC3T49xWFUtpAHNxLybFUUFwkMNMDuKgmMLwrLyeHrIVzCHy05Hs8pJjHonr7PWqYSgJ2NghpVZku6y1U4MQGeONjJFKoC2bXPWV1ka63rzl/Mv9iN5Q0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SA2PR11MB4970.namprd11.prod.outlook.com (2603:10b6:806:11f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 20:46:00 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 20:46:00 +0000
Date: Tue, 11 Mar 2025 16:45:56 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 5/6] drm/i915/power: convert to display runtime PM
 interfaces
Message-ID: <Z9ChBEK8IEkhUeSS@intel.com>
References: <cover.1741694400.git.jani.nikula@intel.com>
 <840f7cd7945757ac59e0522f3bf803105f54052c.1741694400.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <840f7cd7945757ac59e0522f3bf803105f54052c.1741694400.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0161.namprd04.prod.outlook.com
 (2603:10b6:303:85::16) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SA2PR11MB4970:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fe68a39-582f-483c-4fc9-08dd60ddbb2d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?TWVEIk5JoARZWPdBbMOgyukwTamDhqB6evLzQ3CBolsRzRO4k5kgP5AA9Qey?=
 =?us-ascii?Q?T5qv3vatV+Ak47/9cYuoJpkplpy/aG1wyK758fyLa+uNKs6pDTIsbOtxk4VN?=
 =?us-ascii?Q?x7SZ/nPEwkTDryOCQGj5IrHlKvnw9SakpcAY6Lda78FxnXM44F6old/tnydw?=
 =?us-ascii?Q?nBGIGZKdG0WrnrLKW5pkiPKyGBG1ERVgZcsOZAG+uoOfTIYRvKlISn98ykoj?=
 =?us-ascii?Q?D5bIcXYAFJDOh0DLpgcm0Zi3G1Co22rI3PuaJv0qH5douqWgHlUEMaukruUH?=
 =?us-ascii?Q?DJVkpdn2iRjNcuHLJHC+1iiHPMGsDZrH1IGbdoZOh9MGqZTi6iNGyxfHUMWN?=
 =?us-ascii?Q?RFEC/n9rMsjnHLQVE1Yombg2f+rrm8eX1fl6U8m5+nlUl3veLB0w4yeSATxI?=
 =?us-ascii?Q?k5Qb9uEmOo5TmSahbVvuRySvxX5YdShLF5Vey/wjfdpWBXqzwOC2V8pG4sKj?=
 =?us-ascii?Q?utBFmM0vORRSihqZcSgj0O7H1ZXmHBsS3DA4bDPMuXmKn3JzekdbH5TMVqem?=
 =?us-ascii?Q?hIEHQrHuvP9woKzh12lQM76aPjoArUsh47zraD9Z923ZQSZg6PdrX/3apchh?=
 =?us-ascii?Q?o1pbvqJ3TjIpMzJ38BmZsYeTfzTY7NhRyKbyKPVNIRgWrf7037Vr6PiUyAQ1?=
 =?us-ascii?Q?DboUpXcd8r61waGhxGMEkBx7RxvA4Vu29ku5VsTr94HuNlmzaYS+7IvXNDfc?=
 =?us-ascii?Q?TPTTvpNrsUbVdFNrjKAvzt4BfNEVpwSxBBPhNfjxJsDgTD5QrARTBR/SI7qH?=
 =?us-ascii?Q?D/cAy7JZ7bR4zyF62BZTwXTVUixNSzrtronM94gLfJDzHv5Znqr2Kf1lciH7?=
 =?us-ascii?Q?3+YA4EQ4dXZe8sQ7XPAwAtB7jRvpvELxwZZeALg7UyQApucB9GzkVu15G4nW?=
 =?us-ascii?Q?n/VGTpFQMu2fXu5AcET2xWGFdqYxZv6g5uQSICYdHnNOrlPF9rAJWFNbGpwI?=
 =?us-ascii?Q?DqQx/H51Z4jmMNq3Ayd/BS1vtR4swdpoaLgcwIxLKp26TKgtmbEUcA7SGisw?=
 =?us-ascii?Q?AJPFEx+/eTSkBhAERbUQMzqsxHlav1LOxB1GvwYEed9Hr6DVFMI2vgUS/Q9D?=
 =?us-ascii?Q?dnMxvdckgpCMFAErEATujpPod9qj9bQL8Z8VFA394mKJVs0YkmYcPmvYq18+?=
 =?us-ascii?Q?7VQsYLHcOCOpcFSu4gsGa9C461pw4Xf38bQvSWbqlkJIZfj4SKPTAmYwlutt?=
 =?us-ascii?Q?TNgrKENCqji2RCwMw01pHr+lBFFaBVrKxJIFnaY4x6uwUQ99/whgF2U4U1P5?=
 =?us-ascii?Q?hq+BJ7gDOXWeFRRJr6X2tih8cw6Hgulaq6PQnXBBe59Kd0j+kpvO+PJRy/8N?=
 =?us-ascii?Q?+TSvdKaEDWiG3qxU9KSxJ5UcM4Vs7P62BMsGaRDavMSdZC0XCGR4uEQZeLDO?=
 =?us-ascii?Q?SdBVHWeOc0NxVVFS3co94rpCXsvU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JFI2GBz6glXg8zpvsL2gBxCS03kM4LzaA7asLwwrZd7OTN3wVlHK00Dxsexj?=
 =?us-ascii?Q?KCMfW1oRxplPhxTYD3yXLDx2cocv/53vREoexOqlz6Ls0maDpCPwURAccxfO?=
 =?us-ascii?Q?DIe22FTNDFvnVhF+RWze5SQD/5P63XtBJ5VIV6NPpjf2b+qp23qVM0ob5sXB?=
 =?us-ascii?Q?nL5kgbQwozft8yaJ7kDre20k7RMKohX/rVy4KE44YFu4ZZcM8zjO/kNXI8zs?=
 =?us-ascii?Q?82vaUSJB9mhQDYgCfqHb+HpMNOmTdLmeiwd646oRrksl6aBQhFEW8ECbB4Zn?=
 =?us-ascii?Q?6JEAOBqGOlAqDSHx/wSWeoLUGWY5q5K7NKkP0hKYT5rmr4XM33GQ4LgVi2CQ?=
 =?us-ascii?Q?zpqJgPYHAULQvsl/JqcFvHZ+OqcQKrjgSgJbaDFDKWh0CSEC2MrytDJhtY2G?=
 =?us-ascii?Q?v2bdVO0SlGS7C0/MtT9RwJXsKpPW9DwvjBRbn0FHC/TO/ZADHPDJDJOA0PRr?=
 =?us-ascii?Q?uzeQRFfBv6f6uzWzoS+4GfxE1Ll46ZxltkB3qMzvrY7nUUj3vrliKQGu+Kvi?=
 =?us-ascii?Q?ntmwYSn1MyuEG9L7puH6O6zDih0zKXRj4eu/9SKSdpskLoG/9vXRDjw1AoUK?=
 =?us-ascii?Q?LMM075RXPEB8JjOeKBtZCaLqCQ/Gp0ukZSmAjNLdVWh7n4rdyGoedfRj04qU?=
 =?us-ascii?Q?rZdIerhaLZPQ8XOaKVe3l1gKyvcXHQhMlSzRJZxWGFY2oacvWVE40EnWv3wg?=
 =?us-ascii?Q?K/aOiiiWE7SXt+pgbCz4LLikLFX8azi1n4cCEEm5VSs56HnWY03s/Xtno470?=
 =?us-ascii?Q?/aanlaBJQjI1PXcEfVt/grI8xEE5QtCVItH2LGeKdWkGVPxHfYdW1DBULVWQ?=
 =?us-ascii?Q?kMX/H/dMtJJvSK7dDISnZaTg5HSE3otKrHW1x1/R2iU3Bq1dm5C+tVdJU3Fk?=
 =?us-ascii?Q?Ta/huY4dl6wyA7NPCMVb1zXcgiWNHD+h/11RnUOWUxX1hEDGdXImwp2LgDxG?=
 =?us-ascii?Q?1HrpgWbkFg6+V7MG8uTDTaPVT8KmxOvCw6kcrzb4rgchWdaj/nul/TJd4FsQ?=
 =?us-ascii?Q?HNdEQnFh7UA1CP/O4pWBfU7ZqeGGxKezryYvxTT/e3aF4aiZTM+qVSxokAVH?=
 =?us-ascii?Q?L2r6LJC5i8vJhwA+LzSgzBaFDuoatdfu1u9gpDVCg3dc6hxvZh9N0j6rNK3k?=
 =?us-ascii?Q?Wmulp0lNGhIrgGCmAy5JlQH4ghwjceGh6aOCP1C2+dGRR9Ba2dpKbv1npRXh?=
 =?us-ascii?Q?8Ax4vWZpzcEUxdNMkyF4kRnxS//LFv/vay38n+O/QuXrnLW1a3eNqoP7vj1p?=
 =?us-ascii?Q?03EdOxAtKw3flOAXY0S7w9j2gwjjhtBTBupzl4obInhF/1dq1oP11kA5h54/?=
 =?us-ascii?Q?+y6T5zJyCZqdFE/712BUc2OQeAJtkVqdcjopn8is3TzHfpa34R5RVNiHmk2h?=
 =?us-ascii?Q?9USWtBCYx5HNSxCMlUrD9EXVLvrshGYNdbEGImxk5tetIvj5jKcQ6yd4DqNr?=
 =?us-ascii?Q?Up2ukux+A2zQ3bZKzOQVtrTE4Vxs6P3zynwl26Aee7OCKL1hdsCqwhOd8EXt?=
 =?us-ascii?Q?6juyK1tvYwiDYT2HE6erhJ0qobdebkQtqkBZZKQ+hWKNCT2z5VjMi+YC8sYT?=
 =?us-ascii?Q?zV+HJ9aipO/vEQq6m2w4deGGDZncUFVbXDFwPO1kbkYZ97N4B+K/ZWy+KRVG?=
 =?us-ascii?Q?0Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fe68a39-582f-483c-4fc9-08dd60ddbb2d
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 20:46:00.3174 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T/ZZXXBi4hv3adPqIFl9Ixoo+RjG5K5rblxxOGrL9gSc4/igZep5dXeN6bVg3AYJSSy/81N6aw7R8f+v4K0LBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4970
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

On Tue, Mar 11, 2025 at 02:05:39PM +0200, Jani Nikula wrote:
> Finish the conversions to display specific runtime PM interfaces in the
> power code.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 63 ++++++++-----------
>  .../i915/display/intel_display_power_well.c   |  4 +-
>  2 files changed, 30 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index f7171e6932dc..adeb4408eb49 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -16,6 +16,7 @@
>  #include "intel_display_power.h"
>  #include "intel_display_power_map.h"
>  #include "intel_display_power_well.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
>  #include "intel_mchbar_regs.h"
> @@ -204,7 +205,7 @@ static bool __intel_display_power_is_enabled(struct intel_display *display,
>  	struct i915_power_well *power_well;
>  	bool is_enabled;
>  
> -	if (pm_runtime_suspended(display->drm->dev))
> +	if (intel_display_rpm_suspended(display))
>  		return false;
>  
>  	is_enabled = true;
> @@ -455,7 +456,6 @@ static bool
>  intel_display_power_grab_async_put_ref(struct intel_display *display,
>  				       enum intel_display_power_domain domain)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct i915_power_domains *power_domains = &display->power.domains;
>  	struct intel_power_domain_mask async_put_mask;
>  	bool ret = false;
> @@ -473,8 +473,8 @@ intel_display_power_grab_async_put_ref(struct intel_display *display,
>  		goto out_verify;
>  
>  	cancel_async_put_work(power_domains, false);
> -	intel_runtime_pm_put_raw(&dev_priv->runtime_pm,
> -				 fetch_and_zero(&power_domains->async_put_wakeref));
> +	intel_display_rpm_put_raw(display,
> +				  fetch_and_zero(&power_domains->async_put_wakeref));
>  out_verify:
>  	verify_async_put_domains_state(power_domains);
>  
> @@ -512,9 +512,10 @@ __intel_display_power_get_domain(struct intel_display *display,
>  intel_wakeref_t intel_display_power_get(struct intel_display *display,
>  					enum intel_display_power_domain domain)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct i915_power_domains *power_domains = &display->power.domains;
> -	intel_wakeref_t wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> +	struct ref_tracker *wakeref;
> +
> +	wakeref = intel_display_rpm_get(display);
>  
>  	mutex_lock(&power_domains->lock);
>  	__intel_display_power_get_domain(display, domain);
> @@ -539,12 +540,11 @@ intel_wakeref_t
>  intel_display_power_get_if_enabled(struct intel_display *display,
>  				   enum intel_display_power_domain domain)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct i915_power_domains *power_domains = &display->power.domains;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  	bool is_enabled;
>  
> -	wakeref = intel_runtime_pm_get_if_in_use(&dev_priv->runtime_pm);
> +	wakeref = intel_display_rpm_get_if_in_use(display);
>  	if (!wakeref)
>  		return NULL;
>  
> @@ -560,7 +560,7 @@ intel_display_power_get_if_enabled(struct intel_display *display,
>  	mutex_unlock(&power_domains->lock);
>  
>  	if (!is_enabled) {
> -		intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +		intel_display_rpm_put(display, wakeref);
>  		wakeref = NULL;
>  	}
>  
> @@ -623,12 +623,10 @@ release_async_put_domains(struct i915_power_domains *power_domains,
>  	struct intel_display *display = container_of(power_domains,
>  						     struct intel_display,
>  						     power.domains);
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
>  	enum intel_display_power_domain domain;
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  
> -	wakeref = intel_runtime_pm_get_noresume(rpm);
> +	wakeref = intel_display_rpm_get_noresume(display);
>  
>  	for_each_power_domain(domain, mask) {
>  		/* Clear before put, so put's sanity check is happy. */
> @@ -636,7 +634,7 @@ release_async_put_domains(struct i915_power_domains *power_domains,
>  		__intel_display_power_put_domain(display, domain);
>  	}
>  
> -	intel_runtime_pm_put(rpm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  }
>  
>  static void
> @@ -644,11 +642,10 @@ intel_display_power_put_async_work(struct work_struct *work)
>  {
>  	struct intel_display *display = container_of(work, struct intel_display,
>  						     power.domains.async_put_work.work);
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct i915_power_domains *power_domains = &display->power.domains;
> -	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
> -	intel_wakeref_t new_work_wakeref = intel_runtime_pm_get_raw(rpm);
> -	intel_wakeref_t old_work_wakeref = NULL;
> +	struct ref_tracker *new_work_wakeref, *old_work_wakeref = NULL;
> +
> +	new_work_wakeref = intel_display_rpm_get_raw(display);
>  
>  	mutex_lock(&power_domains->lock);
>  
> @@ -688,9 +685,9 @@ intel_display_power_put_async_work(struct work_struct *work)
>  	mutex_unlock(&power_domains->lock);
>  
>  	if (old_work_wakeref)
> -		intel_runtime_pm_put_raw(rpm, old_work_wakeref);
> +		intel_display_rpm_put_raw(display, old_work_wakeref);
>  	if (new_work_wakeref)
> -		intel_runtime_pm_put_raw(rpm, new_work_wakeref);
> +		intel_display_rpm_put_raw(display, new_work_wakeref);
>  }
>  
>  /**
> @@ -711,10 +708,10 @@ void __intel_display_power_put_async(struct intel_display *display,
>  				     intel_wakeref_t wakeref,
>  				     int delay_ms)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct i915_power_domains *power_domains = &display->power.domains;
> -	struct intel_runtime_pm *rpm = &i915->runtime_pm;
> -	intel_wakeref_t work_wakeref = intel_runtime_pm_get_raw(rpm);
> +	struct ref_tracker *work_wakeref;
> +
> +	work_wakeref = intel_display_rpm_get_raw(display);
>  
>  	delay_ms = delay_ms >= 0 ? delay_ms : 100;
>  
> @@ -746,9 +743,9 @@ void __intel_display_power_put_async(struct intel_display *display,
>  	mutex_unlock(&power_domains->lock);
>  
>  	if (work_wakeref)
> -		intel_runtime_pm_put_raw(rpm, work_wakeref);
> +		intel_display_rpm_put_raw(display, work_wakeref);
>  
> -	intel_runtime_pm_put(rpm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  }
>  
>  /**
> @@ -765,7 +762,6 @@ void __intel_display_power_put_async(struct intel_display *display,
>   */
>  void intel_display_power_flush_work(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct i915_power_domains *power_domains = &display->power.domains;
>  	struct intel_power_domain_mask async_put_mask;
>  	intel_wakeref_t work_wakeref;
> @@ -786,7 +782,7 @@ void intel_display_power_flush_work(struct intel_display *display)
>  	mutex_unlock(&power_domains->lock);
>  
>  	if (work_wakeref)
> -		intel_runtime_pm_put_raw(&i915->runtime_pm, work_wakeref);
> +		intel_display_rpm_put_raw(display, work_wakeref);
>  }
>  
>  /**
> @@ -824,10 +820,8 @@ void intel_display_power_put(struct intel_display *display,
>  			     enum intel_display_power_domain domain,
>  			     intel_wakeref_t wakeref)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -
>  	__intel_display_power_put(display, domain);
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  }
>  #else
>  /**
> @@ -846,10 +840,8 @@ void intel_display_power_put(struct intel_display *display,
>  void intel_display_power_put_unchecked(struct intel_display *display,
>  				       enum intel_display_power_domain domain)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -
>  	__intel_display_power_put(display, domain);
> -	intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
> +	intel_display_rpm_put_unchecked(display);
>  }
>  #endif
>  
> @@ -1979,7 +1971,6 @@ void intel_power_domains_init_hw(struct intel_display *display, bool resume)
>   */
>  void intel_power_domains_driver_remove(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	intel_wakeref_t wakeref __maybe_unused =
>  		fetch_and_zero(&display->power.domains.init_wakeref);
>  
> @@ -1993,7 +1984,7 @@ void intel_power_domains_driver_remove(struct intel_display *display)
>  	intel_power_domains_verify_state(display);
>  
>  	/* Keep the power well enabled, but cancel its rpm wakeref. */
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	intel_display_rpm_put(display, wakeref);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 8ec87ffd87d2..8e7610d9ca23 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -13,6 +13,7 @@
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
>  #include "intel_display_power_well.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_dkl_phy.h"
>  #include "intel_dkl_phy_regs.h"
> @@ -816,7 +817,8 @@ static void assert_can_enable_dc5(struct intel_display *display)
>  		      (intel_de_read(display, DC_STATE_EN) &
>  		       DC_STATE_EN_UPTO_DC5),
>  		      "DC5 already programmed to be enabled.\n");
> -	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
> +
> +	assert_display_rpm_held(display);
>  
>  	assert_dmc_loaded(display);
>  }
> -- 
> 2.39.5
> 
