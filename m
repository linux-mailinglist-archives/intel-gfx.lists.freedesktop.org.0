Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B813B0122A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 06:29:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D270210E994;
	Fri, 11 Jul 2025 04:29:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RAddSvAq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FE4D10E992;
 Fri, 11 Jul 2025 04:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752208171; x=1783744171;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uq6njQ9V7L+D/s6z0XvudLhu0lNnbNC28/8oLW1X8Z4=;
 b=RAddSvAqulqenycQZ/XIFrwimVtc1y6pTsVqzV8O1bZz3VXNUVYvQcqc
 5JTIFfKsV1ipsAqyOFvXxipfa8o0qvcq9wz2VbGPsdHf8Hes9CysHAPkP
 Zv4nrWUbfRLdTV4TEe56ZbpGhQh0XLXsOsF2xEdz4gvaWCzz+xJaBuvTN
 yXjG6h//qBxSl3/wUBJpZ+NQSDoVD0ZgtyZL+hgg0MgzzKI6yrgcno6ND
 6E+8d4RLmj/cPsXwiT6/CIbkAnkqVcQ6etgV7qfIG6c1MURZhzZlbXBbM
 LqsAE0v+D88LysyodKhnLTrFPa8ViIk/43auOGMxfGINbf0YfxB98LdyC g==;
X-CSE-ConnectionGUID: aHutDvNgR5qATFBj8WDkbA==
X-CSE-MsgGUID: zOr3O0ngQKalJEhNLOfKfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="72081777"
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; d="scan'208";a="72081777"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 21:29:31 -0700
X-CSE-ConnectionGUID: CiULK3OJReSbkBtH0FAFYA==
X-CSE-MsgGUID: THYXkSrlR+i4e5yXpt/nUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; d="scan'208";a="156824770"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 21:29:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, gustavo.sousa@intel.com,
 lucas.demarchi@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/2] Introduce helper for display workarounds and add
 Wa_16025573575
Date: Fri, 11 Jul 2025 09:48:58 +0530
Message-ID: <20250711041901.1607823-1-ankit.k.nautiyal@intel.com>
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

Rev3:
-Print missing wa_number.
-Add more documentation for the WA.
-Extend the WA for WCL.

Ankit Nautiyal (2):
  drm/i915/display_wa: Add helpers to check wa
  drm/i915/gmbus: Add Wa_16025573575 for PTL/WCL for bit-bashing

 .../gpu/drm/i915/display/intel_display_wa.c   | 27 +++++++++++++++
 .../gpu/drm/i915/display/intel_display_wa.h   | 10 ++++++
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 34 +++++++++++++++++--
 4 files changed, 70 insertions(+), 3 deletions(-)

-- 
2.45.2

