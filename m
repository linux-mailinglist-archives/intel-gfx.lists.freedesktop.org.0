Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E08DFADBB78
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jun 2025 22:48:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FE7110E45E;
	Mon, 16 Jun 2025 20:48:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="InnnxY4f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E546510E450;
 Mon, 16 Jun 2025 20:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750106881; x=1781642881;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HWa913bZr9eBCAJdJRLKG5ocWfds6YmNZyd51FmwDWo=;
 b=InnnxY4fbvYisQ1/hOmeRpeIqu2xV/hd1KllDAyUGsXNAMPWZaJD/xQ7
 dHXle2GPIn3Y4PqCXsiuE8a/AWupYudElYrXgtskCWkLe2gGU2POgrsR4
 x25JD9yDwjEIz0zyWJtu8diGJW8lfCefyqArrKeiRPQ/KEZSRfKn5ZY96
 xZ9YhS1S6yWltA5rg3ZC1MnMB+9dTxqYZ6xrgP9Zq3pbKqKGxNiLw01sw
 45W4WI08xfqbgit137/+AciUu/2MokWkyp0lxo7gkGBCMvEVSfIuPeCoO
 MWNLupAoeClaM2VrnOFLo5L5AMKDItg8utc6yFax+caJkMjYgMoAfGOT3 Q==;
X-CSE-ConnectionGUID: QdXO0MCZR0S9uCVRkzzCcA==
X-CSE-MsgGUID: SSfsoCcJTPeYqBiuWjDElQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="51970113"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="51970113"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 13:48:00 -0700
X-CSE-ConnectionGUID: tNhdIXycSuyV+qG3h+zfFA==
X-CSE-MsgGUID: V5Uroq7wTqu6RHi85rt5Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="148468473"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 13:48:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 13:47:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 13:47:59 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.75)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 13:47:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VsTtUB1PuDKLTd6XvTNve7aQfWdvQbi4sDN0rMBkRmNfreSF10gp7d3WnBu7vkqQdauYHhlbZCn0dtp7XjkkJLGrcoaUvipp5/zP9yDv+GOaNSgsnLr/0k3mcO4Q84UcslPHQ6pAyfqU41HCbKzjRcNzpiewU4o7BlQEsNrPaVg1BrJzsZ2mXDQMC1pKmmIWC8j/WAXUDjM6OuqKKvOOLYp8XDsKcABW3yQHS/qj52rJyJ6OHHsfWqDuz9KL1ad2xWtepcUiwA6l5uRAr/X3y40Nn/2MdL03tH9TAlG16wrZyZaPKNi3ZFc0XWXSnNljnwYhEv2t4ZR+rpmynsEEbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C/g1U9TI3Dp62S7F23i90RZH9IQ+GE4Ry7m9IDbnleA=;
 b=ie0f4Izz0i2tci6FsX4vDaLV1/bVG+raTXkzkLaKEd4GL+Xni447r6I9VzqHwErbjP72gw+trLU5/WDAVj7RIH7U+ig/HxxALvNzkoljPK+1IAHrdxGSMVGIoBF5yqcdDiipSx1tpOd3xxKgiwPx9TkrcJlLYHJY7/pfjXHyZ7ya6I65V+61GEnL6pAjLdrQNBmjLH9+rpJJ558ZHNbckbbCXvogSf6XTyP6xPiqo4y+Xuv+CSDfFtOyZ+YVM/ZadbVxyUwmBV+V/ZZd1h3EsiCQu2IEi6tS698q7yrFoP4JDdOWccCduOoPHt5lBmIjDWphLITs9RYg0WiE6Cp4Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CH3PR11MB8591.namprd11.prod.outlook.com (2603:10b6:610:1af::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.24; Mon, 16 Jun
 2025 20:47:56 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 20:47:56 +0000
Date: Mon, 16 Jun 2025 16:47:50 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 4/6] drm/i915/display: switch to struct drm_device based
 pcode interface
