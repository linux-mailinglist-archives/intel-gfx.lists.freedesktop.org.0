Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9ADD32EB3
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 15:54:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 930C010E22A;
	Fri, 16 Jan 2026 14:54:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cIp6n7Xj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D26EF10E22A;
 Fri, 16 Jan 2026 14:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768575287; x=1800111287;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=coaVUw5a2J36+nJkGkKo6+WKeYVRAlZmUu3UHoPw2VM=;
 b=cIp6n7XjwcragEy3vbO3s7LmbHx6Yu/2umYkIs1vrwvvFO8APlCCrlF2
 cOP3N/ulwwRJIasJdW4RF4x3ZM2we/UHSZEEQ6usV32QZ1FqETLVVDGst
 IWWLkMJ9rod3PCnQCeQqeuDeutMhPImLAV2zvjEvPVw31Q5FZuxHMWgs8
 PBSlBLrYh6jCr4ikXn0YyZ2AxuBW+mr4ZzqUbsMhHwN1To4RQOzOytVgn
 AOURA6GaGOiBZiNbt92YhZuloFKBTV0x/TyyxWGlA9kUiE09X71S0eg8g
 V2r9/Py1cCY+TZ+5VWscdjydLsK8oF16W1OaxKXenseQ3FQWEEJ9lwQ94 w==;
X-CSE-ConnectionGUID: p5MWs6TVSWeVoLN9MC81mg==
X-CSE-MsgGUID: LGKPZC1oSF+BOSrcaSPI6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11673"; a="73736304"
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="73736304"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 06:54:47 -0800
X-CSE-ConnectionGUID: mzVJ52NWTH+vEZLR6tws3A==
X-CSE-MsgGUID: yinwTvCQQl64lJuO61R4SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="235954631"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 06:54:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/2] drm/{i915,
 xe}/dsb: move DSB buffer calls to parent interface
Date: Fri, 16 Jan 2026 16:54:39 +0200
Message-ID: <cover.1768575249.git.jani.nikula@intel.com>
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


Jani Nikula (2):
  drm/i915/dsb: move i915 specific DSB buffer implementation to i915
  drm/{i915,xe}/dsb: move DSB buffer to parent interface

 drivers/gpu/drm/i915/Makefile                 |  2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 92 ++++++++++++++-----
 .../gpu/drm/i915/display/intel_dsb_buffer.h   | 22 -----
 drivers/gpu/drm/i915/i915_driver.c            |  2 +
 .../intel_dsb_buffer.c => i915_dsb_buffer.c}  | 28 ++++--
 drivers/gpu/drm/i915/i915_dsb_buffer.h        |  9 ++
 drivers/gpu/drm/xe/display/xe_display.c       |  2 +
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c    | 28 ++++--
 drivers/gpu/drm/xe/display/xe_dsb_buffer.h    |  9 ++
 include/drm/intel/display_parent_interface.h  | 14 +++
 10 files changed, 147 insertions(+), 61 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.h
 rename drivers/gpu/drm/i915/{display/intel_dsb_buffer.c => i915_dsb_buffer.c} (63%)
 create mode 100644 drivers/gpu/drm/i915/i915_dsb_buffer.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_dsb_buffer.h

-- 
2.47.3

