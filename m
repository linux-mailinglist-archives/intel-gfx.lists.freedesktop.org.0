Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA649DE8DC
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 15:45:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59B0210E4CC;
	Fri, 29 Nov 2024 14:45:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ctbJrFpa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3C1610E4C9;
 Fri, 29 Nov 2024 14:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732891542; x=1764427542;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tyq4pDYEoiq5UdONGYZNE4PU9skkLMaeCm4ICKxypVw=;
 b=ctbJrFpa2YVWxRYMBGMzf1iU8mr5zx1H/7XYLfz5GZ0WPIxNHCVMlfX7
 UD/xPsu5qpCvRCo7lphhYfV4aE3Wf0i2708RFTGu10KqihtkkSPmbfgy9
 nMxsIf1DHqZhTMeMTR1CWk0on6ZnUH+0N7Z1s1JCuKZYPoyGF1oB5gUAs
 VywfZOQ/PLcoKAfISpkZ57evqb/6CxcFvp/ZrOtZCH85GvxA3VyXX6a4h
 xjWYnmUBeSbbsWkWd0l+dCD14fAXAtqX5y48yMUIAYUpsR7OksRUJaNQm
 Nc1XiwqahZYylZpXArf9LKjSDIIzzQkNEQ8ZAGGroTdTPO7aTyU/9oAiX A==;
X-CSE-ConnectionGUID: o8mTJL3VT8qAY7h7YSSGZw==
X-CSE-MsgGUID: RCOxV4C+TYKTsSsetrhz9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="50650244"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="50650244"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 06:45:42 -0800
X-CSE-ConnectionGUID: YSPtFyngTsW3sxSgRwxxdA==
X-CSE-MsgGUID: hwiNzSs4Q/aHHUJvZzlFqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="93346726"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.241])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 06:45:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/5] drm/i915/dp: convert to struct intel_display
Date: Fri, 29 Nov 2024 16:45:28 +0200
Message-Id: <cover.1732891498.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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

Jani Nikula (5):
  drm/i915/dp: s/intel_encoder/encoder/
  drm/i915/dp: s/intel_connector/connector/
  drm/i915/dp: convert to struct intel_display
  drm/i915/dp: convert interfaces to struct intel_display
  drm/i915/dp: finish link training conversion to struct intel_display

 drivers/gpu/drm/i915/display/intel_display.c  |   6 +-
 .../drm/i915/display/intel_display_driver.c   |  10 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 928 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h       |  20 +-
 .../drm/i915/display/intel_dp_link_training.c |  14 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  12 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
 drivers/gpu/drm/i915/i915_driver.c            |   3 +-
 drivers/gpu/drm/xe/display/xe_display.c       |   2 +-
 9 files changed, 510 insertions(+), 487 deletions(-)

-- 
2.39.5

