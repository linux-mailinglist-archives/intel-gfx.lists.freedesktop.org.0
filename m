Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 683058AD642
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 23:00:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE8E112D8A;
	Mon, 22 Apr 2024 21:00:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R2ngjLIb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6243112D8D
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 21:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713819625; x=1745355625;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GrfecW/+tT8hF25pXVQftuks7qXdLMywnfTuYymKUaI=;
 b=R2ngjLIbTgRLtJOAJHrB1onb+TA+vkScRsMGwOlqXEeuJwElXkHnMkq6
 FJjq0TSnYuHH0Pp3NdprAmaQPldGsYsC4wLAuagytnMLrR3BrJeHtXR2w
 DUDIKVXuY8kUoXtjoH8KK1xtkxhvt2adOlLbUXj6RH/iK7lpq7fklzKz7
 6NkExRzDSjVlnMijlroTkWVrkHombs6cjQ99sHkV4QdYZnz4lrJEOirl6
 MBm8hfbRx/i+Kkzf5ZzojulY6WGU08+F/DtM5jcavjvQbJaLO2eRjYiqG
 J6Y25R1t3Q8nxxTiyKVRB/+G55NLo42kjnzasJlyLdI7+3gGzZJBz5i7y w==;
X-CSE-ConnectionGUID: o1I8pb1XS3+Ba/Kp2slyEA==
X-CSE-MsgGUID: J+HIcoqHSY+JZILwc9nB4A==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="31870249"
X-IronPort-AV: E=Sophos;i="6.07,221,1708416000"; d="scan'208";a="31870249"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 14:00:24 -0700
X-CSE-ConnectionGUID: Xk76RHpeR8OwwyQEYeu5PQ==
X-CSE-MsgGUID: y8i7oCYhS2ysnjG3uSXRwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,221,1708416000"; d="scan'208";a="61577795"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 14:00:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 14:00:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 14:00:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 14:00:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mD9SjJNoUNRb/+rfg4EUbgYn0zlCPdyeMWPCFrSG3Jk5au8rNrKqgfyFxQMazpFfeF5seTIgBf3cjEWQQ9k2xfhJ2NipQTOiM0DPny41t7Y1Gc2WWLdW9T89Q6/QeyEHfw0mqdCT7VkBRUs/Zy24flJdwHeVhreVGhav2N/FNJZ/EcZte/KhnLEhGg4xTijx7+nRmQdFG0QW+BewotYFgvg6VKbDac1eKQLU6owcK9oVnK4dPbE12VXF1vwgrDwOv/7qxgk99LC4c20kPWGX6b9o7vU6eASUc+XLkMVIJB+hnH8IiHJj5FpWVStnuryHmz0A5/Cf9pQQT5wJWusW/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C6S321SvYD1kR+drs0hHVYlbV+Fg1Mt5Mucr4oFN0N8=;
 b=EVt/YpzkvkoTngLhoT9u3KQk/a456dSp+GJRHxE1wmz9/3Q2PZL237897hblGdyqyWjwmwlyY8phMvPCzJGgG9gTu3nMGzYr/3+iQG9eVdQ4VNWSPRSMmYjfqTv3YHoPZGuaH92cTd5Xb5KovKQPN4kMgkPoGGsGH4rDM4VQLiZ8V1D35Cjf//6rirWo0kEaei/IxRHGin4+9G4ziaAzh1LpCK5iF3bv/O0KOcRZ1nnyKrWVUahKW/dVyPqwBOxnX8vzFbzDtCnam71I3p/rBhewGFJ6edYCUKuBiS8F1MaO292xFjFW8rVFQCrNgz2qRyREDCbKQFDqu2vGUeEjiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8522.namprd11.prod.outlook.com (2603:10b6:806:3b1::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.20; Mon, 22 Apr
 2024 21:00:22 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.018; Mon, 22 Apr 2024
 21:00:22 +0000
Date: Mon, 22 Apr 2024 17:00:18 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/4] drm/i915/dsi: add VLV_ prefix to VLV only
 register macros
Message-ID: <ZibP4jBo7fc7veKW@intel.com>
References: <cover.1713520813.git.jani.nikula@intel.com>
 <7e101167c52746748dbff739bc9247a664ca2840.1713520813.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7e101167c52746748dbff739bc9247a664ca2840.1713520813.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0055.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8522:EE_
