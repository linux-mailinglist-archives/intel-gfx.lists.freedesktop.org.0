Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3B05A2328
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 10:38:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8206910E74D;
	Fri, 26 Aug 2022 08:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 999F810E74D
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 08:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661503104; x=1693039104;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vu+mSYIQvdMMX0r9V2pr7dAg01uXA/tmsPy0lYb321A=;
 b=hF7hQAVhv841PZAX5+FzyXUdKqtPuPEYgQSwa26whdRTem4swN+OgVoQ
 9MlMChn9IbyF7aOzxBTWVbQMoKK1ExIHg+hrnEmJH58TKAlsnsdNEPmOb
 IqoGwsXV5UlqNgZe4XyhNaKoTDmKtmLKB2ivQuA2UdO3RhVW/MSPUJKwI
 Kq2gut7INACT/Suh1E++oje7j3LFEmbV83KKEmKS4p1jFNXstcEpqjWYP
 5vyBUgQn/tPTa+XU6llGzAw7mf+VbdS1Y53VakN0QieOEUKkoUN4YY60j
 OQeqY5elMHNWyXegY00MRMEnXZi7x31E2QW79T5w8blkoGYgFFQEqADfp Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="358425278"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="358425278"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 01:38:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="671378066"
Received: from plomuzio-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.203])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 01:38:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Aug 2022 11:38:12 +0300
Message-Id: <cover.1661503049.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: some BUG_ON() removals
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

Avoid BUG_ON(). Remove some of the low-hanging fruit.

Jani Nikula (5):
  drm/i915/crt: replace BUG_ON() with drm_WARN_ON()
  drm/i915/dpll: replace BUG_ON() with drm_WARN_ON()
  drm/i915/pch: replace BUG_ON() with drm_WARN_ON()
  drm/i915/perf: replace BUG_ON() with WARN_ON()
  drm/i915/fence: replace BUG_ON() with BUILD_BUG_ON()

 drivers/gpu/drm/i915/display/intel_crt.c        | 3 ++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c   | 6 ++++--
 drivers/gpu/drm/i915/display/intel_pch_refclk.c | 2 +-
 drivers/gpu/drm/i915/i915_perf.c                | 3 ++-
 drivers/gpu/drm/i915/i915_sw_fence.c            | 2 --
 drivers/gpu/drm/i915/i915_sw_fence.h            | 6 +++++-
 6 files changed, 14 insertions(+), 8 deletions(-)

-- 
2.34.1

