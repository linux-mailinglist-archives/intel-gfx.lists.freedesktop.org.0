Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5163CA87F08
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 13:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D44710E565;
	Mon, 14 Apr 2025 11:29:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UfKOfx2Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0420B10E550;
 Mon, 14 Apr 2025 11:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744630195; x=1776166195;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jGc7UNjvKEXvPjzJbNh0nVaQ3X2Bt0D1dllvKemqD30=;
 b=UfKOfx2YixigCPpucvF4/AGfI6QOHxUaMf1Nh1LQbJ4c+zls1ZpFqu35
 PgzTkeIlI9+9KgrwlpcWyVCJnS3vVd1+7bSSX7wKEY9GUVm6uD24WAyPE
 y0V91OLXAc1EZfgJy9ZaiZRn8QN7Fhc5OjjLrUdi/+rGUozBhZk/+0p/2
 qc2NF5+E2F5wyGoujpSbjZ+flE7k4jFUqIY5RCiJsvflosXIXkDczQjjP
 vDTTYA6DnqnwBSe3lp3BrxKMJGSq81JMA5+Fg4DsHYNFD9KQbFQsIno6U
 WFDuaZHFIOV/OT4+6wj8MB93/PSvocR/4lqQehOS/pKEQ7suQWJB6pfUh Q==;
X-CSE-ConnectionGUID: XCawiU9JRUGN85/+u/660Q==
X-CSE-MsgGUID: lH5Nuij4SVaheQriNJ1+3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="57481037"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="57481037"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:29:53 -0700
X-CSE-ConnectionGUID: fhrvr6sTSNCZVAHC7XivFQ==
X-CSE-MsgGUID: T4a/MZrdTGefg0OK58cUDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129761576"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:29:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [CI v3 0/6] drm/i915: error capture cleanups and refactor
Date: Mon, 14 Apr 2025 14:29:42 +0300
Message-Id: <cover.1744630147.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Resend for clean CI.

Jani Nikula (6):
  drm/i915: use 32-bit access for gen2 irq registers
  drm/i915: record GEN2_IER in gtier[0] for pre-ilk error capture
  drm/i915: stop recording IER in error capture
  drm/i915: use display snapshot mechanism for display irq regs
  drm/i915: don't capture DERRMR for VLV/CHV
  drm/i915: use graphics version instead of PCH split in error capture

 .../gpu/drm/i915/display/intel_display_irq.c  | 28 +++++++++++++++
 .../gpu/drm/i915/display/intel_display_irq.h  |  5 +++
 .../drm/i915/display/intel_display_snapshot.c |  5 +++
 drivers/gpu/drm/i915/i915_gpu_error.c         | 35 +++----------------
 drivers/gpu/drm/i915/i915_gpu_error.h         |  3 --
 5 files changed, 42 insertions(+), 34 deletions(-)

-- 
2.39.5

