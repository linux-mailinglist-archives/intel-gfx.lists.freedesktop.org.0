Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A14DD8BF754
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 09:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E144C112865;
	Wed,  8 May 2024 07:44:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I43Zrtyx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D598610F876;
 Wed,  8 May 2024 07:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715154298; x=1746690298;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0X0+uhETQCWZtCw07cBhB5I03iTFbZE0sRQrE/cBO/s=;
 b=I43ZrtyxY5imbTu2PT74eIFLgOssFPrRYZTwO2dcuN3ijRD/h1VGLmte
 iBOc+uFJvnN75bhlOPG6hLECEPAHVfi0HvXZocZZdEdGwg+Pl0U3cUCqQ
 0xnQt5mpEvAyRP30EanKSQ6IJzpyl5NVj4zUKEUeWQGJJdcGZO/VTzBDv
 jF/9AqY/403kNxNylw2nkqB/nesb++fbiFZinJsGEJkMWURtnn0CnM8E6
 Ke03nlrSFDSjvDcIaxBcFewPhupd7Tdr/wBwgHYWRRyp7c1jtf/3l8Kvr
 gbHJDwDdEHyXt/AwImNpgtEaEHMKmLpMAh9AomOgeiETDNv2pkblellgh w==;
X-CSE-ConnectionGUID: oKJEWmZhTRCH3HoeU7LGqQ==
X-CSE-MsgGUID: xZydfOk6TQGIMzkCRDSCBQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="21665431"
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="21665431"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 00:44:57 -0700
X-CSE-ConnectionGUID: QFQaYXk9ScqJmbzyGBZOGw==
X-CSE-MsgGUID: 6n8x3iPESZ6I0PnYc4RKWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="33273785"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2024 00:44:55 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ville.syrjala@linux.intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH 0/4] Cursor Fault Fix
Date: Wed,  8 May 2024 13:09:00 +0530
Message-Id: <20240508073904.1661848-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

This series is based on the following series by Maarten

https://patchwork.freedesktop.org/series/132900/

It is an attempt at solving CI issues seen in the original series

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132900v1/shard-rkl-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2.html


Chaitanya Kumar Borah (1):
  drm: Add helper to check if there are pending vblank work

Maarten Lankhorst (2):
  drm: Add drm_vblank_work_flush_all().
  drm/i915: Use the same vblank worker for atomic unpin

Ville Syrjälä (1):
  drm/i915: Use vblank worker to unpin old legacy cursor fb safely

 drivers/gpu/drm/drm_vblank_work.c             | 46 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_atomic_plane.c | 13 +++++-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  2 +
 drivers/gpu/drm/i915/display/intel_crtc.c     | 31 +++++++++++++
 drivers/gpu/drm/i915/display/intel_cursor.c   | 26 ++++++++++-
 drivers/gpu/drm/i915/display/intel_cursor.h   |  3 ++
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +++
 .../drm/i915/display/intel_display_types.h    |  3 ++
 include/drm/drm_vblank_work.h                 |  3 ++
 9 files changed, 130 insertions(+), 3 deletions(-)

-- 
2.25.1

