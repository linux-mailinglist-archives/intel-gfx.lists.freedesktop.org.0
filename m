Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB08A59474
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 13:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2934310E44C;
	Mon, 10 Mar 2025 12:28:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B0glhovT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7610210E448;
 Mon, 10 Mar 2025 12:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741609732; x=1773145732;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=07bQrwPnrP9wIIgUtrV0dXjmdy8G4KuOSYo9Aq3D85c=;
 b=B0glhovTOQjNKbFlJaaFWIXvkke9yfThjEcOfoWabsU8qvj2br/RDoyd
 iW7NFgmEiWkkbNYgdudUb5YPda+dc0oT5oDqwRSL0mlS11AtAUokMXbG5
 Ub9mqTazQRUJ/mK2UDdfHgV6eUUZv6dPG5E5Z3gPjKhH+GVZE6OJrjvPM
 GtloIfwLO5noXGZ4ZKxhoa11QAx68HR11Po9D6OzgxSeeL5wACuSK35Ev
 4vW8pH1rndDV8edW+J6NljdepDRBb+E9SpXh0jo9PZqWJurC1OQ1SeDaF
 U9pYmrqN/5CR+32lvdZMJLvvF/xj3xzBsur542rbtMyrBM/LBZX3ydnGy Q==;
X-CSE-ConnectionGUID: y9M+2XKZQIqT+8ESkpbACg==
X-CSE-MsgGUID: 3Wx7Z2SfRHmoEjLZXA8xPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="65057329"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="65057329"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:52 -0700
X-CSE-ConnectionGUID: 9bUPBlmRQ9632R5P6H0kcg==
X-CSE-MsgGUID: 4u8I/S4ARdekkRVkQmxeoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="143180601"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 20/21] drm/i915/vrr: Always use VRR timing generator for MTL+
Date: Mon, 10 Mar 2025 17:46:14 +0530
Message-ID: <20250310121615.1077079-21-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
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

Currently VRR timing generator is used only when VRR is enabled by
userspace for sinks that support VRR. From MTL+ gradually move away from
the older timing generator and use VRR timing generator for both variable
and fixed timings.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 76398b3a9679..35f1463583f7 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -556,7 +556,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 	if (!HAS_VRR(display))
 		return false;
 
-	/* #TODO return true for platforms supporting fixed_rr */
+	if (DISPLAY_VER(display) >= 14)
+		return true;
+
 	return false;
 }
 
-- 
2.45.2

