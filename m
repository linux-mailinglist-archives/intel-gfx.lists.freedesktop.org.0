Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C526C8D1BF8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 15:02:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 170381122B3;
	Tue, 28 May 2024 13:02:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZLHLVHux";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51A3B112298
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 13:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716901345; x=1748437345;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2wQjv/CR3UWXHT2iaoIkTszskHZcD375r2eiaR+bDUA=;
 b=ZLHLVHux8UKV756OdCPhqTr6aEHONXjB6s/vYFdWFRkWxpbDnFN0O2UX
 M7vqWJ13k2XmPYImjAEA0tpDFl/GmXWMRN3vBzay5gPAgSr7LFDv4aRuV
 WiEUEzw64N3ddokydegUbYxmA3dP8VSevaE+Oka/cnknMIK2yubel6vKj
 CpDgLxSaUJigRrgbMo0BukQp/ZHjq8FPc9lV/VWziabyOCR5isLNKO0sA
 e7kGh0tjC/gG/KZaChbK+Xny/vDPkM8mypc1Zzj0b7pS5G7mObvost5xg
 z3+5bsbauZxirZ3mEQde/oeQcX3n0zLmBc/cpvEQ2q69JwEM4mr3G3eTt w==;
X-CSE-ConnectionGUID: 7F0CDq8jTpy+JMCn7aDtMA==
X-CSE-MsgGUID: cdrlofLkTImIZ+Y3pqSspw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="38626318"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="38626318"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:02:12 -0700
X-CSE-ConnectionGUID: oz/q9eM5TBWyMiClqOLoIQ==
X-CSE-MsgGUID: gD41FbAnRzKEvsWVSKTqpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35677900"
Received: from nneronin-mobl1.ger.corp.intel.com (HELO [10.251.212.136])
 ([10.251.212.136])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:02:11 -0700
Message-ID: <76e133e5-2399-4db4-a290-70bc77ca065b@linux.intel.com>
Date: Tue, 28 May 2024 15:02:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/20] drm/panel replay: Add edp1.5 Panel Replay bits
 and register
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
 <20240527072220.3294769-3-jouni.hogander@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240527072220.3294769-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

Acked-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Den 2024-05-27 kl. 09:22, skrev Jouni Högander:
> Add PANEL_REPLAY_CONFIGURATION_2 register and some missing Panel Replay
> bits.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   include/drm/display/drm_dp.h | 16 +++++++++++++---
>   1 file changed, 13 insertions(+), 3 deletions(-)
>
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index 906949ca3cee..79bde372b152 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -544,9 +544,10 @@
>   /* DFP Capability Extension */
>   #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT	0x0a3	/* 2.0 */
>   
> -#define DP_PANEL_REPLAY_CAP                 0x0b0  /* DP 2.0 */
> -# define DP_PANEL_REPLAY_SUPPORT            (1 << 0)
> -# define DP_PANEL_REPLAY_SU_SUPPORT         (1 << 1)
> +#define DP_PANEL_REPLAY_CAP				0x0b0  /* DP 2.0 */
> +# define DP_PANEL_REPLAY_SUPPORT			(1 << 0)
> +# define DP_PANEL_REPLAY_SU_SUPPORT			(1 << 1)
> +# define DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT	(1 << 2) /* eDP 1.5 */
>   
>   #define DP_PANEL_PANEL_REPLAY_CAPABILITY		0xb1
>   # define DP_PANEL_PANEL_REPLAY_SU_GRANULARITY_REQUIRED	(1 << 5)
> @@ -734,11 +735,20 @@
>   
>   #define PANEL_REPLAY_CONFIG                             0x1b0  /* DP 2.0 */
>   # define DP_PANEL_REPLAY_ENABLE                         (1 << 0)
> +# define DP_PANEL_REPLAY_VSC_SDP_CRC_EN                 (1 << 1) /* eDP 1.5 */
>   # define DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN         (1 << 3)
>   # define DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN           (1 << 4)
>   # define DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN      (1 << 5)
>   # define DP_PANEL_REPLAY_SU_ENABLE                      (1 << 6)
>   
> +#define PANEL_REPLAY_CONFIG2                                     0x1b1 /* eDP 1.5 */
> +# define DP_PANEL_REPLAY_SINK_REFRESH_RATE_UNLOCK_GRANTED	 (1 << 0)
> +# define DP_PANEL_REPLAY_CRC_VERIFICATION			 (1 << 1)
> +# define DP_PANEL_REPLAY_SU_Y_GRANULARITY_EXTENDED_EN		 (1 << 2)
> +# define DP_PANEL_REPLAY_SU_Y_GRANULARITY_EXTENDED_VAL_SEL_SHIFT 3
> +# define DP_PANEL_REPLAY_SU_Y_GRANULARITY_EXTENDED_VAL_SEL_MASK  (0xf << 3)
> +# define DP_PANEL_REPLAY_SU_REGION_SCANLINE_CAPTURE		 (1 << 7)
> +
>   #define DP_PAYLOAD_ALLOCATE_SET		    0x1c0
>   #define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT 0x1c1
>   #define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT 0x1c2
