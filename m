Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C54195F15A
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 14:34:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4E9910E1F4;
	Mon, 26 Aug 2024 12:34:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nJof4247";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 666CD10E009;
 Mon, 26 Aug 2024 12:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724675672; x=1756211672;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=iV8RI+mqOnq92xjZk5R6HgeHI7smVj1lnE5VLU2mm/0=;
 b=nJof4247lei3mwXvLi0/54Qh3QFQFzJ/V1IJkGY4S3OJp0iQYK8zNgWf
 /j1YI9WxL2wesoatiw2VM0TW21xvJXuICuX3wSdwP/cKkkSo7DhRUPSDy
 T2xr2INaEDMNyphPf6akrLo5/bHue9ZgL/pZk6Nj8ZkiWeeQF4d0X26Go
 ZtvbP5rP6tqoYLdWEHr34mg4a/bpv/11/eyRdijsK4n4H6cx70KH1lpfp
 PgLIN7DFuveOlk7t0peF58bm75UyLXvM2MBBpmtvS3ff91tRA6SQQDrO/
 s7ko2XyH2kvCKYvmDXFU3McCZGfyZotMyko6EiPaUQKNgrQtL25Oyxnlg Q==;
X-CSE-ConnectionGUID: hnM8LGVaRre0yF3aM31AIg==
X-CSE-MsgGUID: 31t8C4e3R7qyObsIEU78RA==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="40566551"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="40566551"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 05:34:32 -0700
X-CSE-ConnectionGUID: zH4PiMoaT/6rRyVWwFJvlQ==
X-CSE-MsgGUID: /ChEJVHVT621apSRkNhjOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="62468479"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.113])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 05:34:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 00/12] Consolidation of DSS Control in Separate Files
In-Reply-To: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
Date: Mon, 26 Aug 2024 15:34:15 +0300
Message-ID: <87ikvn1n08.fsf@intel.com>
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

On Mon, 26 Aug 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Currently, DSS control is configured from various files; this change aims
> to consolidate all DSS-related functionalities, such as display stream
> splitting, joining, MSO configuration, and joining configuration,
> into one place.
>
> A new file, intel_dss_regs.h, will store register information, while the
> helpers to configure DSS and related stuff will be moved to intel_dss.c
> with its corresponding header file intel_dss.h.
> Along with this, the helpers related to retrieve information about the
> pipe joiners are also moved from intel_display.c to intel_dss.
>
> Additionally, wherever possible, the drm_i915_private structure is
> replaced with the new intel_display structure as part of ongoing efforts
> to phase out the old structure.

A bunch of nitpicks here and there, but overall I like the
direction. Thanks for doing this.

I see that the dsi and mso stuff are just thrown in there instead of
really "integrated" into anything, but I think that's fine as the first
step.

I think maybe we do want to have a separate file for joiner stuff like
you suggested offline, maybe intel_joiner.[ch]? There's a whole lot of
joiner stuff still left in intel_display.[ch] after this.

Sooo... anything to do with DSS_CTL regs would go to intel_dss.[ch],
anything to do with compression would go to intel_vdsc.[ch], and
anything to do with joining would go to intel_joiner.[ch]?

Ville?


BR,
Jani.


>
> Ankit Nautiyal (12):
>   drm/i915/display: Move all DSS control registers to a new file
>   drm/i915/ddi: Move all mso related helpers to a new file
>   drm/i915/dss: Move to struct intel_display
>   drm/i915/icl_dsi: Move helpers to configure dsi dual link to intel_dss
>   drm/i915/vdsc: Rename helper to check if the pipe supports dsc
>   drm/i915/vdsc: Move all dss stuff in dss files
>   drm/i915/display: Move dss stuff in intel_dss files
>   drm/i915/display: Move helper to get joined pipe mask to intel_dss
>   drm/i915/display: Move helpers for primary joiner to intel_dss
>   drm/i915/display: Move helper to check for secondary joiner pipe
>   drm/i915/display: Move helper to get all secondary pipes
>   drm/i915/display: Move intel_joiner_num_pipes to intel dss
>
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  55 +---
>  .../gpu/drm/i915/display/intel_atomic_plane.c |   3 +-
>  .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  94 +-----
>  drivers/gpu/drm/i915/display/intel_display.c  | 158 +++------
>  drivers/gpu/drm/i915/display/intel_display.h  |   4 -
>  .../drm/i915/display/intel_display_debugfs.c  |   3 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   7 +-
>  drivers/gpu/drm/i915/display/intel_drrs.c     |   5 +-
>  drivers/gpu/drm/i915/display/intel_dss.c      | 305 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dss.h      |  46 +++
>  drivers/gpu/drm/i915/display/intel_dss_regs.h |  49 +++
>  .../drm/i915/display/intel_modeset_setup.c    |  15 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  74 +----
>  drivers/gpu/drm/i915/display/intel_vdsc.h     |   2 +-
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    |  38 ---
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  18 files changed, 497 insertions(+), 368 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dss.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dss.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dss_regs.h

-- 
Jani Nikula, Intel