X-MS-Office365-Filtering-Correlation-Id: 956e9832-05a7-45ee-16f2-08dc630f3947
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sDQf2ESTOVY130A0qPjOIcL07e2Wgsu4TY+i33ihsY6xgguc4s0toBGPzAHF?=
 =?us-ascii?Q?vL9fwyF9o/BYKn0N1YnBBV5LYxQFasT1ON4yPs49IRzNtbPKfDlt0rlbH4YR?=
 =?us-ascii?Q?Ktnv47uFRu/bvJKhdTBdhWsox3ODG6K04c+x11h6RcW4MABmQVU4Yu1oFPaX?=
 =?us-ascii?Q?BUmi/pWACxWH/R8o1InA4CUaxIeG1IzwjKQbRVqCkdq6g71qJCDTi/0WEtjt?=
 =?us-ascii?Q?zW8TjXL5bFRDSC6GGpAp/w2/HsbdTKrfm94cn0WlsV2bDIINEgRXOjs7Tlvg?=
 =?us-ascii?Q?0KWYowRGMiT8PppZbDqJ9YN1BiqGNO+jW1tXmbq8gZMXTfPoW22vLvmd+3hp?=
 =?us-ascii?Q?pLVhvKsbFRmmdaRqLT/SVyG/e7g0vhrZy5NRRo4Y6STkSRHO+b6CFK9LF0NA?=
 =?us-ascii?Q?KAeAjlE4aROkI1X0gPdM/d7mCwl5nB6S97SVDCvFRtj8HQ5UHaQZBkM//klR?=
 =?us-ascii?Q?MgA448iWTTsfn2N87MjxESD/mNn6FFKmWo8c3MxIWViaTw7eA7QLHXl8WACY?=
 =?us-ascii?Q?DF9VyCf7VrHvbEgZkLDMgj5XeNUAGLdSzomxSlcvR7S+EHawv0hR1/VdqJAO?=
 =?us-ascii?Q?YX/bm2zAsRxQD8qLuYj2GaPwkNtPRqdF0+T0o1U8bfKqt18mQbTeNZGGC88R?=
 =?us-ascii?Q?MyGTK8+pCkaN862zK9qPJmmzcFH+DGzGmebtHrA0p/8HZnhzW8TsNLz3tic1?=
 =?us-ascii?Q?ePMbKCazG6ezPY3eDgNyi7htSIQ/OZDNrhXBx76mWwT7hu1jUDnVMuHyfkbD?=
 =?us-ascii?Q?9MoEP09S+lq4bXS4fvpdnZhFXssb9LoDXAyCV5XlhqfcjACL9VUG1T6Kl5qp?=
 =?us-ascii?Q?7zsVwSTgCYHKmHQX+YJRta3nKFHXTm3/am1EU2ShIdDNyH+cI7cYgUCXSF8f?=
 =?us-ascii?Q?OU3wxzblDGh8rPNRuhkrCEvQqg8wihsyhzmi9t8sKcliTwZGK3ijAbGyLHvT?=
 =?us-ascii?Q?9dApHPH7dpaUtypHKKOWcvK+cqM7J94dnDD5z01/amiGvuPxuUiSq3AFYA2B?=
 =?us-ascii?Q?gcePwgjrXDTl+H0QssCSXjGQWMLbO/1G3s+UWMbwOxco68kthwmAkmrbkJ9W?=
 =?us-ascii?Q?5V1E1N82QiY/B8bMeVCHoMjYcCrmBhCvCLM6pl6kPpho8xOz3uG1I0DW4YEQ?=
 =?us-ascii?Q?FJvlChpOEzQczwXBTuomGeEIAXSGetTtmX+IAPkhLA7whOnUgw1GEeOvuAFq?=
 =?us-ascii?Q?n7BH/NMYmpg0A/00ehIQisqVf3ubIScr9VfzsXi77jixm+2w9e9teKWfjSPs?=
 =?us-ascii?Q?+lK2gBmLNUu3PhogGLRNPvA67L+12jFUDSPdWu1NUA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YWtaH1pnw6gMurekJe7q2RQpdgM3g3b1S0DH5f1p5cPzdoSuorZHc3wA9Rhz?=
 =?us-ascii?Q?CD+AVK/qhOTo8idFPekhc//U3X92/ytQE6n+xObfl3H366ZmR0xmJO/pyPVe?=
 =?us-ascii?Q?NpPPLh1/LPIuzT1jH2M1iwNzSCOMO1SYp4Ypo/i3GcKCLdAhjroQ7RozSK5M?=
 =?us-ascii?Q?EtEz6Lnsf2CPUwtspwkoPmgMVNfSNH+QPq2kpLMCRvs9lCbeUzqlvXuDcViC?=
 =?us-ascii?Q?GH5Wn5qSWQ5c+HI05iMmtK8qW+92bid18xTutisLQ51c7zRoY0Yno96vpcid?=
 =?us-ascii?Q?UMg2f919CrEAUvfC87nnznuMx1YAdX9hhFtbP6xlyTmQAVWHvVyca4/hx/dC?=
 =?us-ascii?Q?3BRnwLkolQILczDDceZpDPSmzRiYgKXlN40kJY03LBPFW7rkM7AdsSAtMjcA?=
 =?us-ascii?Q?KA1mJc6++wD9kcL+bjubq5gPGdPMRhuyu9/DcuZ3Vl/H0QRg64/y8PpD8dJ8?=
 =?us-ascii?Q?Mb8ds4klylLh5GvcyWINzxyldpgSX6dHp3FhPZJ8MqXYkNGizy37zZmT0aEo?=
 =?us-ascii?Q?kj7hGnflBWSxgzAq2Tf1BGOYuGdqtBiAC7uAwXNP2yRue9EyItbU/69cKSTu?=
 =?us-ascii?Q?xBX9RXIalzu0ARPCh2YAWm/1ZAUoyn1v2iuSM9tfaGw/OKITlxwLewAZGu6P?=
 =?us-ascii?Q?UoDzbkyw6SDNmsPD4zoNQF8tFIyuVYrfI+hPKdRrVhkPv7r2Ty1/lNaOaE8S?=
 =?us-ascii?Q?u7W0b10S4nBCKNVS65R4dMKma/ItZ4Pt5Bt6TURcnE/NSkA9j5Su80f6lrHv?=
 =?us-ascii?Q?dn+rV97VY8jq5oTe/wl4aRw3mVroid8MZ5W1QcE31r8Gbv84bopTMv13+7ts?=
 =?us-ascii?Q?3HtITyN6eA4Ap66L0cHGKwEVi974uZyxbCPgIFP6wTNhvytJhzMtiCrKDFGc?=
 =?us-ascii?Q?mre8KlsM31uRmbDsrGbwwvuAEvny5+vw1Isrouv7TNrUhtNy/mFZC2/sweyG?=
 =?us-ascii?Q?Dp11uVGJ+fWn39dAm5crJM70EfgGTpJ+8xusWn2ldNMweZtx+TBO2wtwQF0i?=
 =?us-ascii?Q?PJhUp17AkBHobZFvQQEHN6sWi3eRwGrr/+sRaHEIyCHTuo0vwIw8kK3NTkMm?=
 =?us-ascii?Q?R4YpYUNqjNV84y8A0QaJSgEOIn73ElNoQlWlPRYmYgXl0DIePWbISHDfPlXi?=
 =?us-ascii?Q?a0EqvM/jjDtlHYwYDH5YyVclWP79Q9803rFarSMZsB32Xo96tWKCROwB4AMy?=
 =?us-ascii?Q?Aj/kwetSntyBU1jGWUvGDNMNJq6x52kV6rPMFUnmXK9CfsUEG8crtrrawjv6?=
 =?us-ascii?Q?lKqHvNamU2nDBM9f6pYLZeeAUUT+UnlS6g1O1MGqcAAWxpS2byRDMiBOzdca?=
 =?us-ascii?Q?mwPI7oWU3QXDtUYgJbYNa0lB98uWJVQx+IbCn5cO9SN9OzaBS1a2o+lErp2J?=
 =?us-ascii?Q?XzVMTZRhrCOsxghDHtV3OH3oz2Hgd/G+SLoKiNAOrNrybkTssLcQAbWOX8XL?=
 =?us-ascii?Q?zghWPZr52/RIaJarnka9BVN6yMgYJbz3XpDoxQqiFUZpzjZvZf6zP1hEoLXN?=
 =?us-ascii?Q?GbPeu5aXsddvvHOHlBom18bhiCK8zH5zgvSwzclG2c2YCVhyycLyUi7AHEgz?=
 =?us-ascii?Q?8ByXY/x8Cg9CoXoNyvHpFWbdvIyuRB/sgOm4Q9ScPJW2YMC53EN3DQM1suKE?=
 =?us-ascii?Q?qQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 956e9832-05a7-45ee-16f2-08dc630f3947
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 21:00:22.0854 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c3fAsPIZtvQD1l+BWrNRaF7JLsVghi5uu57lg0DywppV14UEh3dtRxLvGgQWaFBZUdc8ehEB28iDtJkrIvQi1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8522
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

