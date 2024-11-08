Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF739C1D84
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:03:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63FA410E99D;
	Fri,  8 Nov 2024 13:03:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZKQhtWD6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1C3510E98A;
 Fri,  8 Nov 2024 13:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731070984; x=1762606984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gblMFi7k1ciNl7gDnJeDgveJoXp/r65q6MhSu3U/WNY=;
 b=ZKQhtWD62rrSmHc9SIIVEKtPubx7s68BDguqqU2KxCem01lmcICe4tsE
 kKuGKruMsQtrrBzH01Fzh4D6C3OctEHG+5yzlUyyMwyArHznqhwxkcHKP
 /TuQgLmUoZUPj/aF6ewxM1vveTFC89E8k89ODz3kT1lXcXxnzQuD3F1BZ
 w4QN2gqceRy5qd/PsrFmWw7DwDpRY0JsNt1C7bPiPo8aEh9SU5tjTiJun
 Xua8kpHDiCBQXUD3YCEhy1A4UjGzfywTaV0iPOelfMTeFwUxF6RFZE/A5
 kb2U9D6zZl5Xwmy2J6ZZ/zfH4+VoXEr5SJLtBAVYqoJ3L/wdgI3HP9s4s A==;
X-CSE-ConnectionGUID: AZf3tkbRQZS1im3sjTAPyw==
X-CSE-MsgGUID: HC4xlMCsTvWFEE3MvsJjlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41513129"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41513129"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:03:03 -0800
X-CSE-ConnectionGUID: a9wVrwVVQL6t4z0J2Oq/OA==
X-CSE-MsgGUID: OlEF1DG9SsyzrTDaq3KfcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85692480"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.232])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:02:51 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 06/15] drm/i915/dmc_wl: Use sentinel item for range tables
Date: Fri,  8 Nov 2024 09:57:11 -0300
Message-ID: <20241108130218.24125-7-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241108130218.24125-1-gustavo.sousa@intel.com>
References: <20241108130218.24125-1-gustavo.sousa@intel.com>
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

We are currently using ARRAY_SIZE() to iterate address ranges in
intel_dmc_wl_check_range(). In upcoming changes, we will be using more
than a single table and will extract the range checking logic into a
dedicated function that takes a range table as argument. As we will not
able to use ARRAY_SIZE() then, let's make range tables contain a
sentinel item at the end and use that instead of having to pass the size
as parameter in this future function.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index e837c39491bb..1753c334f3fd 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -53,6 +53,7 @@ struct intel_dmc_wl_range {
 
 static struct intel_dmc_wl_range lnl_wl_range[] = {
 	{ .start = 0x60000, .end = 0x7ffff },
+	{},
 };
 
 static void __intel_dmc_wl_release(struct intel_display *display)
@@ -104,7 +105,7 @@ static bool intel_dmc_wl_check_range(i915_reg_t reg)
 	bool wl_needed = false;
 	u32 offset = i915_mmio_reg_offset(reg);
 
-	for (i = 0; i < ARRAY_SIZE(lnl_wl_range); i++) {
+	for (i = 0; lnl_wl_range[i].start; i++) {
 		if (offset >= lnl_wl_range[i].start &&
 		    offset <= lnl_wl_range[i].end) {
 			wl_needed = true;
-- 
2.47.0

