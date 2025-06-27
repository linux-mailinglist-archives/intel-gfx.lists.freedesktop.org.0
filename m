Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A372EAEB708
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 14:01:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ECD710E16A;
	Fri, 27 Jun 2025 12:01:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RbX6418f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17B3E10E16A;
 Fri, 27 Jun 2025 12:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751025662; x=1782561662;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=HRiYe2ajfNQRE5A40nGka26xbxThGvsLzdYaLxWvUoA=;
 b=RbX6418fU5QcHtMjdjWG0ff7Iw0x23T05cEF2tADagOLUlPCxjvbvpaH
 t6G1RHxrouVy0uaUjcwRdKPct8hmI/w9gqykBXYfRolBdB1DInxOM4oDx
 Bk0vfjPIaF8hFu8/pXqlzQXs0t9DRk5cV9/Bffjm6bd29nSWrCFbC/ypU
 ELh6FfcoUwxJ0ko/lni2xHnsRxvmhjV3LHypol+laq8cmz4olWuj++Ijl
 LKnqmKJaxbFjLgdpDx4/K4EQqL1sHxQxL5o9sPwFGGqMFMijKvLg6ulz3
 9C1ZRSxDtUSoKMuh3sUCeLnEVUTMbSHGnTL+V3Hir5ayMIRdEpUnlIf5R w==;
X-CSE-ConnectionGUID: 6GIcM4eaTa2Sz4uhd3vETg==
X-CSE-MsgGUID: Pxn7REJnRpKbB5Znj3awsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="40958618"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="40958618"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 05:01:02 -0700
X-CSE-ConnectionGUID: r5C0JSTzRM6vUbIDgsd6rw==
X-CSE-MsgGUID: eFI/15zJROGLtUjOMCjChg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="157076774"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 05:01:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 05:01:00 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 27 Jun 2025 05:01:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.49)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 05:01:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tCQZsathA9p1v5/GHAWba8EGpxFAVXJB/mvUaydGxFD1fLFCS/Ad/xtH3biy8oCdG2ZI5uY/hz0Fogh5Gb5ilSL8vAYMXssx5ovydt0KQVDdzFS6Lq9C7cz4u1lASBFKAc2mky61AthESSl2PMNjfuvkOQkqVSJdbtcAA1gh8nddTbTjjoB890gfpl87xbLzPpZcTMVG/+/cFeOVK9aOVkW6U0z1ODgK9iaGGnrsWjeFQPGFJvJ6qzuPGwFQxBt26TspY9cL7+NC+VFr9j0hfaZXLBDCsVspvGM268T1K5jEZnMSJbkwAKQ+67egN0nXvY/uvdnhutRQe+UlnOvdDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5vMXJuX22cYKekipSLzgV4Akh/2MeP+GkrtYiz1jzJk=;
 b=ebygFmyi7eN0xzWgjZ8TRQlxGxss6a1FjHqt2J5L0DcaiFk9HQe/d9ajwD+SeYTT495x6Pd6wx1dWz17ulFjFnVvX1Hywlw+cbUNtHKZRPcEiyS6LbVf4wBXRT0yoxUgif5cKUbIoyZVkAiqCwiAHFsdB2zWSwIHMEhV+S3pFP7RP30wRNxtksvUM9i7NkidCWzV5dW1ny3uNVAymdIaovmchXL0VI1u6ZmRbqze7toEZyuoSAmXkxXzgjlMrbVEs5NWQA7PpnBP0MsQqp0xz2dCq3ZSk3Rp2WpIgAY4ikzW+dBBevaPkX2aqqsgSFRyN6apawk14p7DsyM6TTxxgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA1PR11MB8328.namprd11.prod.outlook.com (2603:10b6:806:376::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.23; Fri, 27 Jun
 2025 12:00:44 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.024; Fri, 27 Jun 2025
 12:00:44 +0000
Date: Fri, 27 Jun 2025 15:00:38 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 18/18] drm/i915/ddi: prefer read_poll_timeout() over
 readx_poll_timeout()
