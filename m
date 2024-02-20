Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C8085C2E4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 18:42:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8656310E51D;
	Tue, 20 Feb 2024 17:42:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S0TVPDqp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9148810E51D
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 17:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708450972; x=1739986972;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=XFhFFnTJA5TXZaCHlT5u8o2MwL3x1SJUEhaHz+wlq7E=;
 b=S0TVPDqpoxhU07lryWwobsnkbMkvmhqBDwjrOumqbnjd1c+IloZhjZVd
 SMLMkrjEo7veedG6tK1uKMnAKKwaJcxqzjARP+LZwbQ37PnRrk+TMdltJ
 D8X9lk6siFCUJegUV06L4QflW14JZQANuiX/GvVdE6117AhfqPA8O7wfU
 IGG3/bmxQO5L0fvufii99yg9ydALI3T3xPy89spWQed4SwqWAF9xDYPKF
 wFPJvm2ks81lDKYUu4FY1xuh644pDd/p24c062nKfWg07B+pzGXv2Ueku
 eCRepPMk4InIAUgUK1+1AGM26xzLZ85BCJg0c5KB2e5CmsW/q3aj0O1Jz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="28014347"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="28014347"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 09:42:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="35873354"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2024 09:42:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 20 Feb 2024 09:42:45 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 20 Feb 2024 09:42:45 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 20 Feb 2024 09:41:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uh12ybAp/rtq+or4z1lIAFXcetbNi6ARaSVMoHpyR1uhbI6xswuMfYCZQa+2ygACYtOcmf4uRvKg/jblBlWoI88xMJL4Ey3OfaIiNPFtOwa4EE03f3MMwbWFn4msF5vUQFyjwoWDnKlI8H0tX3bcE3rt5PsDIQ69BW8AiZ/TPtKTsMJ3N/E/iAC+nosIHm69+zEu0ZJwRyI9sbnUuiK8u3jxfqsRZ6Kr+VDcWcoAXn0Dpq/k82pneFEgJpLlzrgMJHflmcJpGiLw2mQPOJuyE8jY6tUOMYPL1XNxZgbSRmnGdp3r6ncszHhyvBVjt3TqL5T4NPJIe9jFCf5G6eUPiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+dAWSaQrQBWmUTypes4WwyFQuzGElp0y8N4zhvIIgJw=;
 b=IznsA1UL08IdVeVhQrAZw1GKPYeOv9JhW5PvDs7/Ih3VewNWOX0ozk57RDKZLyOy/zPZhWcUQgu3l/ZIsyvOAWE0RAkK0AhU1Ty9NqaqIfuj4Xe+D0bdq/sWm7gMyH0Y/gVKYnMwJ7o+CwhnJEBqhpmi01Q4sT8y2ogBrZmFN9LnpTVuekQYSuLm1PMgvAr7HT2fIiYyFfhbbGQFrijN1sp8PtTDJndwb88z5HPBEQ02T6Kd3mix5cOhOG9OvHivj/qBrDVbE33sYNmooNPESaZH4oxjQ4iNd0D0FI/x5cRv7wJaKcc7YmcIIhHpM2xSlMT1uv5WkHYM1pZTHle9mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA1PR11MB6465.namprd11.prod.outlook.com (2603:10b6:208:3a7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.38; Tue, 20 Feb
 2024 17:41:41 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7292.036; Tue, 20 Feb 2024
 17:41:41 +0000
Date: Tue, 20 Feb 2024 12:41:36 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>,
 <jouni.hogander@intel.com>, <arun.r.murthy@intel.com>
Subject: Re: [PATCH v3] drm/i915/panelreplay: Panel replay workaround with VRR
Message-ID: <ZdTkUFmBcxcpqTV3@intel.com>
References: <20240220141919.3502674-1-animesh.manna@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240220141919.3502674-1-animesh.manna@intel.com>
X-ClientProxiedBy: BY3PR05CA0020.namprd05.prod.outlook.com
 (2603:10b6:a03:254::25) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA1PR11MB6465:EE_
X-MS-Office365-Filtering-Correlation-Id: d2843da7-c25d-47a4-e544-08dc323b3254
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1ahutYkWySon47lgf3LAj1s+sazyX+7ETCURkqPVbWPwwZ5/9WQNN2L9c9RD7bx1xAYovCIpdxIgQnJ9aHVzm1kZtgDLz5+NtilsiFsetE+lF1xH+HXYTe1C5wJ4mg+acUKTadV9/y7IByNfFEqXaStZUOF8sOd5Mr5S3515A/jH/Zb55UQqtJkzMydJTH5R2AMUE6ro6LdUFsxGlzUbOoaQiQcHMTLUm5jwcAye+iK//ovj0qtcAp/bspcZxlW6/EolEO0qQW8FoNW07D4n//AOcJGg7i57u79mOIK3r32e3+Natq5e/Ch0HdD3kpL0teY1dE12yU7WjLeOcLCzU9PZ2WE8oZzhpilbaQaKhdEJXWjIzHAwWNKeFaAP0OiwmQ3iNjP1ptZjbD1TMKRKWNioXsip1ZW60aTqDe3ostbBoLV9+0gkQuKciKiEffOrdKervnlpFpNL1CNlcXigooyo7SkdDp00uWzNvtddAA/0QnVaC0ZqJMYu4d0/ujPZjPuFj8p3JVBjS2dcvXoA7Xqdq34e56rNJ0yeER5ZCNY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WvLbHqxe7uL+K2/hiNMZ3eT2MVEVaI4Tr5A9lRqMiIwnK5TwYz7HCXxx63OJ?=
 =?us-ascii?Q?zz8/nWFf8B622ak2wtgVewG8nPQ0MaXYPdg6gtkgmJbgIMjZU9d/s/rLwkbP?=
 =?us-ascii?Q?xwGcmo+j2guulB8ypC+64V+tQpy10dLngZ3wNqnJ9iDZuu5txDuUPNtjE/7Z?=
 =?us-ascii?Q?ZNw5riMY2PO/xC7hdsSmPfT2ySuZgEljH7kNjG1HOkiwyWl/P8XXHjrPHBg1?=
 =?us-ascii?Q?HFtdLSoeSXuN6WOllvFuH5luhHIkGe2Mw2+s2pw37uyM3+P3NDjz8HPHXNb4?=
 =?us-ascii?Q?+DnIxEr/SAdgYAY+o1ZHAeB9hBbK7OS8lWrMjNqeHwstbqXBhpZVKtap4Ra8?=
 =?us-ascii?Q?sLY0AvQZCCiGKrvt8AixPbEbbbmVkMT4jmpM4sC+zDDCq/Zc5rytbpOJjsZV?=
 =?us-ascii?Q?7IcdbZl1Ks78UL8aWk3UdqwOfPod2JM/KVpvbEyNI1IGzHXLePeOukpqxaiW?=
 =?us-ascii?Q?yD4cOO+o6Uw0odd+CCwal0em+lRSUwwphEHwPkLDJjQrWMQ4JynvJWJD1Tt7?=
 =?us-ascii?Q?sShEk1iK7tIeDEG09RdUQiG1niuPCFn2i8myhFCaxb+eGkw3xA0Tx194h6iQ?=
 =?us-ascii?Q?1XMYuHkyqb98feCsghW0xKDf3tIgYUUAnB2TWoNIYHKlZpZ9FVnG/g1hjMlD?=
 =?us-ascii?Q?d78GPdOO4reVu+DSIBhHjee2ovig0hh5W2oEQbWXk3/8a59CWmz33j+Ycovh?=
 =?us-ascii?Q?drUxqpGe0ap4PJbcoeGS7Pwx7A8ufCafOHlerUzFF721fiAUZkn3cqZJJa+s?=
 =?us-ascii?Q?AreR0Wt5owPpNc3JpXDmW4eemWM38EoTdO1dqDd/MJl/e1B1d0tbLpQWsK0h?=
 =?us-ascii?Q?nWVO237/8XWGrLOOys2kIjgUW5k4eEZOe4yDsB4zNiUKIA686I+f1diQ9f9Q?=
 =?us-ascii?Q?O6m+XIKUaaG4x2zkFHd4/6u754gNPAVf7RgK+oCblwo4ji1YrCbuhOGbpQy8?=
 =?us-ascii?Q?f117MVtKutLjbCwDbEdiZfrSUKeArL62ywCGmQCA1JRV2qYUPQJDee7H221n?=
 =?us-ascii?Q?onpkni1mHum4RYNvKZ3GWF+RjQFhyG3WF2BA92Sr1TAbvfo8kXJv/4hcL3Ux?=
 =?us-ascii?Q?a9AXYEuDv1OkVR5m8G4r/9OUhri2GsAQv/xJ+oDwq5JpnmUnXPrancY1TPNy?=
 =?us-ascii?Q?z4aollQZB5ZYQx/tTjHwL4vSvcjY7X1mY0A1ZgMdJIn8PMiCn5/HIISePHfA?=
 =?us-ascii?Q?W6ajHfYwcb9+ESthM9q7JQy2+2JHueyvFqGx2M4F6Um8cSkuWL7KfNHmamPC?=
 =?us-ascii?Q?0bdU4ByW2yy+2wG173PcKy+ZZHzHucSEYezML3hPIzgIr+AV63yRpCzJkFQ/?=
 =?us-ascii?Q?Aa4Gelioyape+zpAZB07pb42O9e58XYYuPi4hjvIC1I4cvroPM+bg2KRu+eD?=
 =?us-ascii?Q?gs6GcttCFcwr1C5WdhYOCWngDx9ThDDNcxH1spbKQLUYbxlpAr3ahG/1UFvM?=
 =?us-ascii?Q?8vbi7uUeIglYhiN2ay60wwVxlnPaAWzCpYz45Cj9I4bYheWrtFLQRLFirVW3?=
 =?us-ascii?Q?0ERllzl8QbqUFBUnmgjN70aP7deCTwFcfnd2tn0rr2sVlQLyKeeav/YyYQou?=
 =?us-ascii?Q?hK9QnrUntQiu6tFYSBHzS13Uvab+yXaUmGAxIQs9?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2843da7-c25d-47a4-e544-08dc323b3254
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 17:41:41.0923 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cEwab1qqTa/LA24WE80SjVE0/wBM26GylxIymfy33Hj9JkHO2Y3Wy7l8mDvQrytoGkVv/eYx/kL/3qhnTgfVhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6465
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

On Tue, Feb 20, 2024 at 07:49:19PM +0530, Animesh Manna wrote:
> Panel Replay VSC SDP not getting sent when VRR is enabled
> and W1 and W2 are 0. So Program Set Context Latency in
> TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.
> 
> HSD: 14015406119

Unnecessary mark since the wa_name already is a pointer to the HSD.

> 
> v1: Initial version.
> v2: Update timings stored in adjusted_mode struct. [Ville]
> v3: Add WA in compute_config(). [Ville]
> 
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 217196196e50..eb0fa513cd0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2948,6 +2948,18 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
>  
> +	/*
> +	 * WA: HSD-14015406119

this is not the right one. You should use the lineage one and then mark the platforms.

/* wa_14015401596: xe_lpd, xe_hpd */

or perhaps

/* wa_14015401596: display versions: 13, 14 */

and also add a check for the display version with it.

> +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
> +	 * to at least a value of 1 when Panel Replay is enabled with VRR.
> +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by substracting
> +	 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_start
> +	 * by 1 if both are equal.
> +	 */
> +	if (pipe_config->vrr.enable && pipe_config->has_panel_replay &&
> +	    adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay)
> +		adjusted_mode->crtc_vblank_start += 1;

why to mess with the vblank start instead of going to intel_set_transcoder_timings()
and change directly what is getting written to the register when the register
gets written?

In case the answer is becasue by then we don't have the vrr.enable or something like
that, then we should consider move around when we set that register?

or perhaps create a specific flag? one extra variable, 3 less comment lines...

> +
>  	return 0;
>  }
>  
> -- 
> 2.29.0
> 
