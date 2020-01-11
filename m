Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4651B137AF1
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jan 2020 02:45:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E653A89BE8;
	Sat, 11 Jan 2020 01:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 537A189BE8
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jan 2020 01:45:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 17:45:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,419,1571727600"; d="scan'208";a="304348380"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga001.jf.intel.com with ESMTP; 10 Jan 2020 17:45:13 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 17:45:11 -0800
Message-Id: <20200111014511.2988923-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gen11: Add additional pcode status
 values
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I don't think we've ever hit these new error codes, but they're
documented in the gen11 pcode document, so we might as well add them to
the handler.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h       | 2 ++
 drivers/gpu/drm/i915/intel_sideband.c | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6cc55c103f67..e5071af4a3b3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8987,6 +8987,8 @@ enum {
 #define     GEN6_PCODE_UNIMPLEMENTED_CMD	0xFF
 #define     GEN7_PCODE_TIMEOUT			0x2
 #define     GEN7_PCODE_ILLEGAL_DATA		0x3
+#define     GEN11_PCODE_ILLEGAL_SUBCOMMAND	0x4
+#define     GEN11_PCODE_LOCKED			0x6
 #define     GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x10
 #define   GEN6_PCODE_WRITE_RC6VIDS		0x4
 #define   GEN6_PCODE_READ_RC6VIDS		0x5
diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915/intel_sideband.c
index cbfb7171d62d..3361fdc41ee1 100644
--- a/drivers/gpu/drm/i915/intel_sideband.c
+++ b/drivers/gpu/drm/i915/intel_sideband.c
@@ -365,6 +365,10 @@ static inline int gen7_check_mailbox_status(u32 mbox)
 		return -ETIMEDOUT;
 	case GEN7_PCODE_ILLEGAL_DATA:
 		return -EINVAL;
+	case GEN11_PCODE_ILLEGAL_SUBCOMMAND:
+		return -ENXIO;
+	case GEN11_PCODE_LOCKED:
+		return -EBUSY;
 	case GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE:
 		return -EOVERFLOW;
 	default:
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
