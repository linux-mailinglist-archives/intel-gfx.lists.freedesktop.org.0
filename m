Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A559C94EA24
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 11:43:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F4610E1A2;
	Mon, 12 Aug 2024 09:43:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c1j9zWfM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09C9110E18C;
 Mon, 12 Aug 2024 09:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723455819; x=1754991819;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=38ybMOSvGEkFjKvu7+v4vrQeJeACKaswKT6ohLCT6q4=;
 b=c1j9zWfMGh4Y+n9Kp5vApG0gprWe1yjiQkPeKpXL2bgLuzA8ZYQqgrfR
 Nz/OpB333L/FYkyDxBkyGk7ZqfW3l2LzZldvddp4zlAAit5Wws0mNbqHE
 BG6oogSTge5wuADqVqIGwPuzRQNOhwOrdcJD0Ic3MlI2jgDl5tJuvTySn
 tgxAEQXLwBeRj8LEA4qYyDzr6j3KR7xbM2rNAgenQHOeLPC22JTJr+nGd
 3KyKAKETPyAPNb9e/SGQmGk1t5vj12xGLeGGdYItgUjJ5JJ0sRrEELDJG
 pB7upXHeqR4kB4wM5URjb5iYzbNW4CxydipydnD83zftddi8kxwPo8BvL Q==;
X-CSE-ConnectionGUID: V2gshvXFQ7ynC5HZkWjNqw==
X-CSE-MsgGUID: cGBJ/7ZjRXe2G+SAP9X0rA==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="21700992"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="21700992"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 02:43:38 -0700
X-CSE-ConnectionGUID: KkC7sES5TCW2ZQPMf/9FWQ==
X-CSE-MsgGUID: ynn11CQDQNW15RCdgV/eqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="58143617"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.117])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 02:43:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com
Subject: Re: [PATCH v2 0/4] drm/i915: struct intel_display conversions
In-Reply-To: <cover.1723213547.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1723213547.git.jani.nikula@intel.com>
Date: Mon, 12 Aug 2024 12:43:34 +0300
Message-ID: <875xs62i0p.fsf@intel.com>
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

On Fri, 09 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> v2 of https://lore.kernel.org/r/cover.1722444150.git.jani.nikula@intel.com
>
> Cc: Imre Deak <imre.deak@intel.com>

Pushed to din, thanks for the review.

BR,
Jani.

>
> Jani Nikula (4):
>   drm/i915/acpi: convert to struct intel_display
>   drm/i915/opregion: unify intel_encoder/intel_connector naming
>   drm/i915/opregion: convert to struct intel_display
>   drm/i915/bios: convert to struct intel_display
>
>  drivers/gpu/drm/i915/display/g4x_dp.c         |   3 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |   3 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   3 +-
>  drivers/gpu/drm/i915/display/intel_acpi.c     |  17 +-
>  drivers/gpu/drm/i915/display/intel_acpi.h     |  18 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     | 846 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_bios.h     |  28 +-
>  .../gpu/drm/i915/display/intel_combo_phy.c    |   8 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +-
>  drivers/gpu/drm/i915/display/intel_ddi.h      |   3 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   9 +-
>  .../drm/i915/display/intel_display_debugfs.c  |   7 +-
>  .../drm/i915/display/intel_display_device.c   |   8 +-
>  .../drm/i915/display/intel_display_driver.c   |  22 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  |  27 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   8 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   5 +-
>  drivers/gpu/drm/i915/display/intel_opregion.c | 320 +++----
>  drivers/gpu/drm/i915/display/intel_opregion.h |  62 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |   3 +-
>  drivers/gpu/drm/i915/display/intel_tv.c       |   3 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   5 +-
>  drivers/gpu/drm/i915/i915_driver.c            |  22 +-
>  drivers/gpu/drm/xe/display/xe_display.c       |  19 +-
>  24 files changed, 765 insertions(+), 687 deletions(-)

-- 
Jani Nikula, Intel