On Fri, Apr 19, 2024 at 01:04:04PM +0300, Jani Nikula wrote:
> All the BXT specific macros have BXT_ prefix, do the same for VLV for
> consistency. This is helpful because the platform specific macros can
> use the static MIPI MMIO base rather than dynamic.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/vlv_dsi.c      | 6 +++---
>  drivers/gpu/drm/i915/display/vlv_dsi_regs.h | 4 ++--
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index 63f4af601d15..665247a2e834 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -481,7 +481,7 @@ static void vlv_dsi_device_ready(struct intel_encoder *encoder)
>  		 * Common bit for both MIPI Port A & MIPI Port C
>  		 * No similar bit in MIPI Port C reg
>  		 */
> -		intel_de_rmw(dev_priv, MIPI_PORT_CTRL(PORT_A), 0, LP_OUTPUT_HOLD);
> +		intel_de_rmw(dev_priv, VLV_MIPI_PORT_CTRL(PORT_A), 0, LP_OUTPUT_HOLD);
>  		usleep_range(1000, 1500);
>  
>  		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
> @@ -563,7 +563,7 @@ static void glk_dsi_clear_device_ready(struct intel_encoder *encoder)
>  static i915_reg_t port_ctrl_reg(struct drm_i915_private *i915, enum port port)
>  {
>  	return IS_GEMINILAKE(i915) || IS_BROXTON(i915) ?
> -		BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
> +		BXT_MIPI_PORT_CTRL(port) : VLV_MIPI_PORT_CTRL(port);
>  }
>  
>  static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
> @@ -576,7 +576,7 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		/* Common bit for both MIPI Port A & MIPI Port C on VLV/CHV */
>  		i915_reg_t port_ctrl = IS_BROXTON(dev_priv) ?
> -			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(PORT_A);
> +			BXT_MIPI_PORT_CTRL(port) : VLV_MIPI_PORT_CTRL(PORT_A);
>  
>  		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
>  			       DEVICE_READY | ULPS_STATE_ENTER);
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
> index b0cdaad7db9c..12a608a73720 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
> @@ -40,7 +40,7 @@
>  
>  #define _MIPIA_PORT_CTRL			(VLV_DISPLAY_BASE + 0x61190)
>  #define _MIPIC_PORT_CTRL			(VLV_DISPLAY_BASE + 0x61700)
> -#define MIPI_PORT_CTRL(port)	_MMIO_MIPI(port, _MIPIA_PORT_CTRL, _MIPIC_PORT_CTRL)
> +#define VLV_MIPI_PORT_CTRL(port)	_MMIO_MIPI(port, _MIPIA_PORT_CTRL, _MIPIC_PORT_CTRL)
>  
>   /* BXT port control */
>  #define _BXT_MIPIA_PORT_CTRL				0x6B0C0
> @@ -89,7 +89,7 @@
>  
>  #define _MIPIA_TEARING_CTRL			(VLV_DISPLAY_BASE + 0x61194)
>  #define _MIPIC_TEARING_CTRL			(VLV_DISPLAY_BASE + 0x61704)
> -#define MIPI_TEARING_CTRL(port)			_MMIO_MIPI(port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)
> +#define VLV_MIPI_TEARING_CTRL(port)		_MMIO_MIPI(port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)
>  #define  TEARING_EFFECT_DELAY_SHIFT			0
>  #define  TEARING_EFFECT_DELAY_MASK			(0xffff << 0)
>  
> -- 
> 2.39.2
> 
