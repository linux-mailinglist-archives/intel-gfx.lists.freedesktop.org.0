Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6BFA7F134
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 01:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2FAB10E589;
	Mon,  7 Apr 2025 23:44:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FB1T3Pei";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FF3B10E588;
 Mon,  7 Apr 2025 23:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744069476; x=1775605476;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1iW2xHZUkYQ60KJcCKMeV/8XtQREANUXt2GVKUyAhUc=;
 b=FB1T3PeiVMXh6CzoyXpXLi+o3QBEZPey4EIDJFLgi6pjceNc3rOMDJ9C
 hAWsFP7dQgjdWgrODyuxk3dP59zXFmhM/y2+x3uHWzlemqKGa4SpxPvlq
 5936oi+bMksWju8R1jp1UcE9ZMjQbu3eslIaCcVNytUS+TM6fBw+K+2k5
 ihpsshvL5r+/kAGFxN5HxWnev/98VmFVX04NV23+lzQfIBTfM+HskuzI6
 9roUtSwmjyOVHZHipnontv9JLNaXiT5f9J7SToS58eAIv+RBFid+tRCc1
 0DshS3DnSC9ExRk+r0GQbaGJ+rIXaMG5ZjRlbMMurH5PO6zNun/wOE1M5 Q==;
X-CSE-ConnectionGUID: 5VMIw6OaQRiwN3j1hHFtQQ==
X-CSE-MsgGUID: SE98o/XjRJSlhv+Lmq2M/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49276477"
X-IronPort-AV: E=Sophos;i="6.15,196,1739865600"; d="scan'208";a="49276477"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 16:44:33 -0700
X-CSE-ConnectionGUID: rYd7ufmlSVa/OyTWaptdaA==
X-CSE-MsgGUID: bUl4OP0lRl+efp6gEZwGGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,196,1739865600"; d="scan'208";a="133267208"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa004.fm.intel.com with ESMTP; 07 Apr 2025 16:44:33 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Riana Tauro <riana.tauro@intel.com>
Subject: [PATCH i-g-t 0/2] Add PMU test for GT frequency
Date: Mon,  7 Apr 2025 16:44:04 -0700
Message-Id: <20250407234406.4084642-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
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

This will validate PMU frequency attributes that have been added
to the driver.

Cc: Riana Tauro <riana.tauro@intel.com>>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (2):
  lib/xe_gt: Move get/set GT freq utils to lib
  tests/xe_pmu: Add frequency test

 lib/xe/xe_gt.c           |  59 ++++++++++++++
 lib/xe/xe_gt.h           |   2 +
 tests/intel/xe_gt_freq.c | 164 +++++++++++++++------------------------
 tests/intel/xe_pmu.c     | 128 +++++++++++++++++++++++++++++-
 4 files changed, 252 insertions(+), 101 deletions(-)

-- 
2.38.1

