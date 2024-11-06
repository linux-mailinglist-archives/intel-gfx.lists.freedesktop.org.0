Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D64E99BF410
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 18:11:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EFFC10E73E;
	Wed,  6 Nov 2024 17:11:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ftKTZr1K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB6E10E73E;
 Wed,  6 Nov 2024 17:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730913080; x=1762449080;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BMLXtcqtgbv073E0Tm/JJrQIfCF1bt+L2QYkxmg1ZgA=;
 b=ftKTZr1KtasbinS30t8hkXNy7iMNEIkMI9zQCh97+KNEjSuMTkfRrlSO
 UT+FO844WWHCtEzDrwc0Fivi9Vt1Pq40n2PaJjL8ZCvxp4nwUvei3yCZV
 WUY9GRjMjnjQYlwiju+Q/U8wc3q8qRwhNqk7NHCaNfbW5z14P8vaEgxOF
 R88Ll8gA7GS2NLhIjfglf28qNcgDs9CE7o5ddxKgyk9rBG7c9/EHaJf3E
 Hf/pfmg8SgNtfCz9vlPthwa4vZaEghtq5zem5z3kkDHKuctILehcUrrJk
 hQ73gfj03G+AcBflLLoLy7sdbn1yjVNmhR7aFHv3tQjMk1hFxklKs8ZTD A==;
X-CSE-ConnectionGUID: 14BXsfJSSE+m1wk5zYTW6w==
X-CSE-MsgGUID: zjxJ4pVXR5mShskuNrZA9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30826731"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="30826731"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 09:11:19 -0800
X-CSE-ConnectionGUID: 25PXAH0kQdeNIE+hi3eWbw==
X-CSE-MsgGUID: pEKha5TgQMurh71+6cQDFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="115494656"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 09:09:10 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 09:09:08 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 09:09:08 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 09:09:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DLJzENnSMxvrm+wtPAgGVWHYjs/uf8w+9o4rDQiA6903vIv/CHBdVx5h2vOiEurzznoYXn+i97VmJ3ta8yllPanKikPvHvkHFw5zqzZ1UqD9T4KM9lnCtbJfztKPvF+dAlh6j68QzwXJGKgRnFf0mm0NyG3o/dSXDe63kflgOsylfx7x9EFgCmxSNxt1Apbrx/9FqikXUT6ZqL+uAXOTsw/SqIVBOS0Iz+GdSy3BP6fG8T9kRmT2zu5qEUjiEn8uSHic0IuFhZ1LnYGD/FhCBhSCCcP8YE/DxJSTCtxW7bwVwGoO9NXaOwoC6Kp2YvuCRaDx/Y1mpgTnR5QoNTi3Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/gaIJuc3wS/YKhubT/WTmMnK28RsjQFpLeZe2Ipgrf4=;
 b=HtL/mARxeoEWAUY8McPeuzU3J3qrU5FgURYMz212Y9jRwzHDcemnd81SQi1bF4ILvKjJ8XWR05QkNOq88zDoG9l76DlURWLAjbiwQx7e0LyVdODebaUX1xiwGRrC5Har7rS52tz0qxreJoIzd2+5PsuVsrvRQHKoXm2U5usubZvIEC+NGet5cOXbY6AKZcJhV+ZY/46mHxrf3DQhVk5KRXfkKUO8bw+GXuxT2Cs9O72xBKl34+Vv0ha+U46MOdQa9XHAMsCLZk4cnUZvIxGSNm2RDwOXt6qvGCwAYJyWUAKsu7PK5SMmYtYqVGONhtc79/sxSN2+VVzSl2k3KP9OHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB7591.namprd11.prod.outlook.com (2603:10b6:806:32b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 17:09:03 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 6 Nov 2024
 17:08:59 +0000
Date: Wed, 6 Nov 2024 12:08:55 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 10/15] drm/i915/display: convert HAS_HW_SAGV_WM() to
 struct intel_display
Message-ID: <ZyuipysCx_9V4bQh@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <f8e93ac7bd3c9d7e3bebaf0153eabef74a9b9896.1730740629.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f8e93ac7bd3c9d7e3bebaf0153eabef74a9b9896.1730740629.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0232.namprd03.prod.outlook.com
 (2603:10b6:303:b9::27) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB7591:EE_
