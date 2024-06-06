Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5F28FF237
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:19:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F02C310EA11;
	Thu,  6 Jun 2024 16:19:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PNELOaWl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E1B10EA11
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690765; x=1749226765;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AbtlREu6mtfv7too1VJUmEMMWrsVi3hapvMJkF3b3Go=;
 b=PNELOaWlUWHGP0xPRxRIdQpK9fPfVkxdUPBOvWPMKllATFVT/7VXkh+W
 GuUsVjvjDxaiLpHeZLV0OGTbn8Gc02LcCw91FG6me2Ixvb5hCxFJUnwpG
 j6ouj1uBnCNoHVc/Wst5a19/3JtRA9Cb8qGPv3QlSL5168TuzCClEA1tL
 yRroPdl2Cn8i+jBcUTyzJHtyt6WTTSuDF0FRWvoh5prRfaPzsOY4+K98H
 nQoulmXG04t1DbJLjXlXmn/5ZFeVJajDugUTULp0s+khgD5Xy4Jyr+t9e
 hbnqeWlEneawqy6MPzITiXNl1db077bzrb0OrgUQJYT3ZmJFsRdcAYfgV Q==;
X-CSE-ConnectionGUID: HPn0pcneQWmOfumiRzdIOg==
X-CSE-MsgGUID: iC2E6XIVTa6ZIoFjdAkh+w==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14509113"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14509113"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:19:24 -0700
X-CSE-ConnectionGUID: IOuVEN+dTN+lKJS0TGKslw==
X-CSE-MsgGUID: xtyuar4lSYm0668WdB7tmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42961556"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:19:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:19:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:19:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:19:23 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:19:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a9ue6R+l4AG9jbn6zf1X6FwlhS/cfYCpwyf3v6yA8Iu66ask0/fuEx73kAm41uhiNDc6jv1s5fRZ/xLRKXMZSABAFSPyTAIrBpFNLF9w2Ad+t2FgSnu/KzAE+GUILKJg+5kl2MMrJ1I2r3JitrPx1EV36JAnOJMO9LQP/uItUxk681HZlxkzNJfi23EORfhCT0cbwdFH+t78MR9+aVaDO/iZSDXzjdPKpaFV/OJQGbWK/e7SUJoGtVGVGdNv92yJVa9Db8HI7Wj1Tf/gOajMMJqmOvTkMDJ9eKvDWDiuPK7vUCJaSm78NehNRGh/qJVVWPT+B9QF+f7fT0HBHrekFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aFlqYAIll6opkjUROzC4i8L/C9hCLM7smU61SWKcEwo=;
 b=WD8xMP0h/gcM7vTFhYGHR/3P/2HEzc4w6EW2n9q8UhDxl8XaSeWiX6GG0cUf5Sg7QjkQ9qW/OUrGjkIjc4FhaDwItWrQcKNZip6uXFQDNIGPFSRmb2tiaoyV2+zuSb6leoi2gaNhyRK6Pc9NDWzG5H3dO0YV8B3d/fAFjVQtfauewXyLObDf9EvwCOO+AUF0MIGZwEdar3LrfYoFgfib72MB4lg12XB4XuBQekgaKA4YPWgRtlEmSLpIGfhDqMBU0ycr1ZrqYga4x+ZbEhIko/0P0CHXozX/YbrSJ3Yvmr6fS9ym3wLRwnFcrDQ/qFu5RqcZy5WgSYQRmOlyG1V7iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB7500.namprd11.prod.outlook.com (2603:10b6:510:275::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.24; Thu, 6 Jun
 2024 16:19:16 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:19:16 +0000
Date: Thu, 6 Jun 2024 12:19:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 65/65] drm/i915: pass dev_priv explicitly to
 MTL_CLKGATE_DIS_TRANS
