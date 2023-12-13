Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1BD810E59
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 11:25:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B85E10E768;
	Wed, 13 Dec 2023 10:25:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFC0C10E76B
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 10:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702463122; x=1733999122;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j0Dcqvetr82Ye3y3SdGiQTr6OQgfKjaNkgzGf+pgd2Q=;
 b=DBbPO8I2zLWpKlUZk0nr212IpseDINE+Ou1PNz1jNVZnIR8bA1GyqcZN
 9dZrfphMAjGr8xoFFNxbEPkX+hWlhKN3tpy3TV+q7aXP07sgz79ytxwLl
 Dz6k8vFTVkX7tYO/3xPMXkJCT9ELpk3fWprIQhN+dM/zGgxx4aD2IEAWt
 82mvMKWbxMWDZ0pVAEIkZQLhfjWrVaH3Ajblnkov95X3Aw2m5f9VwBGoP
 IVECACFatDgBwlJqtmVPcYsFXL2fUvDPjYF2JnE518+cypBnyg+4yQG7N
 KLNkrMOkTV/+oVnF4uL0PreO0IxwK8rrmw+zH62nuIe115DnZV34fhPYx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="393816074"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="393816074"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 02:25:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767161630"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="767161630"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 02:25:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 12:25:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/9] drm/i915: Cursor vblank evasion
Date: Wed, 13 Dec 2023 12:25:10 +0200
Message-ID: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
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

MTL seems very good at racing the cursor mailbox updates against
the vblank, causing things to not latch for long enough to cause
GTT faults. Attempt to hook up vblank evasions into the legacy
cursor path to avoid this.

Also revert a dangerous wm/ddb change related to cursors.

Ville Syrjälä (9):
  drm/i915: Decouple intel_crtc_vblank_evade_scanlines() from atomic
    commits
  drm/i915: Reorder drm_vblank_put() vs. need_vlv_dsi_wa
  drm/i915: Introduce struct intel_vblank_evade_ctx
  drm/i915: Include need_vlv_dsi_wa in intel_vblank_evade_ctx
  drm/i915: Extract intel_vblank_evade()
  drm/i915: Move the min/max scanline sanity check into
    intel_vblank_evade()
  drm/i915: Move intel_vblank_evade() & co. into intel_vblank.c
  drm/i915: Perform vblank evasion around legacy cursor updates
  Revert "drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB
    allocation"

 .../gpu/drm/i915/display/intel_atomic_plane.c |   6 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     | 128 ++---------------
 drivers/gpu/drm/i915/display/intel_cursor.c   |  16 ++-
 drivers/gpu/drm/i915/display/intel_vblank.c   | 130 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.h   |  12 ++
 drivers/gpu/drm/i915/display/skl_watermark.c  |  16 +--
 6 files changed, 170 insertions(+), 138 deletions(-)

-- 
2.41.0

