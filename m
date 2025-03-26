Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6DCA71BC2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:25:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8089D10E723;
	Wed, 26 Mar 2025 16:25:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U6RxyDv8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E01510E0C0;
 Wed, 26 Mar 2025 16:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743006349; x=1774542349;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dP6o5izlbE05gNPXvv70CH4lnbFGwZtI5YyHi5hruH8=;
 b=U6RxyDv86qAzCKvk2TFox1+pCePRe+kF/86W8TnYOJ+U04qdDN44J1DI
 FUstvjGAMgj8CcpDgoQm96stJM3IgofionM0a2v2qhD1YMg374VUhajRj
 4xZ/9HTf8kY+do+FwtFUOh7zdPbzaeE5yw2Duz2ovWj9Ey9B0IolmtpqM
 03kSZIrqYC7sIx6NFY2w7CXsr6hOaokO2eUluiP3M9wBctgFnqzo2dM1m
 xiGgXJek82fKBhASQZlfVYpb27s4C0iVRxws/yt5x1gMatYyf0Ao5uZvX
 etsrP8t+ewCw6vmfz+3UT8M8LBVPZjDZEq8drSVwROJm3DLJNSU8YXsqX g==;
X-CSE-ConnectionGUID: 0VaZStLuRraEeSqg4dxhlg==
X-CSE-MsgGUID: 3Dn5VtFjSfiBXJUnAANTYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44029546"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44029546"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:25:48 -0700
X-CSE-ConnectionGUID: eQ1tnhaOS2Wh7VCIe2OKaA==
X-CSE-MsgGUID: MAqlhOOQQz+iSeAEK5OUDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130016255"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 09:25:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 18:25:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 00/14] drm/i915: sagv/bw cleanup
Date: Wed, 26 Mar 2025 18:25:30 +0200
Message-ID: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
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

Continue improving the code around sagv/bw vs.
watermarks. A lot of the details get better encapsulated
within intel_bw.c and the complicated interactions between
different parts of the code are somewhat reduced.

v2: Rebase due to intel_display conversions

Ville Syrjälä (14):
  drm/i915: Drop the cached per-pipe min_cdclk[] from bw state
  drm/i915: s/intel_crtc_bw/intel_dbuf_bw/
  drm/i915: Extract intel_dbuf_bw_changed()
  drm/i915: Pass intel_dbuf_bw to skl_*_calc_dbuf_bw() explicitly
  drm/i915: Avoid triggering unwanted cdclk changes due to dbuf
    bandwidth changes
  drm/i915: Do more bw readout
  drm/i915: Flag even inactive crtcs as "inherited"
  drm/i915: Drop force_check_qgv
  drm/i915: Extract intel_bw_modeset_checks()
  drm/i915: Extract intel_bw_check_sagv_mask()
  drm/i915: Make intel_bw_check_sagv_mask() internal to intel_bw.c
  drm/i915: Make intel_bw_modeset_checks() internal to
    intel_bw_atomic_check()
  drm/i915: Skip bw stuff if per-crtc sagv state doesn't change
  drm/i915: Eliminate intel_compute_sagv_mask()

 drivers/gpu/drm/i915/display/intel_bw.c       | 187 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_bw.h       |   9 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   4 +
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +-
 .../drm/i915/display/intel_modeset_setup.c    |  22 +--
 drivers/gpu/drm/i915/display/skl_watermark.c  | 112 ++++-------
 drivers/gpu/drm/i915/display/skl_watermark.h  |   1 +
 7 files changed, 202 insertions(+), 138 deletions(-)

-- 
2.45.3