Message-ID: <aFCC9hEiu_LQMPoM@intel.com>
References: <cover.1749119274.git.jani.nikula@intel.com>
 <f51970f35d49670775dbcad468435b4f637bafb2.1749119274.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f51970f35d49670775dbcad468435b4f637bafb2.1749119274.git.jani.nikula@intel.com>
X-ClientProxiedBy: YQBPR0101CA0198.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:67::35) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CH3PR11MB8591:EE_
X-MS-Office365-Filtering-Correlation-Id: 856cfea2-9d36-4790-dc5f-08ddad171268
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OToYkxRRbB2QB2eDV9nHyK295LrNSLCczmcHyhmdoHeSd2fMuIDxiKRv9bQq?=
 =?us-ascii?Q?Nb38G6YWnR+RAq9zLB2K/cY5mPRpi44A+2RVocfQObLOe749So4NE4LHcO9j?=
 =?us-ascii?Q?d4SWlewFb8wPDak9TW8rI7W1xGW3IXHj6EslHFW0sFmNxRo3XwDTdpyIf1D8?=
 =?us-ascii?Q?veM+TH7ca+ndOYgHqnvgSyr8EfA6u/PFEAsUlt1Drm+mbBIkDRPqIUxge/6X?=
 =?us-ascii?Q?b/xZEelsFEUsuXhXJ9u8j+c/ZCKGUsxcFPR5Oq+T4Vc8G5iL4uxsBnzMonX9?=
 =?us-ascii?Q?ffsTAsQP3HKvvsWR1pDntQRzbW/RpTm2TGXBiWFzAWOnOBZpTVg5h1ihHbSg?=
 =?us-ascii?Q?48k/R3R6H4PFpLZShGp4EIpAnlKd4ddJmnRHnyB5yXrf1Oyp5gavOjhfoTWZ?=
 =?us-ascii?Q?49embTFtU8A1xsIkPMSY7vMpxM/CcKan5nfwR0wnf68Ls5AEbIH2S+H4aL9e?=
 =?us-ascii?Q?ZFcb4RH1995P1GjXm41eam0aumjvh55oW0p4bDs9LFqW9wmnkjsU1WTcqtgh?=
 =?us-ascii?Q?v6rIpcauPvawAw9FyLX/X9Y1ZUhmDiTpzHy2bCFfRFEgxlTJGFzbHj+wNoPd?=
 =?us-ascii?Q?IGapDuaCb0Fr24Nepzmvpr1CEKtilJibkSqvwFKwR6xmbeWZZkT7hsdblfCA?=
 =?us-ascii?Q?nbPNpBV6haonAMDHq7i66Q+G9ppbY5RUBxDUg22H+YOMAmOrNCsMuEIaErMP?=
 =?us-ascii?Q?2Y1IdmLf1gZRAoM/0IKJdvMuxzzBR8NFlVz54vvUPET75ZHnpc6K0EoE7LXt?=
 =?us-ascii?Q?TH0vMTj3VXcTk4PNyWBmJ3OodDZqO/glWznpNR3VOtgAuanfax7SrlSp59h6?=
 =?us-ascii?Q?h0Keq8Hbwh9QRp1KceIy301blFZJkXnNWl3XVn5ajPgyyLY3qOROJJ8hOT3s?=
 =?us-ascii?Q?0MTRX7ZWX1SukCDRPVjA6dK5ZUZsWX6qQHOpdh6mm04kJDllRZFyBjTMlNti?=
 =?us-ascii?Q?JX/qfyDSGMPA6t77u+bN2xAVaYPs+GIiVM8BuMMjeiza5r3GrLqSMXrGgTYk?=
 =?us-ascii?Q?+nksch2yMm7QkcmBTIFM0nim+OAJT3CAma1Ht0hKAutk/LCVad7o1SAGPVZ3?=
 =?us-ascii?Q?T9RRgeP1H3QOxyIFBGAEaZVvNxT5wJB5nRkBnjjSJ3fFLAWIYkGZ/haowJGK?=
 =?us-ascii?Q?8ohJBQIOuFaas2he324A7SV0lN1V+d4/VCXQEoZ5kkHdYOWU63EuAyV1Hqbi?=
 =?us-ascii?Q?vvCEDRuyIkDkl+8fPv5yWYH9vD7a4RyCCyXltgSgRjNV8ccBLe2+q6sr6+fk?=
 =?us-ascii?Q?g8xU1YYCHDO2q1sy68TFDMwT2NcLgqMBV2R3bkEOmL1vYGVR7jIH/WOJasMO?=
 =?us-ascii?Q?At01//XbgowhInw/plJ2AQ4uhNerWsQf9O4/wrAgJsfjNgQpyMH9UwyMicuC?=
 =?us-ascii?Q?GJ0a7aV+oT6xKVdL2purfFSdj2rkZa3hV216jQqIYqrIst2S1A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Gq12i5nQo7Rdm/7UStuE2iQtJq7UxPMXeI6GU3Y84Z4wxodtirmQzVn8vVOX?=
 =?us-ascii?Q?9A9Bnr1fBQrPEZBJadqVPZ8aNP6DieLQK2IRgoJjHBHPDgzea9shpSZSbZs9?=
 =?us-ascii?Q?iiRlh4dkhKLt0UZZ7bkY/G5FKvWm7VT6SLBw6QCdXTox4t18ZljMggRFyXoP?=
 =?us-ascii?Q?mgye04vazUzFoZxk3uDPhAYkEzFw4nJTBiTzMXABLWIGIoPzXUytiB3+X88+?=
 =?us-ascii?Q?lxfl23Y3luEqgXMbxmRuspcLJQisRSBpETRj+agrMnhFTHNYPDDuZEZfzvjX?=
 =?us-ascii?Q?c3zKzOGDpWAf/x+Eqj+L2kB51f2FF9lGYntRuvx5ZlDr8WDCcAL1v0a+QMJ9?=
 =?us-ascii?Q?H6TRw4mUMCkcCuabGijKHITDaXhrX1U7JLcagVBvhYZwRm6rduLN9Tdfw9aS?=
 =?us-ascii?Q?wUeIQuyxIr+S2VkS5512zZAPxsadlOoUP0AFmyHnA4kqI1beV7GRDc3tGHTP?=
 =?us-ascii?Q?pwipr7RS/XOF28zeR/H915J7IeZFb2uDXC2IkxKXXllBDKX5V4t7nVCNByhS?=
 =?us-ascii?Q?yzaRJIzlCkas8kVrNEDi0YbEhRK8Y7A678nGpLBgOzUB+C0pulhAlq4vpSut?=
 =?us-ascii?Q?0IxdhdaMurImZGAH7rFVbwtkVDkGQyXoTKx5QM9OIbEcEAnEHInNS8OMcsYs?=
 =?us-ascii?Q?jugRMPIfqMhD51bhR3XY7KkKqugkDQR6IT4ev3j3cAbaQhAlMThD8l27sMls?=
 =?us-ascii?Q?zGFSwo5/8GdPmhTMb87janh60lyIX1cfb5bDgRmW8NGNz+MulYipuOC27j6i?=
 =?us-ascii?Q?nsf5cnxdrwpvpYrDGa2Id471YEXaayBCkepetHl2U7XdndA+kEKREqcXuhYg?=
 =?us-ascii?Q?cdfW/NHWVt5NIdGoAfI5+QrHJsoYD7RhIsx4lIa3YPkRrsCIlyKx5CATGEdo?=
 =?us-ascii?Q?6i4sjjmOTWeovpgdERhtHIaTUcXn3YvXACiJefS2kMaotuG4m20rio1uzXUe?=
 =?us-ascii?Q?O5WF/qscR9xQR+LQrg8GMjNPzijZUhZNBwNmrhokrPjvYrDsIpQ4ma3dXebV?=
 =?us-ascii?Q?bTP1Ez3Zr6hhzg2pDrKfFecznzRjdQjwnD/OUQ4jhYkgHzffNHvLNoxjlyOi?=
 =?us-ascii?Q?fVCM/2myjfNqkjiEvRyh9JqSKj7HJzTFY72MnhZx6My/95NXzTaKdN1hGy+Y?=
 =?us-ascii?Q?76YdDSAk8vlJESTP8YUKcckZZPxz0H1c2MZCQd2blcp5TAK4z07A8nquO+/I?=
 =?us-ascii?Q?UeMy4EbNnctVxzv4tkKSBdqLGEuz+tFvl+AK+vKZqk5cOWBgn2C7xcU6CGXz?=
 =?us-ascii?Q?dF9d5lj9SNU0OwFSfnOg8JwwMOfeS7QYYX4TS838JgPtiy9EoSPAjDoLPjXf?=
 =?us-ascii?Q?dFRlhyW9mJzNwTkFmO4zzl0QaAQIimivWCpMgsD7iPkvMaE/sVniP3SsibgV?=
 =?us-ascii?Q?vTC2bkAeEb3J2eAeiI9cJQTxV+02OCN2xeQmeOhaJKOMAxbsWzc27N6y40+6?=
 =?us-ascii?Q?QUw3NPFQj2MT+zrkXCuaoy+7GV/jxQfoCxoKqPzErkTpsiLNucihDNKrBOK3?=
 =?us-ascii?Q?IrAyygxKMpbChvdw5KQYBbfv5SqIndYIh7fUz36D3EpXYbPY0FFi27dGH7ub?=
 =?us-ascii?Q?mFk7DAyFQULc1cE8ZVzyqXrFOjZvUV9MGTapx4N1xw1Fx6x/AhkuGWG03tLN?=
 =?us-ascii?Q?rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 856cfea2-9d36-4790-dc5f-08ddad171268
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2025 20:47:56.4535 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hzl9fXKcbHmp+6ll84fgaPx62OcMUI1rCBaNjgFC10KX7e0UJub/iESr6zog12vHJQR/28qj1ocni71tjt17hA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8591
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

