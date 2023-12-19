Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96447817E64
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 01:06:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8164910E160;
	Tue, 19 Dec 2023 00:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD52C10E160
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 00:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702944359; x=1734480359;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k6tpMbn7lbfq1IQFM2GzhZFEuW8DnxtJyvrsUzatW8k=;
 b=O3gJcfcbZf20JhuoGwQLdW7Ca4e8qIW+kc5Bsa2MRVLNkgCPly4Q0ERD
 b2YV+MJreEmuqp8i0Ji8cZyvU0dtvFqFZ+Q7KTVtlRxj3c1+UBOCHhvjp
 5TqrwDpRMOYPcnVvQo0c7mnKge/1pktO/eTf7++DZzQoZqK2mZ5EYLLJ4
 GIJ5P/ba9Vhml3kwT58h+GAaL4IM9QNcrYwu46MT+7ky0TLxZTiN+bwbn
 msAq+BImaG2ZwVF8fEjiHzCKv1Qbqthz2KweQ2yP3RcfmFRcX77fgsWqf
 G5F5LCIqM0XHT5KxTyBOHGCXNnrMIh1EFqEfaw/OrxH3k7SfT0NAZWww8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="8953575"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; 
   d="scan'208";a="8953575"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 16:05:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="1022939294"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="1022939294"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 16:05:47 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Ashutosh Dixit <ashutosh.dixit@intel.com>
Subject: [PATCH] drm/i915/perf: Update handling of MMIO triggered reports
Date: Mon, 18 Dec 2023 16:05:43 -0800
Message-Id: <20231219000543.1087706-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
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

On XEHP platforms user is not able to find MMIO triggered reports in the
OA buffer since i915 squashes the context ID fields. These context ID
fields hold the MMIO trigger markers.

Update logic to not squash the context ID fields of MMIO triggered
reports.

Fixes: cba94bbcff08 ("drm/i915/perf: Determine context valid in OA reports")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 39 ++++++++++++++++++++++++++++----
 1 file changed, 34 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 7b1c8de2f9cb..2d695818f006 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -772,10 +772,6 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 * The reason field includes flags identifying what
 		 * triggered this specific report (mostly timer
 		 * triggered or e.g. due to a context switch).
-		 *
-		 * In MMIO triggered reports, some platforms do not set the
-		 * reason bit in this field and it is valid to have a reason
-		 * field of zero.
 		 */
 		reason = oa_report_reason(stream, report);
 		ctx_id = oa_context_id(stream, report32);
@@ -787,8 +783,41 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 *
 		 * Note: that we don't clear the valid_ctx_bit so userspace can
 		 * understand that the ID has been squashed by the kernel.
+		 *
+		 * Update:
+		 *
+		 * On XEHP platforms the behavior of context id valid bit has
+		 * changed compared to prior platforms. To describe this, we
+		 * define a few terms:
+		 *
+		 * context-switch-report: This is a report with the reason type
+		 * being context-switch. It is generated when a context switches
+		 * out.
+		 *
+		 * context-valid-bit: A bit that is set in the report ID field
+		 * to indicate that a valid context has been loaded.
+		 *
+		 * gpu-idle: A condition characterized by a
+		 * context-switch-report with context-valid-bit set to 0.
+		 *
+		 * On prior platforms, context-id-valid bit is set to 0 only
+		 * when GPU goes idle. In all other reports, it is set to 1.
+		 *
+		 * On XEHP platforms, context-valid-bit is set to 1 in a context
+		 * switch report if a new context switched in. For all other
+		 * reports it is set to 0.
+		 *
+		 * This change in behavior causes an issue with MMIO triggered
+		 * reports. MMIO triggered reports have the markers in the
+		 * context ID field and the context-valid-bit is 0. The logic
+		 * below to squash the context ID would render the report
+		 * useless since the user will not be able to find it in the OA
+		 * buffer. Since MMIO triggered reports exist only on XEHP,
+		 * we should avoid squashing these for XEHP platforms.
 		 */
-		if (oa_report_ctx_invalid(stream, report)) {
+
+		if (oa_report_ctx_invalid(stream, report) &&
+		    GRAPHICS_VER_FULL(stream->engine->i915) < IP_VER(12, 50)) {
 			ctx_id = INVALID_CTX_ID;
 			oa_context_id_squash(stream, report32);
 		}
-- 
2.38.1

