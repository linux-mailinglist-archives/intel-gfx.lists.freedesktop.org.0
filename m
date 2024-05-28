Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF578D1A13
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:47:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E529110E2BD;
	Tue, 28 May 2024 11:47:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MiAbgCkf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F1F310E289
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716896821; x=1748432821;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F8WrzqgNd0L3QjPr/Vhr6IZb7FEiJlqgrJN6NbJGnWk=;
 b=MiAbgCkfZmzVjBpyyp6UbPkKHtE6BC6g0aWcJglacOYpaulazurPkJBn
 pkPPRvB5I2LDuOZ8I1fDozZ0EazJW7ttylQ/ak3QBS4mhC+lXAt4PxEpO
 KxVOjXfAq81Xq3pIUiLZFTSkWgi91qZn5BiXcXBAfl1iqM9Jt9GzNHJUM
 QBvDkYIYuCi3lRHOUYqoMGCYs7vAj/074JmAiU9mnhSZ6BVeY9I+L/lJ+
 mbfZJhQLKnPt+7ZqghlujeH3bGLTCIYcJvU0PdjX7mfWZEJ3aAsLa8xkj
 UvmMIEcfmX2dJzerup+MhIqind1iQucAN90Z9tanWY56LHpTYEleaKFK2 w==;
X-CSE-ConnectionGUID: yGUFwtnyTh2TDqCkWqK1ag==
X-CSE-MsgGUID: jUWqwqRcQJ27WE+DTtqo4A==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30759826"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="30759826"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:47:01 -0700
X-CSE-ConnectionGUID: LJKUYzAYQ0qmnnVwoEsSbg==
X-CSE-MsgGUID: 1p/+L9CSTQOoPKzGhGZ10A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="65879193"
Received: from vmanek-mobl1.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.75])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:47:00 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/5] Panel Replay eDP debugfs support
Date: Tue, 28 May 2024 14:44:50 +0300
Message-Id: <20240528114455.175961-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This is a subset of Panel Replay eDP patch set
(https://patchwork.freedesktop.org/series/133684). This contains
debugfs changes and is supposed to be safe to be merged alone  Sending
here to get CI result for this subset before merging.

Jouni Högander (5):
  drm/i915/psr: Store pr_dpcd in intel_dp
  drm/panel replay: Add edp1.5 Panel Replay bits and register
  drm/i915/psr: Move printing sink PSR support to own function
  drm/i915/psr: Move printing PSR mode to own function
  drm/i915/psr: modify psr status debugfs to support eDP Panel Replay

 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 68 ++++++++++++-------
 include/drm/display/drm_dp.h                  | 16 ++++-
 3 files changed, 57 insertions(+), 28 deletions(-)

-- 
2.34.1

