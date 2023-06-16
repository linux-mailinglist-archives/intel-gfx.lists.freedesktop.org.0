Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F057324DA
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 03:50:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDA8210E583;
	Fri, 16 Jun 2023 01:50:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D475A10E583
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 01:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686880236; x=1718416236;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o0rRoCwJCYGKiuI27Z3TVAjGNVsUmZ+uPx8lFXQ49PY=;
 b=EiQtEhlZiKQA7eIbaQcLNwFIxHtGxb2ac25FCZivx+f1QI4SOrzxC0pw
 wpkvzHvbZJOmiXr+SuvWml1EDYzsHsJUNI1VGYL47Nqy8w5NPHVMQCSvr
 u+G9Q7zZ9Gre3fkeeY+X+t7aiF95HLrX2e4sdfWdLYjeXNhcPtOdMhba0
 UjjE8IEFUMH2ToP5b8LYC4X9FgxExg8w/T9OT7hhgNEdQwElch+hNwI/M
 sPkMfTIbIvwIy2Usb9a8dtTNZCkq8adOedcN63PLamJc782fb77AumsFa
 C86AYNTsDsdy57WaU5z3tHtqgmhW6CSUDSxDLHV+rk/CBDvUliTvHuiUZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="338706948"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; d="scan'208";a="338706948"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 18:50:36 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="745930814"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; d="scan'208";a="745930814"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 18:50:35 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 18:50:35 -0700
Message-Id: <20230616015035.616403-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Consider OA buffer boundary when
 zeroing out reports
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

For reports that are not powers of 2, reports at the end of the OA
buffer may get split across the buffer boundary. When zeroing out such
reports, take the split into consideration.

Fixes: 09a36015d9a0 ("drm/i915/perf: Clear out entire reports after reading if not power of 2 size")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index b5491a382bfd..9a8e329c5b5e 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -867,8 +867,17 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 			oa_report_id_clear(stream, report32);
 			oa_timestamp_clear(stream, report32);
 		} else {
+			u8 *oa_buf_end = stream->oa_buffer.vaddr +
+					 stream->oa_buffer.vma->size;
+			u32 part = (u32)((void *)oa_buf_end - (void *)report32);
+
 			/* Zero out the entire report */
-			memset(report32, 0, report_size);
+			if (report_size <= part) {
+				memset(report32, 0, report_size);
+			} else {
+				memset(report32, 0, part);
+				memset(oa_buf_base, 0, report_size - part);
+			}
 		}
 	}
 
-- 
2.36.1

