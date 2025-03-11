Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3784CA5D0DA
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 21:36:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6741310E6A1;
	Tue, 11 Mar 2025 20:36:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gecjDIXK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C71AA10E692;
 Tue, 11 Mar 2025 20:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741725416; x=1773261416;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ddqQGyTSnsx4aDG0yPAAty2sq8IAuMzvLkTjKhngM/4=;
 b=gecjDIXKszvLFor9YvICZn/bEdejK6wjylnx21zHEOJSS31CYxKE3EAc
 7+G2h1Salc9PNV0tibQp46TYYY4Nm3VpY4UNiQk7SsJ7ALAHWzN7tI6nx
 CvO5Wqy86u00hdMzoexyWLOMz8Ie9772Y00gzvpjRf9oeUbGbyTR8hyDZ
 +qXu/y7U3tOZWLs0JEva7ef4APn5mwnUk+uIGHP9HuPDZXOWh5DqsGAyq
 ZQHx0HQKoCEBA5Z/IGswUnjWwCoMTvVRyMhSRdpozSIFaDMga2lDacO3A
 eZk+OZQVA+3iR7jhpIrYoHSBr0ooEQtC4nLNaLUK/LdQYyY39zGqj972C A==;
X-CSE-ConnectionGUID: IJZ/EJLUR0yq7dgvKQUe7Q==
X-CSE-MsgGUID: PMR10W/oQpaTJeBxR4qJ4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="60330844"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="60330844"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 13:36:55 -0700
X-CSE-ConnectionGUID: OoOgNbX0Rm666OA/ZnOQUw==
X-CSE-MsgGUID: w1NPvuUSRySnjmRiu2MQCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="124600381"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 13:36:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 13:36:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 13:36:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 13:36:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JSfJFyeMJXp2P1q5XV28xwX6hEv70Q6BWxVFFjMOXFBxy06FyTI7e/pEy6D5CtO0ltM+mCZtSKNT07hqYa3lh0IriujsqBJ6KNrMbatlNIDClOdsj6yv/fHYTSJ4/O4Yfi9TRvtnQTJYwGzbTZiRtcgLeHejk+gAUNkErCIIryHwoi+zGeohzrOAp8Xbi37F9ltvpYoGoooEUyfWJSHTfwKRDpTKTbWKIEVX7JnRmA15sfh+dgyDuF7Q2xu+nlTQPkVH/ixm2jBLGPP9mekHPaftTeEc0h0M3iXJHsjJULr5wvgCLnbxE9vpkFj04XKqMGCG3Fh+TutvwuuL4h7HHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xcy5sCRlM4gFpTjyxbrY54eApu3nyQRYWaNx8oTJIMU=;
 b=mBV8p+TsGefsTZHpiqub6QMn0ZuygVx5ow1QSBF1SQOMKOZBHc85tqv3wuVM3W7bQxdQamg4YuraA4as7nkS0PrH/WE6XOHmV5sFhZ9hI/z5jyIyUJXK7aaUD4Qt83vZU3vjiZQ4oxG121Hn90Dn9eydcoUbxt5z89vBcDPguOlda3t+XkH97rH8WFq+k5LeI420vC7G+TkJe1LVsifoR6/tUJGWxg4ZYuwJCqm+PugehYGJxwLLdrXfobl5/bkfkvjKZV6uu+GAHMzIv9QrUxyO2lZOrxOtXsHKriaLy7hL8BwrEBwRnwaqnq17WeAo2HGWqUTILK7HnfPHLt1bdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by IA1PR11MB6124.namprd11.prod.outlook.com (2603:10b6:208:3ec::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 20:36:39 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 20:36:38 +0000
Date: Tue, 11 Mar 2025 16:36:35 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/6] drm/i915/display: conversions to
 with_intel_display_rpm()
