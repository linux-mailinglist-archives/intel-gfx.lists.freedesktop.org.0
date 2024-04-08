Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AB089CD2D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 23:03:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7090A10F125;
	Mon,  8 Apr 2024 21:03:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EmuFBnYo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96CF010ECF9;
 Mon,  8 Apr 2024 21:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712610185; x=1744146185;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=c4aTdiHO0jdXoujn0pxQO6uzdW5DPM4hntUMB2SNjWw=;
 b=EmuFBnYo2LEp4XrjjnYzfG8HgEGVtBz67Jyd+Wc1qeQXLiw4KhhwFHXu
 JAfcRB6Qk4rvJ3aeCZ71Qc6t4DhaiPFi+nGB0rAyh0Oh24lkc+8C31Tpr
 n16Y3RibJqpaYNM6gaikojJEQqEHfvqow8qi0CMKRiQtHzF0zSguPjvap
 5v9/SKfXrERGrJT+rJwQWhXn9xbw639HZH6gGkmxkulDDHvS5dnuJUD4T
 vnAXCzH/Ij5GQsR7Egu0Sgy2KeFYuC1v/4vRYTVcynO/eEC2bmHU1nRAT
 RS2xqKLTQZ8Xp+oGcBcH+g3PTc2jEc/uUDrj/e/RLliTlgv8OPg2xK6tZ g==;
X-CSE-ConnectionGUID: HFdYZ1w6RXeLFvjrv4+wIw==
X-CSE-MsgGUID: 33Ett9EcRRShDFOEiSGc3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="7752878"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; 
   d="scan'208";a="7752878"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 14:02:23 -0700
X-CSE-ConnectionGUID: Xo8LcyYfSGKisvjZGoGEgg==
X-CSE-MsgGUID: AtpMfRrhTHeHvSuDjkNedA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="20056013"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 14:02:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com
Subject: Re: [PATCH 0/8] drm/i915: drm_i915_private and xe_device cleanups
In-Reply-To: <cover.1712599670.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1712599670.git.jani.nikula@intel.com>
Date: Tue, 09 Apr 2024 00:02:17 +0300
Message-ID: <877ch7a7qe.fsf@intel.com>
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

On Mon, 08 Apr 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> Continue cleaning up the members from drm_i915_private and xe_device to
> struct intel_display.

Lucas, there's a bunch of xe changes included here, ack for merging via
drm-intel-next?

BR,
Jani.

>
> Jani Nikula (8):
>   drm/i915/gt: drop display clock info from gt debugfs
>   drm/i915: move skl_preferred_vco_freq to display substruct
>   drm/i915: move max_dotclk_freq to display substruct
>   drm/i915: move vblank_enabled to display substruct
>   drm/i915: move display_irqs_enabled to display substruct
>   drm/i915: move de_irq_mask to display substruct
>   drm/i915: move pipestat_irq_mask to display substruct
>   drm/xe/display: remove unused xe->enabled_irq_mask
>
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 23 ++++----
>  drivers/gpu/drm/i915/display/intel_crt.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  6 +-
>  .../gpu/drm/i915/display/intel_display_core.h | 12 ++++
>  .../gpu/drm/i915/display/intel_display_irq.c  | 57 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_dsi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_tv.c       |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  4 --
>  drivers/gpu/drm/i915/i915_drv.h               | 13 +----
>  drivers/gpu/drm/i915/i915_irq.c               |  8 +--
>  drivers/gpu/drm/xe/display/xe_display.c       |  1 -
>  drivers/gpu/drm/xe/xe_device_types.h          | 15 +----
>  19 files changed, 73 insertions(+), 88 deletions(-)

-- 
Jani Nikula, Intel
