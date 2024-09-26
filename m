Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CB7987495
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 15:41:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46E0010EB50;
	Thu, 26 Sep 2024 13:41:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eSJEjcRh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C69B10EB50;
 Thu, 26 Sep 2024 13:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727358091; x=1758894091;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CKHmABEp3Sq+VPdYrwbd+K/w9yk99BNG81UgMJwOlTE=;
 b=eSJEjcRhwzxNhpHZim7NVjsuH7Xp8uVlcWfVq4nm1QY75L4uUWlSqFyL
 WEhCdFyoVvZFxCHzRJ+seV4AyXdSXeXiBkFTcp1SMAbJCE4k7rxJabGBn
 XlJEwB49IU8Zf5lLJCOZI+tgqNSAR8tpTvmV/0Eh34yipqPZyeRHkhVsb
 71jmwq+ijf2FW8+0/iM2kqvpHLiFhSFXnuC8KzxyWXM5TBCq8cIWHFN3x
 FcxQ47kZWWoS4SH8oYNnWTO/rFdG+zm9PCZfw3cDS/Ckgc+k8oI/gj9Eh
 YaO8enFuqoB4ZQA7VeEiOhb4aISXjOhatMSfdTPw6KES8uIZ0/BbR2m3M g==;
X-CSE-ConnectionGUID: 1txJgNrVQoqRBrnfDDOIHA==
X-CSE-MsgGUID: tLZ22nPHSYqQgoP7WjcqhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="43922884"
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="43922884"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 06:41:28 -0700
X-CSE-ConnectionGUID: UmDSi+heQw60ZbEl33MrpA==
X-CSE-MsgGUID: 1vhuQcwQT9+PaR2wG4fU6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="76975900"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 06:41:26 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 0/4] Enhance debugfs for forcing joiner
Date: Thu, 26 Sep 2024 19:13:18 +0530
Message-ID: <20240926134322.3728021-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This patch series introduces enhancements to debugfs for forcing pipe
joiner and prepares for the implementation of the ultrajoiner.
These patches are derived from the original series [1] focused on the
basic functionality of the ultra joiner. The debugfs enhancements are
intended for merging prior to the integration of the core patches in this
series.

[1] https://patchwork.freedesktop.org/series/133800/

Ankit Nautiyal (4):
  drm/i915/display_device: Add Check HAS_DSC for bigjoiner
  drm/i915/display_debugfs: Allow force joiner only if supported
  drm/i915/display: Modify debugfs for joiner to force n pipes
  drm/i915/dp: Add helper to compute num pipes required

 .../drm/i915/display/intel_display_debugfs.c  | 64 +++++++++++++++++--
 .../drm/i915/display/intel_display_device.h   |  2 +-
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 46 +++++++------
 drivers/gpu/drm/i915/display/intel_dp.h       |  6 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 23 +++----
 6 files changed, 100 insertions(+), 43 deletions(-)

-- 
2.45.2

