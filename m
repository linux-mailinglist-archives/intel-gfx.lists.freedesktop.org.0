Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0414CD7437
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 23:19:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49AE10E1D5;
	Mon, 22 Dec 2025 22:19:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XgolOhnB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5986110E1BA;
 Mon, 22 Dec 2025 22:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766441948; x=1797977948;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=Pfz2S+oeWWhlhuxL4LyiJ5XdTpWt8h9RpGtl/IBMb5o=;
 b=XgolOhnBcIz8GWEqQJa6iip5UBC/uLMBdn17WrmRy51ym86NOS6sWZFP
 UzcH/+Bfr/4T4/KGDUqRHTbpRiFe6F8hPAhjk2n7rnLZ3bByw2f1y/euZ
 zhcRGg/yIk32ZXR/hdWgHX8gBAWTimLKUv0VWZ1jJ6jpC3x7AEWsftwxv
 pPi+pp0pkf7ZVpm66yrr5LKW3LQERYhdnfWDjVl/1sCj2uoe+NpBCbm5i
 nnESRl5OSR6Vb8tyNYN2R2SlrL9Ui+DOqCfqutMonRPP1jJYIY6by++0r
 uwFnScW+e36oikeag5SukHGwTfIIQcvBw70EeKgI1+dK3qNHoexTOdi2h Q==;
X-CSE-ConnectionGUID: QfLVfsMWSoKFjc7rfCzBlA==
X-CSE-MsgGUID: OQn3yoVUSB2MZDB4ljNJBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68339742"
X-IronPort-AV: E=Sophos;i="6.21,169,1763452800"; d="scan'208";a="68339742"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 14:19:08 -0800
X-CSE-ConnectionGUID: NMUihMvzQSqNsHBZTwMCFQ==
X-CSE-MsgGUID: Sxpsc3jPR++g/JsYuuJAOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,169,1763452800"; d="scan'208";a="199619003"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.137])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 14:19:07 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH 0/2] Implement Wa_13012396614 for Xe3_LPD
Date: Mon, 22 Dec 2025 19:18:46 -0300
Message-Id: <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-0-a2f7e9447f7a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMbDSWkC/x3NTQ6CMBBA4auQWTsJnSJEr2Jc1HbAiaUlHfwL4
 e42Lt/mexsoF2GFc7NB4Zeo5FTDHBrwd5cmRgm1gVo6GiLCILpE98W3Q2NbQ/bU96bDVWZJE+Y
 R5+DjAzU/i2dUjuzXaiK73gwDWepuHqq+FB7l8z9frvv+A/ahuz+JAAAA
X-Change-ID: 20251222-display-wa-13012396614-timing-of-mdclk-source-selection-ea61772324bc
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.15-dev
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

This series implements Wa_13012396614 for Xe3_LPD. The first patch is a
non-function refactor to keep workaround enumeration sorted by lineage
number; and the second patch contains the workaround implementation.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
Gustavo Sousa (2):
      drm/i915/display_wa: Keep enum intel_display_wa sorted
      drm/i915/cdclk: Implement Wa_13012396614

 drivers/gpu/drm/i915/display/intel_cdclk.c      | 31 ++++++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 14 ++++++-----
 drivers/gpu/drm/i915/display/intel_display_wa.h | 12 +++++++---
 3 files changed, 45 insertions(+), 12 deletions(-)
---
base-commit: f2a0e58c77845e1a5cb6c549dc02b2670042e588
change-id: 20251222-display-wa-13012396614-timing-of-mdclk-source-selection-ea61772324bc

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