On Thu, Jun 05, 2025 at 01:29:36PM +0300, Jani Nikula wrote:
> With the struct drm_device based pcode interface in place in both i915
> and xe, we can switch display code to use that, and ditch a number of
> struct drm_i915_private uses. Also drop the dependency on i915_drv.h
> from a couple of files.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/hsw_ips.c        | 13 ++---
>  drivers/gpu/drm/i915/display/intel_bw.c       | 23 ++++----
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 56 +++++++++----------
>  .../drm/i915/display/intel_display_power.c    |  4 +-
>  .../i915/display/intel_display_power_well.c   |  4 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 30 +++++-----
>  7 files changed, 58 insertions(+), 75 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
> index 4307e2ed03d9..19b020a4ec22 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -5,8 +5,9 @@
>  
>  #include <linux/debugfs.h>
>  
> +#include <drm/drm_print.h>

I'm afraid I didn't understood why you are adding these includes here
and also below...

> +
>  #include "hsw_ips.h"
> -#include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "intel_color_regs.h"
>  #include "intel_de.h"
> @@ -17,8 +18,6 @@
>  static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	u32 val;
>  
>  	if (!crtc_state->ips_enabled)
> @@ -39,8 +38,8 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
>  
>  	if (display->platform.broadwell) {
>  		drm_WARN_ON(display->drm,
> -			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL,
> -					    val | IPS_PCODE_CONTROL));
> +			    intel_pcode_write(display->drm, DISPLAY_IPS_CONTROL,
> +					      val | IPS_PCODE_CONTROL));
>  		/*
>  		 * Quoting Art Runyan: "its not safe to expect any particular
>  		 * value in IPS_CTL bit 31 after enabling IPS through the
> @@ -65,8 +64,6 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
>  bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	bool need_vblank_wait = false;
>  
>  	if (!crtc_state->ips_enabled)
> @@ -74,7 +71,7 @@ bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
>  
>  	if (display->platform.broadwell) {
>  		drm_WARN_ON(display->drm,
> -			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL, 0));
> +			    intel_pcode_write(display->drm, DISPLAY_IPS_CONTROL, 0));
>  		/*
>  		 * Wait for PCODE to finish disabling IPS. The BSpec specified
>  		 * 42ms timeout value leads to occasional timeouts so use 100ms
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 97aef729f7d4..82f131c3f8d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -80,14 +80,13 @@ static int icl_pcode_read_qgv_point_info(struct intel_display *display,
>  					 struct intel_qgv_point *sp,
>  					 int point)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	u32 val = 0, val2 = 0;
>  	u16 dclk;
>  	int ret;
>  
> -	ret = snb_pcode_read(&i915->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
> -			     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
> -			     &val, &val2);
> +	ret = intel_pcode_read(display->drm, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
> +			       ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
> +			       &val, &val2);
>  	if (ret)
>  		return ret;
>  
> @@ -108,13 +107,12 @@ static int icl_pcode_read_qgv_point_info(struct intel_display *display,
>  static int adls_pcode_read_psf_gv_point_info(struct intel_display *display,
>  					     struct intel_psf_gv_point *points)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	u32 val = 0;
>  	int ret;
>  	int i;
>  
> -	ret = snb_pcode_read(&i915->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
> -			     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, NULL);
> +	ret = intel_pcode_read(display->drm, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
> +			       ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, NULL);
>  	if (ret)
>  		return ret;
>  
> @@ -155,18 +153,17 @@ static bool is_sagv_enabled(struct intel_display *display, u16 points_mask)
>  int icl_pcode_restrict_qgv_points(struct intel_display *display,
>  				  u32 points_mask)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	int ret;
>  
>  	if (DISPLAY_VER(display) >= 14)
>  		return 0;
>  
>  	/* bspec says to keep retrying for at least 1 ms */
> -	ret = skl_pcode_request(&i915->uncore, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
> -				points_mask,
> -				ICL_PCODE_REP_QGV_MASK | ADLS_PCODE_REP_PSF_MASK,
> -				ICL_PCODE_REP_QGV_SAFE | ADLS_PCODE_REP_PSF_SAFE,
> -				1);
> +	ret = intel_pcode_request(display->drm, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
> +				  points_mask,
> +				  ICL_PCODE_REP_QGV_MASK | ADLS_PCODE_REP_PSF_MASK,
> +				  ICL_PCODE_REP_QGV_SAFE | ADLS_PCODE_REP_PSF_SAFE,
> +				  1);
>  
>  	if (ret < 0) {
>  		drm_err(display->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 7ad506da7d3d..f60bf8a06541 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -840,7 +840,6 @@ static void bdw_set_cdclk(struct intel_display *display,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	int cdclk = cdclk_config->cdclk;
>  	int ret;
>  
> @@ -853,7 +852,7 @@ static void bdw_set_cdclk(struct intel_display *display,
>  		     "trying to change cdclk frequency with cdclk not enabled\n"))
>  		return;
>  
> -	ret = snb_pcode_write(&dev_priv->uncore, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
> +	ret = intel_pcode_write(display->drm, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
>  	if (ret) {
>  		drm_err(display->drm,
>  			"failed to inform pcode about cdclk change\n");
> @@ -881,8 +880,8 @@ static void bdw_set_cdclk(struct intel_display *display,
>  			 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
>  		drm_err(display->drm, "Switching back to LCPLL failed\n");
>  
> -	snb_pcode_write(&dev_priv->uncore, HSW_PCODE_DE_WRITE_FREQ_REQ,
> -			cdclk_config->voltage_level);
> +	intel_pcode_write(display->drm, HSW_PCODE_DE_WRITE_FREQ_REQ,
> +			  cdclk_config->voltage_level);
>  
>  	intel_de_write(display, CDCLK_FREQ,
>  		       DIV_ROUND_CLOSEST(cdclk, 1000) - 1);
> @@ -1122,7 +1121,6 @@ static void skl_set_cdclk(struct intel_display *display,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	int cdclk = cdclk_config->cdclk;
>  	int vco = cdclk_config->vco;
>  	u32 freq_select, cdclk_ctl;
> @@ -1139,10 +1137,10 @@ static void skl_set_cdclk(struct intel_display *display,
>  	drm_WARN_ON_ONCE(display->drm,
>  			 display->platform.skylake && vco == 8640000);
>  
> -	ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> -				SKL_CDCLK_PREPARE_FOR_CHANGE,
> -				SKL_CDCLK_READY_FOR_CHANGE,
> -				SKL_CDCLK_READY_FOR_CHANGE, 3);
> +	ret = intel_pcode_request(display->drm, SKL_PCODE_CDCLK_CONTROL,
> +				  SKL_CDCLK_PREPARE_FOR_CHANGE,
> +				  SKL_CDCLK_READY_FOR_CHANGE,
> +				  SKL_CDCLK_READY_FOR_CHANGE, 3);
>  	if (ret) {
>  		drm_err(display->drm,
>  			"Failed to inform PCU about cdclk change (%d)\n", ret);
> @@ -1185,8 +1183,8 @@ static void skl_set_cdclk(struct intel_display *display,
>  	intel_de_posting_read(display, CDCLK_CTL);
>  
>  	/* inform PCU of the change */
> -	snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> -			cdclk_config->voltage_level);
> +	intel_pcode_write(display->drm, SKL_PCODE_CDCLK_CONTROL,
> +			  cdclk_config->voltage_level);
>  
>  	intel_update_cdclk(display);
>  }
> @@ -2122,7 +2120,6 @@ static void bxt_set_cdclk(struct intel_display *display,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_cdclk_config mid_cdclk_config;
>  	int cdclk = cdclk_config->cdclk;
>  	int ret = 0;
> @@ -2136,18 +2133,18 @@ static void bxt_set_cdclk(struct intel_display *display,
>  	if (DISPLAY_VER(display) >= 14 || display->platform.dg2)
>  		; /* NOOP */
>  	else if (DISPLAY_VER(display) >= 11)
> -		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> +		ret = intel_pcode_request(display->drm, SKL_PCODE_CDCLK_CONTROL,
> +					  SKL_CDCLK_PREPARE_FOR_CHANGE,
> +					  SKL_CDCLK_READY_FOR_CHANGE,
> +					  SKL_CDCLK_READY_FOR_CHANGE, 3);
>  	else
>  		/*
>  		 * BSpec requires us to wait up to 150usec, but that leads to
>  		 * timeouts; the 2ms used here is based on experiment.
>  		 */
> -		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> -					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      0x80000000, 2);
> +		ret = intel_pcode_write_timeout(display->drm,
> +						HSW_PCODE_DE_WRITE_FREQ_REQ,
> +						0x80000000, 2);
>  
>  	if (ret) {
>  		drm_err(display->drm,
> @@ -2176,8 +2173,8 @@ static void bxt_set_cdclk(struct intel_display *display,
>  		 * Display versions 14 and beyond
>  		 */;
>  	else if (DISPLAY_VER(display) >= 11 && !display->platform.dg2)
> -		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> -				      cdclk_config->voltage_level);
> +		ret = intel_pcode_write(display->drm, SKL_PCODE_CDCLK_CONTROL,
> +					cdclk_config->voltage_level);
>  	if (DISPLAY_VER(display) < 11) {
>  		/*
>  		 * The timeout isn't specified, the 2ms used here is based on
> @@ -2185,9 +2182,9 @@ static void bxt_set_cdclk(struct intel_display *display,
>  		 * FIXME: Waiting for the request completion could be delayed
>  		 * until the next PCODE request based on BSpec.
>  		 */
> -		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> -					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      cdclk_config->voltage_level, 2);
> +		ret = intel_pcode_write_timeout(display->drm,
> +						HSW_PCODE_DE_WRITE_FREQ_REQ,
> +						cdclk_config->voltage_level, 2);
>  	}
>  	if (ret) {
>  		drm_err(display->drm,
> @@ -2473,7 +2470,6 @@ static void intel_pcode_notify(struct intel_display *display,
>  			       bool cdclk_update_valid,
>  			       bool pipe_count_update_valid)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	int ret;
>  	u32 update_mask = 0;
>  
> @@ -2488,11 +2484,11 @@ static void intel_pcode_notify(struct intel_display *display,
>  	if (pipe_count_update_valid)
>  		update_mask |= DISPLAY_TO_PCODE_PIPE_COUNT_VALID;
>  
> -	ret = skl_pcode_request(&i915->uncore, SKL_PCODE_CDCLK_CONTROL,
> -				SKL_CDCLK_PREPARE_FOR_CHANGE |
> -				update_mask,
> -				SKL_CDCLK_READY_FOR_CHANGE,
> -				SKL_CDCLK_READY_FOR_CHANGE, 3);
> +	ret = intel_pcode_request(display->drm, SKL_PCODE_CDCLK_CONTROL,
> +				  SKL_CDCLK_PREPARE_FOR_CHANGE |
> +				  update_mask,
> +				  SKL_CDCLK_READY_FOR_CHANGE,
> +				  SKL_CDCLK_READY_FOR_CHANGE, 3);
>  	if (ret)
>  		drm_err(display->drm,
>  			"Failed to inform PCU about display config (err %d)\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 8e8c3a2f401b..562d15f8c38c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1255,10 +1255,8 @@ static u32 hsw_read_dcomp(struct intel_display *display)
>  
>  static void hsw_write_dcomp(struct intel_display *display, u32 val)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -
>  	if (display->platform.haswell) {
> -		if (snb_pcode_write(&dev_priv->uncore, GEN6_PCODE_WRITE_D_COMP, val))
> +		if (intel_pcode_write(display->drm, GEN6_PCODE_WRITE_D_COMP, val))
>  			drm_dbg_kms(display->drm, "Failed to write to D_COMP\n");
>  	} else {
>  		intel_de_write(display, D_COMP_BDW, val);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index e60f60ddbff7..c05b9349d806 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -485,7 +485,7 @@ static void icl_tc_cold_exit(struct intel_display *display)
>  	int ret, tries = 0;
>  
>  	while (1) {
> -		ret = snb_pcode_write(&i915->uncore, ICL_PCODE_EXIT_TCCOLD, 0);
> +		ret = intel_pcode_write(display->drm, ICL_PCODE_EXIT_TCCOLD, 0);
>  		if (ret != -EAGAIN || ++tries == 3)
>  			break;
>  		msleep(1);
> @@ -1764,7 +1764,7 @@ tgl_tc_cold_request(struct intel_display *display, bool block)
>  		 * Spec states that we should timeout the request after 200us
>  		 * but the function below will timeout after 500us
>  		 */
> -		ret = snb_pcode_read(&i915->uncore, TGL_PCODE_TCCOLD, &low_val, &high_val);
> +		ret = intel_pcode_read(display->drm, TGL_PCODE_TCCOLD, &low_val, &high_val);
>  		if (ret == 0) {
>  			if (block &&
>  			    (low_val & TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED))
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 3e3038f4ee1f..52808cab95dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -373,7 +373,6 @@ static void intel_hdcp_clear_keys(struct intel_display *display)
>  
>  static int intel_hdcp_load_keys(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	int ret;
>  	u32 val;
>  
> @@ -398,7 +397,7 @@ static int intel_hdcp_load_keys(struct intel_display *display)
>  	 * Mailbox interface.
>  	 */
>  	if (DISPLAY_VER(display) == 9 && !display->platform.broxton) {
> -		ret = snb_pcode_write(&i915->uncore, SKL_PCODE_LOAD_HDCP_KEYS, 1);
> +		ret = intel_pcode_write(display->drm, SKL_PCODE_LOAD_HDCP_KEYS, 1);
>  		if (ret) {
>  			drm_err(display->drm,
>  				"Failed to initiate HDCP key load (%d)\n",
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 817939f6d4dd..df5522511dda 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -6,10 +6,12 @@
>  #include <linux/debugfs.h>
>  
>  #include <drm/drm_blend.h>
> +#include <drm/drm_file.h>
> +#include <drm/drm_print.h>
>  
>  #include "soc/intel_dram.h"
> -#include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "i915_utils.h"
>  #include "i9xx_wm.h"
>  #include "intel_atomic.h"
>  #include "intel_atomic_plane.h"
> @@ -85,8 +87,6 @@ intel_has_sagv(struct intel_display *display)
>  static u32
>  intel_sagv_block_time(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
>  	if (DISPLAY_VER(display) >= 14) {
>  		u32 val;
>  
> @@ -97,9 +97,9 @@ intel_sagv_block_time(struct intel_display *display)
>  		u32 val = 0;
>  		int ret;
>  
> -		ret = snb_pcode_read(&i915->uncore,
> -				     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
> -				     &val, NULL);
> +		ret = intel_pcode_read(display->drm,
> +				       GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
> +				       &val, NULL);
>  		if (ret) {
>  			drm_dbg_kms(display->drm, "Couldn't read SAGV block time!\n");
>  			return 0;
> @@ -157,7 +157,6 @@ static void intel_sagv_init(struct intel_display *display)
>   */
>  static void skl_sagv_enable(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	int ret;
>  
>  	if (!intel_has_sagv(display))
> @@ -167,8 +166,8 @@ static void skl_sagv_enable(struct intel_display *display)
>  		return;
>  
>  	drm_dbg_kms(display->drm, "Enabling SAGV\n");
> -	ret = snb_pcode_write(&i915->uncore, GEN9_PCODE_SAGV_CONTROL,
> -			      GEN9_SAGV_ENABLE);
> +	ret = intel_pcode_write(display->drm, GEN9_PCODE_SAGV_CONTROL,
> +				GEN9_SAGV_ENABLE);
>  
>  	/* We don't need to wait for SAGV when enabling */
>  
> @@ -190,7 +189,6 @@ static void skl_sagv_enable(struct intel_display *display)
>  
>  static void skl_sagv_disable(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	int ret;
>  
>  	if (!intel_has_sagv(display))
> @@ -201,10 +199,9 @@ static void skl_sagv_disable(struct intel_display *display)
>  
>  	drm_dbg_kms(display->drm, "Disabling SAGV\n");
>  	/* bspec says to keep retrying for at least 1 ms */
> -	ret = skl_pcode_request(&i915->uncore, GEN9_PCODE_SAGV_CONTROL,
> -				GEN9_SAGV_DISABLE,
> -				GEN9_SAGV_IS_DISABLED, GEN9_SAGV_IS_DISABLED,
> -				1);
> +	ret = intel_pcode_request(display->drm, GEN9_PCODE_SAGV_CONTROL,
> +				  GEN9_SAGV_DISABLE,
> +				  GEN9_SAGV_IS_DISABLED, GEN9_SAGV_IS_DISABLED, 1);
>  	/*
>  	 * Some skl systems, pre-release machines in particular,
>  	 * don't actually have SAGV.
> @@ -3277,7 +3274,6 @@ static void mtl_read_wm_latency(struct intel_display *display, u16 wm[])
>  
>  static void skl_read_wm_latency(struct intel_display *display, u16 wm[])
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	int num_levels = display->wm.num_levels;
>  	int read_latency = DISPLAY_VER(display) >= 12 ? 3 : 2;
>  	int mult = display->platform.dg2 ? 2 : 1;
> @@ -3286,7 +3282,7 @@ static void skl_read_wm_latency(struct intel_display *display, u16 wm[])
>  
>  	/* read the first set of memory latencies[0:3] */
>  	val = 0; /* data0 to be programmed to 0 for first set */
> -	ret = snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
> +	ret = intel_pcode_read(display->drm, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
>  	if (ret) {
>  		drm_err(display->drm, "SKL Mailbox read error = %d\n", ret);
>  		return;
> @@ -3299,7 +3295,7 @@ static void skl_read_wm_latency(struct intel_display *display, u16 wm[])
>  
>  	/* read the second set of memory latencies[4:7] */
>  	val = 1; /* data0 to be programmed to 1 for second set */
> -	ret = snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
> +	ret = intel_pcode_read(display->drm, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
>  	if (ret) {
>  		drm_err(display->drm, "SKL Mailbox read error = %d\n", ret);
>  		return;
> -- 
> 2.39.5
> 
