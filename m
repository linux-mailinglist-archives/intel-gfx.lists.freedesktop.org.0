Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44220871E80
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 13:05:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD2A10E441;
	Tue,  5 Mar 2024 12:05:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V5cvJsNt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A277710FAAF
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 12:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709640316; x=1741176316;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Na2JF3v4kcHTA6m/o7VaADlU7hrjQf20B+XQP20Mn98=;
 b=V5cvJsNt4F2EW9whFwzGPN7y34iNlTr+QTWukCGMYq31EenNFDyK09d/
 pJoGtwsD/NdEXsVayXjvC9pyBWhojHqEBcVhcNxsDg9Z37mEfwPS7+nck
 ogZ2D/R2D/e+u3Q9fyyDYenRByu3xPLJUGh3qYkzuRQ+hWW/SPZXeETQo
 kDAmTct/my0CmrD9wcgyC6pLpqWQGzc0V8Teh8MowDxiPiuOaU/71e2HL
 sRlOR5xxO+BnBfmcoOxk0sJX3TIn47jCLrwVk7MXqoBQcyRkbQaar7Lpf
 qIMOl9yKqju+DmXg3QdCqR4MyU9Sr5MIjUaLDFOpv8WIL9ffbzPyXZ59a A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7132087"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="7132087"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 04:05:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9417765"
Received: from snasibli-mobl2.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.33.194])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 04:05:13 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 0/5] IO and fast wake lines calculation and increase fw
 sync length
Date: Tue,  5 Mar 2024 14:04:53 +0200
Message-Id: <20240305120458.1275218-1-jouni.hogander@intel.com>
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
 drivers/gpu/drm/i915/display/intel_psr.c    | 53 ++++++++++++++++-----
 3 files changed, 45 insertions(+), 13 deletions(-)

-- 
2.34.1

