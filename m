Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B664C13B1
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 14:13:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D5CB10F3A0;
	Wed, 23 Feb 2022 13:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C90A10F389
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 13:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645621998; x=1677157998;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a1vvT/cO02ppsX6azu7qWMT/fC6IHElc+7E4j34yDOM=;
 b=DQXivk3WclJRBdX4xZMI0LRmdoFLaf0XiN9BLJyCcKVv8TT0c3LwChB1
 h1AyeoPQWszJKhJAuYNx6ZukUsf3JcU9dC0yHvtjmn1zXZdX3cUtvTVa+
 3g5oNyl9ghJxlZ0debovQITN11vmG2A6NcS2j795ztPa51OGDMPpbD42k
 9/jEIHEVKrGYlA57gYghL5/2TrfTszWxghE9nrH5IdJeqHi+z5xC3ojCe
 pZnOOlGleRc9q4DL9FfMmIGIJCyCiAbU9+TNShtt/Ozd7sjwCqc1T1Ioe
 l8UOovIsvjNtc4nDpCYXZYq1yjhgYTSP3cSqgHUR9bcnCVc+EY5yBiBjE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="251694003"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="251694003"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 05:13:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="683890554"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 23 Feb 2022 05:13:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 15:13:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 15:13:02 +0200
Message-Id: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/13] drm/i915: Move bigjoiner refactoring
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

Rebased version of the latest bigjoiner stuff. Also shuffled
the hweight() stuff around a bit, and added patch to fix an
UBSAN issue.

Ville Syrjälä (13):
  drm/i915: Avoid negative shift due to bigjoiner_pipes==0
  drm/i915: Fix cursor coordinates on bigjoiner slave
  drm/i915: Remove nop bigjoiner state copy
  drm/i915: Rename variables in intel_crtc_compute_config()
  drm/i915: Extract intel_splitter_adjust_timings()
  drm/i915: Extract intel_bigjoiner_adjust_timings()
  drm/i915: Extract intel_crtc_compute_pipe_src()
  drm/i915: Extract intel_crtc_compute_pipe_mode()
  drm/i915: Fix MSO vs. bigjoiner timings confusion
  drm/i915: Start tracking PIPESRC as a drm_rect
  drm/i915: Eliminate bigjoiner boolean
  drm/i915: Use bigjoiner_pipes more
  drm/i915: Make the PIPESC rect relative to the entire bigjoiner area

 .../gpu/drm/i915/display/intel_atomic_plane.c |  20 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   7 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 360 +++++++++++-------
 .../drm/i915/display/intel_display_debugfs.c  |   6 +-
 .../drm/i915/display/intel_display_types.h    |   5 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  13 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  22 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  70 ++--
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   8 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |  12 +-
 .../drm/i915/display/skl_universal_plane.c    |   4 +-
 11 files changed, 303 insertions(+), 224 deletions(-)

-- 
2.34.1

