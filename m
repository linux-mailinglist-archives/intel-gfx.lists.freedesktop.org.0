Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E99F4E2812
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 14:50:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C2C10E2D7;
	Mon, 21 Mar 2022 13:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47D110E2D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 13:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647870649; x=1679406649;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5XW5MG464CI2G5vTaHHNYpn47BawMqbH358PN117C80=;
 b=dfRDIFxSub26b9w65MA6ltBLCIRPiyd2HKb3ZO4gQG9EnE3L3nsp8dT0
 V37gbZn5OXyOf3j5bDutTHt3TqTsPwe0MdliEpwwGoEfiFZgx1CZQUwy7
 +TK/LeKahCbG/fircx3K/lZYbTjS4jmOE1P3MsP0pQjvOW58WjIfHrRt+
 CJI3iXida6033kJXU6YDlhARCwoZlGc+UW10t9XS7V+R6FKNUYAwixSjw
 XcxCTiE/ehq7jHj0s46UapFJ2ZRuQ/8SjLzAIBC3XUWJPh+4IbfFKtt63
 oiqHkBDCIHXlpq9e/Wvofeeoq0L0RxkvvKQ6+fB/lmq/QS7lJt2fRp5vW w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="318266146"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="318266146"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:50:49 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="518443785"
Received: from abhijitc-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.34.12])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:50:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 15:50:28 +0200
Message-Id: <cover.1647870374.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/7] drm/i915/dmc: cleanups
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

v2 of https://patchwork.freedesktop.org/series/101499/

Jani Nikula (7):
  drm/i915/dmc: simplify intel_dmc_load_program() conditions
  drm/i915/dmc: move assert_dmc_loaded() to intel_dmc.c
  drm/i915/dmc: move dmc debugfs to intel_dmc.c
  drm/i915/dmc: fix i915_reg_t usage
  drm/i915/dmc: abstract GPU error state dump
  drm/i915/dmc: hide DMC version macros
  drm/i915/dmc: split out dmc registers to a separate file

 .../drm/i915/display/intel_display_debugfs.c  |  75 +----------
 .../drm/i915/display/intel_display_power.c    |  18 +--
 drivers/gpu/drm/i915/display/intel_dmc.c      | 125 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dmc.h      |  10 +-
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  30 +++++
 drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |  10 +-
 drivers/gpu/drm/i915/i915_reg.h               |  21 ---
 8 files changed, 157 insertions(+), 133 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_regs.h

-- 
2.30.2

