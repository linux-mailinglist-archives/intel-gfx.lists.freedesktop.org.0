Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC4BC2A127
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 06:30:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7384610E34E;
	Mon,  3 Nov 2025 05:30:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UyODF8Bv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AB9510E34E;
 Mon,  3 Nov 2025 05:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762147817; x=1793683817;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OzjZrks3nr4QE5jA6Z2nHzznOnyoWYDoq1KUr5cdr+0=;
 b=UyODF8BvQmyBZxt1mD4HEIIx7TpNB8nvjVw0Vw8qk4p0pVvEIGpZF5Km
 TsF/ooGuJiJVQr/trOp/j6chcSUt0uWJEOQ2pwJR9yPIhse1wZQ77e2Sa
 7n4NkqKTNtfIa6ZHWZADpp/kiJ8I/UQMBMTmTHCdIhkESXPVkRrhq/O8Q
 OnMZtMgwJmX2Jnxs8jnU6ROOJFW4Z7IGKSLjJZZtJecL7fzF4jww1eaQ1
 uAtqPMzlbZwotLY8zyfOySs5VZ98DhVtsz8pEw5afIBlk9VuHILSUGBZs
 B09J3F8kCbxZHx1GqgFguBMCJr0uyrqzeJmCkW7EYG88MDdrhzvsTjG3D Q==;
X-CSE-ConnectionGUID: rEmtFamZT7694hLEWNJtUQ==
X-CSE-MsgGUID: 0gMTzmfqQZOqforC8K+QPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64143853"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64143853"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 21:30:17 -0800
X-CSE-ConnectionGUID: eRUBxPB1SEaompiODpLhUQ==
X-CSE-MsgGUID: aEe3uc22RO636wBWGPewkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="186925298"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 02 Nov 2025 21:30:15 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [RESEND, 08/22] drm/i915/display: Add DC Balance flip counter in crtc
Date: Mon,  3 Nov 2025 10:59:48 +0530
Message-ID: <20251103053002.3002695-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
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

Track dc balance flip count with params per crtc.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 33fb70716110..09eda2c409d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1502,6 +1502,10 @@ struct intel_crtc {
 		struct intel_link_m_n m_n, m2_n2;
 	} drrs;
 
+	struct {
+		u64 flip_count;
+	} dc_balance;
+
 	int scanline_offset;
 
 	struct {
-- 
2.48.1

