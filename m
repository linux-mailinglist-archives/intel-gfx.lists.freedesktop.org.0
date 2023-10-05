Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B247B9AF4
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 07:45:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2260D10E1B3;
	Thu,  5 Oct 2023 05:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6842710E1B5
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 05:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696484718; x=1728020718;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i85Vr/CPNSXtIpMePWo3ZxBaETebhUcbzoBt88CLfg8=;
 b=UKRSfS8lSLBQKKskRiI+uadoqwUTQAge8yuqPMT/wfM1P9T8LJgKGbVe
 wu+KFzW+75CP2zL+4it/IjNA1ooYcj4VJJ2MgaEPt6dwdg23P6++qgSHw
 tZeW0C3d3qOImYDjEf3QSOg3UKuxwEyI3nDbpEDDMV7Pr2C3gb3XLENwl
 xfgGBH4A0UEi1YolH1hQFlZDRmT7VtxcRUGDcyCTIpVAlJvnldZ+v1HT9
 1SjfZN12evHfCPGCrp+KkGebynbDQ3x9xQ5ykyZrqnMxBpdiwowIa32wX
 sLgwwisP62xXW/jsB2R12AeRbVXtFxHYIEAA/BKxHeI9PzB1o2dIEYVL7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="4971840"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; 
   d="scan'208";a="4971840"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 22:45:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="786821881"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="786821881"
Received: from jlmcclen-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.55.79])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 22:45:13 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Oct 2023 08:44:56 +0300
Message-Id: <20231005054500.2053070-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 0/4] Framework for display parameters
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently all module parameters are handled by i915_param.c/h. This
is a problem for display parameters when Xe driver is used.

This patch set adds a mechanism to add parameters specific to the
display. This is mainly copied from existing i915 parameters
implementation with some naming changes and taking into account
varying driver name.

Also fbc and psr related parameter are moved as an example.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Jouni Högander (4):
  drm/i915/display: Add framework to add parameters specific to display
  drm/i915/display: Dump also display parameters into GPU error dump
  drm/i915/display: Move enable_fbc module parameter under display
  drm/i915/display: Move psr related module parameters under display

 drivers/gpu/drm/i915/Makefile                 |   2 +
 drivers/gpu/drm/i915/display/i9xx_wm.c        |   2 +-
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../display/intel_display_debugfs_params.c    | 239 ++++++++++++++++++
 .../display/intel_display_debugfs_params.h    |  14 +
 .../drm/i915/display/intel_display_device.c   |   8 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_params.c   | 166 ++++++++++++
 .../drm/i915/display/intel_display_params.h   |  65 +++++
 drivers/gpu/drm/i915/display/intel_fbc.c      |  10 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  14 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |   3 +
 drivers/gpu/drm/i915/i915_gpu_error.h         |   2 +
 drivers/gpu/drm/i915/i915_params.c            |  19 --
 drivers/gpu/drm/i915/i915_params.h            |   4 -
 17 files changed, 519 insertions(+), 36 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.h

-- 
2.34.1

