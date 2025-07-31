Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E43B16B79
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 07:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBC0110E246;
	Thu, 31 Jul 2025 05:16:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KwQnG8Kz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7141210E246;
 Thu, 31 Jul 2025 05:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753939014; x=1785475014;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LaRCkV/5JAMHwMJCzrxrX4l/dCPPErgCrsvZTIw0IxU=;
 b=KwQnG8KzGeM+SqF+RqIs5XsWP8Cvdk2ATzvR7GjWBidm7H0ZPznyLLKs
 G+HiSTisPhZwUXnApu2fPt4eUkC/IOGKOeDN7Fc4nRP4iHakjxt3v41pg
 6YZsA7XdxTDdsHQDPJB+fkrqw362hE90SVQSE7/aPa+u080+hWFApR3oN
 jTatjmgEh7Z2JFNx/Kv0BQNnqUTlt7NdGhKx9pqswMNMjk9nzsbYS01Bf
 KQEEg3mDeUrxxly6t5Yvi+O0WuKXqn7fYTHnFuWy0QzPHZUtOil0OtCj3
 qGaXMg9RJJRisy0tKURRMwrlYnRQJqy5b6QS9vPdIuEbj5SBAoTaCDShO Q==;
X-CSE-ConnectionGUID: A6GsSGf8RWGhC9qEF8Aoow==
X-CSE-MsgGUID: LDpK8YOnSsC00XewpVVs8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="67332421"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="67332421"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 22:16:53 -0700
X-CSE-ConnectionGUID: zqA6YLZ4SXifd8lzpYBp2g==
X-CSE-MsgGUID: uyuhdXGRRyWy+pPf2d9N/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="194154169"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 30 Jul 2025 22:16:52 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 0/3] eDP Data Override
Date: Thu, 31 Jul 2025 10:46:43 +0530
Message-Id: <20250731051646.3009255-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

When using link rates 2.43 and 6.75 causes a strong noise for WIFI
bands. Its recommended we use 2.7 and 8.1 Gbps instead.
The solution proposed was a static vbt field that provides us with a
mask of rates which need to be skipped in favor of the next higher link
rate.

--v1
-Optimize looping

--v2
-Break 2nd patch to two parts
-Rename intel bios parse function
-Create seprate function for setting rates

-v3
-Fix VBT definition
-Rename intel bios function
-Make the function only return mask
-Protect against broken VBT

HSD:14022096069
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (3):
  drm/i915/vbt: Add eDP Data rate overrride field in VBT
  drm/i915/bios: Add function to check if edp data override is needed
  drm/i915/edp: eDP Data Overrride

 drivers/gpu/drm/i915/display/intel_bios.c     | 33 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 29 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 16 +++++++++
 4 files changed, 79 insertions(+), 1 deletion(-)

-- 
2.34.1

