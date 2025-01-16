Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D34FFA134A9
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 09:06:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A98E10E8D2;
	Thu, 16 Jan 2025 08:06:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QXyCQZB8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA7E810E1C7;
 Thu, 16 Jan 2025 08:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737014816; x=1768550816;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ZXq/ZZlODhdWReQiVrnAFz431HJVOlfG4DqLiqyb0dE=;
 b=QXyCQZB8U9hoeevU46HGU9lgreoQR9IpHR1BOjoq6ONNwhmoAoy4lbA/
 P8XiFmDwUum38cnQh8yXms8U+TxXQ8+OINwt8pZaCJpOGwdAawQLDXX2K
 pFYagyxJVintJWHrfpll8TQ4QXUm9sleQtMBn2KtLJnMmS7NUUnIFq6iI
 Zo7MpaVLr5SC50tKdVyTYwJGQUwt8S2iK9spVcCg5B1Pv97KMBbb+WYcy
 ImM9V82F4sM9paEwO1kKSlSWtl7Inw1vQdQ9WQIHBuBEPUK2CdqB1ApQ+
 Gv//EAua/BxzC1tRLaGAlHCETodvz7Mmixu5sJ2cYXxTzw0xpsiiJGscw g==;
X-CSE-ConnectionGUID: cWLiV8TxSDaE7rqN+XjWMQ==
X-CSE-MsgGUID: BxRwhoD7S+G8OrTSrk7xKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="47975346"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="47975346"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 00:06:56 -0800
X-CSE-ConnectionGUID: jspM9nBBSNOWjuFhA16cgg==
X-CSE-MsgGUID: ENcdQZQpRha6JIh+KCTEZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="105457277"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.132])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 00:06:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, dnyaneshwar.bhadane@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Use correct function to check if encoder
 is HDMI
In-Reply-To: <20250116052023.981666-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250116052023.981666-1-suraj.kandpal@intel.com>
Date: Thu, 16 Jan 2025 10:06:50 +0200
Message-ID: <8734hjgp2d.fsf@intel.com>
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

On Thu, 16 Jan 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Use intel_encoder_is_hdmi function which was recently introduced to
> see if encoder is HDMI or not.

Does this mean we always returned early from
intel_hdcp_adjust_hdcp_line_rekeying()?

Fixes: ?

BR,
Jani.






>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
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
