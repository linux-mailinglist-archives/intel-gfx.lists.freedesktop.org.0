Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5DA73377F
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 19:34:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EE2B10E670;
	Fri, 16 Jun 2023 17:34:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAE4510E671
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 17:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686936855; x=1718472855;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/XkMMKoiJwNaPnGncDc+1zU32AfEelnW2jWBxSl8g/c=;
 b=de+pTQdPQMMmOIqhZdKm5iEzqeKA9r9qn9H9CsrVapjgdXi6pMMDFPi+
 qYEqFgW+OY5s7nammu/2CRXxrA3I4Gbuy9iyMS5Bw8Zqasqh+oZchVyE/
 A7Sm2H+Rmck9seVjI8qwlM0/VsG1A/RgCuAvcAeDAF1sZS2KTMEDSA14j
 fjeS+36UpCUXPh9liIX9I0nUDPkJUBnffjfstl2JnsFLBMafSq861Ndb9
 oiaFRlKjiF6wVuote7VYnUej8UkoxL36s1OZ4YY0x4KbFBYJtDghPOxgr
 hQasikuBRlKIcQ1zv6URaqAwJWUxAJ9+lTUmwh8X17tDak3fV1UFrSAbF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="339601619"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="339601619"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 10:34:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="716099456"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="716099456"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 10:34:05 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 10:34:02 -0700
Message-Id: <20230616173402.699776-1-umesh.nerlige.ramappa@intel.com>
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

v2: Use OA_BUFFER_SIZE (Ashutosh)

Fixes: 09a36015d9a0 ("drm/i915/perf: Clear out entire reports after reading if not power of 2 size")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index b5491a382bfd..66ab6e1d5c7b 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -867,8 +867,17 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 			oa_report_id_clear(stream, report32);
 			oa_timestamp_clear(stream, report32);
 		} else {
+			u8 *oa_buf_end = stream->oa_buffer.vaddr +
+					 OA_BUFFER_SIZE;
+			u32 part = oa_buf_end - (u8 *)report32;
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

