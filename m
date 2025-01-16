Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD10A14123
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 18:48:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D18DA10E9E0;
	Thu, 16 Jan 2025 17:48:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PaVFVCar";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3EFA10E576;
 Thu, 16 Jan 2025 17:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737049683; x=1768585683;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EpkJzZLRgRerByih0gnh86B2bYsR7dljX3lSoUKPKLg=;
 b=PaVFVCarZKHR9NGZj9NOXAObumEMGModf0Eeu85gR+sIjPkZwsBdBKWv
 Dyp8pS3/nr4SdrDkc4wICVR5ETRos1I/n/XJm17omohfSsxw1yqeYWI+/
 GkGQFCzOYgko8HKJkR2BgUw6ZN/KPEfu8Lpf/IWLpzgF3SqWXkPvLoAYJ
 7NE2lR9VAkTR9hmWDooh8Q4vL3xhr9y+8GmIDiyRadxFRrsn2xrU3PJsA
 fYGGKbmNb5zRAV1ILaZ1XOQXwbWjuZMCiO993kgrBzcSeEtfslAlZi564
 dskUjE8GHKvb7Pr7oDdAPNdGwQMUupRjcoh8rwz7CmOQtlFSy9ZmLtTz5 A==;
X-CSE-ConnectionGUID: I6fAjgAATKudv5MxEg8vnw==
X-CSE-MsgGUID: 9C4lOXqKQDqwMBRIG00l/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="48847538"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="48847538"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 09:48:02 -0800
X-CSE-ConnectionGUID: TCqeyo2KTzeUoY21NWX9DA==
X-CSE-MsgGUID: EMQQeUPJSrKVWokRSBlUCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105712601"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 09:47:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 19:47:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/8] drm/i915: Provide more information on display faults
Date: Thu, 16 Jan 2025 19:47:50 +0200
Message-ID: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we just print a hardware specific bitmask when
encountering any kind of display fault error. To make these
errors a bit easier to decode (and perhps even analyze)
I now decode the actual bits, and for plane faults provide
a dump of a few (hopefully) relevant plane registers (CTL,
SURF,SURFLIVE for now, which should at least help with faults
cause by bad GTT alignment).

So far we only reported faults on bdw+, but I'm also hooking
this stuff up for all ilk+ and vlv/chv. The older gmch
platforms I left out for now, but I think i965/g4x should
at least be diable in the future.

Not sure I'm 100% satisfied with how the pipe_fault_handler 
thing is structured, but at least it works.

Ville Syrjälä (8):
  drm/i915: Add missing else to the if ladder in missing else
  drm/i915: Introduce a minimal plane error state
  drm/i915: Pimp display fault reporting
  drm/i915: Hook in display GTT faults for IVB/HSW
  drm/i915: Hook in display GTT faults for ILK/SNB
  drm/i915: Introduce i915_error_regs
  drm/i915: Un-invert {i9xx,i965}_error_mask()
  drm/i915: Hook up display fault interrupts for VLV/CHV

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  41 ++
 .../gpu/drm/i915/display/intel_atomic_plane.c |   2 +-
 .../gpu/drm/i915/display/intel_atomic_plane.h |   2 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |  26 ++
 .../gpu/drm/i915/display/intel_display_irq.c  | 392 +++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_irq.h  |   3 +
 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |  36 ++
 .../drm/i915/display/skl_universal_plane.c    |  12 +
 drivers/gpu/drm/i915/i915_irq.c               |  61 ++-
 drivers/gpu/drm/i915/i915_irq.h               |   4 +
 drivers/gpu/drm/i915/i915_reg.h               |  34 ++
 drivers/gpu/drm/i915/i915_reg_defs.h          |   8 +
 drivers/gpu/drm/xe/display/ext/i915_irq.c     |  23 +
 14 files changed, 632 insertions(+), 19 deletions(-)

-- 
2.45.2

