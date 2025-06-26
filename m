Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDEDAEA265
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 17:24:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BABF10E2C3;
	Thu, 26 Jun 2025 15:24:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TPkeqUAM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A1F610E2C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jun 2025 15:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750951453; x=1782487453;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1T2kgV+XCzHdfrYuEEqL61gtYQOPcbk7+R5+RXjO6qI=;
 b=TPkeqUAMztlDX70Pabzgh7NI6OPCpG6DxLIbQoYjJsvAQfW6BzWr7su4
 nQLAFZ5/tvnrhiTjVs3j0rEIDRwbtTg+IHnb9TthyWvSqGu7sydSAKAx4
 qd8cNbKeSe7poC+tpRtX/wZkKcc0gyTqaEFtoQNk/TJFikvV9X+2FZjL2
 a3T9BWwE3qHUzoD0kIlLu0Y4wQ/ASIny/PhzWpg6yGO/Lg4ZgYpsFLzF1
 755yEAnZdCzhKNisatys5tZpkPzll1SniS6/SLOa9vTySZ3DGhCk9bENF
 FMeCHe3NwhNBrl2QBZZwvHbzOMwQsexBBpUFU8ZBnQ997qreK65IHdAkN Q==;
X-CSE-ConnectionGUID: 5oVV1kkdRkWbhPFyPkVWiA==
X-CSE-MsgGUID: 8G9oeRyLSMeafenCfcuVKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="57061776"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57061776"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 08:24:12 -0700
X-CSE-ConnectionGUID: 5QBa49I1TP2r7fD6tFBGiw==
X-CSE-MsgGUID: Lha44BOPQ7q7lVMHBkdTUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="157109945"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 08:24:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Hans de Goede <hansg@kernel.org>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Hans de Goede <hansg@kernel.org>, intel-gfx
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dsi: Fix NULL pointer deref in
 vlv_dphy_param_init()
In-Reply-To: <20250626143317.101706-1-hansg@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250626143317.101706-1-hansg@kernel.org>
Date: Thu, 26 Jun 2025 18:24:07 +0300
Message-ID: <9063507c2061b731750d632183097c5a35fd875d@intel.com>
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

On Thu, 26 Jun 2025, Hans de Goede <hansg@kernel.org> wrote:
> Commit 77ba0b856225 ("drm/i915/dsi: convert vlv_dsi.[ch] to struct
> intel_display") added a to_intel_display(connector) call to
> vlv_dphy_param_init() but when vlv_dphy_param_init() gets called
> the connector object has not been initialized yet, so this leads
> to a NULL pointer deref:
>
>  BUG: kernel NULL pointer dereference, address: 000000000000000c
>  ...
>  Hardware name: ASUSTeK COMPUTER INC. T100TA/T100TA, BIOS T100TA.314 08/13/2015
>  RIP: 0010:vlv_dsi_init+0x4e6/0x1600 [i915]
>  ...
>  Call Trace:
>   <TASK>
>   ? intel_step_name+0x4be8/0x5c30 [i915]
>   intel_setup_outputs+0x2d6/0xbd0 [i915]
>   intel_display_driver_probe_nogem+0x13f/0x220 [i915]
>   i915_driver_probe+0x3d9/0xaf0 [i915]
>
> Use to_intel_display(&intel_dsi->base) instead to fix this.

Oops, my bad. It's misleading that the DSI init handles uninitialized
connector so much, and the encoder has been initialized much
earlier. But I guess this is the simplest fix.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Fixes: 77ba0b856225 ("drm/i915/dsi: convert vlv_dsi.[ch] to struct intel_display")
> Signed-off-by: Hans de Goede <hansg@kernel.org>
> ---
>  drivers/gpu/drm/i915/display/vlv_dsi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index 21c1e10caf68..2007bb9d974d 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1589,8 +1589,8 @@ static void vlv_dsi_add_properties(struct intel_connector *connector)
>  
>  static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
>  {
> +	struct intel_display *display = to_intel_display(&intel_dsi->base);
>  	struct intel_connector *connector = intel_dsi->attached_connector;
> -	struct intel_display *display = to_intel_display(connector);
>  	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
>  	u32 tlpx_ns, extra_byte_count, tlpx_ui;
>  	u32 ui_num, ui_den;

-- 
Jani Nikula, Intel
