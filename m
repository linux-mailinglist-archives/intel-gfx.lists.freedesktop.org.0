Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EED2F876297
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 12:01:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 715741122CB;
	Fri,  8 Mar 2024 11:01:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eLbnh6ab";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 491BF1122CB
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 11:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709895660; x=1741431660;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eyVaBln9Ajg+ZlXoNwFCGdrLq1NN65S8ifNjYxhEaLU=;
 b=eLbnh6abSKySnODEl1phMJRw8h3lALJ0hpMP5Dv7dYXt3wCNjfJHYttJ
 PUIlhLdqadF9LsJVP0htopJMm77jn292aiwEE2h3tIntBi9mDgLcw0uQz
 c6bBx7IRCIejTyFahEF5IyoI1lxi8PuKdkSWIdqiiE7kDi/Qc68CMJsUq
 TE/85eySQSZk05t44C9kyN/7mMMQefH5++ym1hf0joLX7BsmtZlIelp5v
 QNdkvQi4ASGROIFFk0z3661M/4/5gHB6KNqRTCUWl80atGOo7KG8z2ekj
 x5h3aKtRc/2r6Ly5YX9aoyS4jVTfg85PPrFFbu+VFcrG13nRbvxO0ToDR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4480305"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4480305"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 03:00:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15130026"
Received: from mkupniew-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.208.210])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 03:00:57 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 0/5] IO and fast wake lines calculation and increase fw
 sync length
Date: Fri,  8 Mar 2024 13:00:34 +0200
Message-Id: <20240308110039.3900838-1-jouni.hogander@intel.com>
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

v5:
  - s/get_io_buffer_wake_time/io_buffer_wake_time/ and use it directly in
    calculation
  - do not handle < 9 separately
  - add own helpers for skl, tgl and lnl io buffer wake times
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
 drivers/gpu/drm/i915/display/intel_psr.c    | 58 +++++++++++++++++----
 3 files changed, 50 insertions(+), 13 deletions(-)

-- 
2.34.1

