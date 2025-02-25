Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E267A43D1D
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 12:14:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB44810E619;
	Tue, 25 Feb 2025 11:14:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HDuO6wRV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EE0E10E618;
 Tue, 25 Feb 2025 11:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740482070; x=1772018070;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rbcLXXKHpPGf3PNmsWXIB7DXGVz3hGroY1f7ixOB1Aw=;
 b=HDuO6wRV5+ARd9ChcYPPn/v5zVrmbZOCIVPOVYCRz1bWw4SqDkLI27LY
 S4ILQAk/ZYC0Ad43n4dz7LeinArxivun6/Z/b62xGiKaWHLxolvcQdRDj
 4Sm7foaVn9BsEgd+fIYbCorruK3S1KM9dc7c8jtLicTwsNEv/vegto8kO
 01wotZUDESo0PUoX4NvyyQ1N2MbDsxTgLf6LfQyOxlv2EJy+PRktL6nkJ
 jZ/6uNpTXclfjDP+MxCJjfEM3KoVE3Qo57C+DFrOJAxNo+Qp/0U63LuZG
 ppxSRYJjp+1UU6cLqNFlL4FR1PtPUQ7pUIJAznTZFc0vOfX+5BndcFM67 w==;
X-CSE-ConnectionGUID: EkVvLjACTZeMIJy/3H9R2A==
X-CSE-MsgGUID: M0HlVlS0R82m+NmDp7Togg==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="44106457"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="44106457"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:14:28 -0800
X-CSE-ConnectionGUID: guGM+3jeRautN4LZ3EWbmA==
X-CSE-MsgGUID: ilRYNUemQR6rjM9mk6qgOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121612062"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:14:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 0/8] drm/i915: display reset cleanups
Date: Tue, 25 Feb 2025 13:14:14 +0200
Message-Id: <cover.1740481927.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

v2 of [1], preserving patches 1-3, and rewriting everything else from
scratch with a different approach. It's not perfect, but I think it's a
better direction.


BR,
Jani.


[1] https://lore.kernel.org/r/cover.1736332802.git.jani.nikula@intel.com


Jani Nikula (8):
  drm/i915/display: convert display reset to struct intel_display *
  drm/i915: move pending_fb_pin to struct intel_display
  drm/i915/reset: add intel_gt_gpu_reset_clobbers_display() helper
  drm/i915/reset: add intel_display_reset_test()
  drm/i915/reset: add wrappers for display reset calls
  drm/i915/reset: move gt related stuff out of display reset
  drm/i915/reset: pass test only parameter to
    intel_display_reset_finish()
  drm/i915/reset: add modeset_stuck callback to
    intel_display_reset_prepare()

 .../gpu/drm/i915/display/intel_display_core.h |  2 +
 .../drm/i915/display/intel_display_reset.c    | 64 +++++++------------
 .../drm/i915/display/intel_display_reset.h    | 12 +++-
 drivers/gpu/drm/i915/display/intel_dpt.c      |  5 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 10 +--
 drivers/gpu/drm/i915/display/intel_overlay.c  |  5 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         | 60 +++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_reset.h         |  2 +
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.h         |  2 -
 12 files changed, 105 insertions(+), 63 deletions(-)

-- 
2.39.5

