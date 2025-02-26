Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1B9A45FCD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 13:54:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC5410E8E6;
	Wed, 26 Feb 2025 12:54:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m/d60+Ir";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB73310E8E5;
 Wed, 26 Feb 2025 12:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740574441; x=1772110441;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ipq6ngv+o6D/aZkgwZi32bav9UaKPmCwML/qXLKz4s4=;
 b=m/d60+IreyZ7rqPhBQ92aQVlerLrkxkeyH2QnPTkJGmQPjgs7DOMWQXE
 zMZctZPAafxQncq8vMgX1t9JLf+dHsgnXxIFeLiQjyikwjozbGNS5Hc+h
 Od32GDcvPJ9KjaSioWFgopWPonQWhqec5GllQRiBjoTiHjG9MNF0Tayd1
 ke0DRBeIIv0Uu8U+s/Lzn06/EO+Vskvg5WEbFWcwR5ATE7jf4lYqq/zsd
 +3bojOPBoGoxfayf4dXUuFTPE69RSDHb1svqdInzgE8kFHbbZJf4ieHKI
 IgFAmgfGF2WDUn6zknzuw3P02uSiN5STNNSRTe/PlueBeKdijo8cS69eA A==;
X-CSE-ConnectionGUID: 5y7Oi96aSV+0eJlcTMPYIw==
X-CSE-MsgGUID: 6yNuoNLbRCijLsBLZNcSgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52050053"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52050053"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 04:54:01 -0800
X-CSE-ConnectionGUID: anw0WrmXTIGEieE+tkGNlQ==
X-CSE-MsgGUID: mrffwkDrQzW+p3cfN2Us1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121943777"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 04:53:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 14:53:58 +0200
Date: Wed, 26 Feb 2025 14:53:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/5] drm/i915/pfit: panel fitter refactors
Message-ID: <Z78O5ibtHlh5Qbp4@intel.com>
References: <cover.1740564009.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1740564009.git.jani.nikula@intel.com>
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

On Wed, Feb 26, 2025 at 12:01:06PM +0200, Jani Nikula wrote:
> Move pfit code to intel_pfit.c, convert to struct intel_display, split
> out pfit registers to a separate file, etc.
> 
> Jani Nikula (5):
>   drm/i915/pfit: rename intel_panel_fitting() to
>     intel_pfit_compute_config()
>   drm/i915/pfit: move ilk and i9xx pfit code to intel_pfit.[ch]
>   drm/i915/pfit: fix comment style for moved comments
>   drm/i915/pfit: convert moved code to struct intel_display
>   drm/i915/pfit: split out intel_pfit_regs.h

Series is 
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 165 +----------------
>  drivers/gpu/drm/i915/display/intel_display.h  |   2 -
>  drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   1 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   3 +-
>  drivers/gpu/drm/i915/display/intel_overlay.c  |   1 +
>  drivers/gpu/drm/i915/display/intel_pfit.c     | 168 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_pfit.h     |  10 +-
>  .../gpu/drm/i915/display/intel_pfit_regs.h    |  79 ++++++++
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  70 --------
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
>  16 files changed, 268 insertions(+), 242 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_pfit_regs.h
> 
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
