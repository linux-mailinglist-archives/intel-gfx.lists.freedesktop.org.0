Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 336BA905269
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2024 14:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5210610E848;
	Wed, 12 Jun 2024 12:29:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="clPw5Xbb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 965C010E848
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2024 12:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718195350; x=1749731350;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qxoIXkemTa/u+7UA+2US2hErLD65nUY9Ntf5CsXydCM=;
 b=clPw5XbbdJQUv7eQRrdnh84zBlCtBd2/jT2u4TZM/jIZiCHtww0USspB
 u0IR0tIfSRyZMWHKQfzgft7n0RLc9xk5jBL7Bb+ngWAJD3fuHRl6pfiN2
 xE8Sd3+Ff9qKfVmpza2IMwqYaoIcYiT9DEu3/mUJHiBX61atpOdYY+HdY
 kZXhIpoWmjx8Eme8ucfW5aeUVDsjuM5eSITIZ8CcVsrSYAUrOjMMxd7F/
 Tv7FXemmrXEewpUmQexeaWk0lPaLW7VilpGE1M5uZVLHilxTV6ye/aFu+
 LtSxZB5/v7pedLqewxawwoDxHUyJ0A2p6/0SVx7pVu3lDPYmZpxSHWvsR g==;
X-CSE-ConnectionGUID: /yrweTQmQi2hJcXJylxWNw==
X-CSE-MsgGUID: eV5pHDjeRESWkLM/CxdpTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11100"; a="25581454"
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="25581454"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 05:29:09 -0700
X-CSE-ConnectionGUID: UAJfjP7dTUOjlRuSpo1Frw==
X-CSE-MsgGUID: rdVu0uHcTWS5rz/bEtW7KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="39733959"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Jun 2024 05:29:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Jun 2024 15:29:06 +0300
Date: Wed, 12 Jun 2024 15:29:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v3 00/21] drm/i915/dp_mst: Enable link training fallback
Message-ID: <ZmmUkuWW5nTBVYwa@intel.com>
References: <20240610164933.2947366-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240610164933.2947366-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
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

On Mon, Jun 10, 2024 at 07:49:12PM +0300, Imre Deak wrote:
> This is v3 of [1], addressing the review comments and adding R-bs from
> Ville, the main changes being:
> 
> - Add the link check work to intel_encoder and the corresponding helper
>   functions to a new intel_encoder.c file. (Patch 7)
> - Add documentation/asserts on intel_atomic_state being valid for MST
>   vs. possibly NULL for SST links in the link training functions.
>   (Patch 9,10)
> - Lock connection_mutex in the debugfs entries only for the required
>   intel_dp state. (Patch 17-21)
> - Remove the link training info debugfs entry showing the link retrain,
>   link training failure counters and the retrain disabled state, add a
>   separate debugfs entry showing only the retrain disabled state.
>   (Patch 21)
> 
> [1] https://lore.kernel.org/all/20240520185822.3725844-1-imre.deak@intel.com
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Imre Deak (21):
>   drm/i915/dp_mst: Align TUs to avoid splitting symbols across MTPs
>   drm/i915/dp: Move link train params to a substruct in intel_dp
>   drm/i915/dp: Move link train fallback to intel_dp_link_training.c
>   drm/i915/dp: Sanitize intel_dp_get_link_train_fallback_values()
>   drm/i915: Factor out function to modeset commit a set of pipes
>   drm/i915/dp: Use a commit modeset for link retraining MST links
>   drm/i915/dp: Recheck link state after modeset
>   drm/i915/dp: Reduce link params only after retrying with unchanged
>     params
>   drm/i915/dp: Pass atomic state to link training function
>   drm/i915/dp: Send a link training modeset-retry uevent to all MST
>     connectors
>   drm/i915/dp: Use check link state work in the hotplug handler
>   drm/i915/dp: Use check link state work in the detect handler
>   drm/i915/dp: Use check link state work in the HPD IRQ handler
>   drm/i915/dp: Disable link retraining after the last fallback step
>   drm/i915/dp_mst: Reset intel_dp->link_trained during disabling
>   drm/i915/dp_mst: Enable link training fallback for MST
>   drm/i915/dp: Add debugfs entries to force the link rate/lane count
>   drm/i915/dp: Add debugfs entries to get the max link rate/lane count
>   drm/i915/dp: Add debugfs entry to force link training failure
>   drm/i915/dp: Add debugfs entry to force link retrain
>   drm/i915/dp: Add debugfs entry to get the link retrain disabled state

lgtm

For the series
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  35 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  67 +--
>  drivers/gpu/drm/i915/display/intel_display.c  |  34 ++
>  drivers/gpu/drm/i915/display/intel_display.h  |   3 +
>  .../drm/i915/display/intel_display_debugfs.c  |   2 +
>  .../drm/i915/display/intel_display_types.h    |  25 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 270 +++++----
>  drivers/gpu/drm/i915/display/intel_dp.h       |  11 +-
>  .../drm/i915/display/intel_dp_link_training.c | 538 +++++++++++++++++-
>  .../drm/i915/display/intel_dp_link_training.h |   8 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  30 +-
>  drivers/gpu/drm/i915/display/intel_encoder.c  |  39 ++
>  drivers/gpu/drm/i915/display/intel_encoder.h  |  16 +
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  15 files changed, 878 insertions(+), 202 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_encoder.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_encoder.h
> 
> -- 
> 2.43.3

-- 
Ville Syrjälä
Intel