X-MS-Office365-Filtering-Correlation-Id: 42993a95-c01f-467e-9fa0-08dcfe85b443
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rBvEuAc4X1Qe6uWmp+g5sk4BmU8MRqBUKhwchfIgK1V/qE0YTAo4EvQbelJn?=
 =?us-ascii?Q?jhnsRLE8Kxo7qyGQqpzoDHtoOAPweNys5PuPQvR3VFYCDXGoMxIaPWZQ2gf8?=
 =?us-ascii?Q?ALLgFAZGl3lL3sMQhnGcaqVmRgTb5X9Iq9K2U7sSka2fV91qiowuBYfL4OGh?=
 =?us-ascii?Q?DdTGc7+5/RDRBLxlFDeVPcvU/OaYGxka7WcDlzs8EF1w+7alrdeC2VaMqNqC?=
 =?us-ascii?Q?IGNOpKwol1IcBkaavFcSb8UVrqTxtriF1MJhh3iCNFOLUKT+MTpy2YXCfZo/?=
 =?us-ascii?Q?JpqMMUqae9pSZRJglnxPMKfPGfvrgvGAO32BloPThjZVKVixKFfNKiQxMWWM?=
 =?us-ascii?Q?7ped0QWY0/jwmE+57IMyNZaG091YuynrmOauSPf3drlkwh1cgnGUrGmU/dZq?=
 =?us-ascii?Q?ch78vd/WtHXzey4J039XkQ3wRWFl3mJtpdqfkWZzWG95/R4SpgLck3TevYlL?=
 =?us-ascii?Q?UZyHQy7Vrs1in3TTzVUfDQ49SWtysQTuTFlBWylcrTgoVwXq45ucOMs3tYtm?=
 =?us-ascii?Q?DrhOlL7NBagD9/ZmNZLnNiKqqeKulsH0yKYHAy0MO9gMcmcdFfRzYs2EDpzc?=
 =?us-ascii?Q?h3Zbxa/0MssKU/2PzsIUqiE8ynKmR/zx5+XzDBCKaHA9JW/X35yDHS1CCnFc?=
 =?us-ascii?Q?QuiNoGKpi+xN08xIGQ6BfNbcxvyHQ3FO5wxL5CJKWE+EXE35/YGFPk7S2vUV?=
 =?us-ascii?Q?udsfalFdtEERYwNCZB4TKgL7+bKV4KQ/HgOZWB241+6ZECfFPMki1sS7PCJu?=
 =?us-ascii?Q?BUf9ALbwbdayD6a8CqM0v6ozZgajwacnOiOphub/DqEJYc4N/SEh77aIcma6?=
 =?us-ascii?Q?bGjfuskygfIcIBzrvA1KIsRLE1EKovUfkKbIKjqvfk4EQ+o2PLNFghpBDG6V?=
 =?us-ascii?Q?BhTaE8MwChs5jZyTUPG7KJcvrilqBIIlNgvn8VUufAJmRn1Qy+qvHGMmsQ5e?=
 =?us-ascii?Q?oOw3Fci82Cnc52pd1/CQkMSO6Fr/1+gGQi0T2chKF02ReKS4VDGwX8ltFZAY?=
 =?us-ascii?Q?Ruv6HZpQgAaI1gKy+MnxsRu1PRF5rhz5bdkQyFPGH+q4sRBVNbRTVUNkmwts?=
 =?us-ascii?Q?Piu4eWhNk0B20BEofvRQO7FwbUs66mJftpRP+sQQMWFeCCM6JGZ/RdXTWzvy?=
 =?us-ascii?Q?oSfDvcFP6x75TIp1D1ComvCi5SPj9RKKEfScYGE772wFN44mZbgoeNqI08FQ?=
 =?us-ascii?Q?owMVTqBsWa7i6oKB/A5nDGMawxuW4/oy2Ynqayb2kZxOJIXeCIcUEIKx2h8G?=
 =?us-ascii?Q?t/4YfiE8ghBEWXNCKBkilGWGN1pbaSgCuw1gQeJYh+1hdebT2Cshux1t/9nT?=
 =?us-ascii?Q?7DrG3bhKkKD00RabSGPRIyrN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2fT/xxIUqVIX/gbhU7eHiHRUrwGtfl6+rs5rRKtrapdnRzGdHIU/GALfsfSp?=
 =?us-ascii?Q?M3b1YTJ1EUwrvaHUhu/LvQPgxX4oEZ5fPfc6pQUtGqHPpubY6YP7fNU1bbeL?=
 =?us-ascii?Q?s7MiTk5taepEee4pOoMKtcLolmBsZCPr0Uj6uitivkNdHKubceZn8kiZATLc?=
 =?us-ascii?Q?BAILfVdRAb7x80qFXkdDNAjW+tGeH67yUYdn/9TvROi4dEWIx8/jUlAFJMSo?=
 =?us-ascii?Q?65j2Kzw1FruKLpuBZ6tEZJnrQ/y5Pkb4tdDBR+gfl+VbFyUVzukQ/Ex7vaYd?=
 =?us-ascii?Q?xu5eptkBEitZ2QQ9ggaK13fyfxRRo2d//dGeU2yMv6TvMbRUiP8zsE8ix/XU?=
 =?us-ascii?Q?IMq/OvsOgyMjWi5tAxYhcOV6HpwC7Y/L3qeTJbkGF4rDPuRd6z8E1eY42eKZ?=
 =?us-ascii?Q?lVVHArEWnSc90uc99HhkkURRczHwHjNoPyE5I55B6wzI4Ceoktot+7/Vu+nG?=
 =?us-ascii?Q?a0mxyu6j1/DL6JYRbCTb2MeTHa0JzHQGBfBPH9jatePJeTH0ox4+89cYvalb?=
 =?us-ascii?Q?GkuuNgiuRM+sH6aG2YRwrlm1JmGx8s5el9Dy4YP11bTYhiwnMeYLy+KoRnsf?=
 =?us-ascii?Q?TsIXCXIC1gnFADbN2RnlWzaLS5Vt2K33P1KigYnY5KbRgldYkweDu+pihXSb?=
 =?us-ascii?Q?/dlkx0EnohlubkRgUqj2SMq3Voel1bY6eILq8FOKEmtmgpQljkST4rv/qXoB?=
 =?us-ascii?Q?LIlanLjclbCqK1EXcV4TWHFK/KnJMJqv4iEtsVjN1r1M4lIt9wMbuCZRrgzo?=
 =?us-ascii?Q?VHTKF3kTW/dL2tewVWI44VW0I5/3ok3mtsAKS0ju+hqL1awtVSrEVxkzBDF5?=
 =?us-ascii?Q?yzgOgUiHZw4FphRzPtfXdyvpAsuKc9UbVpq8hlTmnRxu37lYEasHvD+nEaKs?=
 =?us-ascii?Q?sPJi5fVdA0Wjthm2LYZpxIqm+u0Hm0c3jqUrYqQJqkaHPkjommgCy71bDZQt?=
 =?us-ascii?Q?hPwgYelxupgO7Dh2u0keqkppInAqqao+BE0HomOtgDjZCBPa7m1RxrOSYQB4?=
 =?us-ascii?Q?ixN0YiXnyAI8VSjeF7WGMgIGsgh8H9qrzzO2AGRqqpprrOaR1szvyFJZ8ewZ?=
 =?us-ascii?Q?sAtvZ3XeLrKTsaaehnzcdgdxcD/Mhc5XPNPmvqyRC1nuIx2tpodpeGyrq3eb?=
 =?us-ascii?Q?wleQ76eP9N2BtfeUCnfgCdIIRXJMm9B252VJTuIDvfcILAE8brfqjN5FkFdQ?=
 =?us-ascii?Q?O4TpXAh5tK4oo/ffUTOJMyhsTI0xxYbm0ESCFFFgKSGxruDR6W3TkJwUUFAu?=
 =?us-ascii?Q?B0r3sW4zUH16PUbe1NdZxRVcc6+mag9s1KNElkDzYP72R1wJ01QKSrDc4Q7v?=
 =?us-ascii?Q?oTx4pV5x3OueQXOuA4x40EI1/wPx3fFM0GWhrLJey6A8KEvsV4cN17ZEYcf6?=
 =?us-ascii?Q?SFjIXmKssT/tzPY6hvByevaYStnDoaxbgRx5IttaLagocM2QA5UPOONhHAo1?=
 =?us-ascii?Q?oAy9/eamjqWBFdGBsZoucIaglvVozerB90MSUvmJOo7pu33lZAw6q4uQyI/Y?=
 =?us-ascii?Q?9esVEm9yoveh/hdkodyOc85EWzwDhDICuSPvLNHN0UyTUovJmsVJJTNWZZyO?=
 =?us-ascii?Q?WocMVI+8JVxp8n8UzAJVehbMZuTtnB17m9o+mUh2MJvPYZdbLxXIq+sMTxqf?=
 =?us-ascii?Q?ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42993a95-c01f-467e-9fa0-08dcfe85b443
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 17:08:59.1401 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b475sDaMpWkPqzywWWBeoRZ25R184uXR4VBwUiB96I1aZ1SfYVYyFKHAbiYbdPcM3RLbB89jqkMmpxoY7vwppg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7591
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

