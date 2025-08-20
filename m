Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6877B2D4B3
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 09:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E35210E6A7;
	Wed, 20 Aug 2025 07:18:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DC0XF21Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AC4710E162;
 Wed, 20 Aug 2025 07:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755674302; x=1787210302;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=B1JjAeJG33TKKBJe2aZtKaibxfa94fB+bPRH3/BQHQw=;
 b=DC0XF21QLFGkpXtUVEAZZA8Jl0rm506PtO9lDXAg9f5QEyAke4TdkXVt
 Wmu3IfETx3XehASWR/klOe8VF5XmHRNQGk9qzhPtXgZepqJb7jST2TlXM
 wciAfcxeGkjX6H3+eQk3InU4h01NQ3Mj49cdByp+u633PqdHF074dkQSC
 udHn7wEMUJZcKAmCQ5DBBrTk5YyqqM44BvFYr6UGo546btDSFpmKZ0EDB
 xMcLjCJN+02EGqpEBw5dKfCeHUb2e3c90ztbdAT9WJ387+8X3p7jhu+pE
 hJtqiTjeMI0FAn/gXiqW5HXG6z8LRGDu0XNcyxnmUa6KVK2CjVfCbHOQx w==;
X-CSE-ConnectionGUID: vZGDYVJxSKWapJXRUZNXAg==
X-CSE-MsgGUID: dHi2mF6KRjq+ShUMRVoJ6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="68203231"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="68203231"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 00:18:22 -0700
X-CSE-ConnectionGUID: P8mqh3JiTXGY7YCGkIcDyw==
X-CSE-MsgGUID: DkuxRu2yTpuw+rRIk7W6qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="168011195"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.58])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 00:18:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH v2] drm/i915/backlight: Fix divide by 0 error in
 i9xx_set_backlight
In-Reply-To: <20250819160438.145734-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250819160438.145734-1-suraj.kandpal@intel.com>
Date: Wed, 20 Aug 2025 10:18:15 +0300
Message-ID: <aa314e44e68404093a1956dfd8af54bc1031d3b7@intel.com>
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

On Tue, 19 Aug 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> pwm_level_max maybe 0 we do throw a warning but move ahead with
> execution which may later cause a /0 error.
>
> --v2
> -return if the warn_on gets hit [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index e007380e9a63..3b14f929825a 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -236,7 +236,8 @@ static void i9xx_set_backlight(const struct drm_connector_state *conn_state, u32
>  	struct intel_panel *panel = &connector->panel;
>  	u32 tmp, mask;
>  
> -	drm_WARN_ON(display->drm, panel->backlight.pwm_level_max == 0);
> +	if (drm_WARN_ON(display->drm, panel->backlight.pwm_level_max == 0))
> +		return;
>  
>  	if (panel->backlight.combination_mode) {
>  		struct pci_dev *pdev = to_pci_dev(display->drm->dev);

-- 
Jani Nikula, Intel
