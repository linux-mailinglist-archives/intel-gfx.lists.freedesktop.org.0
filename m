Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCBF8978DE
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 21:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5830B112E59;
	Wed,  3 Apr 2024 19:16:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WrvEDalE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94F23112E59;
 Wed,  3 Apr 2024 19:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712171762; x=1743707762;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bZZtEm68ZDEbnobqsHjJQ77L7245CADNGSvjEiQTMuo=;
 b=WrvEDalED192XnsFKWeuhVj1qdQ8ojD2iNADu3VRrq8Pgqu0g/Auiy+U
 hQDZZAu67akrvBFcuDwvLAJS4tQfUEt4Np2eWzuG+DU9gYfKtzS7Zb6qB
 8MPTFmKBA9A3kYau/tLzI6P9Yl5rBiF4vLAHKNChS+wVMZKnCmYUSE2+S
 SuE7jVyBI+9M3CJbgIxcQrVuczT5LSMYws09szk1F+s/ejK4EnE55+0ua
 WOo2JY20cev1YnjgZHg0umVOehAhfxxv1rHaL14pTs7qU4OyQuRr6Je/q
 JRU/0P7sSCr1+AgQsxEuqFwF9bIX2OZjLDp+2cq/RQzIoiPqnHTPYC/MF g==;
