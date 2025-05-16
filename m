Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB40AB9E96
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 16:27:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1972310EAE0;
	Fri, 16 May 2025 14:27:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GfB+bJVg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9DDB10EAE0;
 Fri, 16 May 2025 14:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747405635; x=1778941635;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7lH0co+2v93pa76VZUUx3wrGi2ANuBcxVXGPG5qiSDc=;
 b=GfB+bJVghkQCcNlE5tAhNqFzb9lLz0JjxaTDO0T6IrTQ3wggeOi++HK7
 ULcObTX6wNuVwk9chUJid6PPdDxpughrzR5oE7bidTQ/Sy7ltvEy1OijB
 DWpgCmdA0rSOWjBZ/fQSoJmSzRlUv/pq15asnmgHqiHLMo5JsZnNb2Gkl
 R9ss69Nz2dslsyGzz6rsAmTsM47SbEcXzRfTUj1bfquGXGWgd5iyROKyf
 LMJI8ztENSKsIPBdmnOQs0zXXBiTwpRUjSLN0vTFNQo3tilUrxWPhz2wf
 KvUsbnhkuSYpmaHrncAHMbi7zMB876I+OIce//OXiD0XdPdjcWRR9ZU4+ w==;
X-CSE-ConnectionGUID: bDSdLZ8TREWnFwLWzryFow==
X-CSE-MsgGUID: 6qlYptOlSduHKECdgKzGxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="60719753"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="60719753"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:27:15 -0700
X-CSE-ConnectionGUID: 7IbPTFHmTZKU7qetbmH9aA==
X-CSE-MsgGUID: ka+6vR5mR2iKCAJP7J2eQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="138564045"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.133])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:27:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: gareth.yu@intel.com, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Gareth Yu <gareth.yu@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/display: Enforce pipeline flush with DSI HS
 transfer
In-Reply-To: <20250509092539.763389-1-gareth.yu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509021327.649003-1-gareth.yu@intel.com>
 <20250509092539.763389-1-gareth.yu@intel.com>
Date: Fri, 16 May 2025 17:27:10 +0300
Message-ID: <8734d4ws01.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 09 May 2025, <gareth.yu@intel.com> wrote:
> From: Gareth Yu <gareth.yu@intel.com>
>
> With all of the boundary conditions when streaming the commands B2B in our
> validation (part of the reason we added the flush),  the Flush effectively
> serializes the transmission of each command enqueued within the command
> dispatcher to one per V. Blank line which simplifies the behavior of the
> High Speed Arbitration.
>
> So, unless we absolutely have to burst these to the Sink, we should be
> using the Pipeline Flush bit to serialize the commands.
>
> BSPEC: 19742
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14247
>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Gareth Yu <gareth.yu@intel.com>

Pushed to drm-intel-next, with the commit message nitpicks fixed, thanks
for the patch.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c      | 4 ++--
>  drivers/gpu/drm/i915/display/icl_dsi_regs.h | 1 +
>  2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 402b7b2e1829..f91f27067768 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -191,12 +191,12 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
>  	else
>  		tmp &= ~PAYLOAD_PRESENT;
>  
> -	tmp &= ~VBLANK_FENCE;
> +	tmp &= ~(VBLANK_FENCE | LP_DATA_TRANSFER | PIPELINE_FLUSH);
>  
>  	if (enable_lpdt)
>  		tmp |= LP_DATA_TRANSFER;
>  	else
> -		tmp &= ~LP_DATA_TRANSFER;
> +		tmp |= PIPELINE_FLUSH;
>  
>  	tmp &= ~(PARAM_WC_MASK | VC_MASK | DT_MASK);
>  	tmp |= ((packet->header[0] & VC_MASK) << VC_SHIFT);
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> index d4845ac65acc..b601b7632339 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> +++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> @@ -272,6 +272,7 @@
>  #define  PAYLOAD_PRESENT		(1 << 31)
>  #define  LP_DATA_TRANSFER		(1 << 30)
>  #define  VBLANK_FENCE			(1 << 29)
> +#define  PIPELINE_FLUSH			(1 << 28)
>  #define  PARAM_WC_MASK			(0xffff << 8)
>  #define  PARAM_WC_LOWER_SHIFT		8
>  #define  PARAM_WC_UPPER_SHIFT		16

-- 
Jani Nikula, Intel
