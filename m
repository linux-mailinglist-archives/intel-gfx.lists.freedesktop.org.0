Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A938B6EDC
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 11:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83A8410E81B;
	Tue, 30 Apr 2024 09:56:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T0PYfdqg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51F6910E81B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 09:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471002; x=1746007002;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OQFt7ef482F+0+H9KMawXjD2qtFQDUoqZYtGN5k63FU=;
 b=T0PYfdqgBsUvfaKaGqp3hLwvkx+imnPyObOOZ59mf9FTsO+SO2HYvjJA
 HHRzkDo8TwC9Xu/stzB5BFmfqajIuoltafU7g0KmPJ1fhlQgcFEDXe7rZ
 rhayHtQQqwrkGc3joZZ8LGxPN1qfyA9Fdk9UwBSJ23C2sV4Htc5PY8eFi
 zDBqjJC7BnnZt1dzA/ba63igxsB+P1WS4ZTQ/h6BrO0l+gyeYXC2Ok4sl
 C9Uj377lZfQSLaHdJK0ncy3zUsWB+w0fGAYm5RmlhjgA8iWdp4sMA+A40
 YIVi48SFQNqMN2+34qRrgYlCvGWaoqVDUpr59/lloXPEYFjn4f8K5X5aI w==;
X-CSE-ConnectionGUID: ilhMUCLWSCKWXxK3V1AhyA==
X-CSE-MsgGUID: pTGw7mGtTDGlvSFWXMRJmw==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27617856"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="27617856"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 02:56:42 -0700
X-CSE-ConnectionGUID: 7+ug8GSKRWKFLStejeHCQg==
X-CSE-MsgGUID: MUGKsooJRfioCyziezsTPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26419296"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Apr 2024 02:56:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Apr 2024 12:56:39 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 0/5] drm/i915: Allow the first async flip to change modifier
Date: Tue, 30 Apr 2024 12:56:34 +0300
Message-ID: <20240430095639.26390-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
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

Xorg/modesetting expects to be able to change the modifier already
when submitting the first async flip. Let's convert the first async
flip to a sync flip so that we can accommodate it. For now I limit
this behaviour to skl+ since earlier platforms don't support async
flips with anything but X-tile anyway, but we could extend this if
needed to allow eg. stride changes/etc.

We already convert the first async flip to a sync flip on ADL+
to reprogram the watermarks/DDB, and on BDW-GLK the hardware
anyway converts the first async flip to a sync flip (due to the
double buffering behaviour of the async flip bit). So actually
this will only slow down the first async flip on ICL and TGL.

I've also included a workaround for async flip GGTT/DMAR faults
on ADL. Just bumping the alignment to 16k seems effective, and
so that seems like a reasonable enough solution for the moment.
But this probably needs further analysis later.

v2: Drop the ILK LP_WM refactoring for now as it's unrelated
    Otherwise a repost to test against a fixed IGT series

Test-with: 20240322203726.16637-1-ville.syrjala@linux.intel.com

Ville Syrjälä (5):
  drm/i915: Align PLANE_SURF to 16k on ADL for async flips
  drm/i915: Reject async flips if we need to change DDB/watermarks
  drm/i915: Allow the initial async flip to change modifier
  drm/i915: Eliminate extra frame from skl-glk sync->async flip change
  drm/i915: s/need_async_flip_disable_wa/need_async_flip_toggle_wa/

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  7 +++++-
 .../gpu/drm/i915/display/intel_atomic_plane.c | 23 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.c  |  9 +++++++-
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |  7 +++---
 drivers/gpu/drm/i915/display/intel_dpt.h      |  3 ++-
 drivers/gpu/drm/i915/display/intel_fb.c       | 17 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 10 ++++----
 .../drm/i915/display/skl_universal_plane.c    |  8 +++++--
 drivers/gpu/drm/i915/display/skl_watermark.c  | 12 ++++++++++
 10 files changed, 80 insertions(+), 18 deletions(-)

-- 
2.43.2

