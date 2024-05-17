Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B008C8177
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 09:30:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A691710EE0A;
	Fri, 17 May 2024 07:30:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bVPHCxMd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22D1310EDFA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 07:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715931034; x=1747467034;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3HCvLNw8kvNgydW2WSnLDKY9k+4NtS1fwvBWP25rAyQ=;
 b=bVPHCxMdKQoah+fwj7fUn/LHkeq1yE1A20xaPcqMJUhmm43n8/4b/vZ7
 0KU8hdl0Q/ZEkma5s7/PU5mIroGKYlF4KOdOjRCziHUPUizuTdDAhuwdn
 caG3AAPxzaK6O/xvWpzgbkywZWIokEB99FBcmYt6AUkVt59cEbQswgLhj
 /RNJvPcBiFOJTfPE11r/Ubt7im6M3tGvf2gMyyvvJtzTInPml/YLx1Q/A
 xnDTGlKZF7XNu8oBmwz1CJl9xVvRBnfEOXA2zqegQXJGyIS4pCSq+m8W0
 xQF4N0qi/+w5YSg6XPzdUJu5IyWEfXRGoGDv0ZXgfy9PRQvy0Np/k6Ssc Q==;
X-CSE-ConnectionGUID: l0ucCc12T0G3wgpCY7kjBw==
X-CSE-MsgGUID: dYHhelNzRAe2MMCM0SeFow==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="15917880"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="15917880"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:30:18 -0700
X-CSE-ConnectionGUID: lmL2RrJPSIiepaFd1Y1Z4w==
X-CSE-MsgGUID: X+TtAMlSQC+7tK6zoWqLUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="31803585"
Received: from mspitkan-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.210.189])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:30:17 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/3] LunarLake IO and Fast Wake changes
Date: Fri, 17 May 2024 10:30:02 +0300
Message-Id: <20240517073005.2414293-1-jouni.hogander@intel.com>
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

There are some changes in LunarLake IO and Fast Wake configuration:

IO Wake Lines configuration is now 6 bits wide
Fast Wake Lines configuration is now 6 bits wide and in ALPM_CTL register
PSR2_CTL[Block count number] is not valid for LunarLake and onwards

This patch set modifies the driver accordingly.

v2: maximum line count is 68 (6 bits + 5 lines added by HW)

Jouni Högander (3):
  drm/i915/psr: LunarLake IO and Fast Wake time line count maximums are
    68
  drm/i915/psr: LunarLake PSR2_CTL[IO Wake Lines] is 6 bits wide
  drm/i915/psr: PSR2_CTL[Block Count Number] not needed for LunarLake

 drivers/gpu/drm/i915/display/intel_psr.c      | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 ++++
 2 files changed, 10 insertions(+), 3 deletions(-)

-- 
2.34.1

