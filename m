Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DADBBA16B09
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 11:51:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA2E410E3B1;
	Mon, 20 Jan 2025 10:51:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bSg3gn2m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA80D10E3BA;
 Mon, 20 Jan 2025 10:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737370312; x=1768906312;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=eJkIFy7+aTK9rAP7zJTIiPKkvWosOeyOY4ZNqp07DjA=;
 b=bSg3gn2mkykktbPQPfK7LvY0CeW7iVOXJETy+auONTzXUtkCeqLV/3do
 ZY2TkY/2C1x2z5Av0PRxTXM8YEIHIwFUvwdTb6BDQP8S9p1PdfKdRFSM/
 VZ4eNXp0ytAKRDcCUig11tGGOG4ymcw72Uh6j8oE3N+ERTkvk6KQnzhJS
 CI/y/0YIijcxsXic8Sp5HPNCSaiWfONpoxgn54QJUS8rVEG4ThibVKv9d
 MugvHOhxVoIa6SQ+u0jeKgfxhl9cICstD/Yf3JHm25CFmdCF6Y7UzoYIi
 iLeKereyS7XQ2S2IMsa3UndkJ9i2KoTfn2JWyTZ1HCK/HQXwM1sNXaKCv w==;
X-CSE-ConnectionGUID: 0OtmAKgjQCiIYgpPu8Slnw==
X-CSE-MsgGUID: CtgLE39vScelWS4jZWKDVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="37635162"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="37635162"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 02:51:51 -0800
X-CSE-ConnectionGUID: hxfpIzYMQJqo9rnHILrIJQ==
X-CSE-MsgGUID: EYIRv643SB2MX5xjbVjl/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106298377"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 02:51:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, dnyaneshwar.bhadane@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Use correct function to check if encoder
 is HDMI
In-Reply-To: <20250117041247.1084381-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250117041247.1084381-1-suraj.kandpal@intel.com>
Date: Mon, 20 Jan 2025 12:51:43 +0200
Message-ID: <87bjw1rc5c.fsf@intel.com>
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

On Fri, 17 Jan 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Use intel_encoder_is_hdmi function which was recently introduced to
> see if encoder is HDMI or not.
>
> --v2
> -Add Fixes tag [Jani]
>
> Fixes: 6a3691ca4799 ("drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on HDMI")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 7464b44c8bb3..91d5629cd9f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -41,7 +41,7 @@ intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
>  	u32 rekey_bit = 0;
>  
>  	/* Here we assume HDMI is in TMDS mode of operation */
> -	if (encoder->type != INTEL_OUTPUT_HDMI)
> +	if (!intel_encoder_is_hdmi(encoder))
>  		return;
>  
>  	if (DISPLAY_VER(display) >= 30) {

-- 
Jani Nikula, Intel