X-CSE-ConnectionGUID: bho8RCnmRBqdbhE9l3QI0w==
X-CSE-MsgGUID: xjBbE8AoQ6W7KomSRenq7g==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="8003731"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="8003731"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 12:16:02 -0700
X-CSE-ConnectionGUID: We+k8AXPQmewkY1yfmT9Hg==
X-CSE-MsgGUID: pGtJJFmeS1mbp6WkHh3/aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18649119"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 12:16:02 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 12:16:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 12:16:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 12:16:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SbpX0XXYtMy5Z7QS9H2PqaLOn7v97ao58FnEDHvTX4V3RP2JGFwsg3EyX4JjqnKvlnoWwjbPygL+LeIsYV+naVAJ21lYsHuqePeEZ7nRXTi44i+uqdkLFeGigZtFE3irYPJ4ubhoUtAWUOF3RlUAkx1abR0TSXPI6LLeqJGWZsI7OcBDQgaq51jC2Mgo8JIf59s1RUEOKFiDgb4snqmUoEtNFIz6Ah56xL5tWvrTZtivAXdSwBejfVhTl/iB+J/DmANCC9yRQh5HOm6aoH+EsiGcPxyo8vGjAykffWr3Vu6xyuQhqRDX3W8X5YCZKzWGSUOlwWzCwZU+E18lt+r4vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x0iHjVgw7AFkJlT2LGsUPKMXeVPZxzHGXoUXggQ0NFg=;
 b=YU1S3fNf+UEv8q0XfkjcQtanupCHCCT8AKvqZKprZsBs/ouNw3bdkZOdA0CK0Y5Q5rY92DQ7j1/PK5zLApLggsW5XnNoN9PNtnhUMsUOEP/sfBLJoX38v9m2qqgM4jYxDeJKQ3H2aA2byHAHajcecUahwk5Q1rJ50H4/S453ARoLU/M/IALL5hnAPw5uT5Ntt2caiPejjwAwKYz4aGtkv8e7kB5AuERDYrJiOYfXUVUQz3lVJAufn2jr4sOH+SUh4Q5dvTs0y0qxqKsBAlG7H6UPOvQt8i/ok8C/uu9OyrXe9eaGCAS24yQ2YVBFgAfJx4qoQr1TDya/qEAZKTSMnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB6346.namprd11.prod.outlook.com (2603:10b6:208:38a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 19:15:56 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 19:15:56 +0000
Date: Wed, 3 Apr 2024 12:15:53 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Lucas De Marchi" <lucas.demarchi@intel.com>, Radhakrishna Sripada
 <radhakrishna.sripada@intel.com>
Subject: Re: [PATCH v2 08/25] drm/i915/bmg: Extend DG2 tc check to future
Message-ID: <20240403191553.GL6571@mdroper-desk1.amr.corp.intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-9-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240403112253.1432390-9-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: SJ0PR03CA0146.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::31) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB6346:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RMnzflVKV5o8sNdZ6s9d1NY/OdEQy2KkH/r09pOmbSO/Um/MzPmR9lKR8IGySQq7MXswf37aMDpWwgZSOoYXODYYevLKG/w6MpLk7NEEDdEvLKIYMRL6CUUnNRXkpW8AiR5VtwLceFHlkMv/t1FezNsEV+5Lc+9i6iybdjZOoSMsePPQfIa/vfq09bZAfC2bJJ64do3B0b7XYEi6nFDPYB5nDPDJZDsIqGHj73io0nzkTnybttJ0+Dzh2lc4IfLCNPUHMXbk/55t33Fz1Xchxvn+qlhNXhmrURP+9PxhRwI5T1Qmbpk+6Ne5A17yFCnNAvfRPtk1Po8JW6XLZRgzDYwRL55QQ/pqGccmfsZjV460dIdOriKzsCmFM5sPPp2TCqWIl+GPeuhSn07XMFo2z646f6oh6RGjfdiJDxszpxOuqBShEZ5yFKFrhNS0xwDnbDhHqfn6Y+GWPUzJQiMITIueHjlAkMqfjNKUPJBmsSXu6T9PF1caDVRvkAfYLnBLmBvbgsQSKXxUYJNQ94cu9q5WEElnd89b0Gh9yIfMeyWCyULEZRH6Zgn4J/AgyXpF9n7K9kTwmJbOaudJ3/PD92Is1XMe7TlvqSl6iX1k6CBnrS37E/oymEeFW7nP4Wxhpa3U9MgLeucQptwsoXWAc+KWb78wF5EIEIKUL3m9SXY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?s6KZR5fkuLhzIQat1S5LpDa0NSpHibfHgOTdzR/M9RdBSui2O7QsMuRsKogO?=
 =?us-ascii?Q?8fG5kn7/6t3wdQ0DToQLB0Pejlwblb41mns5G3Jb9a2nqdSQuYWZeTz5ZgXF?=
 =?us-ascii?Q?53H+9ukMzgqyUDJPXaXHZyMA4KVuuUfzVcNi476UiI2e0qxRLylXyo3JqqW3?=
 =?us-ascii?Q?pFVXJmSsboF80fMqtavGm/eP8wky47X2B1SzLxE8AtW2Ifwt+/jj43wlJBa7?=
 =?us-ascii?Q?3OCkHElhKd74j/amFk2agTxVckDd5wmPDSjRnOVlMQvciAXF3zN93iE+6aYb?=
 =?us-ascii?Q?mXrH3Mg6jrVC8sFcs6XHnNJCxK8BOdsN226Mw9XuOuE5DkVvtWQ6pefcvyC/?=
 =?us-ascii?Q?61fCNpbPrA9ZVBlgX+6BfemoJySJixpEo/R5pbRA428JdegzdFt5kW9fmPig?=
 =?us-ascii?Q?TivYTzawOt4jWo8U0auUWfUPhlBWbtA+/EVoWfO3RiIG0jVrfoWukgsNwh9+?=
 =?us-ascii?Q?ebNwJy9EgxiuPLqIZZ3wAefXMZkUM2f6Z5AsARK+SITJ89hHSbVQ1faupRTj?=
 =?us-ascii?Q?6bOQjfVjNIVrSG/kK+G5rHGF7r+x3iE8/yRCRyPtko/Ebh+V6DcCtzXzd96k?=
 =?us-ascii?Q?BzLblgVOmXScPUqUdm5zc+A88ALsxZCl+PRT0oC9oCFPv+PENsyIb6vFPzwA?=
 =?us-ascii?Q?XZyTtfMqrblIf3VONjhxcJ9zoiC5hbrjaQk7YtnRVzMsfL9oiT/g2NLZCVuA?=
 =?us-ascii?Q?wV+mijZZXzlPaEkT3EOxImp/Ivsirs/1bQCdbmNNT2/KZ70xtW5Z12ksl4y3?=
 =?us-ascii?Q?Z1oFy4k7jdrsoXrES4f3H+wqOOPEJ5i/zXUQ2nv/oGVhYLQT4Bz/k2EYKBvp?=
 =?us-ascii?Q?uZBLhWoFfVwe50MQtie1ec/BN5z1dtKlevrx7p01r77BbGR1f9rs8PFhore2?=
 =?us-ascii?Q?XGZgWsd+p8JtqbOoJrmgO9Nw6gnlqJRk3z36qJKE32UWJrzfBply0CQx1mzM?=
 =?us-ascii?Q?CHkOEbOZ6sdV0kI9X++CFj46rphfWTAvnz7/N88XrHbNqBaw/eMurz4GiiQu?=
 =?us-ascii?Q?MYCi0GB+FciyZmUe7Y1nJm/e3sy2wmomOEfBadY3+IERq+t7pdidbLumk1yc?=
 =?us-ascii?Q?gVa9csypgw/NzEMj1LwU7+zeZy9qQQsTN9dsc68nHhs4O6cubSQDbWOQtrfm?=
 =?us-ascii?Q?HWGQsLtRjUkrzGVUedxyV1TbQscSSgTOJeJakNjLdzQss/S9DY22NEHNguH3?=
 =?us-ascii?Q?fuftzCwck67czDV+pYggrx1TVxhp4lyqEzLB+Pyw4I0os3Ft/VlBbvvX5aoe?=
 =?us-ascii?Q?ddl6VjFFGQqdJPpXH9RTGcfD4yqiGSQn3gaP2b8reRsEtJ3BAE9hKMZeTVMr?=
 =?us-ascii?Q?wHRJVEdbd68teCwkVL0Pfp/AoA7du4rQ7LRCrJJ44XTrO53L4Fa1Ljg0eadM?=
 =?us-ascii?Q?H2+NLn60r5/BzEWl/szy2v1UmFcjS71D8QtykW73M9Xp/EUsurw6zg9TQuvh?=
 =?us-ascii?Q?wRKvqaIG8aHbu+0Ke3w4M6VoDCWWCPedLNyNoCPHiQEVWCWHe4fF+J7zILnJ?=
 =?us-ascii?Q?5NPny/Bo4y/nmXQrHrJAVtdasz5xncYxuX0iNjLwK8ngJR78mptDhhz7795i?=
 =?us-ascii?Q?6vV4yiFUfqqPMiUyKYJD2JMnnGXomU2aZqcwQhUzh4wRd+J4Gc1CmZifEOCy?=
 =?us-ascii?Q?OA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c3bb265-0286-4b41-a27e-08dc54127d03
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 19:15:56.4992 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nAstE6zuiS5owoofEjg8efN8VAvsOZrD2ZP7rkP/hk9+L65KWkNVwpaXRWVJbA33MLBMwF22HzB/V7eKjvD86e45geb/fYhj9n2/QMgvfuQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6346
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

On Wed, Apr 03, 2024 at 04:52:36PM +0530, Balasubramani Vivekanandan wrote:
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> Discrete cards use the Port numbers TC1-4 for the offsets. The regular
> flow for type-c subsystem port initialization can be skipped. This check
> is present in DG2. Extend this to future discrete products.
> 
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 614e60420a29..aed25890b6f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1861,11 +1861,10 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
>  bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>  {
>  	/*
> -	 * DG2's "TC1", although TC-capable output, doesn't share the same flow
> -	 * as other platforms on the display engine side and rather rely on the
> -	 * SNPS PHY, that is programmed separately
> +	 * Discrete GPU phy's are not attached to FIA's to support TC
> +	 * subsystem Legacy or non-legacy, and only support native DP/HDMI
>  	 */
> -	if (IS_DG2(dev_priv))
> +	if (IS_DGFX(dev_priv))
>  		return false;
>  
>  	if (DISPLAY_VER(dev_priv) >= 13)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