Message-ID: <ZmHhgQP1nWcQQR-n@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <b330d86c5e3012513daa36dceffd2db45f0d7850.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b330d86c5e3012513daa36dceffd2db45f0d7850.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0P220CA0017.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::27) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB7500:EE_
X-MS-Office365-Filtering-Correlation-Id: 314eb02c-47f6-490c-160d-08dc8644691b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?TPnEI3Cly8Oc1gvDNun9rRxE7N6wmVqrcFG3tMn0jbGeXGzm+/GT4eZ68h0J?=
 =?us-ascii?Q?aqjmK1i55HdmuB221bF9lL97TDIghpCB4+Mv80eSBNJolUXVuj1HyBv6Ja6t?=
 =?us-ascii?Q?mK9jalhVEVIheOQXMqGZpoFc6cdBOxaZbxPAlVuRDVwJS3IibvwYMOwko/Zg?=
 =?us-ascii?Q?zYDGsuYP0FvNaeiMR2Ln3kF6y426U3PwqulfSZ1lr4YsW+wGH8Sp1wF/YA+X?=
 =?us-ascii?Q?IGiulmGlcnlh9TftnkgnP1nxJrb4olFwX3NnrufxHmRXQEKFsbcPgm+I9lTA?=
 =?us-ascii?Q?VvF4g8AdmN9DyNLfmkv0x0acRa0mwOsV2ZJ5+dt/jNgpiOSBAwY6fTJS+l2n?=
 =?us-ascii?Q?N1YF2TtCmG394KTT/Sy2QmBFG9Rr3QWW94no5xEFTqcFxKAUdZj7X5o1nbuV?=
 =?us-ascii?Q?kEPkm1f0VDDBkpKTykNZWFFGwY4zPPZC4q7Nq5MARmmFfpZVQwrwP+NjqKpo?=
 =?us-ascii?Q?GRe/m0vwalOVsVNm0z2WEJZVGcwOSgNvF2xx6O7BuS13FgRiBIGqE/IciFoX?=
 =?us-ascii?Q?BGNhm2t/KtpSoq3OaryM2TO6jM1nlHRsRRYVazq1Dx396P3GzZl97X0nGbtS?=
 =?us-ascii?Q?KpwUpQNO9Jjn0r/Z/FG9FYz56/wUnGgYIZr5eCeUi9H2CgzD5NmRP0ZynAUQ?=
 =?us-ascii?Q?BTf+NLj+yVbDulZfziY5hwY3TUU6OliBLYJx9nTe3g1l8fbDY0oO9UVy3ZSc?=
 =?us-ascii?Q?PHU3WLzbdLoNHXfwBDiGeHBldatzdBfmJ0kaZhF7GOnzRhuajZMDDpCSczcX?=
 =?us-ascii?Q?irdy5T3j/jWZ0kjHZpUgQ+tkGgWC03SO1mU+XNLzK2cUO9pEVrIrSQkPphwa?=
 =?us-ascii?Q?1NRWu/mHbgkOhXT05taR1ymGTbc0JfTEQz+YjdhGvehL6XJjBYQm3MgRjLk4?=
 =?us-ascii?Q?wh/uLzHn6vuWVe9iyUmt8B6ulQ4Ujeru/wREAOT/n+vGsUnkvFim8+AlnrIt?=
 =?us-ascii?Q?mlfJFnH1vSZNJDgncpHaXUxvBkxBYLqY3W1kxHObdDG1NDGjs1KOmHhRQrbP?=
 =?us-ascii?Q?8bIrENlPqjg7aJIepHXVzmCgFqyng/ehCNfV0fKHDlOuGPtSuRfcXU1fLkyD?=
 =?us-ascii?Q?9FbZRWaM26NiQ28ZSO7KXZd0RvgErUcsFCuH7f7UMs1KwCbyOtfec9MOAUGV?=
 =?us-ascii?Q?G8D8oWNuCwiua8OGEyBfAsy1PmhOSel6u/jPEBvbeu08UQAnpDsdknKydIe2?=
 =?us-ascii?Q?AUQICHyBlPpR0k24DmAEkVUcjvR7Ww1rFn80zg7y2aReLIiB6byodXBP2zL3?=
 =?us-ascii?Q?Uxal2za4CX+2i0eMwrcMoDmEPwnTmL7r/1fwxRffNB78zWi6Xb7GZxDdIoW2?=
 =?us-ascii?Q?xH0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3ROElJ6th2g3H3rOKojveVg6fY3PJqwYf0cx/CLnPsApWEpe3moyXmCKSKmy?=
 =?us-ascii?Q?QfgGjVYEgF1CqvZ8Xc6G5YLtD4dRtUf7ijONYGkbe0TnlIGL4XK510ZZCbbh?=
 =?us-ascii?Q?ApEvSikErmjH0E3r5HbdGkHrIfY5dGYAOdQeOc6zf7/xG4szzp51NyOpvGkb?=
 =?us-ascii?Q?rLaV5smpEPl9cMC1+zTe3KCJgxeTuITws2YjxHx6y/Ni+tQzwjvbKxfENmUW?=
 =?us-ascii?Q?CRigAAuz4N+w0I2LWW2Clegz1vURs5/yXibhChpDo0+blHto+5Qo4jZcBAgh?=
 =?us-ascii?Q?d8a3nqRxMzZILYdweTKYMTSo7E+0QmVQyn2lSGucnXwEsXFlRh9jTvgG8EZO?=
 =?us-ascii?Q?QRzqBZDfQFdhAzJ1WaSRB1lnMewfsHqODR0vCTRT9DgyBhAZCaYJO2trrnzC?=
 =?us-ascii?Q?Cd72Vg+3fJPPABLC5aPBzmAlZlMQTLR3X1mDZorxuQVyX4cTrog48rCFlFFU?=
 =?us-ascii?Q?Ht0UCPcGXsb+4KmNc/8wasKuRTbK6QRGQ4R6TEhxVYFpb0aF3pcZYH4juoLO?=
 =?us-ascii?Q?c9X4RtxOEBub7DeeOhe8WR1jNYfkuM0dsSrUyv5QktPuBpJC05TlTyNCdcoS?=
 =?us-ascii?Q?LJWq1OXrhwwv4xS0vj1PIesqkXCNegH+t4KNeInlQSLmph6z2VrKTLdzUNTi?=
 =?us-ascii?Q?L9jXsCaLSEyANB6w4D/8BmXwW5SOootcM6Ls0XXm87AbAwE3WLZ77+PBsL3b?=
 =?us-ascii?Q?NxpNh5O3LueqCOz0suhWww5Gt6uGVjE29LVrsDPFMcqrXxkBuVRzWbtShbbd?=
 =?us-ascii?Q?eCKvwXaYVeRruxiLmemI5+mqUd/zyr7Mrwl0Gb9Rx3LSMB8wyWG7AFCNGOHf?=
 =?us-ascii?Q?LgsvcW4wSDtonoTFYUOVsCzbuKxz3U0UyDHeKf7WYYw//z/G5f/Vko3sejH0?=
 =?us-ascii?Q?xCqrelNIacXWS8W7GbEgqyJozVKJ1sx07deTbvHTXc0W/23rCjPX8r1Z7q54?=
 =?us-ascii?Q?JTrUf7O+mfsi4k8LjEuGkyuXAsgQESu+ylyk4s0EEHgafliJ6LZMSXyJLYYo?=
 =?us-ascii?Q?XDpyZL1ND4JPjbl3SG1FA03hOJvsxsF4SEIfR9UXMV0B/54xbDc45pxetLBk?=
 =?us-ascii?Q?/hXz1KiaMuOtsq2zSxI9niy4X4Pim7ZkHB83R4CXjh6blR411I4mJIjrvrfg?=
 =?us-ascii?Q?3+EnazBybFD4ULAPhkxEhWppo3YM5OWhVXaMqsLw+cYgAwm6SXyHdDG+qlre?=
 =?us-ascii?Q?Cm/IBb7i8O9nZTg/zx+P/KzOI1Ooaet1Hy/P+aCTPU0cxgvuOOuyVHdNTEh+?=
 =?us-ascii?Q?Z06+C8ScUjjlb8bymPFUY96JBWQnSdIfTM4gBo2hGgr5h+nvU1MJCamlLdBF?=
 =?us-ascii?Q?I/evMheXoJV+iuVnvg4P9pI8X97WrZplGhHUocnecK9OKDzxj1CrBdAKULWZ?=
 =?us-ascii?Q?Qo5XF8shVEQYnnpPSzQkUuLPtQ9hxYsLWwknHnzHoHmSMAGfCr0sIu6G7wfq?=
 =?us-ascii?Q?xnq/ci4stL4ZBGU1yFoyBxlarXs+nEq8oYbhCJ6PGFrKKPPQYuNCADrXA9UB?=
 =?us-ascii?Q?jYPh7alNZSp0BwcvkNS83hSTAf3j1xkONwNaQvldsYgvi5yh4LGnDdIlZYYh?=
 =?us-ascii?Q?/7nm1f0Nu/OoB1y8drmnOHQXfomlhF6SDluJHsab?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 314eb02c-47f6-490c-160d-08dc8644691b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:19:16.0817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AgnlzhO5AzyTBUDoOrneQbUWZl8FYAy41Ihtqf77q0FzqUONEtrZZxFfpD9hooIhdywKCwj6/N/2GsWdv9NYPQ==
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

