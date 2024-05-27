Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8778CF9E9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:22:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0202710E80E;
	Mon, 27 May 2024 07:22:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e3tOfpcr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8C610F914
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794557; x=1748330557;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m0xq3A4n94XYggL9E3Lc5OohS6YX322hKbjRi6QI88g=;
 b=e3tOfpcrRM1jyzW56sTjIvC3v8tjhdMGD9HC3OoISlMXCqvoryfbgfw/
 mdDH/mR3/JHE9tcWnZBFCskIQAwchPKDtp0D7PERQxWQMHqpxG86kDKTW
 MZPBIU41MFFBG45aBiptecZkhnOVu8aoruhRTQ+1oCSvMZvRaH196wWow
 YJcmVMl56mB3Bgk+/9cOd/0yEyP1OWSg/We9YQ+8AzWjb5KZjUhKsDP4E
 GzyMM4flUvbGuGzCbNTAqlNBVv9AAzJneezSUs0HY7xiyR47x387etL41
 PSDu7maAfyHkbXBKKUMb3E+XSc9+jukbQCN2TuVjeVE+lTzANmNvpzGNV g==;
X-CSE-ConnectionGUID: SnPy4aYJRC2vo1zDz7h7rQ==
X-CSE-MsgGUID: IMCJQ9CDRJSyT+lgtPsLDg==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930406"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930406"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:36 -0700
X-CSE-ConnectionGUID: eI3AHwY0S5W4sPG0H6gpHw==
X-CSE-MsgGUID: rcoaTZc3TrOajgKcRRYPTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34753377"
Received: from gcusmai-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.36.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 00/20] Panel Replay eDP support
Date: Mon, 27 May 2024 10:22:00 +0300
Message-Id: <20240527072220.3294769-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

This patch set is implementing eDP1.5 Panel Replay for Intel hw. Also
Region Early Transport information is added into debugfs interface
and patch to disable Region Early Transport by default is reverted as
it is needed by eDP Panel Replay.

v3:
  - commit message modifications
  - s/intel_psr_psr_mode/intel_psr_print_mode/
  - remove extra space from "PSR mode:  disabled"
  - do not allow eDP Panel Replay when using 128b/132b encoding
  - do not allow eDP Panel Replay when HDCP is enabled
v2:
  - printout "Selective Update enabled (Early Transport)" instead of
    "Selective Update Early Transport enabled"
  - ensure that fastset is performed when the disable bit changes

Jouni Högander (20):
  drm/i915/psr: Store pr_dpcd in intel_dp
  drm/panel replay: Add edp1.5 Panel Replay bits and register
  drm/i915/psr: Move printing sink PSR support to own function
  drm/i915/psr: Move printing PSR mode to own function
  drm/i915/psr: modify psr status debugfs to support eDP Panel Replay
  drm/i915/psr: Add Panel Replay support to intel_psr2_config_et_valid
  drm/i915/psr: Add Early Transport into psr debugfs interface
  drm/display: Add missing aux less alpm wake related bits
  drm/i915/psr: Check panel ALPM capability for eDP Panel Replay
  drm/i915/psr: Inform Panel Replay source support on eDP as well
  drm/i915/psr: enable sink for eDP1.5 Panel Replay
  drm/i915/psr: Check panel Early Transport capability for eDP PR
  drm/i915/psr: Perfrom psr2 checks related to ALPM for Panel Replay
  drm/i915/psr: Add Panel Replay compute_config helper
  drm/i915/psr: 128b/132b Panel Replay is not supported on eDP
  drm/i915/psr: HW will not allow PR on eDP when HDCP enabled
  drm/i915/psr: Check Early Transport for Panel Replay as well
  drm/i915/psr: Modify dg2_activate_panel_replay to support eDP
  drm/i915/psr: Add new debug bit to disable Panel Replay
  Revert "drm/i915/psr: Disable early transport by default"

 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 331 ++++++++++++------
 include/drm/display/drm_dp.h                  |  19 +-
 3 files changed, 249 insertions(+), 103 deletions(-)

-- 
2.34.1

