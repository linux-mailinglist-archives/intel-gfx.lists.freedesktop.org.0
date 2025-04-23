Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D01A98651
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 11:46:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2919C10E0C4;
	Wed, 23 Apr 2025 09:46:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mtW5igM2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 693CA10E0C4;
 Wed, 23 Apr 2025 09:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745401600; x=1776937600;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7ZsfwTNKk+Y7PxT5+WNA9AJ7ABVJE7FhzcYdFpxJiVY=;
 b=mtW5igM2y3ywzMtzmJe/pZcnLmGLk+Wjgv3rYjCemR519Vpl2q9bWWfW
 0aW+b86gLVDRgRoapdVFUvHaWftbwNmlKCGW4fGKRm155KyZMlMLrehOR
 kT4XCYz64MykCevDwUv4I/shaCM4f6WsZirth5xf7LnngFMIVL9cTJsGq
 mrKlQmw14n/5iMarMNVMEzTnHTmzKXH9ByhOLgG6PFpz+R01Jf8JANrAx
 /5eFL2kXQGnChI2MIXkkuVm6wOABXugN6OQW1JBxrYF3O7JSowdLoJMRd
 dNdwQejDwMILwIzHmYpku0Vlq0R9UbXbpCpaD5n0FFn7zqqVI05hjcSUJ w==;
X-CSE-ConnectionGUID: wHatYDvRRFmYlmSeHUlTaA==
X-CSE-MsgGUID: CLXA2sreSBK+ixV8uA/P4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="58357927"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="58357927"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:46:40 -0700
X-CSE-ConnectionGUID: lleSh8k+RweTkpO+3TzXrw==
X-CSE-MsgGUID: KzsTUDuTRXqyldG/1DHDcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="132811095"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 23 Apr 2025 02:46:38 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v10 00/11] LOBF enablement fix
Date: Wed, 23 Apr 2025 14:53:23 +0530
Message-Id: <20250423092334.2294483-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

v1: Initial version.
v2: Addressed review comments from Jani.
v3: Addressed review comments from Jouni.
v4: Addressed review comments received on v3.
v5: Addressed review comments received on v4.
v6: Addressed review comments received on v5.
v7: Addressed review comments received on v6.
v8: Addressed review comments received on v7.
v9: Addressed review comments received on v8.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (10):
  drm/i915/lobf: Add lobf enablement in post plane update
  drm/i915/lobf: Add debug print for LOBF
  drm/i915/lobf: Disintegrate alpm_disable from psr_disable
  drm/i915/lobf: Add fixed refresh rate check in compute_config()
  drm/i915/lobf: Update lobf if any change in dependent parameters
  drm/i915/lobf: Add debug interface for lobf
  drm/i915/lobf: Add mutex for alpm update
  drm/i915/lobf: Check for sink error and disable LOBF
  drm/i915/alpm: Add intel_psr_need_alpm() to simplify alpm check
  drm/i915/display: Disintegrate sink alpm enable from psr with lobf

Jouni Högander (1):
  drm/i915/alpm: use variable from intel_crtc_state instead of intel_psr

 drivers/gpu/drm/i915/display/intel_alpm.c     | 195 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_alpm.h     |  10 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   7 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  61 +-----
 drivers/gpu/drm/i915/display/intel_psr.h      |   1 +
 8 files changed, 224 insertions(+), 60 deletions(-)

-- 
2.29.0

