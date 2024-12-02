Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E2B9E06E8
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 16:24:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2265510E7A9;
	Mon,  2 Dec 2024 15:24:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fGL+eeFe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5716110E7A9
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 15:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733153097; x=1764689097;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BMMhJu+PI1UdfHabuXeJ5utkwWcK5jNNCpT7c9moXho=;
 b=fGL+eeFeoN6vFXOt3Ir+9EwNfVLHcqvLceLMfS1yUl3+NXB2E4kNYvmh
 HhKCqwxMIiibYeXrr3Um89lhwBhUFaUhkaVqw5UccbYl23w01XQqdNQYc
 oGmZRT5j4Fk9XnocQwVU+n9inUUHV9CEa/NR+tCWy4RAXH1NNvnb4tKyA
 1e2BGcKSJCim90VLRzX1lMtQ4hjjQLZhPXX+c62AtA2N3bMsUm04+/vXU
 QvoIPvhqC5QOR3H5n7iVMvZmDk8shc7Vi9xq4fs+OQg54iGZsqN2webh4
 vTXcytrSZmWvOdy0GfQ92Ak20jlSYYgpq+Fa7QDfwvJyOO2fsrIJWVmIr A==;
X-CSE-ConnectionGUID: /Cm7zYagS2qI73L/baFq0A==
X-CSE-MsgGUID: vyEYMVxfS2iCqejTISS2BA==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="43935949"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="43935949"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 07:24:57 -0800
X-CSE-ConnectionGUID: 3wYx7mHnSDm+fgv7+bL72Q==
X-CSE-MsgGUID: twIl/N2eTAeKf+DZUb77sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="130612200"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.145.169.150])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 07:24:55 -0800
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: badal.nilawar@intel.com, karthik.poosa@intel.com, anshuman.gupta@intel.com,
 Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH v1] drm/i915/selftests: Add delay to stabilize frequency in
 live_rps_power
Date: Mon,  2 Dec 2024 20:45:14 +0530
Message-Id: <20241202151514.2785289-1-sk.anirban@intel.com>
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

Add delays to allow frequency stabilization before power measurement
to fix sporadic power conservation issues in live_rps_power test.

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index dcef8d498919..3f26c5a079c7 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -1191,9 +1191,11 @@ int live_rps_power(void *arg)
 		}
 
 		max.freq = rps->max_freq;
+		msleep(100);
 		max.power = measure_power_at(rps, &max.freq);
 
 		min.freq = rps->min_freq;
+		msleep(100);
 		min.power = measure_power_at(rps, &min.freq);
 
 		igt_spinner_end(&spin);
-- 
2.34.1

