Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA46497BB76
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 13:17:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 971DB10E254;
	Wed, 18 Sep 2024 11:17:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kbvML3zj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CD2D10E1D0;
 Wed, 18 Sep 2024 11:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726658276; x=1758194276;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HqT4YW+0QROxbynCinZI0azh2VvylGH9LdVtsuQ238E=;
 b=kbvML3zjDzhX7OXdOu3zKQjwt4OYRMnfvdnQ14hTix3dpPSzVgJ8x7ox
 LxDnYJ+ns6P4cKghNJHHZ83ea85Y2OVYBfCSdf81LZxtgT+bR7Uamc1F1
 EZLeF3cWdS8WNydJGZo/Ym26J3mMCQaozAUnvpbaBt0oodsKzHX5wEJoB
 XuhVB8FAHPXosUqlf6F2U/4gbfzKqJD1PzQKi2bWVVkYeHcrro+MyUC93
 nKXOka6WZMx402a9Ds6EGraUeg/cpb3KvoAiQbJ9nYB6gzlUx9deaUQUH
 UAqIJ5SMj7KEuTORQw+EUATlZTCVI+sZCHxH7JPXBBVeMiv+u82rpf/bf A==;
X-CSE-ConnectionGUID: yeBuMuaMRBmkOjiWSwpRCg==
X-CSE-MsgGUID: 0i7WoRDORx+2Wt6Y7Ibsyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25048936"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="25048936"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 04:17:55 -0700
X-CSE-ConnectionGUID: ZpXFZoUNSuqP7+Iz7gSK6A==
X-CSE-MsgGUID: V29DTvvUTLKKQM2G3QXf5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="69839451"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 04:17:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/5] drm/i915: wakeref fixes and improvements
Date: Wed, 18 Sep 2024 14:17:43 +0300
Message-Id: <cover.1726658138.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

Make wakeref handling a bit more robust. Patches 1-4 fix the issues that
were found by trying patch 5.

Jani Nikula (5):
  drm/i915/gem: fix bitwise and logical AND mixup
  drm/i915: use INTEL_WAKEREF_DEF instead of magic -1 for
    intel_wakeref_t
  drm/i915/gt: add a macro for mock gt wakeref special value and use it
  drm/i915/audio: be explicit about intel_wakeref_t conversions
  drm/i915: switch intel_wakeref_t underlying type to struct ref_tracker
    *

 drivers/gpu/drm/i915/display/intel_audio.c     |  9 +++++----
 .../gpu/drm/i915/display/intel_display_power.c |  2 +-
 .../gpu/drm/i915/display/intel_display_power.h |  4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.h          |  6 +++++-
 drivers/gpu/drm/i915/gt/intel_tlb.c            |  2 +-
 drivers/gpu/drm/i915/intel_runtime_pm.c        |  6 +++---
 drivers/gpu/drm/i915/intel_wakeref.h           | 18 ++++++++++--------
 .../gpu/drm/i915/selftests/mock_gem_device.c   |  2 +-
 .../xe/compat-i915-headers/intel_runtime_pm.h  |  7 ++++---
 .../drm/xe/compat-i915-headers/intel_wakeref.h |  4 +++-
 11 files changed, 36 insertions(+), 26 deletions(-)

-- 
2.39.2

