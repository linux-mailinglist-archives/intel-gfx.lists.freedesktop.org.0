Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAZHBtOyy2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFD7368EE4
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 742E210E8C5;
	Tue, 31 Mar 2026 11:41:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IMuBCZww";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0781010E8C3;
 Tue, 31 Mar 2026 11:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774957264; x=1806493264;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Co9pfgQOhwcwj/n+qHU3f0boQoLFJt8BLFC9bwXWNyw=;
 b=IMuBCZwwXjXgVevU20PrbfBjhVkwNfWDcPkTT7f1ISVL5R4wYL7lzMyz
 EHGh/At/1q7YscE59U4YKawsQvQKHdASIyweCizo4xHSRmt5NBW0sQGyS
 ZJ1NXZgjGqgVkML1B7pWc99JU65+u9uZUN//YKJPOuKV35WNmlkkzrop2
 aqOo5GsV0xrUakYv8UqdXo978HK7CbRMag2UVRWO5moFn3ld8/jR8oBjB
 GgpIbSzl8PLW8jBosNtq79oUBW5r2nY5Q9TLV0qPOlHxx8XhI92B2R0uZ
 0TFsX7Lx8beV1XWuYRAhg40M0P7+ToewD0s+oHZa+eTxBTFZKw14qkiC9 w==;
X-CSE-ConnectionGUID: DUvS6Zv6QT6ztwZunuwo1A==
X-CSE-MsgGUID: USU7P1tlTyahOwsCr2FWSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="79826507"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="79826507"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:41:04 -0700
X-CSE-ConnectionGUID: PtpDIhEDTDa5+HQK6Jxe1w==
X-CSE-MsgGUID: EN3RapoPR++u3Kv8deL/dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="226315836"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.73])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:41:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/5] drm/i915: move VLV IOSF SB to display parent interface
Date: Tue, 31 Mar 2026 14:40:53 +0300
Message-ID: <cover.1774957233.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: DDFD7368EE4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


Jani Nikula (5):
  drm/{i915,xe}: convert VLV sideband display wrappers into real
    functions
  drm/i915: pass struct intel_display * to VLV sideband wrappers
  drm/i915/dram: prefer display abstractions for VLV sideband
  drm/i915: move VLV IOSF sideband to display parent interface
  drm/{i915,xe}: add shared header for VLV IOSF sideband units and
    registers

 drivers/gpu/drm/i915/display/i9xx_wm.c        |  32 ++--
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  48 ++---
 .../drm/i915/display/intel_display_power.c    |   6 +-
 .../i915/display/intel_display_power_map.c    |   2 +-
 .../i915/display/intel_display_power_well.c   |  65 ++++---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 174 ++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll.c     | 116 +++++------
 drivers/gpu/drm/i915/display/intel_dram.c     |  14 +-
 drivers/gpu/drm/i915/display/intel_parent.c   |  34 ++++
 drivers/gpu/drm/i915/display/intel_parent.h   |   7 +
 drivers/gpu/drm/i915/display/vlv_clock.c      |  13 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  20 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |  38 ++--
 drivers/gpu/drm/i915/display/vlv_sideband.c   | 136 ++++++++++++-
 drivers/gpu/drm/i915/display/vlv_sideband.h   | 180 ++++--------------
 drivers/gpu/drm/i915/i915_driver.c            |   1 +
 drivers/gpu/drm/i915/vlv_iosf_sb.c            |   8 +
 drivers/gpu/drm/i915/vlv_iosf_sb.h            |  16 +-
 drivers/gpu/drm/xe/Makefile                   |   3 +-
 .../drm/xe/compat-i915-headers/vlv_iosf_sb.h  |  42 ----
 .../xe/compat-i915-headers/vlv_iosf_sb_reg.h  |   6 -
 include/drm/intel/display_parent_interface.h  |  11 ++
 .../drm/intel/vlv_iosf_sb_regs.h              |  18 +-
 23 files changed, 511 insertions(+), 479 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb_reg.h
 rename drivers/gpu/drm/i915/vlv_iosf_sb_reg.h => include/drm/intel/vlv_iosf_sb_regs.h (95%)

-- 
2.47.3

