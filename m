Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 155F8903832
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 11:55:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E31C010E1AE;
	Tue, 11 Jun 2024 09:54:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E7H1DXUX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DB7B10E1AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 09:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718099697; x=1749635697;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=fSLoI/PRBsl9ABc/5+8b9UqqbcFWePV2/9sDisvspzQ=;
 b=E7H1DXUXXyb/1inFpuZkaFd+oNpZTFPg9uChPxmVnj+gxhbjH0neGKHq
 5t0RLGVJ6u+x6/gSGemRyVlsK76eZDS++qQbxEfYL4nr3pu3F7lX1DYyg
 A/gLghECrzaDuHJn2MT/RX/Edu0kbld9CJX1EWulECnuv9YgAN8zAySAm
 fehNaMzIr7JOZXeWGIHtkycdYc03JLs0yKoJ+fUsOdBzzKq/ZOAlIvoZi
 OHWjlqPsnBHgLuQ02vldvAc6wA+t2j9G+g8aQnk1HJnkdcWBJcJxUdnNr
 Ail1OwK5Q7nuwRUD3FXrKYWN5p3m0TAbwAh+s5QNL7rctf8ci7ZL2C3Qr A==;
X-CSE-ConnectionGUID: 2X9oSoCYTg2AJd1RpkydYg==
X-CSE-MsgGUID: jB8wdaR4Qlq4lDcngyNTjg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="25918824"
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="25918824"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 02:54:56 -0700
X-CSE-ConnectionGUID: OdyuVTmGT3WRomnKu5JnIA==
X-CSE-MsgGUID: 4Zrs1uK5SEeRV6rHM9jYRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="40066355"
Received: from araresx-mobl1.ger.corp.intel.com (HELO [10.251.213.231])
 ([10.251.213.231])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 02:54:54 -0700
Message-ID: <fbf04d3e-59b8-4fd1-9c06-c928f19a43ac@linux.intel.com>
Date: Tue, 11 Jun 2024 11:55:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/13] drm/display: Add missing Panel Replay Enable SU
 Region ET bit
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
 <20240607134917.1327574-6-jouni.hogander@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240607134917.1327574-6-jouni.hogander@intel.com>
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

Den 2024-06-07 kl. 15:49, skrev Jouni Högander:
> Add missing Panel Replay Enable SU Region ET bit defined in DP2.1
> specification.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> Reviewed-by: Animesh Manna <animesh.manna@intel.com>
> ---
>   include/drm/display/drm_dp.h | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index f246fa03a3cb..173548c6473a 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -743,6 +743,7 @@
>   # define DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN           (1 << 4)
>   # define DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN      (1 << 5)
>   # define DP_PANEL_REPLAY_SU_ENABLE                      (1 << 6)
> +# define DP_PANEL_REPLAY_ENABLE_SU_REGION_ET            (1 << 7) /* DP 2.1 */
>   
>   #define PANEL_REPLAY_CONFIG2                                     0x1b1 /* eDP 1.5 */
>   # define DP_PANEL_REPLAY_SINK_REFRESH_RATE_UNLOCK_GRANTED	 (1 << 0)
