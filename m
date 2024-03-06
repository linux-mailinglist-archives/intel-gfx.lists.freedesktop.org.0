Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A808B8730D3
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 09:35:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B08DA10EAA5;
	Wed,  6 Mar 2024 08:35:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YYO7WeWz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A414F10EAA5
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 08:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709714099; x=1741250099;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZhTaS98Ev2GZqClZVp+WaQSu7yQBZ1O0N65ITwc0A8c=;
 b=YYO7WeWzlgtg7sdQ60VssLv8HigVDSWtj3e30C+OhQrKlljUkin1QDRp
 SojFmKs1XmwG4lc2qDjqyjTlIerO7o0OhscyrHVRrrNyOmDZF3KZ5vkKg
 5n4775oLSBwnMMcsM6PkulyoQ2ay56Bj5JNmhG0/8WiCNDDpD0k7LPuxz
 tcaeO7lrUnY2S4YGJTG1mo1DXsqC+aiptu7809mlczb/vfweL5ArvQbgg
 puiEQL7CQ42HivnQdGJ/gtp9mFxOGcJm1twDb7wB9WqNNMNTaSLTA8ft4
 u4+S6ak3WajCkHni6bmQTKdFCrbnBbQtVo/Op0QrjMYq1lXlvvqL9q8Uv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4177688"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; 
   d="scan'208";a="4177688"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 00:34:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="14344084"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.223.229])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 00:34:58 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 0/5] IO and fast wake lines calculation and increase fw
 sync length
Date: Wed,  6 Mar 2024 10:34:22 +0200
Message-Id: <20240306083427.2040475-1-jouni.hogander@intel.com>
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

This patch set is improving IO and fast wake lines calculation in PSR
code:

Use actual fast wake sync pulse count in calculation Implement getter
for IO buffer wake times and use that.  Better presentation on how
these are calculated.  Use calculation for display version < 12 as
well.

Also number of precharge pulses is increased by 2 pulses to fix
problems with certain panel models.

v4:
  - initialize io/fast_wake_time for display version < 9
v3:
  - keep using int in intel_dp_aux_fw_sync_len
v2:
  - do not add function pointer
  - rename io_wake_time in if block to io_buffer_wake_time
  - rename get_io_wake_time to get_io_buffer_wake_time
  - use calculation for display version < 12 as well
  - split LunarLake IO buffer wake times as a separate patch

Jouni Högander (5):
  drm/i915/display: Make intel_dp_aux_fw_sync_len available for PSR code
  drm/i915/psr: Improve fast and IO wake lines calculation
  drm/i915/psr: Calculate IO wake and fast wake lines for DISPLAY_VER <
    12
  drm/i915/psr: Add IO buffer wake times for LunarLake and beyond
  drm/i915/display: Increase number of fast wake precharge pulses

 drivers/gpu/drm/i915/display/intel_dp_aux.c |  4 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c    | 56 +++++++++++++++++----
 3 files changed, 48 insertions(+), 13 deletions(-)

-- 
2.34.1

