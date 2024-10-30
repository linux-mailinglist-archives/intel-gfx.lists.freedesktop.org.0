Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1101B9B62CB
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 13:16:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B5E810E7B1;
	Wed, 30 Oct 2024 12:16:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ngHA8uiP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD96510E099;
 Wed, 30 Oct 2024 12:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730290609; x=1761826609;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=MzJ0a6+4108/NpHkoa/ZRcZ2H7SGl41kecTbkGqj5NU=;
 b=ngHA8uiPkJvVl+nsNAROvKMxRsC/J6nR4kw/b8f+7OTNyd4FSehPh7b4
 vhqORgxnTr5+YGr8ORZd9F78hZlhmUXL9vF5MWd/i/QGASa0Kt2K8r+IS
 /+Q9TD/eDLwPgSHxcaL0MsQT2KBUZRO7EpXDBXyxypqSLT6g7u3JYza1q
 qe0TpdHndMHd3tmXPJHvgTgSpKiq8mtTwn/SyMkTgj/ZWV6CeOX6NbQkJ
 3HH5l25mmL4ld/pEr/i+BRYpbqmWIV2ywfV+9VWzwIsdj0UQY8wIMp+Vc
 sSv2p3hW7k8qIbxRgSHoyWxKisIdMzyMMTwnOiR6RDoF4qkqynKn6z45u w==;
X-CSE-ConnectionGUID: c9hy284hT0edTuGfpNqbpg==
X-CSE-MsgGUID: rbthZIoxT1e2PMRpuOF3vQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52545005"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52545005"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 05:16:49 -0700
X-CSE-ConnectionGUID: qTEwUCkjRpmot1ptaUpuUA==
X-CSE-MsgGUID: PAekYYobTDiLPeoYf7dd7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82404365"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 05:16:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [CI v2 v2 00/12] drm/i915/display: bunch of struct
 intel_display conversions
In-Reply-To: <cover.1730146000.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1730146000.git.jani.nikula@intel.com>
Date: Wed, 30 Oct 2024 14:16:44 +0200
Message-ID: <87msillr9v.fsf@intel.com>
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

On Mon, 28 Oct 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> Just resending [1] because I never got the CI logs for it.

And pushed to din, thanks for the review.

BR,
Jani.

>
> [1] https://lore.kernel.org/r/cover.1729776384.git.jani.nikula@intel.com
>
> Jani Nikula (12):
>   drm/i915/gmbus: convert to struct intel_display
>   drm/i915/cx0: remove unnecessary includes
>   drm/i915/cx0: convert to struct intel_display
>   drm/i915/dpio: convert to struct intel_display
>   drm/i915/hdcp: further conversion to struct intel_display
>   drm/i915/dp/hdcp: convert to struct intel_display
>   drm/i915/crt: convert to struct intel_display
>   drm/i915/display: convert vlv_wait_port_ready() to struct
>     intel_display
>   drm/i915/power: convert assert_chv_phy_status() to struct
>     intel_display
>   drm/i915/ips: convert to struct intel_display
>   drm/i915/dsi: convert to struct intel_display
>   drm/i915/de: remove unnecessary generic wrappers
>
>  drivers/gpu/drm/i915/display/g4x_dp.c         |   3 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |   9 +-
>  drivers/gpu/drm/i915/display/hsw_ips.c        |  47 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c        | 444 +++++++++---------
>  drivers/gpu/drm/i915/display/icl_dsi.h        |   4 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     |   6 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      | 213 +++++----
>  drivers/gpu/drm/i915/display/intel_crt.h      |  10 +-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 334 +++++++------
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   8 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_de.h       |  46 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  30 +-
>  drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
>  .../drm/i915/display/intel_display_driver.c   |  11 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  |  11 +-
>  .../i915/display/intel_display_power_well.c   | 114 +++--
>  drivers/gpu/drm/i915/display/intel_dp.c       |   3 +-
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  93 ++--
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 158 +++----
>  drivers/gpu/drm/i915/display/intel_dpio_phy.h |  22 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   6 +-
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   5 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c      |   8 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    | 290 ++++++------
>  drivers/gpu/drm/i915/display/intel_gmbus.h    |  15 +-
>  .../gpu/drm/i915/display/intel_gmbus_regs.h   |  16 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  30 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.h     |  10 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  11 +-
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  |   6 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
>  .../gpu/drm/i915/display/intel_pch_display.c  |   3 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |   9 +-
>  drivers/gpu/drm/i915/i915_suspend.c           |   2 +-
>  drivers/gpu/drm/xe/display/xe_display.c       |   4 +-
>  36 files changed, 1024 insertions(+), 963 deletions(-)

-- 
Jani Nikula, Intel
