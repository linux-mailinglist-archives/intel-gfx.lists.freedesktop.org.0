Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C754DCDA6
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 19:36:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB1210E717;
	Thu, 17 Mar 2022 18:36:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A7DA10E717
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 18:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647542187; x=1679078187;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bGnJxhYis02y49MwoHy7DeyGm6KqSqK5YKU3fMtd5cY=;
 b=QlfVv29GBvigHPA2AlzeuhpuGsR+hKJrgXj0o1uKlxRMW36qyYhzftKA
 juQwJQ08Pt1WR/2QC4ERT+xU/ye5+lwmTFCUNNp7Ab7GAxbRa8QyuRmiL
 C7SHKtJRzuAfliy75Z5UemV8pHKuD4nu5awX7Uihb11SHewHniMSUItZH
 e/YURAkJPwYL/9B8l7gfEadMu5Y8llnPZQqm9YNcv59OjIeFXO1Q07/xF
 zH4/TJqpPVdJ0myEoeCQX7+iVk9CCX0VjC8DVpIIpONsb9Jg+zvrKjSsC
 XoUnI+gyZR5oba+ZM5SNnYSQKJWcbIXICwRzUIvBlb4LjQ9D1XdptaREe A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="239112538"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="239112538"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:26 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="558056771"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 20:36:12 +0200
Message-Id: <cover.1647542120.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] drm/i915/dmc: cleanups
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

Clean up dmc code to hide details better in intel_dmc.c.

Jani Nikula (8):
  drm/i915/dmc: simplify intel_dmc_load_program() conditions
  drm/i915/dmc: move assert_dmc_loaded() to intel_dmc.c
  drm/i915/dmc: move dmc debugfs to intel_dmc.c
  drm/i915/dmc: fix i915_reg_t usage
  drm/i915/dmc: don't register DMC debugfs file if there's no DMC
  drm/i915/dmc: abstract GPU error state dump
  drm/i915/dmc: hide DMC version macros
  drm/i915/dmc: split out dmc registers to a separate file

 .../drm/i915/display/intel_display_debugfs.c  |  75 +----------
 .../drm/i915/display/intel_display_power.c    |  18 +--
 drivers/gpu/drm/i915/display/intel_dmc.c      | 125 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dmc.h      |  10 +-
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  31 +++++
 drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |  10 +-
 drivers/gpu/drm/i915/i915_reg.h               |  21 ---
 8 files changed, 158 insertions(+), 133 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_regs.h

-- 
2.30.2