On Tue, Jun 04, 2024 at 06:26:23PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the MTL_CLKGATE_DIS_TRANS register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

I hope I didn't missed anything.

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 5 +++--
>  drivers/gpu/drm/i915/i915_reg.h          | 2 +-
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4a4124a92a0d..21f6a4fa86a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1716,7 +1716,8 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  		if (!intel_dp->psr.panel_replay_enabled &&
>  		    IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
>  			intel_de_rmw(dev_priv,
> -				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
> +				     MTL_CLKGATE_DIS_TRANS(dev_priv, cpu_transcoder),
> +				     0,
>  				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
>  		else if (IS_ALDERLAKE_P(dev_priv))
>  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
> @@ -1897,7 +1898,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  		if (!intel_dp->psr.panel_replay_enabled &&
>  		    IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
>  			intel_de_rmw(dev_priv,
> -				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
> +				     MTL_CLKGATE_DIS_TRANS(dev_priv, cpu_transcoder),
>  				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
>  		else if (IS_ALDERLAKE_P(dev_priv))
>  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8a1414ae72cb..7049a5ccefd9 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4718,7 +4718,7 @@ enum skl_power_gate {
>  
>  #define _MTL_CLKGATE_DIS_TRANS_A			0x604E8
>  #define _MTL_CLKGATE_DIS_TRANS_B			0x614E8
> -#define MTL_CLKGATE_DIS_TRANS(trans)			_MMIO_TRANS2(dev_priv, trans, _MTL_CLKGATE_DIS_TRANS_A)
> +#define MTL_CLKGATE_DIS_TRANS(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _MTL_CLKGATE_DIS_TRANS_A)
>  #define  MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS		REG_BIT(7)
>  
>  #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
> -- 
> 2.39.2
> 
