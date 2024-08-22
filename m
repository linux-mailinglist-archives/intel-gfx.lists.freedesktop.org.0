Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA95995C069
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 23:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5982A10E104;
	Thu, 22 Aug 2024 21:46:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mGojFQpb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 648EB10E104;
 Thu, 22 Aug 2024 21:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724363165; x=1755899165;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lBdvm0x+JN9S/YKImtAbKaYNQhUtF1E4uzCzPZDiUbI=;
 b=mGojFQpbbMMpSlS6kT5XDj1R4yW4wW010MIHJF/qRvNoviYvPHWZYJMq
 v1ZQekbjT0XZywA51uktoXYZ8Ve9J2jL0XoY+dV9KEA/NCD3dA6XejZTg
 V6txHfH+VrD49B5QSugHIYoKG0gWCIggLtjcNScUQdv/a8CeQ+LNi7KBD
 L62gB3EzevgKWa7Lfxjgpd/HgBO5XyaiC9VdetOHBBjZD9g6vrhNcetB1
 Oi+KOzAWOx9RCkCTFRpd3DNTIqsgjDQRFdRfq8G5vzvp2a5mK1Ww/7hUl
 +zHwggTJN7R2wr2eMr4L+eRHl2GDPDbEbjhtFDKdoN3hSVOGCqIPNq2HA Q==;
X-CSE-ConnectionGUID: JIt2vWnWSoKqqYkCvnnjHw==
X-CSE-MsgGUID: 5TrmglAZT5aGW5qNNACGHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="26604467"
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="26604467"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 14:46:04 -0700
X-CSE-ConnectionGUID: 10AFqhB2S2OASDw+bBX4Vg==
X-CSE-MsgGUID: X4Y1c3dUT0KHeafyt9+Axw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="84772181"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 14:46:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 14:46:03 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 14:46:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 14:46:03 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 14:46:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fl2T5KF83BefNwL03NdDzL/OBDLnAg/+Iua+vCeRBf+Mvu/XP3Qxzj02lxi0nfr4M945q5ueJSIeKT+hWX01f0dVCEIMlHYTjvgp/DbbeAws+bykJiDQV1qcWxMfm0SzYtrbkmtKLmSL0W6nswCC4blnBFCUXfP+uDi6jUIRgy7YRnmWZEpBdGsixtX47tQnN/91ErpiZG4Qp4aKN57S3PhxAmXGEvBRi6Ke3KTdaDFxbhynk8lWHNAA220/TbURDjLU6MzC7lkjiBaVE8N3B9lL6aLnRWek4gYrzRJ16hAYbf7/WlFGB6AUYiAQ/ts0HKVr7zpZppHeQJ9i0c6qZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ap10DB13qoGedkI5Rstmx+ZDh9O7McJ81aH0sweH65E=;
 b=eEmuLSL1MvcJPQR1doiNH/Cyt3rMERhmU4rGWmPpWnpq7LSxdSjXNM5+sTVdc0SW42oHwh5tLH6b9Ii1dN/U8fdzfCVnqqv86L1gPUNCtVwXDKNoY2tGfAXW56d0312+bI+5WdWH/F6AvnfwmFofw4SiAHfnFueDP4cNRtFhk44QZUYIqsM4r9Ut+JgchNhCwaAB/mEJ9Z1IQ4Vk+Ubhsjb8ukVFiFRRf3gqnpRqOH8nA+bed/1ToYmshZmXdaklVAmEsEpcp0VBqIJ8UnejPNzOYZFoccCel6+x376hTpluIWLnn9uZTIwRqaKb4w5VMTDqg0W/ZbksqsZTlCic+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB7094.namprd11.prod.outlook.com (2603:10b6:510:216::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.19; Thu, 22 Aug
 2024 21:45:54 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 21:45:54 +0000
Date: Thu, 22 Aug 2024 17:45:50 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/7] drm/i915/tv: convert to struct intel_display
Message-ID: <ZsexjhT84wNn3TCN@intel.com>
References: <cover.1724342644.git.jani.nikula@intel.com>
 <04b1c8d095a52fb817876acdab4e9139d909f306.1724342644.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <04b1c8d095a52fb817876acdab4e9139d909f306.1724342644.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P223CA0009.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::14) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB7094:EE_
