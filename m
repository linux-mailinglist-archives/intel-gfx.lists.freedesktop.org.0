Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4875BCCB1B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 13:08:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8FC310EBA8;
	Fri, 10 Oct 2025 11:08:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kA+vM1QK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 906CE10E290;
 Fri, 10 Oct 2025 11:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760094479; x=1791630479;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U1n4sNZGQcYMhphOMGDgGzVF0/kW+AI1Mx0NSBe7iBU=;
 b=kA+vM1QKtWrINRKB0f93B9b55q8NR8oyWZVn/2FVAuyrE9VOy3DIBIMO
 WChiFoCZqK7FYHNGV+a7KTrELr9tMi8Kr3T9SbR8ko8CXseW8GgAIpju0
 Emw5T8MmL2WA76peNbBzdiXygn8ufjHOuqNi3szK2LWOGOrNN2CK8d7PK
 X9fcCBWS52CLkmsSK1BlFfWHTIcYaHbAOfhuVrO7P1pZN0XXPgy9xHzaT
 h2hUYB6maYdu+4kwKkzmpLS134xZ2WvSxBBAcuWaFonQTFgKGl9aNMm2u
 iGOiKjKpkuNKgO5TzPP9xoOSy/YHKEmoV+bPTmNhxZ1faMJtx7Y/WFXAf Q==;
X-CSE-ConnectionGUID: LmOzzhcFSs2r3PKl7kyPKg==
X-CSE-MsgGUID: dv/8ZuvHSayNHdxfs6Y61g==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="72925048"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="72925048"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 04:07:59 -0700
X-CSE-ConnectionGUID: C/n4hS8ZSrG21aLU+8JYVg==
X-CSE-MsgGUID: DI3UrtajTLGkVvPV0m5S0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="211607719"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.168])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 04:07:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/3] drm/i915/display: 128-byte Y-tiling and flat CCS feature
 checks
Date: Fri, 10 Oct 2025 14:07:50 +0300
Message-ID: <cover.1760094361.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

This combines/addresses [1] and [2].

[1] https://lore.kernel.org/r/aNap2gHsCPhPNcLE@intel.com
[2] https://lore.kernel.org/r/aOaDCa576OP-eRAy@intel.com

Jani Nikula (3):
  drm/i915: include gen 2 in HAS_128_BYTE_Y_TILING()
  drm/i915/display: duplicate 128-byte Y-tiling feature check
  drm/i915/display: add HAS_AUX_CCS() feature check

 drivers/gpu/drm/i915/display/intel_display_device.h | 2 ++
 drivers/gpu/drm/i915/display/intel_fb.c             | 7 ++-----
 drivers/gpu/drm/i915/display/skl_universal_plane.c  | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c          | 5 +++--
 drivers/gpu/drm/i915/i915_drv.h                     | 3 +--
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 3 ---
 6 files changed, 10 insertions(+), 14 deletions(-)

-- 
2.47.3

