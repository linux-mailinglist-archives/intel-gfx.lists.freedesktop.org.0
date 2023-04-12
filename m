Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B616DF010
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 11:13:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 209A210E73E;
	Wed, 12 Apr 2023 09:13:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8518C10E73E
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 09:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681290815; x=1712826815;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=doBTKTxcCaOSUOdhd9InTr3wDrc2Ld7DM3vhP+p1AAg=;
 b=aEUreMUYNVPIQfa6/2TnkoKBbtvEsK6IcyGAbwfd14q0KBFX30v2KdPc
 Ws+HbKKDwtR3dnmizAk9vER2uuCRr1sGL837NVumSAGEFMLraO2TTwSBw
 zNVblv4hlmMOgT+n4uJPW5TEJ08K2dypOyGYrlF0UWZvjEJ8XIMe0g7R8
 LSJUDpB2Oj/XJm3Xg1Mt79mXRGyCWTUxgs1yi2BROVfFOxKyGazF3NZfc
 xEWIeFtKevoQwTP8jtZpb29Z4HSYJ1lEoCguzeIElx47bxjnhByy7o2eU
 poFP2lGSpojjhX5g8vuKANfjUV1VFPWFXG1wxSsHdnukFg4CEAgdyVpjl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="332538000"
X-IronPort-AV: E=Sophos;i="5.98,338,1673942400"; d="scan'208";a="332538000"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 02:13:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="863230018"
X-IronPort-AV: E=Sophos;i="5.98,338,1673942400"; d="scan'208";a="863230018"
Received: from bhanu-nuclab.iind.intel.com ([10.145.169.172])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 02:13:32 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org,
	jani.nikula@intel.com
Date: Wed, 12 Apr 2023 14:39:10 +0530
Message-Id: <20230412090911.811254-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] drm/i915/debugfs: New debugfs for display
 clock frequencies
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

Instead of mixing display & non-display stuff together, move
display specific clock info to new debugfs. This patch will
move Current & Max cdclk and Max pixel clock frequency info
to the new debugfs file "i915_display_clock_info".

Test-with: 20230412090557.810996-1-bhanuprakash.modem@intel.com

Bhanuprakash Modem (1):
  drm/i915/debugfs: New debugfs for display clock frequencies

 .../gpu/drm/i915/display/intel_display_debugfs.c | 16 ++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c    |  4 ----
 2 files changed, 16 insertions(+), 4 deletions(-)

--
2.40.0

