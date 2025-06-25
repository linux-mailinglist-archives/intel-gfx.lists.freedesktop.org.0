Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB32AE82DE
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 14:39:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BCBD10E220;
	Wed, 25 Jun 2025 12:39:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LpKN27Sp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0743510E220;
 Wed, 25 Jun 2025 12:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750855185; x=1782391185;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=inVnBg6eTUuPXt+77Xfi9JhZQS7etthcbk/NvaJzABc=;
 b=LpKN27SpHZwqGCArCSOcstJF0M1lK5ri+wlZiq73G+FF2owJnYsJrDCM
 2awURLv5DxWyavyysSNka8r7QNWa1z48mLK8w5PO2DOgyFH9oEz8QFszl
 8f5p1+PAHMKJmTgB3Gp1AuBHo360VFS5rULnLa0QuDsNH0U+GrmcHqeh+
 2COeCe/Y+Xnc6Fxc1seYxnsdZUYMHuoAeS1t6aAFuvD/yOpeyuCoHtO4R
 DmzEpdOoUngU17Wb7kXOaYJe/C9nfOeuPBMLHS7iHGztJe5pPr03om+j7
 qZHebH7Zktuww0VpZfdBd9RMFDBt1va/Honpt0ad8pIvtCP8Bll6ffTXE A==;
X-CSE-ConnectionGUID: 7ZTXHMZCTISsC/DJQ4DQvQ==
X-CSE-MsgGUID: T2asyxN2Rfaoqy7Kamm8pg==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="53259021"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="53259021"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 05:39:44 -0700
X-CSE-ConnectionGUID: 1FNtAVVpQ6eCywaPzjH/SQ==
X-CSE-MsgGUID: hpWyyMYESkC3ncyKVa6cFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151969387"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 05:39:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 0/3] drm/i915/power: power well register cleanups
Date: Wed, 25 Jun 2025 15:39:35 +0300
Message-Id: <cover.1750855147.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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


Jani Nikula (3):
  drm/i915/power: move enum skl_power_gate under display
  drm/i915/power: relocate {SKL,ICL}_PW_CTL_IDX_TO_PG()
  drm/i915/power: convert {SKL,ICL}_PW_CTL_IDX_TO_PG() macros to a
    function

 .../i915/display/intel_display_power_well.c   | 19 +++++++++++++----
 .../gpu/drm/i915/display/intel_display_regs.h | 21 ++++++++-----------
 drivers/gpu/drm/i915/i915_reg.h               | 10 ---------
 3 files changed, 24 insertions(+), 26 deletions(-)

-- 
2.39.5

