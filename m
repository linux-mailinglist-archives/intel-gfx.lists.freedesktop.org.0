Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADF48FF1FF
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:15:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D634710EA0C;
	Thu,  6 Jun 2024 16:15:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DM5bEBwq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E13810EA0E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690552; x=1749226552;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OkJ0EIcGb4fiYSdRJ7wfERS9/weh96MGKzfy4UgYyUg=;
 b=DM5bEBwqeb065E1F7tQf9cFm3kQQ7F8kzX7Gen7FCZ4kZeL+0XDnfqME
 /93cUd4tdFN3FrA7QJWu8mz2ecnEfMsJDHnSdlSyyh92VDu9wgwrjcRxB
 WBrN4nBu+tFeI701DdNLdTOKSQ6/0RGZpeYhmZtKjSuxcG3ToLSsUIN1J
 ws7UW7PvBv8pBd0trE7UF06MjlC/B/KbZY9KaignqGxQPolgBEdSIE1hj
 3Om9BFzakg8eYQoyQjPHiFLYpMcLbaYO7IGqex0OARBF7h6+08DPbMxD9
 B9hK3MGO76GPJq/Low9GL66S68jbNK0VG0bNyLlviHJxBLFYneT9I0eQn A==;
X-CSE-ConnectionGUID: X19QAikXTJC/eTsNemPYBw==
X-CSE-MsgGUID: PK17tO6MTUKmQoYcBaUpqA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14214922"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14214922"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:15:52 -0700
X-CSE-ConnectionGUID: 8c1MEifWRq23WsFIEupatA==
X-CSE-MsgGUID: P6vOtUqvRgGPtaSFmmLtXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37950395"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:15:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:15:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:15:50 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:15:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BEO3hYHJsiiGyt0SsepXlCCP28L9HG1/M8FUPnEiwtgg1kACwL9Dn68CjiAGoHc8kmHMCy7bWJIZvVY6jqJyeVPX352dWuYTUz7aP6xHsnjIlwqLrFMD85WrjKI1rcjnAr7mFuulPO6f6id1dHVuKBm7RkLvh23lgg+eVZO7M0eVwtwrm5UIix1qpZSO9FapncaSo9lb7bmIcTbNTvYZ4LJjhMmGbDqzCsLuIF2/+fkFjK4ohQyrOSBUYicRp5ZPR9x5n+h5ME7QUuzpB90R+Nx8kzx5AG4gIurA1bTl6JiZZ5SfEchbvzGi73MUXWs7z0lmICEvsoBEDG0TBulWvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cv6EpOvsKvWSj0XHQM/+Pfx6iSjkQPQkHSTRHXlCYU8=;
 b=iHvxEeKWGAXoYsEzO764Oj9Xmc6fbQTcIyMsxRRrTxxHjDBikO10qjHZSqTnjSgpaW+q63DhZ8uTV5GJsnYZH/UONOer3Dn9B5Zda7UZEibjuAcOpHfPOHXaYqlDjd9vGfmeLw2Zw3OgzRcVFlCmvSfUpuxkXL9JP+yNuvFxlWxHBgqSR9wQ/a0zwGZbSDaP/Ez8HsSscRMrpcjXJpDAVr5guZCaavsMYdNSxlOpHXBojhM0rBpxmBMEFKz4OlPTxZgQ4xYnbu8nyItW4Ovl8jPBqYIEAyIzrOT3DKTS9fnKyKy/bvuYvTSlw21eKQ5lmv0rVL4ZAN1daXRmcJgRew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB7500.namprd11.prod.outlook.com (2603:10b6:510:275::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.24; Thu, 6 Jun
 2024 16:15:48 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:15:48 +0000
Date: Thu, 6 Jun 2024 12:15:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 63/65] drm/i915: pass dev_priv explicitly to TRANS_MSA_MISC
Message-ID: <ZmHgsTwHaEtdtov7@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <1a9c0a0f8c5bba31138f0c7aebdf839b9b30298c.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1a9c0a0f8c5bba31138f0c7aebdf839b9b30298c.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR17CA0046.namprd17.prod.outlook.com
 (2603:10b6:a03:167::23) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB7500:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a418fbf-b0af-4d11-fe6c-08dc8643ed49
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?txbJ0S2lJ0eXVfeP46AQ7BDuDP/7vMcUkIIODdZxk/LZwwNZ4od6phX3ifuh?=
 =?us-ascii?Q?g8zNn7Kqo6+6j4AsjyzJ9rOML3iSrgEQFYZ+hgupMqV4qBO6qhx0ctlOlMNJ?=
 =?us-ascii?Q?fWRg7WpavFI1Dq/1RDnZwrQYU/qzC1/mWOJjlwCzJHuYx7GNyW1wgVc4jGsZ?=
 =?us-ascii?Q?X0mR5xxvqiHMlz3dzhsxcwz/0TdytXpWExIl5U0sKUwVZ6S6n9gv27ROSo4i?=
 =?us-ascii?Q?tt2R9RlcRk3xqWByRaXn9KfnZXeXFDPfrgSiYov0mTjV2ok3wEuob9CPA10W?=
 =?us-ascii?Q?d+Sl5DMel4dKfL1LO1talEPyWbDD8TaP++9Yji9nspn6miWXF6fwhB2KJncQ?=
 =?us-ascii?Q?UBAVVAAgJwCIDy6Z7pTXx9ReBOEQBsL6l4PAryt023lpgVQEUKs0SPRhTEKF?=
 =?us-ascii?Q?wB0qmkBrkigoZzCnUQF8cHrBQ643iygksUyonAu6J0au8KSPh5AGXJIHLITb?=
 =?us-ascii?Q?8b7gfyz1FeCz0WXhGZbSe8k+/SVtET3PwnwaoSKL3Bgjzh7BY5OHkTlrBBzI?=
 =?us-ascii?Q?Vg6qS3jKAEtVCzQKTbHAMjAolnmAJ80cwzPdKg4L6eJLDTvLh2fStBUkqSwR?=
 =?us-ascii?Q?ndy+IzBCXC69qrjOG9YUr5rDaZ85u8nexF63t9veY+WGlbpHUIFl+ORB41SM?=
 =?us-ascii?Q?GgcpKb0YtKiA/2CsCgQRq5IvSWjWnhSvgBE2+9MkxSkEYtjjxzOmCWdExRrO?=
 =?us-ascii?Q?/6Gm+le3NzBbDDAsjt6Bl4L4wm5sQDYpMELfnIPWioBrGEfq8Y3w6z4WaFTJ?=
 =?us-ascii?Q?yNtdIl64wF3uDC/6WUBOxe6mcLIwcoxPL7g7rKQ/jHlDfvc++hj+6yMvm0fr?=
 =?us-ascii?Q?WR7BKmlk8fbR/GeErn+DitJ44olhni/simhCFYUJpv6+jHyWxp+Kd3ActxDm?=
 =?us-ascii?Q?nZaA9KtOcmfYjR5Bofojg/OCQ2iCYD6O+eel4vcC9jmGMapCRVNuKWE7tJoY?=
 =?us-ascii?Q?6oONC5h787WV3QPoKi/hDMEPrrkWkFkDGZ5qtYbsf0ZCAlHBsOBbc0z0ALbc?=
 =?us-ascii?Q?IuPOovGEOluwd6sNEjn2odoPtn4d9Ig9jQ89xXkGCsPEdZBQUA5T7BKYilol?=
 =?us-ascii?Q?mcx2C3g1yoEGPWJJtTYW/vHZqLEbiR0dTOCo/qz/igVIIJpSNl4r4zu5Bopc?=
 =?us-ascii?Q?7IgzdraL1ldydS80jZ/YplT/liKq/OW/hvOXkn/qJUgb99i7i/VHSPuTZ6p6?=
 =?us-ascii?Q?7/IC+c2zfkmJD5WuF0x2cX+UcgvzvCGWEU8xGlsw3pS3vX6V4i+xDxJ23mCJ?=
 =?us-ascii?Q?EFi5st6J65/0NR2LOo62cmRBr+3h5Rn/vPZs/DqoD5ZQfyk81+9zL31IJe4l?=
 =?us-ascii?Q?03kedPEfbHw28sfBbOoCOBeH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0FPy+eD4g4hTx+bk3DCa2kMHK7Qi+X1/ZHL5nBuNRog/NLY3Sd36Ww36jGGL?=
 =?us-ascii?Q?wvjiofOIlHElIhBx8JkRjuuzLGfqQHyhO/oGEQ7ZDb4JpaXa2y1W3jO+hG2O?=
 =?us-ascii?Q?SwfAsnMPUzwYczeOTT8YVifVyP9oqKRbVO038O5R95Dii4YvcfO8wJnMyfBl?=
 =?us-ascii?Q?lf7KtcqGk8Ps8tX9EMS7z+/NjHbJ7von4kgYaYt6hn7N/VZSNpddy1LOh2+u?=
 =?us-ascii?Q?lWvM3M9EMImGE+cbQBesrqh3FNufT6KtRHOEm6tFY5mov2IN9tuUo+NuIpVs?=
 =?us-ascii?Q?J3NZe/UICVYQlYuS7UrYoA0MBNYBrwssmXDWcqbPleil9n1ZFIENdirxSJHA?=
 =?us-ascii?Q?IVvPiD0hitfa7yT74MOfFj7WaZLWPpgUmepdzSlfmpvkIPpv7nibdVmxc2Oe?=
 =?us-ascii?Q?6EPpfNvZQxpFttZKdTVYSwBPefYq/w6iej30S+rlSarLRBUohl5qNaSP5HRm?=
 =?us-ascii?Q?f4A8rHHwnnzFF/Zfi0Tths2h+pW3bGAodL+qRQVfx0rsiQ9/3SwUQj6YxVFw?=
 =?us-ascii?Q?Tl1K0fdmAcSRakFnMHLpdIIIm+C19giam6HnLjMJAoQDTlzljHB9NwmMaabv?=
 =?us-ascii?Q?MkU2BGH6EU7gFl++PLUNdGQXMTgBCbBMukfrcNjaP/CuxakmUSmNYY2ZA9sA?=
 =?us-ascii?Q?6rA3MC6oNBNxMJ7EPgxAVo7BUiRTGmnLFphZV4Hxjd0HKgERdVA+09qYqDEm?=
 =?us-ascii?Q?xOBw6NWgi+Z4YLF2C/LzqhfmIbI8oznoMWJpIMcgWd2+qkAsUaf0DKpGf/p0?=
 =?us-ascii?Q?iazidIbywWvFNBXR6lxIrgkF7SHL9FxS+kzhtQdZ10V2KsN0DxLNNCTWz2NM?=
 =?us-ascii?Q?6TkyZ8nuPu+wck5DnbPhpmYO57/pcWhgA7cP47bn3apIAcoWShpLi7reqWGw?=
 =?us-ascii?Q?H/0oQXMX7N5/NDmwsdBrDFSIpC3ua1nRbd3tqxTfd5dmL54xrpRJgR+M6FzM?=
 =?us-ascii?Q?jv4zpyWT0XjGgovpfXgoK7TtI6RvMfb7Okpn99GE6YKqWSsQWxCzSK9c9dOU?=
 =?us-ascii?Q?r1KOEWpTDHmWDTv/TZcpKmVaSqSO+mtKCZsYoZ93VffgDspDCnD9pHbxSEwj?=
 =?us-ascii?Q?64U8OyyZjeCGVYFJX+octVKl6+R9U2YmNdirbth2Of2WxGdtyy8N7cyaNHe5?=
 =?us-ascii?Q?yvnlT9rkRe6zZyYrxmvkXA6JvK6auXDxdw/g7R4154fIko/eALAdWMjfH2kq?=
 =?us-ascii?Q?csBnxIaSV7WWCntjtfImocSBB1tXWj/18mqb7tT4z2W0WMrwx5+lKL5d5OJW?=
 =?us-ascii?Q?ZjopZ756HtUFtqlVPWwbVIA7hkhSDxJ1vgZYYZEd1FJyIRROXufRVj88zrz7?=
 =?us-ascii?Q?U9Ji05z2xutYP8v4WNSje9hkAzm0RKll77/Qy2rgsNV4CguyB61X32aZhq0h?=
 =?us-ascii?Q?LNRDMQCQd0nGgzKk2BUQTpWGPLjLKnBc0yrKEllvB812GMOcXSFsfAK5eEZg?=
 =?us-ascii?Q?i3reklnBmL9uZ1bcDlojpgfY3q5eeD+sBQUDI090/kRINi1x0m1YW0dP3NQS?=
 =?us-ascii?Q?VB3nUmn0uBtAzeMdcsFPBE+Jsell8Oow2L3T3VFxRdj04aChp0Tw3E/lhA4f?=
 =?us-ascii?Q?W8AsJKXsMrTnBRxQQXKPikdXJoUmVmkvo0wYxY5o?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a418fbf-b0af-4d11-fe6c-08dc8643ed49
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:15:48.3379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TkkUkklyeAwh2GFjqyoWVAl4CmE0O7I3CrKiczrfpFjg7IsksNxMxBYm1ltAvLvcQmrKoXPIpvr/aF+zue58vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7500
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

