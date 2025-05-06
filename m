Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A19AAC1D0
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 12:57:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C27DC10E652;
	Tue,  6 May 2025 10:57:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MZTS1Ug9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5801810E64F;
 Tue,  6 May 2025 10:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746529047; x=1778065047;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IGOjBaxU6HPzmSO+voL89aoF+AQizQEV1smyic6auuA=;
 b=MZTS1Ug9ho5loqqNMWTgMra2pkW7Q0XzyBkliEHxyabZ4tpO/JQsdAA+
 l6PZPacbxOE2EBY762msqFFX1/xu5k6imPqXv1wiQkcDnU8lIDLG3GYZz
 GjQQ6N0wopQZ5jywMQBO3rDEbgz0jHqngutxYvd3AQ1Ix56mY9Fj/6yrq
 wPnjZw9ShyuWJa29/qm+Oxa0tpBheNcfAltLTrdKWmFKNrXEBFJFJiqRO
 Kt3h6bhRjBA6xpQaGkZiQqPa4ALahwEcatb9RPaPDAzvna3ZaQwyhu5Q6
 1rTxJrJDHj5rPU1jgq+/MxtuikaAgubRAwYs9Rd0cYJ5fZ8NBHu6qU8gx A==;
X-CSE-ConnectionGUID: 6iK3uFlJT9m3lk4sgzWDrA==
X-CSE-MsgGUID: SZy6MID4R1Cn5YIae29xbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="59580278"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59580278"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 03:57:25 -0700
X-CSE-ConnectionGUID: 5ZMc9XyOR829jzOzxyddKg==
X-CSE-MsgGUID: i429ZwYBSZOTMDIgwyJ3lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="139636336"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.221])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 03:57:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/4] drm/i915/display: minor cleanups on drm_i915_private use
Date: Tue,  6 May 2025 13:57:15 +0300
Message-Id: <cover.1746529001.git.jani.nikula@intel.com>
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


Jani Nikula (4):
  drm/i915/dsi: remove dependency on i915_drv.h
  drm/i915/display: remove struct drm_i915_private forward declaration
  drm/i915/bios: fix a comment referencing struct drm_i915_private
  drm/i915/crtc: pass struct intel_display to DISPLAY_VER()

 drivers/gpu/drm/i915/display/intel_bios.h         | 2 +-
 drivers/gpu/drm/i915/display/intel_crtc.c         | 3 +--
 drivers/gpu/drm/i915/display/intel_display_core.h | 4 +---
 drivers/gpu/drm/i915/display/intel_dsi.c          | 7 ++++---
 4 files changed, 7 insertions(+), 9 deletions(-)

-- 
2.39.5

