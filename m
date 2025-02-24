Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA592A42741
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 17:05:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52DC510E32F;
	Mon, 24 Feb 2025 16:05:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EeT7W+cz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31E3110E22E;
 Mon, 24 Feb 2025 16:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740413133; x=1771949133;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hLJ+JBq38jHjW1dQoLK/rCPIG0OEgkaq7D404Wgt+RU=;
 b=EeT7W+czLFbRXxR4qQlV1lBjyFP3ewes2nnXq84V8zLojkBtjNoZsgOy
 Q8+0FKVtZQW3Vidqt9ggJVamxhVzlLq8jiL9tTp7OfkWUZ/OiSu92uZb4
 G2FaoqAlgRuvZXySUfVjmNlXtzQqJf9tvZuWpkv5xnJSnJqkGh9f/tvKk
 U+C0QoL/59Pz73Avevta8OF3iMnjOQUVAkCyK5IuGzoTVuqAPgf4dW2ah
 y0vQQ09HDQULxmgPyl3c9K8H1347Zvq4OIWk0cjoHX/3Wlxgq/V7e2MmZ
 ToXdqbjIKqPrziMKNLahWUMmJhx5duES1VNrH0qFHXdEq3YGf1E8ODi1T g==;
X-CSE-ConnectionGUID: edIiQSyYRguOjgMUC+6zUA==
X-CSE-MsgGUID: nrCPM2DtQXuWHIDfop/1ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40882963"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="40882963"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 08:00:56 -0800
X-CSE-ConnectionGUID: tKbNn1xLTuSDcdHVxGJM6Q==
X-CSE-MsgGUID: 15QKNr3kQ5yt3HxEVUtKBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121356321"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.133])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 08:00:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/2] drm/i915: reduce display dependencies on core
Date: Mon, 24 Feb 2025 18:00:47 +0200
Message-Id: <cover.1740412806.git.jani.nikula@intel.com>
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

Some shuffling to reduce dependencies on i915 headers.

Jani Nikula (2):
  drm/i915: relocate intel_plane_ggtt_offset() to intel_atomic_plane.c
  drm/i915: split out i915_gtt_view_types.h from i915_vma_types.h

 drivers/gpu/drm/i915/display/intel_acpi.c     |  2 +
 .../gpu/drm/i915/display/intel_atomic_plane.c |  8 +-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  2 +
 .../i915/display/intel_display_power_map.c    |  2 +
 .../drm/i915/display/intel_display_types.h    |  9 +--
 .../drm/i915/display/intel_dp_aux_backlight.c |  2 +
 .../drm/i915/display/intel_dp_link_training.c |  1 +
 drivers/gpu/drm/i915/display/intel_dp_test.c  |  2 +
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |  1 +
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  2 +
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  1 +
 drivers/gpu/drm/i915/display/intel_link_bw.c  |  1 +
 drivers/gpu/drm/i915/display/intel_panel.c    |  1 +
 drivers/gpu/drm/i915/display/intel_pfit.c     |  2 +
 drivers/gpu/drm/i915/display/intel_quirks.c   |  2 +
 drivers/gpu/drm/i915/i915_gtt_view_types.h    | 59 +++++++++++++++
 drivers/gpu/drm/i915/i915_vma_types.h         | 52 +------------
 .../compat-i915-headers/i915_gtt_view_types.h |  7 ++
 .../xe/compat-i915-headers/i915_vma_types.h   | 74 -------------------
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  1 +
 20 files changed, 99 insertions(+), 132 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_gtt_view_types.h
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_gtt_view_types.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_vma_types.h

-- 
2.39.5