Message-ID: <Z9Ce0zGfXCpZPTM0@intel.com>
References: <cover.1741694400.git.jani.nikula@intel.com>
 <5560a939f4baa6eb539687c44e72327de825d13d.1741694400.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5560a939f4baa6eb539687c44e72327de825d13d.1741694400.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0075.namprd04.prod.outlook.com
 (2603:10b6:303:6b::20) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|IA1PR11MB6124:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c442b43-e0a3-4e35-493f-08dd60dc6c94
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?IEdZjMhp2p2Ikaq0R0wv0VRZTUzwNrz1SvV2k3p3uNa6DEUzBOrk9cySTzgN?=
 =?us-ascii?Q?1Y8PSJqm0F+h9/UecXwDVk1ESIoyL02kG1FgbYYLF+HHWunr0wEt3bTAq1JH?=
 =?us-ascii?Q?/CMTURa5vCvAnn3Fl26CMN3aULOktRvAkYlnIoAAkqRBWfm78eI4cUFrBamQ?=
 =?us-ascii?Q?S9vaPVSApQ512b8hBhtYEdFQm1wriiqb/aeoVIRv0sL9GdO9zeydNBvcEA2t?=
 =?us-ascii?Q?EhnVSySNWkKrygwEZF7aSl+tKDpsCWIJJIQPNEnKI3EwxK6S74cEyzdwMmA7?=
 =?us-ascii?Q?QB66V1RxppGr2Gj9kOEeEDPqtzouCCHUx4CztlM6Taznl4Pr0AhjO41nAGwk?=
 =?us-ascii?Q?0kfU2+T943p2HrmoWEWz3tSFSzmIHE8+lMLyhCx0C26PtTmtvJoRiP+cSG1Y?=
 =?us-ascii?Q?3OmlJpfsMrSeeklJQYLZRpAor/JTszK0XrYT6dvZHXJCd2UaRBa3sdA+AIlI?=
 =?us-ascii?Q?leD2topgEN0Zg3fiOZdDz+qZ4D0+yeqVSc7WCIzLPGmdy3cN8SSra6FDz/YW?=
 =?us-ascii?Q?aDfFtHDV/O34wbV5eNsE1a/TqpFApg26DZYv0L/xiO+w5G8rGhyTJfxVGCCt?=
 =?us-ascii?Q?oOkqJReFff+Xx76Q58gCcqvCRf9vYpnBITrC2v1eHe1zrg9M0Lw3B5wqK9T8?=
 =?us-ascii?Q?knpSWCwVjMevAxOQfTO7PovMZZiug0adZiM8VMmWhadZXHAS1Dl6bGN8XgoI?=
 =?us-ascii?Q?4bHEj3+Wb/cEsaBlBnSqyFSOSS6bzm8ygZzOKrN1dnaK6rYuqSnr2jFzlFiV?=
 =?us-ascii?Q?Zzr95YPCoqVyRVkhWeZnnUO6J8vCoi2+ba0dt9f/dLKThM0B57rB3wdV8gQQ?=
 =?us-ascii?Q?oHNFVZfAuj6mrnEka86bbKFSJcqeWgtNv0MHt+It+8XGTRqodF+5lyEC2fFH?=
 =?us-ascii?Q?KC32wGkJT9lBCvC36Bs0jfGIkL29FPGTG0XBgqonE44oU0XrBEx1ZRLev7yR?=
 =?us-ascii?Q?G12bS2nBN/SBrebLM+jcwWdxgbnlxl7oEP21bLS1uGjno736MOd4ANIIwiI2?=
 =?us-ascii?Q?usJXxGXA36XdkErB8WERTFPAeV5p/azafDm8QP21YCWb6Gp8ujJ/X7OTUXtP?=
 =?us-ascii?Q?z275w+O3dR6Y3uKOwQV7vNBpdisX4psd2qL3hUdnGRjYsK8dsZAil3obHsa0?=
 =?us-ascii?Q?6pAbLStG0tAoPjPJXVfb9bZVUlxIb1b05Kd8KnL1+BPhtNtEA6dGp4HtoyPE?=
 =?us-ascii?Q?Mq23zumXjXo8UNZXNnmaxQv+0MS4PHyw2xts0L3y92Lu07xNrcl2ou+s8v29?=
 =?us-ascii?Q?yvAaCjU0v6dER0zr4LyhOibM12ygmSN1WwWldTvEZebPzMo0ghyWRaWhs+PF?=
 =?us-ascii?Q?L70hUalY2ZrjJSrQsov8XpiYHxAPd73/o7sRDdHaID85Ka6KxpHQAPzcVfq3?=
 =?us-ascii?Q?yDBXoBdIRnY5UoLEWOg9AqHUj5cM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oc+K+abs30SAwvBZ5/ObQmDlHnFJLHXftNqxNt7evF1L7GQsr3i1t+X7Mg4B?=
 =?us-ascii?Q?tM3Cws45i9qZXXG44I+Yp7NHxVuWQqLB2aHKhYN7kCNs7+3l71Yt8BhrNPD7?=
 =?us-ascii?Q?gBALqabQtEqX7WU87uTDe2kj8kadV+aAd08QdB3Uh4UPx6+t+ysxjRCqRjZR?=
 =?us-ascii?Q?rNGceBBeSZnBL13gmJTWhP4DrQkFU+Vr3B4cGmJjIQDRxl2hM6zpO6JZ50ae?=
 =?us-ascii?Q?mmKktN//tFQ7JaGIDnFap581r5IxJ+xfSLHcTc7R8G+PXb2Deifd3AWnJsCD?=
 =?us-ascii?Q?MCur4EbCr0Vcj+h4RkC1TkZ1+sRfWI+iMQbO8squUDvpOvL1Mh9b0YxIUcX/?=
 =?us-ascii?Q?mBUX4x7MfC2gb6zZubgeuk7my7oYM/48dH57psjfSGkqes/+5U4ji/+ivSnf?=
 =?us-ascii?Q?I0KnLY9jM5WmVDVbAjWbak2g4gseX4v0ZS0094ikLOSekZvZUTwMi1GU0VxN?=
 =?us-ascii?Q?x02WfRsBKX/sp7Fy69UNzc9jQt+OXfqZTcuNvdHWFK0yakguMf0nacC/RZxz?=
 =?us-ascii?Q?eGy0I+Slw3twioSg3CNAFsiCY6UjG8maCkqgUmB/ZPbsTMC025248Ui3Ytft?=
 =?us-ascii?Q?SGv7fco7K743CSOPO8P1bB/JxDuXmzlxp7hBewJ519kbzbnCAKZ5V566E1PU?=
 =?us-ascii?Q?2H3XCNCcks954UXZ06a5wSJCoGAzoNHn2aiLW8iwkmu+a/hzX29sai9GdWJA?=
 =?us-ascii?Q?6/Zv0cWefQpRWDSFB/6vlCJamwTz1xpIoEiEr7Abd3NKR4pL6p6dLhbSenIW?=
 =?us-ascii?Q?ntOlTf8DbdTTBKFJ02NTDMIWFfxFqQs0YaSeFFX6RSmoruVcyaAzd0cAODNp?=
 =?us-ascii?Q?dJDrI05iIbZcnp7acWlC8C0FJg8LIyrmgLuvyUxJWPX0hqbHeMxWl1cGpGXm?=
 =?us-ascii?Q?rLaaSgEkbhYgOl8raYdicGhXw1C228cPaqLz7q3XwGA1CZWvzZuK+paa0cqs?=
 =?us-ascii?Q?/nzjAJepR219kA+cprBKB10kpb2PD/YOjLA//6KGTUwj3zf1dInayRn/BF+n?=
 =?us-ascii?Q?XXb+qsaFlQ4+38CqYHNUSkSKZYQGG7uTxhQkJKCsoscrdsLnt48p5McZeZo0?=
 =?us-ascii?Q?3fQZ8iebXI88pd0RKvccihpsHFZaeN6Uc4wiIJ+NoH/+Zp1fOaoXif+ZtNVV?=
 =?us-ascii?Q?yiEsIOk8nHeX0xdB6gFq42VMEcjFv9BjTeqEMoRQq9FE22S8KkHKM+vu5ERB?=
 =?us-ascii?Q?7BkzUY10a6RcuY6xPG5LnQw26Jwd39Jsa0d2vOwObRQJQfdsAzf7URvTZKnY?=
 =?us-ascii?Q?eBWQPlSbnuVxZVQKkIb/MKcgadyJv5XpdS4n5FwRkSTc/GamFEXNCENXxbAB?=
 =?us-ascii?Q?oL5STJ0seVHuJiF+L7yraI7YvP2OO1QWRPmeDofuR8yuET+mSh0pXSzIQ774?=
 =?us-ascii?Q?aakreFtiimDS7kSa9aj4KHSlFJyy5Ph98f+kmvu4i8Em6YklUocLAge0vYRc?=
 =?us-ascii?Q?xjTf9iCN+Y19VlGrO7c1aWSXVBWFzKecbycvk7C/tmmDp9QUVKOajKzCnpiS?=
 =?us-ascii?Q?J/d5El4jMzU4OSwc+c9XHtREu5kYyIoZOG+JVi8nfNOZTizlLiBXh6IjDEuH?=
 =?us-ascii?Q?BJXAYU9iL0uysxOt4YGb7NAp60LUYEHT8zmXKSpuYd+Mels/Feh+lpOIu3as?=
 =?us-ascii?Q?yA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c442b43-e0a3-4e35-493f-08dd60dc6c94
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 20:36:38.9317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q8J+cK9d+NIbo+YSIVuupgHUgcKWnVPltOBJnd/7RUjgV2Kp85uf3gGIL30QpX1vh6BFQ1A2dFPWhxJiOu04Hg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6124
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

