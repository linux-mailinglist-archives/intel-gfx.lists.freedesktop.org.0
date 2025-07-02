Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA9CAF0E8A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 10:56:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B700010E31E;
	Wed,  2 Jul 2025 08:56:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VNY4pRkO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF5B810E31D;
 Wed,  2 Jul 2025 08:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751446615; x=1782982615;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E5kgTbX8xrKQWY0BYC8Lw1F1gCVxx02iOFOzhNIs5os=;
 b=VNY4pRkOt3kPhU21G1RK9MtV1s13e4f4o3gEtJvpVE0IWR3HxcbVN86x
 v4Ko+dLUknVzfT2nqnLo8MNaP7EiENIpI7bRBj2G7tsa83S6jwv4F0Uhy
 w698f2CZPzNQUu389fCK/PxHWjceLRI9bc6YUcs5AmFvApTZ7mhPSWA2b
 uksrPUfGEmlSYwtaVrx8ar7M58BfZwRi5PHWxBgmQAEdzNHKeWy/zX7A/
 V6gxan6UmE3my60THjncxlx01awHRDNdeHeox5NclP3YmFutxZ+B19px9
 YZiK4bZ16J5rRSX0XbXFruQWY8htKXsSogR58VDii23tGflLkCXLnBTdx w==;
X-CSE-ConnectionGUID: P2iNRbqlTo6fsd/rQ8zBGg==
X-CSE-MsgGUID: okFxvHbgRCSmtoRRc1uQvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="53448054"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="53448054"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 01:56:54 -0700
X-CSE-ConnectionGUID: hFDJ9da6RYSjafloNIFWMw==
X-CSE-MsgGUID: GC5ApokJTTqDWgN/ieq2vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="191187780"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 01:56:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 gustavo.sousa@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/2] Introduce helper for display workarounds and add
 Wa_16025573575
Date: Wed,  2 Jul 2025 14:16:17 +0530
Message-ID: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

This series introduces a generic infrastructure for querying display
workarounds. The goal is to simplify WA checks, avoid open-coded conditions,
and make it easier to extend support for future workarounds.

Patch 1 introduces the base infrastructure using an enum and a central
helper function. It also migrates Wa_16023588340 to use this new interface.

Patch 2 adds support for Wa_16025573575, which applies to PTL platforms
and requires preserving additional GPIO bits in GMBUS.

The series is in response to the suggestions to unify workaround handling
and allowing future automation or generation of WA logic in [1].

[1] https://lore.kernel.org/intel-gfx/7f079861f91861e9e895240cd3272f6e29deab7e@intel.com/

Rev2:
-Remove MISSING_CASE, use drm_WARN.
-Simplify macro for display_wa.

Ankit Nautiyal (2):
  drm/i915/display_wa: Add helpers to check wa
  drm/i915/gmbus: Add Wa_16025573575 for PTL for bit-bashing

 .../gpu/drm/i915/display/intel_display_wa.c   | 22 ++++++++++++
 .../gpu/drm/i915/display/intel_display_wa.h   | 10 ++++++
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 34 +++++++++++++++++--
 4 files changed, 65 insertions(+), 3 deletions(-)

-- 
2.45.2

