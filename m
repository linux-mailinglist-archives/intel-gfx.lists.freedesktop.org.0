Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F66F557111
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 04:31:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E3D110E7B2;
	Thu, 23 Jun 2022 02:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A4F610E7B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 02:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655951475; x=1687487475;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FV4Xx8JhG6Yrr76/sfaLgZOEJFv8OBAPf0RAytIT55k=;
 b=lrq+uPlFA99P81UWVLVOUyjHUPU8jookid7/KlvUXuPwbdWtWyfRHUYw
 VNyn2k/n14aM2f5MvavznJ4EkZ0J9Lc4jQnxP5QLEWC/hKXEZJDBMvJly
 1S6H7+VbRvS4jok5BwLwlMkh+hWRK6O2EknuhfXZzYrR6mSmU5wksooaJ
 +/A/aOS0wVk9QcGn1xB708nmb+6atxWQ/VmyfYC/OZYYLN7tHrrE/tjn2
 zlWC/gNLDtqGmYDx0k5lvYSIrTp8ygZEQu6qsBJohFWU5IfbrFyUZuyhR
 btVi3xYawrmxy3g79OHwGNsXhkGuYxFuG2jrcKTTSUPCLAkosuuUzD8tK w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="280651278"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="280651278"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 19:31:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="563269043"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 22 Jun 2022 19:31:14 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 19:31:56 -0700
Message-Id: <20220623023157.211650-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx v4 0/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
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

This change ensures we don't resample GuC busyness stat
counters too soon after the last sample.

Prior receipts of rvb's:
  Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Changes from prior revs:
  v3:  - Added Umesh's Rvb into patch
  v2:  - Align the name of last_stat_jiffies (Tvrtko)
       - Use 32-bit jiffes (Tvrtko)
       - use time_after() macro (Tvrtko)
       - change from ">> 1" to "/ 2" for ping delay halving (Tvrtko)
  v1:  - Move the location of the new logic to higher up
         the callstack in intel_guc_busyness_park (Umesh).
       - Fix typo threshold of jiffies-since-last from double
         to half of ping_delay (Umesh)

Alan Previn (1):
  drm/i915/guc: Don't update engine busyness stats too frequently

 drivers/gpu/drm/i915/gt/uc/intel_guc.h            |  8 ++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 13 +++++++++++++
 2 files changed, 21 insertions(+)


base-commit: ac17a5249380aaabe5d1eaebd9b3a2eedc08ccdc
-- 
2.25.1