On Tue, Mar 11, 2025 at 02:05:36PM +0200, Jani Nikula wrote:
> Convert all with_intel_runtime_pm() uses to with_intel_display_rpm().
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c | 5 ++---
>  drivers/gpu/drm/i915/display/intel_bios.c      | 6 +++---
>  drivers/gpu/drm/i915/display/intel_hdcp.c      | 5 ++---
>  drivers/gpu/drm/i915/display/skl_watermark.c   | 9 +++++----
>  4 files changed, 12 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 178dc6c8de80..4f3fa966c537 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -16,6 +16,7 @@
>  #include "intel_backlight_regs.h"
>  #include "intel_connector.h"
>  #include "intel_de.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_dp_aux_backlight.h"
>  #include "intel_dsi_dcs_backlight.h"
> @@ -901,11 +902,9 @@ static int intel_backlight_device_get_brightness(struct backlight_device *bd)
>  {
>  	struct intel_connector *connector = bl_get_data(bd);
>  	struct intel_display *display = to_intel_display(connector);
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> -	intel_wakeref_t wakeref;
>  	int ret = 0;
>  
> -	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
> +	with_intel_display_rpm(display) {
>  		u32 hw_level;
>  
>  		drm_modeset_lock(&display->drm->mode_config.connection_mutex, NULL);
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index a8d08d7d82b3..fabfcf2caa69 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -37,6 +37,7 @@
>  
>  #include "i915_drv.h"
>  #include "intel_display.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_gmbus.h"
>  
> @@ -3115,7 +3116,6 @@ static const struct vbt_header *intel_bios_get_vbt(struct intel_display *display
>  {
>  	struct drm_i915_private *i915 = to_i915(display->drm);
>  	const struct vbt_header *vbt = NULL;
> -	intel_wakeref_t wakeref;
>  
>  	vbt = firmware_get_vbt(display, sizep);
>  
> @@ -3127,11 +3127,11 @@ static const struct vbt_header *intel_bios_get_vbt(struct intel_display *display
>  	 * through MMIO or PCI mapping
>  	 */
>  	if (!vbt && IS_DGFX(i915))
> -		with_intel_runtime_pm(&i915->runtime_pm, wakeref)
> +		with_intel_display_rpm(display)
>  			vbt = oprom_get_vbt(display, intel_rom_spi(i915), sizep, "SPI flash");
>  
>  	if (!vbt)
> -		with_intel_runtime_pm(&i915->runtime_pm, wakeref)
> +		with_intel_display_rpm(display)
>  			vbt = oprom_get_vbt(display, intel_rom_pci(i915), sizep, "PCI ROM");
>  
>  	return vbt;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 1bf424a822f3..72a43ef6e4d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -22,6 +22,7 @@
>  #include "intel_de.h"
>  #include "intel_display_power.h"
>  #include "intel_display_power_well.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_hdcp.h"
>  #include "intel_hdcp_gsc.h"
> @@ -334,9 +335,7 @@ static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *dig_port,
>  
>  static bool hdcp_key_loadable(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	enum i915_power_well_id id;
> -	intel_wakeref_t wakeref;
>  	bool enabled = false;
>  
>  	/*
> @@ -349,7 +348,7 @@ static bool hdcp_key_loadable(struct intel_display *display)
>  		id = SKL_DISP_PW_1;
>  
>  	/* PG1 (power well #1) needs to be enabled */
> -	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
> +	with_intel_display_rpm(display)
>  		enabled = intel_display_power_well_is_enabled(display, id);
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 2d0de1c63308..2730396a775e 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -19,6 +19,7 @@
>  #include "intel_de.h"
>  #include "intel_display.h"
>  #include "intel_display_power.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_fb.h"
>  #include "intel_fixed.h"
> @@ -4052,7 +4053,7 @@ static ssize_t skl_watermark_ipc_status_write(struct file *file,
>  {
>  	struct seq_file *m = file->private_data;
>  	struct drm_i915_private *i915 = m->private;
> -	intel_wakeref_t wakeref;
> +	struct intel_display *display = &i915->display;
>  	bool enable;
>  	int ret;
>  
> @@ -4060,11 +4061,11 @@ static ssize_t skl_watermark_ipc_status_write(struct file *file,
>  	if (ret < 0)
>  		return ret;
>  
> -	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
> +	with_intel_display_rpm(display) {
>  		if (!skl_watermark_ipc_enabled(i915) && enable)
> -			drm_info(&i915->drm,
> +			drm_info(display->drm,
>  				 "Enabling IPC: WM will be proper only after next commit\n");
> -		i915->display.wm.ipc_enabled = enable;
> +		display->wm.ipc_enabled = enable;
>  		skl_watermark_ipc_update(i915);
>  	}
>  
> -- 
> 2.39.5
> 
