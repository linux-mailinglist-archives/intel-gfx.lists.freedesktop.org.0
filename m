Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8529E6E0A7B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 11:47:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC4AD10EAA2;
	Thu, 13 Apr 2023 09:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60D6B10EAA2
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 09:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681379262; x=1712915262;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i47of2BLi5ExvAKv41bApWOszNhrQ22KPhkUS5NRGtE=;
 b=JfdwLi2t5W4vT2aVrvvLqKLDPjXauIEfDEV16Yxh2srEKMAsEjwjEZ9W
 qQESOjFrEF2+m4MK0y5L07wQKEyAvq2sw1gWF9XNgcul1y9odgR5fBZsH
 B3GNFPLCEEyKKckk9sNTSdkIiqGF58QBlJOi0rRA2xYXDlwfTKxAlo29S
 9h+XlTnY2JdL4HzMoVrIem7HuGOYZAMaBywvktog3TJaFup6IqiBLA021
 N7RLohEDt7JJkOZLNWJJCZaJBztMS34qDXYiUrpXPt7wX1CLxFodyZ2Wq
 MnWdcUGS4qm1yC/E60OL2Q+CbzeRKBWb4+GXqrCcuF+w39S6Z70kTbneR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="371991290"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="371991290"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:47:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="639599127"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="639599127"
Received: from merkanx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.88])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:47:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 12:47:26 +0300
Message-Id: <cover.1681379167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/10] drm/i915/display: split out high level
 display entry points
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

Add intel_display_driver.[ch] and move the high level display code entry
points there. Also split out intel_display_reset.[ch]. And declutter
intel_display.c by nearly 700 lines.

BR,
Jani.

Jani Nikula (10):
  drm/i915/display: remove intel_display_commit_duplicated_state()
  drm/i915/display: start high level display driver file
  drm/i915/display: move intel_modeset_probe_defer() to
    intel_display_driver.[ch]
  drm/i915/display: rename intel_modeset_probe_defer() ->
    intel_display_driver_probe_defer()
  drm/i915/display: move modeset probe/remove functions to
    intel_display_driver.c
  drm/i915/display: rename intel_display_driver_* functions
  drm/i915/display: add intel_display_reset.[ch]
  drm/i915/display: move display suspend/resume to
    intel_display_driver.[ch]
  drm/i915/display: rename intel_display_driver_suspend/resume functions
  drm/i915/display: add intel_display_driver_early_probe()

 drivers/gpu/drm/i915/Makefile                 |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  | 691 +-----------------
 drivers/gpu/drm/i915/display/intel_display.h  |  31 +-
 .../drm/i915/display/intel_display_driver.c   | 581 +++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  36 +
 .../drm/i915/display/intel_display_reset.c    | 135 ++++
 .../drm/i915/display/intel_display_reset.h    |  14 +
 drivers/gpu/drm/i915/gt/intel_reset.c         |   6 +-
 drivers/gpu/drm/i915/i915_driver.c            |  30 +-
 drivers/gpu/drm/i915/i915_pci.c               |   3 +-
 10 files changed, 816 insertions(+), 713 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_driver.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_driver.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_reset.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_reset.h

-- 
2.39.2

