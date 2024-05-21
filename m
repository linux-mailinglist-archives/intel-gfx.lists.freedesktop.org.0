Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B75F48CAA42
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:47:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8133510E727;
	Tue, 21 May 2024 08:47:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d3q4wQ8/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F1E310E6A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716281228; x=1747817228;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SeNh5qPwry7+4YskJKT6PJtXZySKeLXHBdLCgRAnL9k=;
 b=d3q4wQ8/D0Njda+qu634XtrAyOupZwQ8BnR1XVJqF9AZFPXu5nekWoVV
 dRMgE3cNBdFhCvZSUiMm2uZe5Nha09Ll3t9USn72PxSagR8QTbV2aA9ml
 0mi2zBz/lRbZtqS7SVvsHKD1IAP1SKsIpkwuNRG5ELkRVz2yLe06J1pGl
 +YgMpYrwpeoyiF4AEGaQM1RvEgrD4j0BF4r2hejQbcE51OGOO4tFaZgrO
 WzkVXRZEh7+JBi+qLcnCJDoEYj6x987hQoCvFrjCsYYjp/LgY11VWDHEU
 cmjqgH+Q0TV3VvZ421nSbb7/2KqLF53JnYINg+a7Gbx+zectQt5uGJJ1G A==;
X-CSE-ConnectionGUID: liLild9/TjWNXTedzz/e4g==
X-CSE-MsgGUID: 1kdDGGJIQYK+sDCwGP3Nhg==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12297793"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12297793"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:07 -0700
X-CSE-ConnectionGUID: EZyftzURSei9tD8NMpYXSg==
X-CSE-MsgGUID: Jy8IAu+FRRuGbzULF3nJjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="33272472"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:06 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 00/17] Panel Replay eDP support
Date: Tue, 21 May 2024 11:46:31 +0300
Message-Id: <20240521084648.1987837-1-jouni.hogander@intel.com>
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

v2:
  - printout "Selective Update enabled (Early Transport)" instead of
    "Selective Update Early Transport enabled"
  - ensure that fastset is performed when the disable bit changes

Jouni Högander (17):
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
  drm/i915/psr: Check Early Transport for Panel Replay as well
  drm/i915/psr: Modify dg2_activate_panel_replay to support eDP
  drm/i915/psr: Add new debug bit to disable Panel Replay
  Revert "drm/i915/psr: Disable early transport by default"

 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 294 ++++++++++++------
 include/drm/display/drm_dp.h                  |  19 +-
 3 files changed, 213 insertions(+), 102 deletions(-)

-- 
2.34.1

