Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36262903EDC
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 16:31:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E4A10E146;
	Tue, 11 Jun 2024 14:31:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W7jEN3e8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E2A310E146;
 Tue, 11 Jun 2024 14:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718116245; x=1749652245;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iQR9YStS7FggKdxkqYsdu0V++xnNM67wMQUDjdil6cA=;
 b=W7jEN3e81JGR+Y98s8lw0yWXPJYaK3Wt/EOYkxU9Qd7+PLbFVF8n+ZLD
 JSS+cYMMamTwhtaHc3o+wfWjPCewa9PGtCyXdPFatZ3ue7Lh9r8xg8b64
 /QwKAxVD7QlAfpD/CPjKOrBbdhcXY79HvL34RgJ4UzUl9lqNJX8yrWinl
 NpAHzLdS3aLOY3DCvLYXV2pPuTAC4w7GXWrZ9DImSyS1X9wqlU71kRkKp
 +qic8jbILh0r/5+Ry2ekZ06qaxm6YljzElRU170OjvJ0oB9QyAdkc+PKk
 SwsXfsK1nNByHgwcl68hr31yTU2MEEjgOQz27z0ih71Z/TFWhYPX33DpS g==;
X-CSE-ConnectionGUID: Hr0bw8ExTzSgkS8YGhZY0Q==
X-CSE-MsgGUID: Jd5UF1PlR6mO3nVUF/gcvQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14957511"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="14957511"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:42 -0700
X-CSE-ConnectionGUID: hLns3ZKEQ1K7WGSVyATcuQ==
X-CSE-MsgGUID: Jpp9T/dqSayjLNjiXvnM/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="44357799"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.94.248.185])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:41 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Subject: [RFC 2/7] Documentation/gpu: Separate GuC ABI section
Date: Tue, 11 Jun 2024 16:30:03 +0200
Message-Id: <20240611143008.1900-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20240611143008.1900-1-michal.wajdeczko@intel.com>
References: <20240611143008.1900-1-michal.wajdeczko@intel.com>
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

GuC ABI definitions are not strictly tied to the i915 driver.
Move them to a separate section.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 Documentation/gpu/drivers.rst |  1 +
 Documentation/gpu/guc.rst     | 16 ++++++++++++++++
 Documentation/gpu/i915.rst    |  9 ---------
 3 files changed, 17 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/gpu/guc.rst

diff --git a/Documentation/gpu/drivers.rst b/Documentation/gpu/drivers.rst
index b899cbc5c2b4..294e39e34c32 100644
--- a/Documentation/gpu/drivers.rst
+++ b/Documentation/gpu/drivers.rst
@@ -7,6 +7,7 @@ GPU Driver Documentation
 
    amdgpu/index
    i915
+   guc
    imagination/index
    mcde
    meson
diff --git a/Documentation/gpu/guc.rst b/Documentation/gpu/guc.rst
new file mode 100644
index 000000000000..b0fcb824c15a
--- /dev/null
+++ b/Documentation/gpu/guc.rst
@@ -0,0 +1,16 @@
+.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+======================
+drm/intel GuC firmware
+======================
+
+The graphics microcontroller (GuC) is available starting from Gen9 hardware.
+
+GuC ABI
+=======
+
+.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
+.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
+.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
+.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index ad59ae579237..e96fd87ffd94 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -541,15 +541,6 @@ GuC-based command submission
 .. kernel-doc:: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
    :doc: GuC-based command submission
 
-GuC ABI
-~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-
-.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
-.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
-.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
-.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
-.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
-
 HuC
 ---
 .. kernel-doc:: drivers/gpu/drm/i915/gt/uc/intel_huc.c
-- 
2.43.0

