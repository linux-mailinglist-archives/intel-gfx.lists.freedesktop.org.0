Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8971B9A4794
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:03:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A4110E978;
	Fri, 18 Oct 2024 20:03:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="byusyHuf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD0EF10E23A;
 Fri, 18 Oct 2024 20:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729281796; x=1760817796;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rytwkx9lyms1GuFWhXmsCSC+W5YHOpFnBxTjt+x7xdg=;
 b=byusyHuf02+jwbVyobXb0SxHCWIqk08fLDPCQkWdJyh8SQwc2jWph/Ka
 kQBJO1J5ow+cJIY6r47x/JMywWEEsJcuHr0MOqLqsWxS6tU0J/BeXqFZ5
 vXX5TUg2fatjVUl2I2svBgpwbZTRgD3SRDAx5MtmAiJa4im1DzkH+M+JE
 rSjSwg3bamrMF0AmnS4LnuFfVHKVwZqUpqgberiDhC6wes31vyIBWUu9O
 ZUIrOxta9D5+Gxebh9+iTWRZSxkDYg2hyR0zV3fv7zWOGmJmJbinTI0F8
 7iG6XcS5g0jLtOIU+XCZZn4n6Pyd3kQqOYjvI22OTPNO+qyjukrAb3Cgy g==;
X-CSE-ConnectionGUID: EDGAEaT7RSyGjAhxuAjfag==
X-CSE-MsgGUID: VrmxeEhNR/ePBj0XHuw1Iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="28286769"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="28286769"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:03:15 -0700
X-CSE-ConnectionGUID: UGdhXF8JSdWkcD0aQp5vcg==
X-CSE-MsgGUID: bxDvzZQJS9WGSmT+EfzuXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="102263852"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:03:15 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v4 0/7] Add xe3lpd edp enabling
Date: Fri, 18 Oct 2024 13:03:04 -0700
Message-ID: <20241018200311.67324-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
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

	This series defines the xe3lpd definition, which is functionally
identical to the xe2lpd definition for now. This series then adds
additional requirements mostly for edp output of display through type c.
Additional patches will be required for display and will follow. 

v2: cdclk table update, multiple patches have macros changed from
functions to multiple platform specific paths. Several commit messages
and subjects changed to be more accurate. PM demand patch changed to
accurately reflect minimum number of pips.

v3: updates to "drm/i915/xe3lpd: Add check to see if edp over type c is
allowed", "drm/i915/xe3lpd: Add new bit range of MAX swing setup",
"drm/i915/xe3lpd: Add C20 Phy consolidated programming table",
"drm/i915/xe3lpd: Include hblank restriction for xe3lpd",
"drm/i915/xe3lpd: Add cdclk changes", "drm/i915/xe3lpd: Update pmdemand
programming".

v4: updates to "drm/i915/xe3lpd: Update pmdemand programming",
"drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3", "drm/i915/xe3lpd:
Add new bit range of MAX swing setup"

Matt Roper (1):
  drm/i915/xe3lpd: Update pmdemand programming

Radhakrishna Sripada (1):
  drm/i915/xe3lpd: Add cdclk changes

Suraj Kandpal (5):
  drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
  drm/i915/xe3lpd: Add C20 Phy consolidated programming table
  drm/i915/xe3lpd: Add new bit range of MAX swing setup
  drm/i915/xe3lpd: Add check to see if edp over type c is allowed
  drm/i915/xe3lpd: Add condition for EDP to powerdown P2.PG

 drivers/gpu/drm/i915/display/intel_cdclk.c    | 59 +++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 33 +++++++--
 .../drm/i915/display/intel_display_device.c   |  4 ++
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 17 ++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |  5 ++
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 10 ++-
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 68 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  4 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               |  5 ++
 11 files changed, 172 insertions(+), 36 deletions(-)

-- 
2.45.0

