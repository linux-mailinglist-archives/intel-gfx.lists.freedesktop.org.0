Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3536C89750
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 12:11:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FA0C10E591;
	Wed, 26 Nov 2025 11:11:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jRsLhGKL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8A810E591;
 Wed, 26 Nov 2025 11:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764155489; x=1795691489;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iVvYAPOi1pBE2RTDwaBxOuScBsJvYhhzDwFYFKyb13U=;
 b=jRsLhGKL1DsRwv8O3T7Zb3EIpQOgj2QopbY9WPcTrV4Xp/cywcNX7wPs
 XKFWW8ER9mlRk91To5vHh6IdCqXRDSxAQ0fFA2dqtPYPr6Nqz8JT4IZjS
 PFYLCrBg8erKNzCrqrHmqzvEmgGspBbcSyWp/nEWBQssEpNOLmmStJvX+
 StXqZTTm97V2cM0zw8gS9cKjqJFx2cw0fmSTZBDUGRqSbCibk2nbUmFI5
 7924fIG/gnOUqwoT+FHaRC1eclC6WP+6VXyS/6c+bLHAzfBKfkCHmmFBp
 1VBmkEu5sYpJXkLvXZiiE9TaitvE7+1Hj1bjfRm/aSx/upN82tn7Q0Xh1 Q==;
X-CSE-ConnectionGUID: 4euPD+5gRbeoRHcNEDOLaw==
X-CSE-MsgGUID: Wyb5ycPmRV6jthXCI/TD6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66349625"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="66349625"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 03:11:28 -0800
X-CSE-ConnectionGUID: 055kzmVQQueyjlzaPbTsfA==
X-CSE-MsgGUID: loy4UbV+RJGNdXExmXVU7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="197860833"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.1])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 03:11:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [RESEND 0/4] drm/{i915,xe}/dsb: refactor DSB buffer allocation
Date: Wed, 26 Nov 2025 13:11:19 +0200
Message-ID: <cover.1764155417.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

2nd resend, time to get this reviewed and merged?


[1] https://lore.kernel.org/r/cover.1758021803.git.jani.nikula@intel.com
[2] https://lore.kernel.org/r/cover.1761147363.git.jani.nikula@intel.com


Jani Nikula (4):
  drm/{i915,xe}/dsb: make {intel,xe}_dsb_buffer.c independent of display
  drm/{i915,xe}/dsb: allocate struct intel_dsb_buffer dynamically
  drm/{i915,xe}/dsb: make struct intel_dsb_buffer opaque
  drm/xe/dsb: drop the unnecessary struct i915_vma

 drivers/gpu/drm/i915/display/intel_dsb.c      | 42 +++++++++-------
 .../gpu/drm/i915/display/intel_dsb_buffer.c   | 43 ++++++++++++----
 .../gpu/drm/i915/display/intel_dsb_buffer.h   | 13 ++---
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c    | 49 +++++++++++--------
 4 files changed, 88 insertions(+), 59 deletions(-)

-- 
2.47.3

