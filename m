Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BAAC3C003
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:20:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A43010E90A;
	Thu,  6 Nov 2025 15:20:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aq3cGM5m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C645210E90A;
 Thu,  6 Nov 2025 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762442454; x=1793978454;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Kzrq3hi4nLv+Gn0UkYmm67VVcDVy1cQwb8JOoUUSZnQ=;
 b=aq3cGM5mAv13WT28XQ4StoHg6HB4gdUogwCDxPL3jj7Z0gtwxzw0tzUT
 muuG8j58/4fANJdWrdqcz5S1S0BKSmIpuHUhlCTL5xfPVbONeLVQ+611b
 DDSv6nKhdExFyYA3NL5tlmkXOEFc7EFL9JZWw+QjQO31+J5Z0wx/xsutE
 p2Il1fc/WXFX8TRaTf7vV20wMPX3IaYWpKZE7jczKEF6WU9c4yeMLOOB1
 tYFb3uevCDV2bIq/Nh/k4MB5MUuYj9x60MBPc23uuYrcWfs0jEG6as8j+
 iUBUZL/wjLLddiQG1+Tm4F1zylHuC/XFyyZL6kmObF8sp/G13SJlxEQSf g==;
X-CSE-ConnectionGUID: OKkPdwb7Qm+XQnFfOo58Nw==
X-CSE-MsgGUID: 18TMNpwsTUCJSXYWEf8EDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="76030523"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="76030523"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:20:53 -0800
X-CSE-ConnectionGUID: H0unao3TQDWSuTEpn/UzZw==
X-CSE-MsgGUID: rrgofHX+StiAiqIzqGeaqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187941250"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.213])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:20:53 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 00/10] drm/i915: Stop the intel_de_wait_custom() abuse
Date: Thu,  6 Nov 2025 17:20:39 +0200
Message-ID: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Get rid of all the custom fast vs. slow intel_de_wait_custom()
timeouts that have started to spread like a cancer recently.

The eventual aim is to get rid of the fast vs. slow timeout
stuff entirely and switch over to poll_timeout_us()...

v2: Drop the extraneous timeout debugs to make it simpler to change them
    Use the slow timeout in all cases where we have both slow and fast

Ville Syrjälä (10):
  drm/i915/cx0: Print the correct timeout
  drm/i915/cx0: Nuke extraneous timeout debugs
  drm/i915/ltphy: Nuke extraneous timeout debugs
  drm/i915/cx0: Replace XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US with
    XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS
  drm/i915/cx0: Get rid of XELPDP_MSGBUS_TIMEOUT_FAST_US
  drm/i915/cx0: s/XELPDP_MSGBUS_TIMEOUT_SLOW/XELPDP_MSGBUS_TIMEOUT_MS/
  drm/i915/cx0:
    s/XELPDP_PORT_RESET_END_TIMEOUT/XELPDP_PORT_RESET_END_TIMEOUT_US/
  drm/i915/ltphy: Nuke bogus weird timeouts
  drm/i915/hdcp: Use the default 2 usec fast polling timeout
  drm/i915/pmdemand: Use the default 2 usec fast polling timeout

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 52 +++++++++----------
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  7 ++-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 47 ++++++++---------
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  7 ++-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
 6 files changed, 54 insertions(+), 63 deletions(-)

-- 
2.49.1

