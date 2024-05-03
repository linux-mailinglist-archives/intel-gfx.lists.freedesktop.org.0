Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D35E8BA6E2
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 08:06:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CAA510F17F;
	Fri,  3 May 2024 06:06:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XWJ+8g/J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0812310F17F
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 06:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714716396; x=1746252396;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zIyhx5l6c6KqkzeJJ12KLsYIoFffKEoQ9K6oWrDKleg=;
 b=XWJ+8g/JNuVTs8wCjztaGT+NgT75g92XAfJ8/0mInPaZqK5vxDHiQTTP
 k8xtOEKTQFwQNtpR5s8jyz+JYSLdB5Qv6mP+iWKGGimNdxbYT5izNjA2n
 L7Y/Tz9mnC52eMUeG/V5vfWJYCdYNbYUF2Z8JzT5o5a/YRZg4f9RdsyeP
 40asiB3koqgYAb1FNMJ/k0s7pliV5jEEbeeV2469qHunlmb9pfhKDNApT
 g3jn31DcUziAi61N+Pqv+IUl5KLTjZsA4cr0aPXp9W6wIwcRNmYvxn9yR
 64oQz7vyUaJplEn1IYvO7J1TMOpZfPcDt9FziwS6rTcvDjDLe/Uznlx0Q Q==;
X-CSE-ConnectionGUID: 8uNopBz0RayGy3BclYBhrA==
X-CSE-MsgGUID: I0EfRBRGRbq2+912qiZIBQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10644603"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="10644603"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:06:36 -0700
X-CSE-ConnectionGUID: vBNhkOtFQMi42e0cjaJNkw==
X-CSE-MsgGUID: aeYor8PFQrudLv8sdfsKrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27875572"
Received: from azaki-mobl.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.32.146])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:06:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/3] LunarLake IO and Fast Wake changes
Date: Fri,  3 May 2024 09:06:18 +0300
Message-Id: <20240503060621.987820-1-jouni.hogander@intel.com>
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

Jouni Högander (3):
  drm/i915/psr: LunarLake IO and Fast Wake time line count maximums are
    63
  drm/i915/psr: LunarLake PSR2_CTL[IO Wake Lines] is 6 bits wide
  drm/i915/psr: PSR2_CTL[Block Count Number] no needed for LunarLake

 drivers/gpu/drm/i915/display/intel_psr.c      | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 ++++
 2 files changed, 10 insertions(+), 3 deletions(-)

-- 
2.34.1