X-MS-Office365-Filtering-Correlation-Id: 94e1b598-7cfd-4675-56f9-08dcc2f3cc3d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eEMo4Os3a0fpw7OW+y350bsvjaPwc4clgsU6am33jaya//MTJeJEf3n3DFl/?=
 =?us-ascii?Q?qhfQh2WwPmA08kE/HkVLm0mB7KJF0hj0IG0LZ6HOPbhf8ynPbVGgSVK7Nk1z?=
 =?us-ascii?Q?brABi2O7UvO2DPYxWnM8MV1xQMcMqtnrujb29EI6Dqb9PAfZZwFt4ETioY6D?=
 =?us-ascii?Q?4i6S0hDDeKiScPSh9EuG1NdLj2YPV2AclhaX6UiSD8JaOZi6UX4v+LiS/866?=
 =?us-ascii?Q?EEPOxzQ9tU8LIZGi6oE8u9M7/ZcGE9prc3cUjARmw1q65TsDp0SoUv3RZRdG?=
 =?us-ascii?Q?K0l/4+k2XndeMwbS18QOkoc4j5FPCIqgQYcH3IHNfETi87Qvd5S0OERtdBk4?=
 =?us-ascii?Q?vxZkuWIf/+y/ETY0zyIPs12kR19XpZRiNMAPfQ3IAydAK3ZSOVzgm4OytGuT?=
 =?us-ascii?Q?etvtrhC0tDv8rmu9AyGNObXPDMli5bZu98//Px7YQ/yXsg524Hb2krptDUJ8?=
 =?us-ascii?Q?OdxRzYFfJVVhfqoNqyrJT4b9uhKz1Ku5AR3Kr7dxxvFpB9Lm2OTF/NYkAqsp?=
 =?us-ascii?Q?+HmHtm2x96g+EV+cOZhCHFgEpiAXvIfCp2fQec2iOnUUmYLAX7echUL+Io5X?=
 =?us-ascii?Q?kXtbhYZmu8RH9WgjQPiXwyURpRIC3dSmlug+Uv5VaXar7P9AAtV1qKjpsUbB?=
 =?us-ascii?Q?jtfRiOFqrckqb9CDh19tzHCuYh3t5Kc60/o2r9ylE8D9Qd414sZwja30v1kQ?=
 =?us-ascii?Q?zSLtZhpW/ucLDpdIeD3wO6BSOv2qrBBgd7e3lkuE/O3DDM5n1XLGy1NT6krA?=
 =?us-ascii?Q?gv369dxXycUCip/0wvJf7wu4CZwffG4RsY7FR192wFjx2CUyv3QKstcqGpGK?=
 =?us-ascii?Q?GVgUsmsK9LEpwKSyQJbtv+7/dd8WWX72imW/7K6j4AEziqrFUbssi7W1Tgbn?=
 =?us-ascii?Q?WCeoVa5x8UIjwOSUFLn7ibdmz8XmhNDEHB7kBjux8cUU5hIwA6hXRA9VmRO/?=
 =?us-ascii?Q?XKbiReAG3TopUmeSK+SYtyx55YqQyLuOHPnyIoB7/dRmnYNSDeb02NTI0EQC?=
 =?us-ascii?Q?KUS4PoQQRzuZapODb6y24XunbpmdVmrphU17OKSep2hZxZ407ntQquLjnMuo?=
 =?us-ascii?Q?Y2gceGscuDZaPwi9032q+eNoogCL1ZD+oE5MXzonhyiclQE5tBv3CeWe+kJY?=
 =?us-ascii?Q?tJl/U45HsNBFcTn3cvCXX5W1U+vO5SkeBIXhYKsQ58mCANVtmoapRnim/Bod?=
 =?us-ascii?Q?wxNzn7ojlWNm5Qn6ItnsoLWOkYNo3Gl5SovydlrOO3AJFpaY/qm7yZkzQn8v?=
 =?us-ascii?Q?qzg7WMSM6BwGgXdXwRTN6G8XITxw41XC0n5kdPQ1zr0fJLgPgG3FC2l8jUWl?=
 =?us-ascii?Q?PlXhLzhmf05hJyOa+rgoyecDdfrASCXp5HfBnHcKhLKrfw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GV8nbIVyAIdv/4vjfYn5Cridlx3e6UmMklAEQykJC963XmFMuLp1JcdABeJE?=
 =?us-ascii?Q?3bepm6gLn0zgsZVd3JbiEOaVD9e0KoaeOlbJBzYuSXnOo6025Co86sTFHSmJ?=
 =?us-ascii?Q?huQjTix7cg5U6eAN15LR7d2FRzq4TzfWmd7CZCj5b1izPzCUN56dkFcN1IOj?=
 =?us-ascii?Q?ThV9QDEQWxR3gOUGGPy3x77hWisdhClXhJ+KhvZDw1umIvPUhbbYV/M5V/En?=
 =?us-ascii?Q?RArBgmZkSYPSCEyeuyQWvP0lBtWkeLjx6S/SO4B+vaaU/+LpXhv5DXhfia6W?=
 =?us-ascii?Q?8nUb5d4yisYJEf4B1B95wOo4vMNM5RzK9S6IAX9/+iJAhxxyZVAnqpZ0cyVP?=
 =?us-ascii?Q?SmOWpsbeQZk5xBjN7pJrkJYws9+wjs86dgkPcHC7NQWHAR9oXuACsaO6F6sg?=
 =?us-ascii?Q?jE15Ka/81398cC0LT5WqHZwoDTwOFTraGO2cAvYA82MSXjwa8ZxicrjOwtOL?=
 =?us-ascii?Q?dlAXV1Q9pxAvk3Gzcx//mHtmBeCYni3hsKgKwCF715N1ELDRF1XI4bWIy6YB?=
 =?us-ascii?Q?u3xoNV/GljxPPjRHtwx4ajKkuNAOBfm3twwwYusWkAr6qqoWV0+YfE5TkoIN?=
 =?us-ascii?Q?gifme1KIeBNntCbMDFS5BkB4ZScc6igd48T2X12s22AbnIchKR458TXqJlDz?=
 =?us-ascii?Q?cukv7BuH5AyFJSFuEnP+b2ZmtCc6uxglz5x2IK74UFi7tsUsmrHZENZmk0Fy?=
 =?us-ascii?Q?uwYDNQW34T7jzoR32vlGcteLp2tOoXokhZ+07E/zN18THsUz9swnZNFfrqB0?=
 =?us-ascii?Q?1DpMVfYeBSSYyaNtOpgMiYEvy+U+Hb7OFuYZqQFDdISnSq1aho6cOVQOQWnb?=
 =?us-ascii?Q?P/SLR/LzkRwe274AZzI1GU4uH2+3fNHXNEZyE3h3BlMpd7eQImdZUpPb9oCy?=
 =?us-ascii?Q?nQG0Pb1z9tLa57S3aLkzHQlL+wV2k6cprCEX1awhCwuxqFHCE9Vd+TIphYUS?=
 =?us-ascii?Q?O/9xVziPQ3rGoTJ3FNS01plXyLp9fpZaQoAkXwwRt/WZEw94KHwg5xOyNg3w?=
 =?us-ascii?Q?DIYWM98lW/bQ0z/L15MbOxHfL6s+2iM4j8QAJEleczz2TgK0y5FgPEKFqig+?=
 =?us-ascii?Q?16nfsldffs0RofiJiDjwgUZrwWuAkCVVSpQVsgRVqsm7/hj9qc+64/atqN3B?=
 =?us-ascii?Q?dPynLamhwV0OMeP0Cuih5kgMyiB3VxJ7MNO9kZi960kqqEsCHxULu0MHXEyX?=
 =?us-ascii?Q?tg+EnLsI9kKw+abQU9K7uhNCKbTqwt0DWcP/uA01yqBZ4J5cbXNrPvz0ScU+?=
 =?us-ascii?Q?4BMPCRlX2t/tTFkXTo5S6fXL6lZnjWIleuDtHFLP7UjLMrMzF19lSjoNU9Yc?=
 =?us-ascii?Q?lBjogn8Gah3eOvLOel0RceLQQZ+XBIuzQJguMthdGSKNXJVUZBNV8Hkp6zBm?=
 =?us-ascii?Q?zvjRyXgGQ71+866sonfF31YwQFGzaAiUSHdtpAI1eLB1OEq9YNnd/QvZkWez?=
 =?us-ascii?Q?dHE6CjQDXQrrs7koowbi12ePmB9/8SzUIC8cyWWyKKJ0maTVD3m0tzUQxDfE?=
 =?us-ascii?Q?FkysRZSRBA/yRfvIuLzhq1I0EghTg1ycl7HwXeoL1mWBSMqFvW7IRmGZMkrv?=
 =?us-ascii?Q?dGFMEY+DRbgXZbkjzaSrdGg1NMBihj7mBbUOCTly++pIlbqG9EhpULu5rJoa?=
 =?us-ascii?Q?Hw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94e1b598-7cfd-4675-56f9-08dcc2f3cc3d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 21:45:54.1904 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nhLMMPmpIwLMdAPmX3iC/iF3kwZCv4xsIjLwtJBjvtEw6URnJ+o45ZlO8UegOqQzmM/jmgXapGlJfrCIrbHhmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7094
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

