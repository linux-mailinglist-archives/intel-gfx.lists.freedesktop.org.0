Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A7CA32C14
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15AAC10E917;
	Wed, 12 Feb 2025 16:43:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EYiW9bbY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56D0910E917
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 16:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378613; x=1770914613;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DQ0ESm5ClTHSyupzafJBI+S+8BOiFSKB7Aj5fFMHXm8=;
 b=EYiW9bbYpRmpCUtuoYMh3iwl8ZONrQM1fx2nNHtWa15AZv4/hQPTIYxD
 3axCX01t1OuRlmt6OA0QZs4xlomDbTE3qXfrE6l93OGiKox0u6QILzFLh
 qcnzS/Yta5x6NOHTmz6P3VCNVhLps0xPix2570GDnkb3j+sYLMdypWX6D
 9l+EMqjOrYW3dxAikSVq6byELNYcR0b4+xh2GP/c8UL27UhdB5e6QOU5O
 2TfmMBNKgOtZUXD50lY+WyjUbTQqcjw3wD8CoKwvu3JvFj551K278e3b/
 s3voaZwOqnmrZffP+LeGzUIkdSbNWprxzPw9TFHG/XXop3QoMCva3p8RH Q==;
X-CSE-ConnectionGUID: SNr6qhnnTRyycMmIzywTGQ==
X-CSE-MsgGUID: ifejlengTXyb824FZoYiUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62514954"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="62514954"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:43:33 -0800
X-CSE-ConnectionGUID: xjXJxgtqTC6pWkcac4AL4Q==
X-CSE-MsgGUID: rq3uw2zHRUibhwyRQ+su6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113082568"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 08:43:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 18:43:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 00/10] drm/i915: joiner and Y plane fixes and reorganization
Date: Wed, 12 Feb 2025 18:43:20 +0200
Message-ID: <20250212164330.16891-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
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

I wanted to reorganize the Y plane code, but then I
realized it still has real issued, espectially when it comes
to joiner usage. So fix the bugs first, then do the code
reorganization.

v2: Rebase dur to intel_display changes
    s/slave plane/Y plane/ in some comments too (Maarten)

Ville Syrjälä (10):
  drm/i915: Make sure all planes in use by the joiner have their crtc
    included
  Revert "drm/i915: Fix NULL ptr deref by checking new_crtc_state"
  drm/i915: Rework joiner and Y plane dependency handling
  drm/i915: s/planar_slave/is_y_plane/
  drm/i915: Extract unlink_nv12_plane()
  drm/i915: Remove pointless visible check in unlink_nv12_plane()
  drm/i915: Extract link_nv12_planes()
  drm/i915: Rename the variables in icl_check_nv12_planes()
  drm/i915: Move icl+ nv12 plane register mangling into
    skl_universal_plane.c
  drm/i915: Relocate intel_atomic_check_planes()

 .../gpu/drm/i915/display/intel_atomic_plane.c | 302 +++++++++++++++++-
 .../gpu/drm/i915/display/intel_atomic_plane.h |   3 +
 drivers/gpu/drm/i915/display/intel_display.c  | 296 ++---------------
 drivers/gpu/drm/i915/display/intel_display.h  |   2 -
 .../drm/i915/display/intel_display_debugfs.c  |   6 +-
 .../drm/i915/display/intel_display_types.h    |  13 +-
 .../drm/i915/display/skl_universal_plane.c    |  35 +-
 .../drm/i915/display/skl_universal_plane.h    |   3 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |   4 +-
 9 files changed, 365 insertions(+), 299 deletions(-)

-- 
2.45.3

