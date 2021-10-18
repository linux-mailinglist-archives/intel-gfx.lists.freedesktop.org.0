Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 247D14310DD
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 08:51:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94EDC6E95E;
	Mon, 18 Oct 2021 06:51:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A2466E95E
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 06:51:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="208286115"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="208286115"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2021 23:51:37 -0700
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="482603698"
Received: from unknown (HELO vandita-Z390-AORUS-ULTRA.iind.intel.com)
 ([10.190.238.8])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2021 23:51:35 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, matthew.d.roper@intel.com,
 Vandita Kulkarni <vandita.kulkarni@intel.com>
Date: Mon, 18 Oct 2021 12:22:03 +0530
Message-Id: <20211018065207.30587-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Enable MIPI DSI video mode on ADLP
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

Vandita Kulkarni (4):
  drm/i915/dsi/xelpd: Fix the bit mask for wakeup GB
  drm/i915/dsi/xelpd: Add DSI transcoder support
  drm/i915/dsi/xelpd: Disable DC states in Video mode
  drm/i915/dsi: Ungate clock before enabling the phy

 drivers/gpu/drm/i915/display/icl_dsi.c        | 10 +++---
 .../drm/i915/display/intel_display_power.c    |  3 +-
 drivers/gpu/drm/i915/i915_pci.c               | 31 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h               |  3 +-
 4 files changed, 36 insertions(+), 11 deletions(-)

-- 
2.32.0