Message-ID: <aF6H5qosTRHtzfJH@ideak-desk>
References: <cover.1751023767.git.jani.nikula@intel.com>
 <59bcc15dd4debf00ee0c7b430a3b701462ac9de7.1751023767.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <59bcc15dd4debf00ee0c7b430a3b701462ac9de7.1751023767.git.jani.nikula@intel.com>
X-ClientProxiedBy: DB6PR0301CA0078.eurprd03.prod.outlook.com
 (2603:10a6:6:30::25) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA1PR11MB8328:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bb0b39c-ef90-4637-17bd-08ddb5723ee0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mpZSjcN03taSALOlQRKtI81tD3moADJxdemTgnKJe9HJb6VTdNjWCPSnYaLu?=
 =?us-ascii?Q?htaE9gOfWXIUIv27oZLTHlA8RcafYYa1tOFAJiFP8kqIov4se7xMcM8crMyH?=
 =?us-ascii?Q?2yUp+u5DHkK6OL/de8vjDgNYAKYbKFuse4ZSu5E1hABlVcMWWV95kjkGgYBW?=
 =?us-ascii?Q?sLGwl/pzCgortRnAoiTwdr1dxqZtxAx7X5f2msP1E71IeKjKLugE/Q8Ua1zI?=
 =?us-ascii?Q?y+8nKxEi88dU3+y4BlM4XqXClRPayn/INXbdoNbsjaXVlUGK/NDEKFiADgKc?=
 =?us-ascii?Q?gykp5ruYbLY1o+aP5O3FQTEEF/dL1t4sewj2XWL64Ua8MbrUYHWkR0JQUHCj?=
 =?us-ascii?Q?Q6GY4h/fhq3l3/WggpjkTl8iZBnTSB4z5DIUSr63nj88GpVdSQCK1hS6+uoV?=
 =?us-ascii?Q?niFnY8COZHbg6ll8+UAc8vgngBKI7rE1M4TpTf6qTCIpnyZrK/IJRpnzJQ6k?=
 =?us-ascii?Q?zDC/cUv9zuoDs8xlasmjnx5He6sVgt7o+m4mIyOBynbPPF9v3TQlGZiqx2g4?=
 =?us-ascii?Q?FMwlUgedkO51yu6LYkczoncNDLJbLaWutt1pDSaSWi2tzCfA9aMlzkrKWkx/?=
 =?us-ascii?Q?wyrlJdVm1fea0slLSHFNl8OaUeYJGKXd/xRXH1OaozU1oUHrH2+tw0x78v2l?=
 =?us-ascii?Q?aB8yLpg244ThWnWtjmirtg1lKPen5z39+eJRFj+ch0BEf2mgOGm39FHaD3VM?=
 =?us-ascii?Q?J2E+Vv0uTQUZqE4Ak2Ex1YLvH7eyxj+q6ipr2prQxyFEgdyhpUVIHcu5Hw9/?=
 =?us-ascii?Q?QfysciKlyLaEv23IQCrknNi425JiP6vPFgUteseKKBjSa4bPghngHybw6Utw?=
 =?us-ascii?Q?IoS0SglUFrHIA6gaZsSIMYR0wBDsO4StoYlrVR9xIr1SsD0sDL/LGLW6GCcL?=
 =?us-ascii?Q?0PiG2xaQjDnR40AzIgEbYGj3o/+BD6WDtDGUkZrwhtudu5QfQ4xzcWJpNObl?=
 =?us-ascii?Q?f45+PASG7PaMq5SjAR7Ysz9lw+A2lqxkPWOeqLzlUy1gMiW48P9ZsH/feR0n?=
 =?us-ascii?Q?FC5bad9rDimG6nPRAjI/qX3zMFV55Y7yrQZyrxaiTGy+xa3vi157KbC8PCWX?=
 =?us-ascii?Q?5XqkiScGHqlrSBW4+FoH1QlG601vvEy/zDZ11gKx54wWF9W8T1H06TIdrTUZ?=
 =?us-ascii?Q?CdQJlUFpQXsWrXcVARgzmwbrEuV8XKSrrJIxXA9S2wpyK0VcOqYX9rAiWEXg?=
 =?us-ascii?Q?PPI6N3de0rq2Sr2YvEUH9eaAFVbbbTvMkVaF90M4IdiPeRni+AAgGirl0SFk?=
 =?us-ascii?Q?SsG+xfdxB6sXlm4BjTb3iPuLmPTgvtRrZM+PNFSVMzKlRXZACFEcv2M9GLAP?=
 =?us-ascii?Q?t3KBUvKByTxWH7ZEJHtoYN+pp798lE6qRhw/JLb2kzGNXzzO5vJVLFRPz29V?=
 =?us-ascii?Q?NiCSJflufB5D2eoLNjqGlwfEv6wjEkArTzHWpbfsQSLibR/+BB3hAc7tQ7n9?=
 =?us-ascii?Q?sD5chTjcUKE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NL/b1PYfnKKVjLXXkkDRWeh40xU6c4XX7d8Dcs0MuQlTzYCfDhIoPSsNANPi?=
 =?us-ascii?Q?zfY8OvABG/TIHkL13yLXK6CU3Z56f0ymssi0FCVJ5ZQdlDJsnekQsvIXQO1m?=
 =?us-ascii?Q?dqQk1XSxLPWbVkgErUTZKzX9YV2hi14ShMtA5fes1ivO+IYXUTccLKbSI90b?=
 =?us-ascii?Q?DUF67Z+nGJDsfNRZywUeXdQAlf7I2CXT6ZA2yfTf8nAGZQg0Fe5VCjRDVYJS?=
 =?us-ascii?Q?PllKBF7rfktSxGgKTXKx6dHyy4JhW0DLtEwtBlVrnTuWsTUuLgGw43eXdonT?=
 =?us-ascii?Q?uraKUNvitiX5brxog1ZFZXHmqbaSGhEvsmatHYldXOUlFVzd8uvuZusN1c7A?=
 =?us-ascii?Q?5dDrZwcyI5VTc7lJAh1OXwy2p0COdQaeWGH/6xE7JcFXDJITnczuICfOM/cw?=
 =?us-ascii?Q?N79BOirYIobYL5Rb+Z6KIP/fKVPqqIqneViQIIoD5VxeWBHSDlwnbWbOcDS2?=
 =?us-ascii?Q?C0zx0h3pwWG1A7YdtcZC7ZxlwZJ7jKN5Of7Q1rtF5uhfTrbxgRCztYMk/5mv?=
 =?us-ascii?Q?MByug7lz4969gxeUfCfSAuNZwHbHYXRNcT7QChDWvoQNIZ/0F2VSw0JDODST?=
 =?us-ascii?Q?15nTA/tW8pzjUA91bSJ9I90G1KxyaPxxObVab0eOT9jgHqir5ENjG25/K8T2?=
 =?us-ascii?Q?jeFk7lZYHLUZKeKMrljdxMeDRjsV57hnuiu3jKqK2mgIiJ5BNCUvx8PX22am?=
 =?us-ascii?Q?TylVZO8owCs+wANMRG6WzE5VPjLYRea9UYgUT+CMMsbPzvsy8LEidwseI+AG?=
 =?us-ascii?Q?xvfY47fua+RNIn7Qnmts46k8xoFMeT6XWFcA3DT3i7IWi9CyvfoNtOxze4IH?=
 =?us-ascii?Q?WqrwxSsTVIUwADF1A+FMztFc0WLcF8fWEM0jjHN+N5dOB3+p42noBYumpLZD?=
 =?us-ascii?Q?UkIC2KMC+vlAbY8M9tjV+cL2dBhjrytEaGMrJN7LLBvjOhQqK4CNy0pGPhkK?=
 =?us-ascii?Q?LrFG3Wcg2eb2BmoTPzXqTULT1AohfbWFFpdpvpnCByKslYX1y/cK4wUOkoBh?=
 =?us-ascii?Q?rsDHzcAd2/73KKOLjJBL6teoG45sKfzY7urme2iJdRWMhjxRobtHVJta2ND1?=
 =?us-ascii?Q?g2qadWOMrEssy66eR2EF6BcQ4c4SIdOvJsaJKhwtia+7Na2CTwlDn4+iDrcS?=
 =?us-ascii?Q?9+bljJD/c76zglhfwe9QG7Bbu/Bsrijkr4ra9YPqXYTbPVx5dwuNenb0GpLz?=
 =?us-ascii?Q?SsrcDEn8I00ZndPB7HHb5vH/VOePlM+n9Q2r7mOzXrwog8cO73KSzYAxbI/n?=
 =?us-ascii?Q?wLV5xXtcQLpzp5ox7LjQig6UKeNjRwN5+55GnUE25oFDJwdz27hs3PtRaQfv?=
 =?us-ascii?Q?Vb8dvPyUZZlDC2BimrBT4wEySuupOg9YKWKS/Ph6u6LWxMbZK06P1L0D4O7B?=
 =?us-ascii?Q?r6I2nPYBTM9mEirt8rAJ5bwUEQ/AqWq+ViG+zjHjZUyAiPt/Zl2NppvVsHko?=
 =?us-ascii?Q?7dwxryOmQyb/TDYXsoLilXuYzuUXhBDpkMYZV0sVoBko0YDW5ZMj0yAHHF3j?=
 =?us-ascii?Q?WtmjpHxBCajH1zPxFGcZqfcpLLnrT1uc1b/wVr5KKYxs+rJlvpgdISeEVVTW?=
 =?us-ascii?Q?uXZos5IPv256GW6pm+FSklqalX9k4C4S5MmuLxKG?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bb0b39c-ef90-4637-17bd-08ddb5723ee0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2025 12:00:44.5449 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DECGSxBd5Dp+VmUGdouGcEEEd/NAaIptq7vJUaixjRdQO6P4jCoN6n8C2v+yP60Z8NAOj//2dBq5d1mT/+U3uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8328
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 27, 2025 at 02:36:32PM +0300, Jani Nikula wrote:
> Unify on using read_poll_timeout() throughout instead of mixing with
> readx_poll_timeout(). While the latter can be ever so slightly simpler,
> they are both complicated enough that it's better to unify on one
> approach only.
> 
> While at it, better separate the handling of error returns from
> drm_dp_dpcd_readb() and the actual status byte. This is best achieved by
> inlining the read_fec_detected_status() function.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 33 +++++++++---------------
>  1 file changed, 12 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 0405396c7750..fc4587311607 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2339,34 +2339,25 @@ static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
>  		drm_dbg_kms(display->drm, "Failed to clear FEC detected flags\n");
>  }
>  
> -static int read_fec_detected_status(struct drm_dp_aux *aux)
> -{
> -	int ret;
> -	u8 status;
> -
> -	ret = drm_dp_dpcd_readb(aux, DP_FEC_STATUS, &status);
> -	if (ret < 0)
> -		return ret;
> -
> -	return status;
> -}
> -
>  static int wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
>  {
>  	struct intel_display *display = to_intel_display(aux->drm_dev);
>  	int mask = enabled ? DP_FEC_DECODE_EN_DETECTED : DP_FEC_DECODE_DIS_DETECTED;
> -	int status;
> -	int err;
> +	u8 status = 0;
> +	int ret, err;
>  
> -	err = readx_poll_timeout(read_fec_detected_status, aux, status,
> -				 status & mask || status < 0,
> -				 10000, 200000);
> +	ret = read_poll_timeout(drm_dp_dpcd_readb, err,

drm_dp_dpcd_read_byte()? With that it looks ok:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> +				err || (status & mask),
> +				10 * 1000, 200 * 1000, false,

Nit: there's also USEC_PER_MSEC.

> +				aux, DP_FEC_STATUS, &status);
>  
> -	if (err || status < 0) {
> +	/* Either can be non-zero, but not both */
> +	ret = ret ?: err;
> +	if (ret) {
>  		drm_dbg_kms(display->drm,
> -			    "Failed waiting for FEC %s to get detected: %d (status %d)\n",
> -			    str_enabled_disabled(enabled), err, status);
> -		return err ? err : status;
> +			    "Failed waiting for FEC %s to get detected: %d (status 0x%02x)\n",
> +			    str_enabled_disabled(enabled), ret, status);
> +		return ret;
>  	}
>  
>  	return 0;
> -- 
> 2.39.5
> 
