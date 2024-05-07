Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF3F8BE2AE
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 14:57:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB5F810F415;
	Tue,  7 May 2024 12:56:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lRuHpkhU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D68510F415
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 12:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715086619; x=1746622619;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TXQ7oY/YXg9AFJEBDBIbOcYtCJfcxEZHu9iEJ+aUyEA=;
 b=lRuHpkhUOsoHZZ9ZcbkdOImxgWoWXaQ/fh1DyMMiOhhSE/UXhm4CmFsP
 BY/G87xx0s4OxprPInNzgTig9jRHrHkCrdPUAp09oTcE3cwPgIlzNi5J3
 vYMdslVFQ7VYl7al3qYxs78xTAPUI9HaoIjKE4AKyeM5o+ZG72XVvVXb/
 /XiRPNwAAI6I9J7yNVZTfysOr97y8Uap3AL4Ft5WWVW0ulfq0YV0oOxWb
 1HjvK6Err7PDTu/U90Jk//zI71mUTVdCXIUlYyDJrTFYsYhPPIekcDgAK
 zS267zRLLj8OH/aq3vRodoPrlrYVGP8LEabU00d6vEn1+/dwb1bM4L/Ly g==;
X-CSE-ConnectionGUID: 1CSp5l7sTvOTnpU2/LTj2g==
X-CSE-MsgGUID: vPkROeh3RkmVhjfZD1/Tpw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="11035164"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="11035164"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 05:56:59 -0700
X-CSE-ConnectionGUID: fv7Bf8s5TYOqSKZyKD8gOg==
X-CSE-MsgGUID: tHFaDWz9TG+WKZNk6cIA3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="29038131"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 05:56:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 0/5] drm/i915: PCI ID macro and subplatform changes
Date: Tue,  7 May 2024 15:56:47 +0300
Message-Id: <cover.1715086509.git.jani.nikula@intel.com>
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

Some cleanups first, then a swich to drm/xe style PCI ID macros where
you pass the macro to use. This is not just for the sake of cleanups,
they'll be useful in follow-up work for display devices.

BR,
Jani.

Jani Nikula (5):
  drm/i915: don't include CML PCI IDs in CFL
  drm/i915: don't include RPL-U PCI IDs in RPL-P
  drm/i915: separate RPL-U from RPL-P
  drm/i915: simplify ULT/ULX subplatform detection
  drm/i915: make the PCI ID macros more flexible

 arch/x86/kernel/early-quirks.c                |   84 +-
 .../drm/i915/display/intel_display_device.c   |   91 +-
 drivers/gpu/drm/i915/i915_drv.h               |    9 +-
 drivers/gpu/drm/i915/i915_pci.c               |  149 +-
 drivers/gpu/drm/i915/intel_device_info.c      |   99 +-
 drivers/gpu/drm/i915/intel_step.c             |    2 +-
 include/drm/i915_pciids.h                     | 1307 +++++++++--------
 7 files changed, 872 insertions(+), 869 deletions(-)

-- 
2.39.2

