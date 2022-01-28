Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB894A034E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 23:10:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9200A10E1A3;
	Fri, 28 Jan 2022 22:10:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFFCE10E12F
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 22:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643407827; x=1674943827;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6zTEknoVaxiuRxXTc+Z65iUg+OzsiYopUNvx6L9CAP4=;
 b=YF58Bw1bLGLCbF1FikyprfgqLLlFahOe5iq8TOSzz+r215hINQaMNev+
 4gne+M0OIslvuDt8P0Z1Jlmhz0Ddr+E5vRQSsztE/rrNLKWOpngoiXgcR
 FnlSPZwPYUF01cdPkF4dhlpq1rlEx2XCiXf3kVSykoXCQW5oVx1KztLSF
 g6X+E/faCUQkiKmrLAzSD5i3k1R6emxB+Ils1SvkvC9I5WthDzDR94Suy
 B1WmAAgnZaQ9yECU3RWw6bXUBtt1rnbOPEGfNmGDIAJ87GtchkUeX8Lbu
 1BaJ3zwqXkDXl2pkPNv9lxecwqAHWe3bouC52w4sorYsnskdEmK8I2YJk A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10241"; a="247155719"
X-IronPort-AV: E=Sophos;i="5.88,325,1635231600"; d="scan'208";a="247155719"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 14:10:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,325,1635231600"; d="scan'208";a="496265923"
Received: from bainsko-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.209.109.18])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 14:10:27 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 14:10:18 -0800
Message-Id: <20220128221020.188253-3-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220128221020.188253-1-michael.cheng@intel.com>
References: <20220128221020.188253-1-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/gt: Re-work
 invalidate_csb_entries
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com, matthew.auld@intel.com,
 mika.kuoppala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Re-work invalidate_csb_entries to use drm_clflush_virt_range. This will
prevent compiler errors when building for non-x86 architectures.

Signed-off-by: Michael Cheng <michael.cheng@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 960a9aaf4f3a..90b5daf9433d 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1647,8 +1647,8 @@ cancel_port_requests(struct intel_engine_execlists * const execlists,
 
 static void invalidate_csb_entries(const u64 *first, const u64 *last)
 {
-	clflush((void *)first);
-	clflush((void *)last);
+	drm_clflush_virt_range((void *)first, sizeof(*first));
+	drm_clflush_virt_range((void *)last, sizeof(*last));
 }
 
 /*
-- 
2.25.1

