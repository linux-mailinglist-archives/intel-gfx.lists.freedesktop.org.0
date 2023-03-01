Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B00E86A74CE
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 21:11:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CBF010E24C;
	Wed,  1 Mar 2023 20:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27C3310E241
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 20:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677701507; x=1709237507;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wF65Lol7hLNNZnii5Q+VHH7ZZsAwpLtRkmrjbZvvRdo=;
 b=mnyHHfrROajyjRyKwQYieoQ/gi1jRmv5mE234M7Tf4x1KIJxyGkpnv1e
 0jNzeskzwgDWxg1Ot8PtW6eBRbLoeSO4JLvMqtIZEYIDH6iCTXnVn+Qc5
 IGB4DymXCt4X3AEfn87h9QZmJUp6DmaUU4rELq/2SOd4AxCPhnNn0HWNG
 yr5DAIjThdYjiNYiQd2m1EcOII0ZXyMXvQuGmsFuq+fXWXcAY53hQVzF8
 WiHhPPeu0IlSPMgdP4bsBsSYmdsdTRlDbZGj1Xg2agME4uC519rPE1A4c
 F88wQfNMe/5tm+7ln8XT9Y6ZfkGpgYTmYwFzY9s6QoJviJbq4sA641DGO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="314933478"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="314933478"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 12:11:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="674691932"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="674691932"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 12:11:45 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 12:10:48 -0800
Message-Id: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/5] Misc Meteorlake patches
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

This series adds misc MTL patches. This is a new rev of 
earlier series with dropped CCS patches. Review feedback for other
patches included.

Andi Shyti (1):
  drm/i915/gt: generate per tile debugfs files

José Roberto de Souza (1):
  drm/i915/display/mtl: Program latch to phy reset

Radhakrishna Sripada (2):
  drm/i915/mtl: Fix Wa_16015201720 implementation
  drm/i915/mtl: make IRQ reset and postinstall multi-gt aware

Tejas Upadhyay (1):
  drm/i915/fbdev: lock the fbdev obj before vma pin

 .../drm/i915/display/intel_display_power.c    |  8 +++++
 drivers/gpu/drm/i915/display/intel_dmc.c      | 26 ++++++++++++----
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 24 +++++++++++----
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c    |  4 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  5 +++-
 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c |  2 ++
 drivers/gpu/drm/i915/i915_irq.c               | 30 +++++++++++--------
 drivers/gpu/drm/i915/i915_reg.h               | 12 ++++++--
 9 files changed, 85 insertions(+), 28 deletions(-)

-- 
2.34.1

