Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EEB636C33
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 22:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B621110E24E;
	Wed, 23 Nov 2022 21:18:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EEB910E24E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 21:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669238311; x=1700774311;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QKzwZgiuYiIt+nB4c03Q7jM24lPppN9NlvXChma+esU=;
 b=EXowlbYzS/6NIVPiIMdQPKQ6P4DPZV2/nlEcE6vkzT7YQYYfsUNRYE6W
 +Ws/B0HlhyFzcVs66z0ag7nYqmbdBBREZMKCVDyfBMJ/GdyU0J528hZlv
 JQZpHkU3UeZcyqAXlM22T2d8NT0Mb06q2gQU5PHgNA0XXHscjI8MdbZqp
 VEyhdkBPsWE3NxvOr0ERcPCYYbUGheusIUEYiDWjnZaIsvuLw1UCSV+/x
 jzsXJbfZqPGtPrq8Wbzm8w/FG9nVzgbYpuqJ/IgBv2jIgqjZIkcR5Gk7c
 OwGoQjXThBsM85e5aqAKHpUG8HH9Kzfp9agkYINTUcSiDDntMMHVUmk7S Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="301722679"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="301722679"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="710731400"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="710731400"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 23:18:13 +0200
Message-Id: <cover.1669238194.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/12] drm/i915/display: switch to intel_de_*
 register accessors
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Based on earlier work by Maarten, switch to intel_de_* register
accessors in display for display registers, and avoid direct
i915->uncore access in general.

For now, leave the non-display registers be, as well as pcode.

Jani Nikula (11):
  drm/i915/de: return the old register value from intel_de_rmw()
  drm/i915/crt: drop a bunch of unnecessary register variables
  drm/i915/crt: switch to intel_de_* register accessors in display code
  drm/i915/power: switch to intel_de_* register accessors in display
    code
  drm/i915/dmc: switch to intel_de_* register accessors in display code
  drm/i915/dp-aux: switch to intel_de_* register accessors in display
    code
  drm/i915/gmbus: switch to intel_de_* register accessors in display
    code
  drm/i915/wm: switch to intel_de_* register accessors in display code
  drm/i915/snps: switch to intel_de_* register accessors in display code
  drm/i915/tc: switch to intel_de_* register accessors in display code
  drm/i915/fbc: switch to intel_de_* register accessors in display code

Maarten Lankhorst (1):
  drm/i915/de: Add more macros to remove all direct calls to uncore

 drivers/gpu/drm/i915/display/intel_crt.c      | 53 +++++++-----------
 drivers/gpu/drm/i915/display/intel_de.h       | 47 +++++++++++++++-
 .../drm/i915/display/intel_display_power.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  6 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   | 29 +++++-----
 drivers/gpu/drm/i915/display/intel_fbc.c      | 10 +---
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 46 ++++++----------
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 15 +++--
 drivers/gpu/drm/i915/display/intel_tc.c       | 55 ++++++-------------
 drivers/gpu/drm/i915/display/skl_watermark.c  | 42 ++++++--------
 10 files changed, 144 insertions(+), 161 deletions(-)

-- 
2.34.1

