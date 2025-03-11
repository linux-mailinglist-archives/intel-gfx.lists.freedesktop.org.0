Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 043BFA5CF11
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 20:13:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FBD310E122;
	Tue, 11 Mar 2025 19:13:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DnT0e2Rd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D47E89262;
 Tue, 11 Mar 2025 19:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741720416; x=1773256416;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=o/Kp3xXka0/rP7XXpFxYzrNLdz/Rgnji8KRi8UQz7so=;
 b=DnT0e2Rdy5Aj2iakXz4u3osSDg5bHpnpPk1y/W9sUNH7DmuHvbHIxt1T
 C8C702Nbwph8He1aRIi0HOvg07bPRvxRaWRi5vtiMc65ooXgB9nnfoXCg
 /rFh4NrngsTau+Y5tHE41cDDw1N1ie29t7kwqnwV5jM7Q5MuMUIOboMcq
 tXMr8n/WW9QYZMR+UPcyW1HnepHwR9mxebWiqNcey7U5BxIKgRpNlYNLD
 /1m+HiFdUPwqFZGmA3EhcxtJb6zob96I/6ASRFYsPSpqxoMEMKUXIfQTx
 h86o/s6YfqocMSp7j4NMdgj/fKPwSysqsKhOZ44gqPmtJsXC8Y92MtX5d A==;
X-CSE-ConnectionGUID: +0wwn6E2Tduun56pbeNaeg==
X-CSE-MsgGUID: sKFbCbLGQyed7fnjdRs+oQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42687906"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="42687906"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 12:13:36 -0700
X-CSE-ConnectionGUID: 6QQe1/NATDm0jA1h8xYBmQ==
X-CSE-MsgGUID: eTLzJjH7Q+ygkDJhqTIJjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125610785"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 11 Mar 2025 12:13:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Mar 2025 21:13:32 +0200
Date: Tue, 11 Mar 2025 21:13:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/9] drm/i915/display: conversions to struct intel_display
Message-ID: <Z9CLXIAsbXirre3c@intel.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1741715981.git.jani.nikula@intel.com>
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

On Tue, Mar 11, 2025 at 08:00:34PM +0200, Jani Nikula wrote:
> Primarily convert all hotplug and irq code to struct intel_display, and
> then some.
> 
> Jani Nikula (9):
>   drm/i915/color: prefer display->platform.<platform> checks
>   drm/i915/connector: convert intel_connector.c to struct intel_display
>   drm/i915/hotplug: convert intel_hotplug.[ch] to struct intel_display
>   drm/i915/hotplug: convert hotplug debugfs to struct intel_display
>   drm/i915/hotplug: convert hotplug irq handling to intel_de_*()
>   drm/i915/hotplug: convert intel_hotplug_irq.[ch] to struct
>     intel_display
>   drm/i915/irq: convert intel_display_irq.[ch] interfaces to struct
>     intel_display
>   drm/i915/irq: convert rest of intel_display_irq.[ch] to struct
>     intel_display
>   drm/i915/display: rename I915_HAS_HOTPLUG() to HAS_HOTPLUG

Looked reasonable to me. Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |  24 +-
>  drivers/gpu/drm/i915/display/intel_color.c    |  16 +-
>  .../gpu/drm/i915/display/intel_connector.c    |  45 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      |  10 +-
>  .../drm/i915/display/intel_display_debugfs.c  |   2 +-
>  .../drm/i915/display/intel_display_device.h   |   2 +-
>  .../drm/i915/display/intel_display_driver.c   |  16 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  | 742 +++++++++---------
>  .../gpu/drm/i915/display/intel_display_irq.h  |  75 +-
>  .../i915/display/intel_display_power_well.c   |  18 +-
>  .../drm/i915/display/intel_display_reset.c    |   4 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
>  .../drm/i915/display/intel_fifo_underrun.c    |  27 +-
>  drivers/gpu/drm/i915/display/intel_hotplug.c  | 348 ++++----
>  drivers/gpu/drm/i915/display/intel_hotplug.h  |  26 +-
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  | 623 +++++++--------
>  .../gpu/drm/i915/display/intel_hotplug_irq.h  |  28 +-
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c |   3 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_tv.c       |   4 +-
>  .../drm/i915/display/skl_universal_plane.c    |   6 +-
>  drivers/gpu/drm/i915/gt/intel_rps.c           |   6 +-
>  drivers/gpu/drm/i915/i915_driver.c            |  14 +-
>  drivers/gpu/drm/i915/i915_irq.c               | 123 +--
>  drivers/gpu/drm/xe/display/xe_display.c       |  38 +-
>  25 files changed, 1118 insertions(+), 1086 deletions(-)
> 
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
