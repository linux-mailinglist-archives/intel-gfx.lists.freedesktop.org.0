Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F044F4446A4
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 18:07:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B02D873C61;
	Wed,  3 Nov 2021 17:07:26 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8CB973C61;
 Wed,  3 Nov 2021 17:07:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231501431"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="231501431"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 10:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="449892022"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga006.jf.intel.com with ESMTP; 03 Nov 2021 10:04:49 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Wed,  3 Nov 2021 10:04:41 -0700
Message-Id: <20211103170449.1614314-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t 0/8] Fixes for gem_exec_capture
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Fix a bunch of issues with gem_exec_capture with the ultimate aim of
making it pass on GuC enabled platforms.

v2: Abstract the 'find first available engine' block into a helper
(review feedback from Matthew B). Note that for unknown reasons, this
helper does not work as a function. After wasting far too long trying
to debug out why the engine mask in the execbuf was *sometimes*
invalid, just making it a macro instead worked fine. Seems like maybe
the for_each_ctx_engine macro creates a local stack variable that is
silently required to remain in scope for the resulting ctx to be valid?

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (8):
  tests/i915/gem_exec_capture: Remove pointless assert
  tests/i915/gem_exec_capture: Cope with larger page sizes
  tests/i915/gem_exec_capture: Make the error decode a common helper
  tests/i915/gem_exec_capture: Use contexts and engines properly
  tests/i915/gem_exec_capture: Check for memory allocation failure
  lib/igt_sysfs: Support large files
  lib/igt_gt: Allow per engine reset testing
  tests/i915/gem_exec_capture: Update to support GuC based resets

 lib/igt_gt.c                  |  44 ++--
 lib/igt_gt.h                  |   1 +
 lib/igt_sysfs.c               |  17 +-
 tests/i915/gem_exec_capture.c | 469 ++++++++++++++++++++--------------
 4 files changed, 315 insertions(+), 216 deletions(-)

-- 
2.25.1

