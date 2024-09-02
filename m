Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9838968CB0
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 19:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB4E810E2AD;
	Mon,  2 Sep 2024 17:14:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QmrC423C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2FC010E280;
 Mon,  2 Sep 2024 17:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725297265; x=1756833265;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nAx2SCmVrBTIVMXizA9hCXZkapZBkRbZts8tNMdFyUw=;
 b=QmrC423Cu4grRE7rTFICD3eqc27O3PJcNrH7iF9LM6FzEQFWjldLq1ww
 NQ4cx9cXmRCSZw0sZ+s4w/ASjdfNVsPoYpbniHHjVfQOsehmLPCM9WoIe
 3C0Z4aIRS5bO2ep2m+GGF4Dnfr4jsYRFepKKUu0OpSxa9wMBE5YtoAOkM
 dP3kVUPinVp8Er9CPOeFyeR+E8ZLL40egG63Pv7+CQmA+iKDIJQ+7Canr
 yRnFARLSvJUu2YM+uD90ZfiLO/G94Upru9wWKaY6g0W3eJa9VkiXdV078
 9lvpZOLqhI3P0T6RRF+/Uli1oDxAEaTpejgkAcgGnncwLrytAXxiuEUo3 g==;
X-CSE-ConnectionGUID: BD3gla1ZTgi9zyeFLbuzrg==
X-CSE-MsgGUID: giPVhoimQUmhy1UzTDV7Wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="23690143"
X-IronPort-AV: E=Sophos;i="6.10,196,1719903600"; d="scan'208";a="23690143"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 10:14:25 -0700
X-CSE-ConnectionGUID: KYnExEPXRKmXrz2GGTaUbQ==
X-CSE-MsgGUID: eink+E14RHCNMmm8nCEnNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,196,1719903600"; d="scan'208";a="95382289"
Received: from ltuz-desk.ger.corp.intel.com (HELO localhost) ([10.245.246.4])
 by orviesa002-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2024 10:14:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 0/8] drm/i915 & drm/xe: shared PCI ID macros
Date: Mon,  2 Sep 2024 20:13:59 +0300
Message-Id: <cover.1725297097.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

There's considerable overlap in i915 and xe PCI ID macros, and (as can
be seen in this series) they get updated out of sync. With i915 display
continuing to use PCI IDs for platforms that i915 core does not support,
but xe does, the duplication will just increase. Just use a single file
for all of them.

BR,
Jani.

Jani Nikula (8):
  drm/i915/pciids: use designated initializers in INTEL_VGA_DEVICE()
  drm/i915/pciids: separate ARL and MTL PCI IDs
  drm/xe/pciids: add some missing ADL-N PCI IDs
  drm/xe/pciids: separate RPL-U and RPL-P PCI IDs
  drm/xe/pciids: separate ARL and MTL PCI IDs
  drm/i915/pciids: add PVC PCI ID macros
  drm/intel/pciids: rename i915_pciids.h to just pciids.h
  drm/xe: switch to common PCI ID macros

 arch/x86/kernel/early-quirks.c                |   2 +-
 .../drm/i915/display/intel_display_device.c   |   3 +-
 drivers/gpu/drm/i915/i915_pci.c               |   3 +-
 drivers/gpu/drm/i915/intel_device_info.c      |   2 +-
 drivers/gpu/drm/xe/xe_pci.c                   |  49 ++--
 include/drm/intel/{i915_pciids.h => pciids.h} |  63 ++---
 include/drm/intel/xe_pciids.h                 | 218 ------------------
 7 files changed, 64 insertions(+), 276 deletions(-)
 rename include/drm/intel/{i915_pciids.h => pciids.h} (96%)
 delete mode 100644 include/drm/intel/xe_pciids.h

-- 
2.39.2

