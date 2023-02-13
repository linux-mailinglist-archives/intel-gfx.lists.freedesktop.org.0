Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A613B695138
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 21:00:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D2010E6F2;
	Mon, 13 Feb 2023 20:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27E2010E6F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 20:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676318414; x=1707854414;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hfbBXUQkuh7PDg8OKOxeL2Qqyfk+24D77aX39U7bXnw=;
 b=morgH+R/iKyF2dxUnAaUXHvoklj8TA6XEqC+flJnCYyjwhbUOJiQcsC6
 d3s3GgjJyrASzytuMeG5PmKcfbf0qml7k+/82+tjf3hTVAAjYSd13l8x/
 mPr+SDB+wMrGNjuE9Z1oaZQlPz5TFbmNtj7uau1MWzGfnmcRPLp38EAkO
 0YY+Gs6F/mW9e9xZQhrA+55SEB0gnL/NaPLLNpOWeAa8Ap+Al1ExKfrBu
 nxWftprnoZaMhwWLIAdTV6v8lOHDws3hrSg7wHvSg60k9oiga9n2+4w7N
 3XtAB9ibWJjxm5Z50ip1SCMRHmSFxGirWnm2TmjnmrOIWETgXxhMrsBAj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="319012152"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="319012152"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 12:00:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="732611774"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="732611774"
Received: from tkatila-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.147])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 12:00:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Feb 2023 21:59:55 +0200
Message-Id: <cover.1676317696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/7] drm/i915/wm: legacy watermark code
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

v2 of [1] rebased on top of Ville's watermark level count changes.

[1] https://patchwork.freedesktop.org/series/113775/

Jani Nikula (7):
  drm/i915: move memory frequency detection to intel_dram.c
  drm/i915/wm: move remaining watermark code out of intel_pm.c
  drm/i915/wm: move functions to call watermark hooks to intel_wm.[ch]
  drm/i915/wm: add .get_hw_state to watermark funcs
  drm/i915/wm: move watermark sanitization to intel_wm.[ch]
  drm/i915/wm: move watermark debugfs to intel_wm.c
  drm/i915: rename intel_pm_types.h -> display/intel_wm_types.h

 drivers/gpu/drm/i915/Makefile                 |    2 +
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 3938 ++++++++++++++++
 drivers/gpu/drm/i915/display/i9xx_wm.h        |   20 +
 drivers/gpu/drm/i915/display/intel_display.c  |  223 +-
 drivers/gpu/drm/i915/display/intel_display.h  |    2 +
 .../gpu/drm/i915/display/intel_display_core.h |    3 +-
 .../drm/i915/display/intel_display_debugfs.c  |  218 +-
 .../drm/i915/display/intel_display_types.h    |   13 +-
 .../drm/i915/display/intel_modeset_setup.c    |   15 +-
 drivers/gpu/drm/i915/display/intel_wm.c       |  527 +++
 drivers/gpu/drm/i915/display/intel_wm.h       |   38 +
 .../intel_wm_types.h}                         |    6 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   22 +-
 drivers/gpu/drm/i915/display/skl_watermark.h  |    5 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   29 -
 drivers/gpu/drm/i915/intel_pm.c               | 4052 -----------------
 drivers/gpu/drm/i915/intel_pm.h               |   13 -
 drivers/gpu/drm/i915/soc/intel_dram.c         |  152 +
 18 files changed, 4712 insertions(+), 4566 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_wm.c
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_wm.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_wm.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wm.h
 rename drivers/gpu/drm/i915/{intel_pm_types.h => display/intel_wm_types.h} (93%)

-- 
2.34.1

