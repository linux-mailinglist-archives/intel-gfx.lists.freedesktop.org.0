Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C3168EC06
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 10:49:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2ABF10E72A;
	Wed,  8 Feb 2023 09:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBF6B10E72A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 09:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675849739; x=1707385739;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Mbp693NqQb90wuzK/qWllp9aRn36raj1JZ6jFiDV6bU=;
 b=kGSj/k4Mx/dL5ND0hK2wvbZZWUm9Ze88O3ft6VmfB6TFlrJtd31Kb0yK
 ObTYAf4EGCE/IZcT3zr8lzRVg9LnWqlQroHiFK5XGcCFnaxJAOwyWRkzw
 boHnEEwP+TEXFVc6CKvVL8W9rgLEBUenMJDA94LsEIMIlys8GeXJTzYuP
 73WP3ZVZ97Eyg+nNZIClnXXtyQLHqX74qMI9Q0lTcAztkD2xiBGM5h+Gc
 JP907OXKSlJb79yTNY/4H1VbkQCRI3wfID/jbGtJwqVyfPtdFzYlT6X1z
 5Pq7pBeRrqtCSTWv3dzOT14kUMw8sALHhC6lCC34EHfuTc/NxtavcMMiL g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="357145971"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="357145971"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:48:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="775944256"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="775944256"
Received: from joergber-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.82])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:48:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 11:48:38 +0200
Message-Id: <cover.1675849634.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/10] drm/i915/wm: legacy watermark code
 shuffling
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In short, move all watermark code out of intel_pm.c, and sprinkle a
bunch of cleanups around it.

Jani Nikula (10):
  drm/i915: move memory frequency detection to intel_dram.c
  drm/i915/wm: move remaining watermark code out of intel_pm.c
  drm/i915/wm: move functions to call watermark hooks to intel_wm.[ch]
  drm/i915/wm: add .get_hw_state to watermark funcs
  drm/i915/wm: move watermark sanitization to intel_wm.[ch]
  drm/i915/wm: s/intel_wm_num_levels/g4x_wm_num_levels/
  drm/i915/wm: add *_wm_num_levels() functions
  drm/i915/wm: convert from ilk_wm_max_level() to
    {intel,skl}_wm_num_levels()
  drm/i915/wm: move watermark debugfs to intel_wm.c
  drm/i915: rename intel_pm_types.h -> display/intel_wm_types.h

 drivers/gpu/drm/i915/Makefile                 |    2 +
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 3971 ++++++++++++++++
 drivers/gpu/drm/i915/display/i9xx_wm.h        |   20 +
 drivers/gpu/drm/i915/display/intel_display.c  |  223 +-
 drivers/gpu/drm/i915/display/intel_display.h  |    2 +
 .../gpu/drm/i915/display/intel_display_core.h |    3 +-
 .../drm/i915/display/intel_display_debugfs.c  |  238 +-
 .../drm/i915/display/intel_display_types.h    |   13 +-
 .../drm/i915/display/intel_modeset_setup.c    |   15 +-
 drivers/gpu/drm/i915/display/intel_wm.c       |  541 +++
 drivers/gpu/drm/i915/display/intel_wm.h       |   39 +
 .../intel_wm_types.h}                         |    6 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   90 +-
 drivers/gpu/drm/i915/display/skl_watermark.h  |    6 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   29 -
 drivers/gpu/drm/i915/intel_pm.c               | 4180 +----------------
 drivers/gpu/drm/i915/intel_pm.h               |   14 -
 drivers/gpu/drm/i915/soc/intel_dram.c         |  158 +-
 18 files changed, 4860 insertions(+), 4690 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_wm.c
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_wm.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_wm.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wm.h
 rename drivers/gpu/drm/i915/{intel_pm_types.h => display/intel_wm_types.h} (93%)

-- 
2.34.1

