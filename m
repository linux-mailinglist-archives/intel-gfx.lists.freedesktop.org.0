Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB4DC376A7
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 20:04:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B93A010E302;
	Wed,  5 Nov 2025 19:04:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aEGEcgVn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B85D10E098;
 Wed,  5 Nov 2025 19:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762369484; x=1793905484;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UBR658Y9cLX57BmNBYyNiIMkrLKRTYCSzDcRZNG9rb4=;
 b=aEGEcgVnjGzt7JMscqV7JGaSmpZrO0WXt412lUnp5AW1nbWGuY9OxjB7
 KCUPuL9Bs2jqtlQw3n8uPTD+f6dPB2Cv50yoyfjpqipyxnQe/nc/vRA3v
 7evGif0/afUgmVXr7n1mDGFssLfDcMnp1mmmjoSre50JM8Cwb3AlIiuTx
 e+r9RxL8oNFvsBKgU/1Ps2EjLHwSf/g9YMOUBepH6nWUHq9Ef4PwDKi+J
 Q7uVwc+2BSbT6YvhnSd1LA/b/iPecRP889iWd5yb/WbNUhUo3Q6TU5PFR
 Etmtaf0XmxcmJPoj5fvdtDBe74b1kcAjKrZzZgIk+KPua8Gi/hO9G7d9c g==;
X-CSE-ConnectionGUID: ECPjLBTfQz+h7GKvxKHaXw==
X-CSE-MsgGUID: W0IEh/T6SLmshbIKE9Kw6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64530047"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64530047"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:04:39 -0800
X-CSE-ConnectionGUID: bMstYj/sR+OpjjUmXTTSdA==
X-CSE-MsgGUID: e22tUphoQZGyEReSGZjVKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="187828687"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.87])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:04:35 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/7] drm/i915: Stop the intel_de_wait_custom() abuse
Date: Wed,  5 Nov 2025 21:04:26 +0200
Message-ID: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
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

Ville Syrjälä (7):
  drm/i915/cx0: Undo the unjustified timeout change
  drm/i915/cx0: Get rid of XELPDP_MSGBUS_TIMEOUT_FAST_US
  drm/i915/cx0: s/XELPDP_MSGBUS_TIMEOUT_SLOW/XELPDP_MSGBUS_TIMEOUT_MS/
  drm/i915/cx0:
    s/XELPDP_PORT_RESET_END_TIMEOUT/XELPDP_PORT_RESET_END_TIMEOUT_US/
  drm/i915/ltphy: Nuke bogus weird timeouts
  drm/i915/hdcp: Use the default 2 usec fast polling timeout
  drm/i915/pmdemand: Use the default 2 usec fast polling timeout

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 19 +++++++++----------
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  5 ++---
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 13 ++++++-------
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  1 -
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
 6 files changed, 19 insertions(+), 23 deletions(-)

-- 
2.49.1

