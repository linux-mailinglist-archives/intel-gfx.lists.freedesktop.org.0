Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE00A903ED4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 16:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36DAE10E1B1;
	Tue, 11 Jun 2024 14:30:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h3zvft+h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC2AF10E15D;
 Tue, 11 Jun 2024 14:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718116246; x=1749652246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UnZ2Cu/7pLhBjf5Y8QmCSv1D9DH32mXmaxEAnYABXaU=;
 b=h3zvft+ha4Ol1C3fiQUIpyxw08BXpaAqHScmKXYyqtSqionqqauq2UOn
 64xdhoyvGlQ2AvzkpOdSns4QYOI9TLO+ceuqBRWZbWqcPSCOp2CaqvBxN
 enu+rr2WF9PQbW2hyPU/hJnAfbeZcPMwfjWYfuY70jubZJ13IM4wq5VRT
 QqKYom/Gcm2CAC8jN8xE8vxSU/OIFJ3S42oNPs5NnqaA1AkjZhQX7ljH+
 aksxbB+Ex8LEIZqEjJVv+eq71PW3iKVVkEo++i/i6UUrmEprIQBbVoOe+
 rbTgRfoF8gVjw9ku4iQCGcqYgGBhWHSAFLxRj7EaPzeZsFATLesaljTjQ A==;
X-CSE-ConnectionGUID: e3b3cI8YQsi6SYVFaxY+mw==
X-CSE-MsgGUID: M4lw/5mISw+iAi4qWOk7Ww==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14957520"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="14957520"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:44 -0700
X-CSE-ConnectionGUID: SzV6xvzJTtiP1I723HiFAg==
X-CSE-MsgGUID: 38OHC8DkRu2B3S/tQS4vFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="44357809"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.94.248.185])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:43 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Subject: [RFC 3/7] Documentation/gpu: Switch to shared GuC ABI definitions
Date: Tue, 11 Jun 2024 16:30:04 +0200
Message-Id: <20240611143008.1900-4-michal.wajdeczko@intel.com>
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

For documentation purposes, use shared GuC ABI definitions instead
of local i915 definitions.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 Documentation/gpu/guc.rst | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/gpu/guc.rst b/Documentation/gpu/guc.rst
index b0fcb824c15a..55ae1476bf9e 100644
--- a/Documentation/gpu/guc.rst
+++ b/Documentation/gpu/guc.rst
@@ -9,8 +9,8 @@ The graphics microcontroller (GuC) is available starting from Gen9 hardware.
 GuC ABI
 =======
 
-.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
-.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
-.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
+.. kernel-doc:: drivers/gpu/drm/intel/guc/abi/guc_communication_mmio_abi.h
+.. kernel-doc:: drivers/gpu/drm/intel/guc/abi/guc_communication_ctb_abi.h
+.. kernel-doc:: drivers/gpu/drm/intel/guc/abi/guc_messages_abi.h
 .. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
-.. kernel-doc:: drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
+.. kernel-doc:: drivers/gpu/drm/intel/guc/abi/guc_klvs_abi.h
-- 
2.43.0