On Tue, Jun 04, 2024 at 06:26:21PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_MSA_MISC register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 3 ++-
>  drivers/gpu/drm/i915/i915_reg.h          | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 368cd1312d8a..327f748d3774 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -440,7 +440,8 @@ void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
>  	if (intel_dp_needs_vsc_sdp(crtc_state, conn_state))
>  		temp |= DP_MSA_MISC_COLOR_VSC_SDP;
>  
> -	intel_de_write(dev_priv, TRANS_MSA_MISC(cpu_transcoder), temp);
> +	intel_de_write(dev_priv, TRANS_MSA_MISC(dev_priv, cpu_transcoder),
> +		       temp);
>  }
>  
>  static u32 bdw_trans_port_sync_master_select(enum transcoder master_transcoder)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 3de6e4f54bc0..3fcebccb9f3c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4229,7 +4229,7 @@ enum skl_power_gate {
>  #define _TRANSB_MSA_MISC		0x61410
>  #define _TRANSC_MSA_MISC		0x62410
>  #define _TRANS_EDP_MSA_MISC		0x6f410
> -#define TRANS_MSA_MISC(tran) _MMIO_TRANS2(dev_priv, tran, _TRANSA_MSA_MISC)
> +#define TRANS_MSA_MISC(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _TRANSA_MSA_MISC)
>  /* See DP_MSA_MISC_* for the bit definitions */
>  
>  #define _TRANS_A_SET_CONTEXT_LATENCY		0x6007C
> -- 
> 2.39.2
> 
