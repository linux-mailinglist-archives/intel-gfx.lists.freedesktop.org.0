Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 032333DF926
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 03:06:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB04689206;
	Wed,  4 Aug 2021 01:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 800C36E99E;
 Wed,  4 Aug 2021 01:05:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="274873912"
X-IronPort-AV: E=Sophos;i="5.84,293,1620716400"; d="scan'208";a="274873912"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 18:05:13 -0700
X-IronPort-AV: E=Sophos;i="5.84,293,1620716400"; d="scan'208";a="670732228"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 18:05:12 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <igt-dev@lists.freedesktop.org>
Cc: <intel-gfx@lists.freedesktop.org>
Date: Tue,  3 Aug 2021 18:23:00 -0700
Message-Id: <20210804012303.158392-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/3] IGT fixes for priority management +
 capture with GuC submission
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

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Matthew Brost (2):
  i915/gem_exec_schedule: Make gem_exec_schedule understand static
    priority mapping
  i915/gem_ctx_shared: Make gem_ctx_shared understand static priority
    mapping

Signed-off-by: John Harrison (1):
  i915/gem_exec_capture: Update to support GuC based resets

 lib/i915/gem_scheduler.c       | 14 ++++++++
 lib/i915/gem_scheduler.h       |  1 +
 lib/i915/i915_drm_local.h      | 10 ++++++
 lib/igt_gt.c                   | 44 ++++++++++++++++--------
 lib/igt_gt.h                   |  1 +
 tests/i915/gem_ctx_shared.c    | 12 ++++---
 tests/i915/gem_exec_capture.c  | 52 +++++++++++++++++++++++-----
 tests/i915/gem_exec_schedule.c | 62 +++++++++++++++++++++-------------
 8 files changed, 144 insertions(+), 52 deletions(-)

-- 
2.28.0