On Thu, Aug 22, 2024 at 07:04:53PM +0300, Jani Nikula wrote:
> Going forward, struct intel_display shall replace struct
> drm_i915_private as the main display device data pointer type. Convert
> intel_tv.[ch] to struct intel_display.
> 
> Some stragglers are left behind where needed.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |   2 +-
>  drivers/gpu/drm/i915/display/intel_tv.c      | 203 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_tv.h      |   6 +-
>  3 files changed, 108 insertions(+), 103 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1042f65967ba..9049b9a1209d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7935,7 +7935,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  			g4x_dp_init(dev_priv, DP_D, PORT_D);
>  
>  		if (SUPPORTS_TV(dev_priv))
> -			intel_tv_init(dev_priv);
> +			intel_tv_init(display);
>  	} else if (DISPLAY_VER(dev_priv) == 2) {
>  		if (IS_I85X(dev_priv))
>  			intel_lvds_init(dev_priv);
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> index bfc43bda8532..581844d1db9a 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -914,8 +914,8 @@ static struct intel_tv *intel_attached_tv(struct intel_connector *connector)
>  static bool
>  intel_tv_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	u32 tmp = intel_de_read(dev_priv, TV_CTL);
> +	struct intel_display *display = to_intel_display(encoder);
> +	u32 tmp = intel_de_read(display, TV_CTL);
>  
>  	*pipe = (tmp & TV_ENC_PIPE_SEL_MASK) >> TV_ENC_PIPE_SEL_SHIFT;
>  
> @@ -928,13 +928,12 @@ intel_enable_tv(struct intel_atomic_state *state,
>  		const struct intel_crtc_state *pipe_config,
>  		const struct drm_connector_state *conn_state)
>  {
> -	struct drm_device *dev = encoder->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct intel_display *display = to_intel_display(state);
>  
>  	/* Prevents vblank waits from timing out in intel_tv_detect_type() */
>  	intel_crtc_wait_for_next_vblank(to_intel_crtc(pipe_config->uapi.crtc));
>  
> -	intel_de_rmw(dev_priv, TV_CTL, 0, TV_ENC_ENABLE);
> +	intel_de_rmw(display, TV_CTL, 0, TV_ENC_ENABLE);
>  }
>  
>  static void
> @@ -943,10 +942,9 @@ intel_disable_tv(struct intel_atomic_state *state,
>  		 const struct intel_crtc_state *old_crtc_state,
>  		 const struct drm_connector_state *old_conn_state)
>  {
> -	struct drm_device *dev = encoder->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct intel_display *display = to_intel_display(state);
>  
> -	intel_de_rmw(dev_priv, TV_CTL, TV_ENC_ENABLE, 0);
> +	intel_de_rmw(display, TV_CTL, TV_ENC_ENABLE, 0);
>  }
>  
>  static const struct tv_mode *intel_tv_mode_find(const struct drm_connector_state *conn_state)
> @@ -960,9 +958,10 @@ static enum drm_mode_status
>  intel_tv_mode_valid(struct drm_connector *connector,
>  		    struct drm_display_mode *mode)
>  {
> +	struct intel_display *display = to_intel_display(connector->dev);
>  	struct drm_i915_private *i915 = to_i915(connector->dev);
>  	const struct tv_mode *tv_mode = intel_tv_mode_find(connector->state);
> -	int max_dotclk = i915->display.cdclk.max_dotclk_freq;
> +	int max_dotclk = display->cdclk.max_dotclk_freq;
>  	enum drm_mode_status status;
>  
>  	status = intel_cpu_transcoder_mode_valid(i915, mode);
> @@ -1092,6 +1091,7 @@ static void
>  intel_tv_get_config(struct intel_encoder *encoder,
>  		    struct intel_crtc_state *pipe_config)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct drm_display_mode *adjusted_mode =
>  		&pipe_config->hw.adjusted_mode;
> @@ -1104,11 +1104,11 @@ intel_tv_get_config(struct intel_encoder *encoder,
>  
>  	pipe_config->output_types |= BIT(INTEL_OUTPUT_TVOUT);
>  
> -	tv_ctl = intel_de_read(dev_priv, TV_CTL);
> -	hctl1 = intel_de_read(dev_priv, TV_H_CTL_1);
> -	hctl3 = intel_de_read(dev_priv, TV_H_CTL_3);
> -	vctl1 = intel_de_read(dev_priv, TV_V_CTL_1);
> -	vctl2 = intel_de_read(dev_priv, TV_V_CTL_2);
> +	tv_ctl = intel_de_read(display, TV_CTL);
> +	hctl1 = intel_de_read(display, TV_H_CTL_1);
> +	hctl3 = intel_de_read(display, TV_H_CTL_3);
> +	vctl1 = intel_de_read(display, TV_V_CTL_1);
> +	vctl2 = intel_de_read(display, TV_V_CTL_2);
>  
>  	tv_mode.htotal = (hctl1 & TV_HTOTAL_MASK) >> TV_HTOTAL_SHIFT;
>  	tv_mode.hsync_end = (hctl1 & TV_HSYNC_END_MASK) >> TV_HSYNC_END_SHIFT;
> @@ -1143,17 +1143,17 @@ intel_tv_get_config(struct intel_encoder *encoder,
>  		break;
>  	}
>  
> -	tmp = intel_de_read(dev_priv, TV_WIN_POS);
> +	tmp = intel_de_read(display, TV_WIN_POS);
>  	xpos = tmp >> 16;
>  	ypos = tmp & 0xffff;
>  
> -	tmp = intel_de_read(dev_priv, TV_WIN_SIZE);
> +	tmp = intel_de_read(display, TV_WIN_SIZE);
>  	xsize = tmp >> 16;
>  	ysize = tmp & 0xffff;
>  
>  	intel_tv_mode_to_mode(&mode, &tv_mode, pipe_config->port_clock);
>  
> -	drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
> +	drm_dbg_kms(display->drm, "TV mode: " DRM_MODE_FMT "\n",
>  		    DRM_MODE_ARG(&mode));
>  
>  	intel_tv_scale_mode_horiz(&mode, hdisplay,
> @@ -1171,10 +1171,10 @@ intel_tv_get_config(struct intel_encoder *encoder,
>  			I915_MODE_FLAG_USE_SCANLINE_COUNTER;
>  }
>  
> -static bool intel_tv_source_too_wide(struct drm_i915_private *dev_priv,
> +static bool intel_tv_source_too_wide(struct intel_display *display,
>  				     int hdisplay)
>  {
> -	return DISPLAY_VER(dev_priv) == 3 && hdisplay > 1024;
> +	return DISPLAY_VER(display) == 3 && hdisplay > 1024;
>  }
>  
>  static bool intel_tv_vert_scaling(const struct drm_display_mode *tv_mode,
> @@ -1192,6 +1192,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
>  			struct intel_crtc_state *pipe_config,
>  			struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_atomic_state *state =
>  		to_intel_atomic_state(pipe_config->uapi.state);
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> @@ -1214,7 +1215,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
>  	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
> -	drm_dbg_kms(&dev_priv->drm, "forcing bpc to 8 for TV\n");
> +	drm_dbg_kms(display->drm, "forcing bpc to 8 for TV\n");
>  	pipe_config->pipe_bpp = 8*3;
>  
>  	pipe_config->port_clock = tv_mode->clock;
> @@ -1228,14 +1229,14 @@ intel_tv_compute_config(struct intel_encoder *encoder,
>  	intel_tv_mode_to_mode(adjusted_mode, tv_mode, pipe_config->port_clock);
>  	drm_mode_set_crtcinfo(adjusted_mode, 0);
>  
> -	if (intel_tv_source_too_wide(dev_priv, hdisplay) ||
> +	if (intel_tv_source_too_wide(display, hdisplay) ||
>  	    !intel_tv_vert_scaling(adjusted_mode, conn_state, vdisplay)) {
>  		int extra, top, bottom;
>  
>  		extra = adjusted_mode->crtc_vdisplay - vdisplay;
>  
>  		if (extra < 0) {
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(display->drm,
>  				    "No vertical scaling for >1024 pixel wide modes\n");
>  			return -EINVAL;
>  		}
> @@ -1269,7 +1270,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
>  		tv_conn_state->bypass_vfilter = false;
>  	}
>  
> -	drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
> +	drm_dbg_kms(display->drm, "TV mode: " DRM_MODE_FMT "\n",
>  		    DRM_MODE_ARG(adjusted_mode));
>  
>  	/*
> @@ -1355,7 +1356,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
>  }
>  
>  static void
> -set_tv_mode_timings(struct drm_i915_private *dev_priv,
> +set_tv_mode_timings(struct intel_display *display,
>  		    const struct tv_mode *tv_mode,
>  		    bool burst_ena)
>  {
> @@ -1401,32 +1402,32 @@ set_tv_mode_timings(struct drm_i915_private *dev_priv,
>  	vctl7 = (tv_mode->vburst_start_f4 << TV_VBURST_START_F4_SHIFT) |
>  		(tv_mode->vburst_end_f4 << TV_VBURST_END_F4_SHIFT);
>  
> -	intel_de_write(dev_priv, TV_H_CTL_1, hctl1);
> -	intel_de_write(dev_priv, TV_H_CTL_2, hctl2);
> -	intel_de_write(dev_priv, TV_H_CTL_3, hctl3);
> -	intel_de_write(dev_priv, TV_V_CTL_1, vctl1);
> -	intel_de_write(dev_priv, TV_V_CTL_2, vctl2);
> -	intel_de_write(dev_priv, TV_V_CTL_3, vctl3);
> -	intel_de_write(dev_priv, TV_V_CTL_4, vctl4);
> -	intel_de_write(dev_priv, TV_V_CTL_5, vctl5);
> -	intel_de_write(dev_priv, TV_V_CTL_6, vctl6);
> -	intel_de_write(dev_priv, TV_V_CTL_7, vctl7);
> +	intel_de_write(display, TV_H_CTL_1, hctl1);
> +	intel_de_write(display, TV_H_CTL_2, hctl2);
> +	intel_de_write(display, TV_H_CTL_3, hctl3);
> +	intel_de_write(display, TV_V_CTL_1, vctl1);
> +	intel_de_write(display, TV_V_CTL_2, vctl2);
> +	intel_de_write(display, TV_V_CTL_3, vctl3);
> +	intel_de_write(display, TV_V_CTL_4, vctl4);
> +	intel_de_write(display, TV_V_CTL_5, vctl5);
> +	intel_de_write(display, TV_V_CTL_6, vctl6);
> +	intel_de_write(display, TV_V_CTL_7, vctl7);
>  }
>  
> -static void set_color_conversion(struct drm_i915_private *dev_priv,
> +static void set_color_conversion(struct intel_display *display,
>  				 const struct color_conversion *color_conversion)
>  {
> -	intel_de_write(dev_priv, TV_CSC_Y,
> +	intel_de_write(display, TV_CSC_Y,
>  		       (color_conversion->ry << 16) | color_conversion->gy);
> -	intel_de_write(dev_priv, TV_CSC_Y2,
> +	intel_de_write(display, TV_CSC_Y2,
>  		       (color_conversion->by << 16) | color_conversion->ay);
> -	intel_de_write(dev_priv, TV_CSC_U,
> +	intel_de_write(display, TV_CSC_U,
>  		       (color_conversion->ru << 16) | color_conversion->gu);
> -	intel_de_write(dev_priv, TV_CSC_U2,
> +	intel_de_write(display, TV_CSC_U2,
>  		       (color_conversion->bu << 16) | color_conversion->au);
> -	intel_de_write(dev_priv, TV_CSC_V,
> +	intel_de_write(display, TV_CSC_V,
>  		       (color_conversion->rv << 16) | color_conversion->gv);
> -	intel_de_write(dev_priv, TV_CSC_V2,
> +	intel_de_write(display, TV_CSC_V2,
>  		       (color_conversion->bv << 16) | color_conversion->av);
>  }
>  
> @@ -1435,6 +1436,7 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
>  				const struct intel_crtc_state *pipe_config,
>  				const struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>  	struct intel_tv *intel_tv = enc_to_tv(encoder);
> @@ -1450,7 +1452,7 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
>  	int xpos, ypos;
>  	unsigned int xsize, ysize;
>  
> -	tv_ctl = intel_de_read(dev_priv, TV_CTL);
> +	tv_ctl = intel_de_read(display, TV_CTL);
>  	tv_ctl &= TV_CTL_SAVE;
>  
>  	switch (intel_tv->type) {
> @@ -1525,21 +1527,21 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
>  	if (IS_I915GM(dev_priv))
>  		tv_ctl |= TV_ENC_C0_FIX | TV_ENC_SDP_FIX;
>  
> -	set_tv_mode_timings(dev_priv, tv_mode, burst_ena);
> +	set_tv_mode_timings(display, tv_mode, burst_ena);
>  
> -	intel_de_write(dev_priv, TV_SC_CTL_1, scctl1);
> -	intel_de_write(dev_priv, TV_SC_CTL_2, scctl2);
> -	intel_de_write(dev_priv, TV_SC_CTL_3, scctl3);
> +	intel_de_write(display, TV_SC_CTL_1, scctl1);
> +	intel_de_write(display, TV_SC_CTL_2, scctl2);
> +	intel_de_write(display, TV_SC_CTL_3, scctl3);
>  
> -	set_color_conversion(dev_priv, color_conversion);
> +	set_color_conversion(display, color_conversion);
>  
> -	if (DISPLAY_VER(dev_priv) >= 4)
> -		intel_de_write(dev_priv, TV_CLR_KNOBS, 0x00404000);
> +	if (DISPLAY_VER(display) >= 4)
> +		intel_de_write(display, TV_CLR_KNOBS, 0x00404000);
>  	else
> -		intel_de_write(dev_priv, TV_CLR_KNOBS, 0x00606000);
> +		intel_de_write(display, TV_CLR_KNOBS, 0x00606000);
>  
>  	if (video_levels)
> -		intel_de_write(dev_priv, TV_CLR_LEVEL,
> +		intel_de_write(display, TV_CLR_LEVEL,
>  			       ((video_levels->black << TV_BLACK_LEVEL_SHIFT) | (video_levels->blank << TV_BLANK_LEVEL_SHIFT)));
>  
>  	assert_transcoder_disabled(dev_priv, pipe_config->cpu_transcoder);
> @@ -1548,7 +1550,7 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
>  	tv_filter_ctl = TV_AUTO_SCALE;
>  	if (tv_conn_state->bypass_vfilter)
>  		tv_filter_ctl |= TV_V_FILTER_BYPASS;
> -	intel_de_write(dev_priv, TV_FILTER_CTL_1, tv_filter_ctl);
> +	intel_de_write(display, TV_FILTER_CTL_1, tv_filter_ctl);
>  
>  	xsize = tv_mode->hblank_start - tv_mode->hblank_end;
>  	ysize = intel_tv_mode_vdisplay(tv_mode);
> @@ -1559,31 +1561,32 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
>  		  conn_state->tv.margins.right);
>  	ysize -= (tv_conn_state->margins.top +
>  		  tv_conn_state->margins.bottom);
> -	intel_de_write(dev_priv, TV_WIN_POS, (xpos << 16) | ypos);
> -	intel_de_write(dev_priv, TV_WIN_SIZE, (xsize << 16) | ysize);
> +	intel_de_write(display, TV_WIN_POS, (xpos << 16) | ypos);
> +	intel_de_write(display, TV_WIN_SIZE, (xsize << 16) | ysize);
>  
>  	j = 0;
>  	for (i = 0; i < 60; i++)
> -		intel_de_write(dev_priv, TV_H_LUMA(i),
> +		intel_de_write(display, TV_H_LUMA(i),
>  			       tv_mode->filter_table[j++]);
>  	for (i = 0; i < 60; i++)
> -		intel_de_write(dev_priv, TV_H_CHROMA(i),
> +		intel_de_write(display, TV_H_CHROMA(i),
>  			       tv_mode->filter_table[j++]);
>  	for (i = 0; i < 43; i++)
> -		intel_de_write(dev_priv, TV_V_LUMA(i),
> +		intel_de_write(display, TV_V_LUMA(i),
>  			       tv_mode->filter_table[j++]);
>  	for (i = 0; i < 43; i++)
> -		intel_de_write(dev_priv, TV_V_CHROMA(i),
> +		intel_de_write(display, TV_V_CHROMA(i),
>  			       tv_mode->filter_table[j++]);
> -	intel_de_write(dev_priv, TV_DAC,
> -		       intel_de_read(dev_priv, TV_DAC) & TV_DAC_SAVE);
> -	intel_de_write(dev_priv, TV_CTL, tv_ctl);
> +	intel_de_write(display, TV_DAC,
> +		       intel_de_read(display, TV_DAC) & TV_DAC_SAVE);
> +	intel_de_write(display, TV_CTL, tv_ctl);
>  }
>  
>  static int
>  intel_tv_detect_type(struct intel_tv *intel_tv,
>  		      struct drm_connector *connector)
>  {
> +	struct intel_display *display = to_intel_display(connector->dev);
>  	struct intel_crtc *crtc = to_intel_crtc(connector->state->crtc);
>  	struct drm_device *dev = connector->dev;
>  	struct drm_i915_private *dev_priv = to_i915(dev);
> @@ -1600,8 +1603,8 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
>  		spin_unlock_irq(&dev_priv->irq_lock);
>  	}
>  
> -	save_tv_dac = tv_dac = intel_de_read(dev_priv, TV_DAC);
> -	save_tv_ctl = tv_ctl = intel_de_read(dev_priv, TV_CTL);
> +	save_tv_dac = tv_dac = intel_de_read(display, TV_DAC);
> +	save_tv_ctl = tv_ctl = intel_de_read(display, TV_CTL);
>  
>  	/* Poll for TV detection */
>  	tv_ctl &= ~(TV_ENC_ENABLE | TV_ENC_PIPE_SEL_MASK | TV_TEST_MODE_MASK);
> @@ -1627,15 +1630,15 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
>  		tv_dac &= ~(TVDAC_STATE_CHG_EN | TVDAC_A_SENSE_CTL |
>  			    TVDAC_B_SENSE_CTL | TVDAC_C_SENSE_CTL);
>  
> -	intel_de_write(dev_priv, TV_CTL, tv_ctl);
> -	intel_de_write(dev_priv, TV_DAC, tv_dac);
> -	intel_de_posting_read(dev_priv, TV_DAC);
> +	intel_de_write(display, TV_CTL, tv_ctl);
> +	intel_de_write(display, TV_DAC, tv_dac);
> +	intel_de_posting_read(display, TV_DAC);
>  
>  	intel_crtc_wait_for_next_vblank(crtc);
>  
>  	type = -1;
> -	tv_dac = intel_de_read(dev_priv, TV_DAC);
> -	drm_dbg_kms(&dev_priv->drm, "TV detected: %x, %x\n", tv_ctl, tv_dac);
> +	tv_dac = intel_de_read(display, TV_DAC);
> +	drm_dbg_kms(display->drm, "TV detected: %x, %x\n", tv_ctl, tv_dac);
>  	/*
>  	 *  A B C
>  	 *  0 1 1 Composite
> @@ -1643,25 +1646,25 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
>  	 *  0 0 0 Component
>  	 */
>  	if ((tv_dac & TVDAC_SENSE_MASK) == (TVDAC_B_SENSE | TVDAC_C_SENSE)) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Detected Composite TV connection\n");
>  		type = DRM_MODE_CONNECTOR_Composite;
>  	} else if ((tv_dac & (TVDAC_A_SENSE|TVDAC_B_SENSE)) == TVDAC_A_SENSE) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Detected S-Video TV connection\n");
>  		type = DRM_MODE_CONNECTOR_SVIDEO;
>  	} else if ((tv_dac & TVDAC_SENSE_MASK) == 0) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Detected Component TV connection\n");
>  		type = DRM_MODE_CONNECTOR_Component;
>  	} else {
> -		drm_dbg_kms(&dev_priv->drm, "Unrecognised TV connection\n");
> +		drm_dbg_kms(display->drm, "Unrecognised TV connection\n");
>  		type = -1;
>  	}
>  
> -	intel_de_write(dev_priv, TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
> -	intel_de_write(dev_priv, TV_CTL, save_tv_ctl);
> -	intel_de_posting_read(dev_priv, TV_CTL);
> +	intel_de_write(display, TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
> +	intel_de_write(display, TV_CTL, save_tv_ctl);
> +	intel_de_posting_read(display, TV_CTL);
>  
>  	/* For unknown reasons the hw barfs if we don't do this vblank wait. */
>  	intel_crtc_wait_for_next_vblank(crtc);
> @@ -1711,12 +1714,13 @@ intel_tv_detect(struct drm_connector *connector,
>  		struct drm_modeset_acquire_ctx *ctx,
>  		bool force)
>  {
> +	struct intel_display *display = to_intel_display(connector->dev);
>  	struct drm_i915_private *i915 = to_i915(connector->dev);
>  	struct intel_tv *intel_tv = intel_attached_tv(to_intel_connector(connector));
>  	enum drm_connector_status status;
>  	int type;
>  
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] force=%d\n",
> +	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] force=%d\n",
>  		    connector->base.id, connector->name, force);
>  
>  	if (!intel_display_device_enabled(i915))
> @@ -1791,7 +1795,7 @@ intel_tv_set_mode_type(struct drm_display_mode *mode,
>  static int
>  intel_tv_get_modes(struct drm_connector *connector)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> +	struct intel_display *display = to_intel_display(connector->dev);
>  	const struct tv_mode *tv_mode = intel_tv_mode_find(connector->state);
>  	int i, count = 0;
>  
> @@ -1805,7 +1809,7 @@ intel_tv_get_modes(struct drm_connector *connector)
>  			continue;
>  
>  		/* no vertical scaling with wide sources on gen3 */
> -		if (DISPLAY_VER(dev_priv) == 3 && input->w > 1024 &&
> +		if (DISPLAY_VER(display) == 3 && input->w > 1024 &&
>  		    input->h > intel_tv_mode_vdisplay(tv_mode))
>  			continue;
>  
> @@ -1822,7 +1826,8 @@ intel_tv_get_modes(struct drm_connector *connector)
>  		 */
>  		intel_tv_mode_to_mode(mode, tv_mode, tv_mode->clock);
>  		if (count == 0) {
> -			drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
> +			drm_dbg_kms(display->drm,
> +				    "TV mode: " DRM_MODE_FMT "\n",
>  				    DRM_MODE_ARG(mode));
>  		}
>  		intel_tv_scale_mode_horiz(mode, input->w, 0, 0);
> @@ -1887,7 +1892,7 @@ static const struct drm_encoder_funcs intel_tv_enc_funcs = {
>  
>  static void intel_tv_add_properties(struct drm_connector *connector)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->dev);
> +	struct intel_display *display = to_intel_display(connector->dev);
>  	struct drm_connector_state *conn_state = connector->state;
>  	const char *tv_format_names[ARRAY_SIZE(tv_modes)];
>  	int i;
> @@ -1903,45 +1908,44 @@ static void intel_tv_add_properties(struct drm_connector *connector)
>  	/* Create TV properties then attach current values */
>  	for (i = 0; i < ARRAY_SIZE(tv_modes); i++) {
>  		/* 1080p50/1080p60 not supported on gen3 */
> -		if (DISPLAY_VER(i915) == 3 && tv_modes[i].oversample == 1)
> +		if (DISPLAY_VER(display) == 3 && tv_modes[i].oversample == 1)
>  			break;
>  
>  		tv_format_names[i] = tv_modes[i].name;
>  	}
> -	drm_mode_create_tv_properties_legacy(&i915->drm, i, tv_format_names);
> +	drm_mode_create_tv_properties_legacy(display->drm, i, tv_format_names);
>  
>  	drm_object_attach_property(&connector->base,
> -				   i915->drm.mode_config.legacy_tv_mode_property,
> +				   display->drm->mode_config.legacy_tv_mode_property,
>  				   conn_state->tv.legacy_mode);
>  	drm_object_attach_property(&connector->base,
> -				   i915->drm.mode_config.tv_left_margin_property,
> +				   display->drm->mode_config.tv_left_margin_property,
>  				   conn_state->tv.margins.left);
>  	drm_object_attach_property(&connector->base,
> -				   i915->drm.mode_config.tv_top_margin_property,
> +				   display->drm->mode_config.tv_top_margin_property,
>  				   conn_state->tv.margins.top);
>  	drm_object_attach_property(&connector->base,
> -				   i915->drm.mode_config.tv_right_margin_property,
> +				   display->drm->mode_config.tv_right_margin_property,
>  				   conn_state->tv.margins.right);
>  	drm_object_attach_property(&connector->base,
> -				   i915->drm.mode_config.tv_bottom_margin_property,
> +				   display->drm->mode_config.tv_bottom_margin_property,
>  				   conn_state->tv.margins.bottom);
>  }
>  
>  void
> -intel_tv_init(struct drm_i915_private *dev_priv)
> +intel_tv_init(struct intel_display *display)
>  {
> -	struct intel_display *display = &dev_priv->display;
>  	struct drm_connector *connector;
>  	struct intel_tv *intel_tv;
>  	struct intel_encoder *intel_encoder;
>  	struct intel_connector *intel_connector;
>  	u32 tv_dac_on, tv_dac_off, save_tv_dac;
>  
> -	if ((intel_de_read(dev_priv, TV_CTL) & TV_FUSE_STATE_MASK) == TV_FUSE_STATE_DISABLED)
> +	if ((intel_de_read(display, TV_CTL) & TV_FUSE_STATE_MASK) == TV_FUSE_STATE_DISABLED)
>  		return;
>  
>  	if (!intel_bios_is_tv_present(display)) {
> -		drm_dbg_kms(&dev_priv->drm, "Integrated TV is not present.\n");
> +		drm_dbg_kms(display->drm, "Integrated TV is not present.\n");
>  		return;
>  	}
>  
> @@ -1949,15 +1953,15 @@ intel_tv_init(struct drm_i915_private *dev_priv)
>  	 * Sanity check the TV output by checking to see if the
>  	 * DAC register holds a value
>  	 */
> -	save_tv_dac = intel_de_read(dev_priv, TV_DAC);
> +	save_tv_dac = intel_de_read(display, TV_DAC);
>  
> -	intel_de_write(dev_priv, TV_DAC, save_tv_dac | TVDAC_STATE_CHG_EN);
> -	tv_dac_on = intel_de_read(dev_priv, TV_DAC);
> +	intel_de_write(display, TV_DAC, save_tv_dac | TVDAC_STATE_CHG_EN);
> +	tv_dac_on = intel_de_read(display, TV_DAC);
>  
> -	intel_de_write(dev_priv, TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
> -	tv_dac_off = intel_de_read(dev_priv, TV_DAC);
> +	intel_de_write(display, TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
> +	tv_dac_off = intel_de_read(display, TV_DAC);
>  
> -	intel_de_write(dev_priv, TV_DAC, save_tv_dac);
> +	intel_de_write(display, TV_DAC, save_tv_dac);
>  
>  	/*
>  	 * If the register does not hold the state change enable
> @@ -1995,10 +1999,11 @@ intel_tv_init(struct drm_i915_private *dev_priv)
>  	intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
>  	intel_connector->base.polled = intel_connector->polled;
>  
> -	drm_connector_init(&dev_priv->drm, connector, &intel_tv_connector_funcs,
> +	drm_connector_init(display->drm, connector, &intel_tv_connector_funcs,
>  			   DRM_MODE_CONNECTOR_SVIDEO);
>  
> -	drm_encoder_init(&dev_priv->drm, &intel_encoder->base, &intel_tv_enc_funcs,
> +	drm_encoder_init(display->drm, &intel_encoder->base,
> +			 &intel_tv_enc_funcs,
>  			 DRM_MODE_ENCODER_TVDAC, "TV");
>  
>  	intel_encoder->compute_config = intel_tv_compute_config;
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.h b/drivers/gpu/drm/i915/display/intel_tv.h
> index f08827b8bf2b..0f280f69e73c 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.h
> +++ b/drivers/gpu/drm/i915/display/intel_tv.h
> @@ -6,12 +6,12 @@
>  #ifndef __INTEL_TV_H__
>  #define __INTEL_TV_H__
>  
> -struct drm_i915_private;
> +struct intel_display;
>  
>  #ifdef I915
> -void intel_tv_init(struct drm_i915_private *dev_priv);
> +void intel_tv_init(struct intel_display *display);
>  #else
> -static inline void intel_tv_init(struct drm_i915_private *dev_priv)
> +static inline void intel_tv_init(struct intel_display *display)
>  {
>  }
>  #endif
> -- 
> 2.39.2
> 
