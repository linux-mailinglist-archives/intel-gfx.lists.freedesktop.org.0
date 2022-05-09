Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67319520651
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 23:01:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56ACD10F1EA;
	Mon,  9 May 2022 21:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 476E310F1E6
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 21:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652130106; x=1683666106;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fGJzHvHh+WJ795XlmBhj+h84l/RVET/CVvpzzT8SIRg=;
 b=VPMlBNGyGbEFRDtqOJ2gTLy/6m0OQY3y+dtfHl/PcYVxLxufl8fKuHiT
 siQBolwcso1R+x/dR+xeF5qTc05ub7n2MDLBypCiXrdb5AKsjjYA31L14
 J2ywQMveRGc3SwdaV93tTJfBgbxIWSQ5N0mpDpYy1tOzgbyi1qKGWVdT2
 FIwov3pXPIs0djprzrY8UMA73NW/mCfjAxZHzyVN2ZRhzjJi3qMFFHV/D
 6kpjfxerMl5naMdUDCTTNm+Q4lKpCU6ioaneGAz7lHlhUJno9rfq2qczL
 YYDB+YCnVszTV9Adtn4lNwSeXJYUp7tQeTJvwjzx5VjtNFWmPq43HyF0O A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="249703591"
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="249703591"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 14:01:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="519410903"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 09 May 2022 14:01:45 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 May 2022 14:01:45 -0700
Message-Id: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 0/6] Update GuC relay logging debugfs
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

This series
  1. Fixes a bug introduced in GuC Error Capture that
     was sharing the memmap of the multi-region GuC
     logging buffer.
  1. Adds support for unaligned wc memcpy during the
     copying of logs to relay channel.
  2. Renames the debugfs file for controlling GuC relay
     logging to something more discernible.
  3. Introduces two debugfs files to allow intel_guc_logger
     to read the subbufer-count and subbuffer-size from the
     kernel so future changes to buffer sizing in kernel
     wont require updating intel_guc_logger codes.
  4. Moves the location of the relay-channel debugfs file
     to be under the "gt/uc/" path alongside other guc-
     id debugfs files.

Alan Previn (6):
  drm/i915/guc: Fix GuC relay log debugfs failing open
  drm/i915/guc: Add unaligned wc memcpy for copying GuC Log
  drm/i915/guc: Add a helper for log buffer size
  drm/i915/guc: Provide debugfs for log relay sub-buf info
  drm/i915/guc: Rename GuC log relay debugfs descriptively
  drm/i915/guc: Move guc_log_relay_chan debugfs path to uc

 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    | 75 ++++++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |  2 +
 .../drm/i915/gt/uc/intel_guc_log_debugfs.c    | 63 +++++++++++++---
 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c |  2 +
 5 files changed, 104 insertions(+), 40 deletions(-)


base-commit: f876385531c7b2509cef8c86a4b6756493f8d457
prerequisite-patch-id: bd289e26be8fba5f456bac9bcf47dceb2e9c4ca9
prerequisite-patch-id: 33c3ec7cd47caab08237ed4ddb299f6d351e74f3
prerequisite-patch-id: 12e1fca75d27bd709dab9e9ca9ffb0126c6dc20d
prerequisite-patch-id: 6ac8d22df34db9e7d467b1ab95ad30f94841d5db
prerequisite-patch-id: f3fa135a3d73937cd923d642d2ad8c0760ac3175
prerequisite-patch-id: 61e40b88ca38aefdc6c17c0e6b83b875a832bc63
prerequisite-patch-id: 6f3232e12fbcf0e0cb312a040a2002de75e70842
prerequisite-patch-id: 46bc9cefd8b30b05c67a5b716d4ed045a62cac14
prerequisite-patch-id: fc2cb39b246060e635341a1afe4b2405ea615948
prerequisite-patch-id: d0869a5b21767338a03d41e31af7317c1166be55
prerequisite-patch-id: 0286c05f8ab431bd64925b533b75554d23403368
prerequisite-patch-id: 0449925cca36664b566f614bfb7d573a11f0575f
prerequisite-patch-id: f7a578825b1efb9df8cf90f5ba3b725bf12ff7f3
prerequisite-patch-id: 2070c8ae646b89fa2db21c1a2e26906dd7220c74
prerequisite-patch-id: 640b750eda1a7327bc7f2a4532ab9a443cc64244
prerequisite-patch-id: 92fdfb264c5c3e5260ac3694fe81861990bcaea0
prerequisite-patch-id: ec6bfb981123156776125f2de8f3168c594346c2
prerequisite-patch-id: 78927aa21ee5861e6b52bef9955747836aeae671
prerequisite-patch-id: 048f14c852ef9cdf345b11d420052d61dbac3f88
prerequisite-patch-id: 40308b701a3e3d1a7e7cf365acb315c17ddbdc5a
prerequisite-patch-id: 8422c8394afa49ad81b6181431eecd2bc58a795c
prerequisite-patch-id: bc581180de3f2f68645b800cb2708b5f6546d1f4
prerequisite-patch-id: 541ce19060961f8fa097b946a306c0e0a4149eaf
prerequisite-patch-id: a803b51482f6e2d9cbda4b483f8520cee51dd337
prerequisite-patch-id: 7792ed4b88b83b05a7111f834a6a0dc78699dbbf
prerequisite-patch-id: 876637bbc5855162282c89a5f12d7c1eff61159d
prerequisite-patch-id: 6abe37df462e54e27d3ae6415297a7e7f64e4eb7
-- 
2.25.1