On Mon, Nov 04, 2024 at 07:19:24PM +0200, Jani Nikula wrote:
> Convert HAS_HW_SAGV_WM() to struct intel_display. Do minimal drive-by
> conversions to struct intel_display in the callers while at it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c   |  5 ++-
>  .../drm/i915/display/intel_display_device.h   |  2 +-
>  .../drm/i915/display/skl_universal_plane.c    |  7 ++--
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 33 +++++++++++--------
>  4 files changed, 25 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 9ba77970dab7..ed88a28a3afa 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -619,7 +619,6 @@ static void skl_write_cursor_wm(struct intel_dsb *dsb,
>  				const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(plane->base.dev);
> -	struct drm_i915_private *i915 = to_i915(plane->base.dev);
>  	enum plane_id plane_id = plane->id;
>  	enum pipe pipe = plane->pipe;
>  	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
> @@ -627,14 +626,14 @@ static void skl_write_cursor_wm(struct intel_dsb *dsb,
>  		&crtc_state->wm.skl.plane_ddb[plane_id];
>  	int level;
>  
> -	for (level = 0; level < i915->display.wm.num_levels; level++)
> +	for (level = 0; level < display->wm.num_levels; level++)
>  		intel_de_write_dsb(display, dsb, CUR_WM(pipe, level),
>  				   skl_cursor_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));
>  
>  	intel_de_write_dsb(display, dsb, CUR_WM_TRANS(pipe),
>  			   skl_cursor_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
>  
> -	if (HAS_HW_SAGV_WM(i915)) {
> +	if (HAS_HW_SAGV_WM(display)) {
>  		const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
>  
>  		intel_de_write_dsb(display, dsb, CUR_WM_SAGV(pipe),
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index c23823769911..e1e718fced3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -162,7 +162,7 @@ struct intel_display_platforms {
>  #define HAS_GMBUS_IRQ(i915)		(DISPLAY_VER(i915) >= 4)
>  #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
>  #define HAS_GMCH(i915)			(DISPLAY_INFO(i915)->has_gmch)
> -#define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
> +#define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
>  #define HAS_IPC(i915)			(DISPLAY_INFO(i915)->has_ipc)
>  #define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)
>  #define HAS_LRR(i915)			(DISPLAY_VER(i915) >= 12)
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 28f7f2405ef3..4c7bcf6806ff 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -736,7 +736,6 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
>  			       const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(plane->base.dev);
> -	struct drm_i915_private *i915 = to_i915(plane->base.dev);
>  	enum plane_id plane_id = plane->id;
>  	enum pipe pipe = plane->pipe;
>  	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
> @@ -746,14 +745,14 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
>  		&crtc_state->wm.skl.plane_ddb_y[plane_id];
>  	int level;
>  
> -	for (level = 0; level < i915->display.wm.num_levels; level++)
> +	for (level = 0; level < display->wm.num_levels; level++)
>  		intel_de_write_dsb(display, dsb, PLANE_WM(pipe, plane_id, level),
>  				   skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));
>  
>  	intel_de_write_dsb(display, dsb, PLANE_WM_TRANS(pipe, plane_id),
>  			   skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
>  
> -	if (HAS_HW_SAGV_WM(i915)) {
> +	if (HAS_HW_SAGV_WM(display)) {
>  		const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
>  
>  		intel_de_write_dsb(display, dsb, PLANE_WM_SAGV(pipe, plane_id),
> @@ -765,7 +764,7 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
>  	intel_de_write_dsb(display, dsb, PLANE_BUF_CFG(pipe, plane_id),
>  			   skl_plane_ddb_reg_val(ddb));
>  
> -	if (DISPLAY_VER(i915) < 11)
> +	if (DISPLAY_VER(display) < 11)
>  		intel_de_write_dsb(display, dsb, PLANE_NV12_BUF_CFG(pipe, plane_id),
>  				   skl_plane_ddb_reg_val(ddb_y));
>  }
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 09af693da586..060e0cfcb47f 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -449,6 +449,7 @@ bool intel_can_enable_sagv(struct drm_i915_private *i915,
>  
>  static int intel_compute_sagv_mask(struct intel_atomic_state *state)
>  {
> +	struct intel_display *display = to_intel_display(state);
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	int ret;
>  	struct intel_crtc *crtc;
> @@ -484,7 +485,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
>  		 * other crtcs can't be allowed to use the more optimal
>  		 * normal (ie. non-SAGV) watermarks.
>  		 */
> -		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(i915) &&
> +		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(display) &&
>  			DISPLAY_VER(i915) >= 12 &&
>  			intel_crtc_can_enable_sagv(new_crtc_state);
>  
> @@ -2748,10 +2749,10 @@ static bool skl_plane_selected_wm_equals(struct intel_plane *plane,
>  					 const struct skl_pipe_wm *old_pipe_wm,
>  					 const struct skl_pipe_wm *new_pipe_wm)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> +	struct intel_display *display = to_intel_display(plane);
>  	int level;
>  
> -	for (level = 0; level < i915->display.wm.num_levels; level++) {
> +	for (level = 0; level < display->wm.num_levels; level++) {
>  		/*
>  		 * We don't check uv_wm as the hardware doesn't actually
>  		 * use it. It only gets used for calculating the required
> @@ -2762,7 +2763,7 @@ static bool skl_plane_selected_wm_equals(struct intel_plane *plane,
>  			return false;
>  	}
>  
> -	if (HAS_HW_SAGV_WM(i915)) {
> +	if (HAS_HW_SAGV_WM(display)) {
>  		const struct skl_plane_wm *old_wm = &old_pipe_wm->planes[plane->id];
>  		const struct skl_plane_wm *new_wm = &new_pipe_wm->planes[plane->id];
>  
> @@ -2937,6 +2938,7 @@ static void skl_wm_level_from_reg_val(u32 val, struct skl_wm_level *level)
>  static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  				     struct skl_pipe_wm *out)
>  {
> +	struct intel_display *display = to_intel_display(crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  	enum plane_id plane_id;
> @@ -2962,7 +2964,7 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  
>  		skl_wm_level_from_reg_val(val, &wm->trans_wm);
>  
> -		if (HAS_HW_SAGV_WM(i915)) {
> +		if (HAS_HW_SAGV_WM(display)) {
>  			if (plane_id != PLANE_CURSOR)
>  				val = intel_de_read(i915, PLANE_WM_SAGV(pipe, plane_id));
>  			else
> @@ -3131,6 +3133,7 @@ static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
>  void intel_wm_state_verify(struct intel_atomic_state *state,
>  			   struct intel_crtc *crtc)
>  {
> +	struct intel_display *display = to_intel_display(state);
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	const struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -3205,7 +3208,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
>  		hw_wm_level = &hw->wm.planes[plane->id].sagv.wm0;
>  		sw_wm_level = &sw_wm->planes[plane->id].sagv.wm0;
>  
> -		if (HAS_HW_SAGV_WM(i915) &&
> +		if (HAS_HW_SAGV_WM(display) &&
>  		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
>  			drm_err(&i915->drm,
>  				"[PLANE:%d:%s] mismatch in SAGV WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
> @@ -3221,7 +3224,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
>  		hw_wm_level = &hw->wm.planes[plane->id].sagv.trans_wm;
>  		sw_wm_level = &sw_wm->planes[plane->id].sagv.trans_wm;
>  
> -		if (HAS_HW_SAGV_WM(i915) &&
> +		if (HAS_HW_SAGV_WM(display) &&
>  		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
>  			drm_err(&i915->drm,
>  				"[PLANE:%d:%s] mismatch in SAGV trans WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
> @@ -3392,17 +3395,19 @@ static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
>  
>  static void skl_setup_wm_latency(struct drm_i915_private *i915)
>  {
> -	if (HAS_HW_SAGV_WM(i915))
> -		i915->display.wm.num_levels = 6;
> +	struct intel_display *display = &i915->display;
> +
> +	if (HAS_HW_SAGV_WM(display))
> +		display->wm.num_levels = 6;
>  	else
> -		i915->display.wm.num_levels = 8;
> +		display->wm.num_levels = 8;
>  
> -	if (DISPLAY_VER(i915) >= 14)
> -		mtl_read_wm_latency(i915, i915->display.wm.skl_latency);
> +	if (DISPLAY_VER(display) >= 14)
> +		mtl_read_wm_latency(i915, display->wm.skl_latency);
>  	else
> -		skl_read_wm_latency(i915, i915->display.wm.skl_latency);
> +		skl_read_wm_latency(i915, display->wm.skl_latency);
>  
> -	intel_print_wm_latency(i915, "Gen9 Plane", i915->display.wm.skl_latency);
> +	intel_print_wm_latency(i915, "Gen9 Plane", display->wm.skl_latency);
>  }
>  
>  static const struct intel_wm_funcs skl_wm_funcs = {
> -- 
> 2.39.5
> 
