Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17371B20EA6
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 17:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3FD510E4FE;
	Mon, 11 Aug 2025 15:25:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PHT9QCLL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD9FA10E1DB;
 Mon, 11 Aug 2025 15:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754925956; x=1786461956;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CEqmt+XCl5PE9W/JkDQD2s/5emmrmroh8au2e8DHhJk=;
 b=PHT9QCLL7NISf1wHeoEGS8gwre40YOLdUITGtLIbWq01TsqkTZilhoZt
 RwAaIavsmoSqU7PubG3hucx28hnjc2o7gr6OW30/1S73arIezrSkyIc+z
 D3xL8KyFW5GfKkr1tenoWVHC+K4QA+oEBiU5VsqW9rLwnkcwllKtpoB3v
 as4xIYoJyCqK+vaLPzRb3oo5kFRKRHGQIib6TYXoa9x8Gd/i3zmNak1vz
 OBKVZ7gxQrd7/oP9tCU4HobzlwX68GWy1X8DA18kN2NIYGZ7G1QQctYWw
 KiHTWKsGeu0GEF/qnUZ8yXCtkr1dL/17aYoRcYWRxeSmU1HxBqGw81d27 g==;
X-CSE-ConnectionGUID: 1Pwm7Tt5TaGkynED88vKNw==
X-CSE-MsgGUID: qPdMDZApTXW2O/Ne23c/sQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="57086298"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="57086298"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 08:25:56 -0700
X-CSE-ConnectionGUID: rwPAuv52QYutNprTDQ5wrw==
X-CSE-MsgGUID: zR+Pkx2jQtSVblIRO+iL4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="171294158"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 08:25:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/4] drm/i915/vbt: cleanups and new fields
Date: Mon, 11 Aug 2025 18:25:46 +0300
Message-ID: <cover.1754925923.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
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
  drm/i915/vbt: split up DSI VBT defs to a separate file
  drm/i915/vbt: add anonymous structs to group DSI VBT defs
  drm/i915/vbt: flip bta_enabled to bta_disable
  drm/i915/vbt: add missing DSI VBT defs

 drivers/gpu/drm/i915/display/intel_bios.h     | 174 ----------------
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   2 +-
 .../gpu/drm/i915/display/intel_dsi_vbt_defs.h | 197 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |   2 +-
 5 files changed, 200 insertions(+), 176 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h

-- 
2.47.2

