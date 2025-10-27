Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8EAC0F4A0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 17:29:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4404510E505;
	Mon, 27 Oct 2025 16:29:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mtDpOyor";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C43F10E4F8;
 Mon, 27 Oct 2025 16:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761582587; x=1793118587;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dc+PMTJST0PiZrxbQlDnnwCYBYmGcbTyCtZUL/VQcdM=;
 b=mtDpOyord0FgP+DJlOaZl7y6Osjq0MwftyxLYeWexHs3kpugQG2YYRdN
 slP9jRkO0XtlRf8ekKxTD3pPz1rLGCstFgYQaJvtJa77guMW/s0/DbElL
 PqRVn82jiE80pDOcjVgL/KjMs0Ak9NQo1AblYAIzRQVkEJU0IJVnK4Q54
 Lt770BWTpu7PFrvthGl7m1v8eAzdO3M4GMiQReuak6mGpdZh0Hz9kZ/Zm
 5Y1EorPKAb9L7Xh68uvMdp8zZYKeDV50QbQCYKP4AMRat77eYBtTblDpo
 xfDzacTDY9X0o66d/4skWc78VrnIBj4K0sr8yg7HVbPLj+gh56K3QNtnI A==;
X-CSE-ConnectionGUID: 5UPfrmNRS66ZD0XvFrRFFw==
X-CSE-MsgGUID: tD1Z0EeqQk6EGole++Ulvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81299340"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81299340"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 09:29:47 -0700
X-CSE-ConnectionGUID: iNnbSCflToGvotvC+WYe0g==
X-CSE-MsgGUID: c3eKxLH+S+Kyxv/TeMieBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184785593"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 27 Oct 2025 09:29:45 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v8 08/22] drm/i915/display: Add DC Balance flip counter in crtc
Date: Mon, 27 Oct 2025 21:59:13 +0530
Message-ID: <20251027162927.2655581-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
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
index 710f9f925073..07bd2188303d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1487,6 +1487,10 @@ struct intel_crtc {
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

