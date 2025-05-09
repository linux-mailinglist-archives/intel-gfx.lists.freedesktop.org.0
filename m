Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15333AB0F9C
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 11:51:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4946C10E043;
	Fri,  9 May 2025 09:51:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SJe0JHbx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E32010E043;
 Fri,  9 May 2025 09:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746784297; x=1778320297;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SLy5Wh0RL4WXmiysysNtTUiF/8oBikz0tTdIeYEFtJU=;
 b=SJe0JHbx8VLQLgEZ+7+tj+cjmTyPs/xsRaBZIDKOHEp7ZBVBitQKZRmv
 v5En1R30nsw7rdP0TyoMwKSqxyqxYsaH3pHNiPS8M4UxAKXj2O5MEAI81
 FsOEBtQ3Tb/N9eOG85NteLLKMhKbpPZXzYEs9Qo8Jhsj9DcAN6qm9Oozp
 sPr9NSiL+9vNp12NtzyjFhDzKsnh+vZNH5QRAsYtnfJGcfhA3GTi0wXx4
 CD6PjiJDUKiQX10tJxpr9c4b+QxBwrQKM8ZhHCmsmevbh8yPni9xBY15f
 hoTne+VD6vkHmMNZg+LtL58t4knQg4X/tUA6DViDMBBKYqxyjIsBUkK6g A==;
X-CSE-ConnectionGUID: rY7MKlD5TS27LIc8u3kSzg==
X-CSE-MsgGUID: 15VicHn4R42DVdxx0acgKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="73986889"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="73986889"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 02:51:36 -0700
X-CSE-ConnectionGUID: NbN9g2JJS86S1LW4nJHsCA==
X-CSE-MsgGUID: h5Hl3xQjQ16nawSG+b43ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="137072784"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.55])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 02:51:35 -0700
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
Date: Fri, 09 May 2025 12:51:32 +0300
Message-ID: <87ecwym7rv.fsf@intel.com>
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

No blank lines between trailer lines please.

Spelling: Bspec: ...

> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14247
>

No blank lines between trailer lines please.

The patch subject should indicate versions, i.e. [PATCH v2].

The commit message should have a changelog indicating changes since v1.

Please be considerate towards the reviewers. I don't want to have to
compare the patches to figure out what changed and why.

If it's only the commit message that changed, then no, you are not
supposed to post another version with just commit message changes unless
asked or before you already have Reviewed-by.

BR,
Jani.


> Cc: Suraj Kandpal <suraj.kandpal@intel.com> Cc: Jani Nikula
> <jani.nikula@intel.com> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
> --- drivers/gpu/drm/i915/display/icl_dsi.c | 4 ++--
> drivers/gpu/drm/i915/display/icl_dsi_regs.h | 1 + 2 files changed, 3
> insertions(+), 2 deletions(-)
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
