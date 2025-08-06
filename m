Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C357B1BFD9
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 07:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1748710E2EE;
	Wed,  6 Aug 2025 05:22:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d6kNbFBM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 045E710E2EE;
 Wed,  6 Aug 2025 05:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754457750; x=1785993750;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kGzrsxFULmmhm0KPb9isSXjD1OBgxOFl1u2bi+bYJdg=;
 b=d6kNbFBMWQ3KeRbKfr89/nh+Ba7rUuSGLp3kqHt/Uk3B2IUtXwIJIDcB
 0XaGf6AdwjpGA13yu3fJw5HJJ/hejEAgyWlERoeqIocgYlLa80XPnfydk
 WQVRGL11hEGHkyQOAKnPxN9HUmfW8VXyjyK/D+9l8qozd10goTRcZ831n
 YZadpLoXjwNdddqr/M56T2Y4gNWPnvUAt/gnIoXD9vGZR7oyFb/yz/HEu
 t0r3N2mzqliWA5t1y4eBJMK/MdQ4N4pz4+yaajbrcZkK/J1aobPM3IkIJ
 8EA6hA6MD24XP/tX+YNXOYbZs4N31rmqjhKtiDcZWWN7e3elI0GAualK3 A==;
X-CSE-ConnectionGUID: uWZgErm6QRKvk9vO+ncF8w==
X-CSE-MsgGUID: lYEaCd1xSHinYcxaD1TObQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="60597249"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60597249"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 22:22:29 -0700
X-CSE-ConnectionGUID: jkkGk07AT1iW/eVSWSk/HQ==
X-CSE-MsgGUID: id32BdMNSha8BZlvL+dq4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="188350225"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.95])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 22:22:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/4] Wait PSR idle before on dsb commit
Date: Wed,  6 Aug 2025 08:22:09 +0300
Message-ID: <20250806052213.1800559-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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

We are currently observing crc failures after we started using dsb for PSR
updates as well. This seems to happen because PSR HW is still sending
couple of updates using old framebuffers on wake-up.

On non-dsb commit we are waiting PSR HW to idle before starting a new
commit. Fix problems with dsb commit by adding similar wait on dsb
commit as well.

v2: add pass crtc_state->dsb_commit as parameter

Jouni Högander (4):
  drm/i915/psr: Pass intel_crtc_state instead of intel_dp in
    wait_for_idle
  drm/i915/psr: Add new define for PSR idle timeout
  drm/i915/psr: New interface adding PSR idle poll into dsb commit
  drm/i915/psr: Add poll for checking PSR is idle before starting update

 drivers/gpu/drm/i915/display/intel_display.c |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c     | 70 +++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_psr.h     |  1 +
 3 files changed, 57 insertions(+), 16 deletions(-)

-- 
2.43.0

