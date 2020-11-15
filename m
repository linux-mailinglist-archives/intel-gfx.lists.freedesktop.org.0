Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB4E2B3917
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 21:24:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 836FC6E9B5;
	Sun, 15 Nov 2020 20:24:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04C3B89F08
 for <Intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 20:23:48 +0000 (UTC)
IronPort-SDR: 3XSsadTPT8zKENIDp4z8cPazGmSJBUxhZeROnq3dJ1wzlB1eyXBIjpqZJJsKkS60ayRru44WSb
 +niXgPwB6TwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="234832203"
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="234832203"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2020 12:23:47 -0800
IronPort-SDR: avK3Ea5x5G2ZIkPuc68HxWivonFGwQx7EFkQ8xznOBlJDJ2nz8MiD0hUc50OXmn0C74dnaR2s+
 9MvIOGzZvfiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="430005342"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga001.fm.intel.com with ESMTP; 15 Nov 2020 12:23:47 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun, 15 Nov 2020 12:23:26 -0800
Message-Id: <20201115202347.29224-6-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201115202347.29224-1-sean.z.huang@intel.com>
References: <20201115202347.29224-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH 06/27] drm/i915: Rename the whitelist to
 allowlist
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rename the whitelist to allowlist as suggested

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 1c14a07eba7d..c9ef0025c60e 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1989,12 +1989,12 @@ void intel_uncore_fini_mmio(struct intel_uncore *uncore)
 	uncore_mmio_cleanup(uncore);
 }
 
-static const struct reg_whitelist {
+static const struct reg_allowlist {
 	i915_reg_t offset_ldw;
 	i915_reg_t offset_udw;
 	u16 gen_mask;
 	u8 size;
-} reg_read_whitelist[] = { {
+} reg_read_allowlist[] = { {
 	.offset_ldw = RING_TIMESTAMP(RENDER_RING_BASE),
 	.offset_udw = RING_TIMESTAMP_UDW(RENDER_RING_BASE),
 	.gen_mask = INTEL_GEN_MASK(4, 12),
@@ -2007,14 +2007,14 @@ int i915_reg_read_ioctl(struct drm_device *dev,
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct intel_uncore *uncore = &i915->uncore;
 	struct drm_i915_reg_read *reg = data;
-	struct reg_whitelist const *entry;
+	struct reg_allowlist const *entry;
 	intel_wakeref_t wakeref;
 	unsigned int flags;
 	int remain;
 	int ret = 0;
 
-	entry = reg_read_whitelist;
-	remain = ARRAY_SIZE(reg_read_whitelist);
+	entry = reg_read_allowlist;
+	remain = ARRAY_SIZE(reg_read_allowlist);
 	while (remain) {
 		u32 entry_offset = i915_mmio_reg_offset(entry->offset_ldw);
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
