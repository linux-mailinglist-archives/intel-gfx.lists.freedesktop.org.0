Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A61058F752
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 07:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1F514B1B2;
	Thu, 11 Aug 2022 05:39:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE11F12A61A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 05:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660196342; x=1691732342;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/AamZfe+hwVAp/MT3Br5NO8EtbwnQdeLHzs2uflINn8=;
 b=Wc6anQvL9JL36OE+qz2HUr2IEHmAZ86JO+kdEhEkwXCsOlj0mnmQ7tz9
 aWHhqxNPUGF3TB+33iKZcdGTLMevjm1NxKzh9uBGm0BA9sowhJInlV+Pf
 QXlZIJfOq27SQbZCvVBf2A6mrkWXb6TNBq5WsMUXdJzldICo9We2Mus2F
 SOqh2/Fjn5EdhUO8tON9GS76mzRgj1hEB74NTpWtDrQ1DesVIaA0SYopO
 gT9SmLgrsmFSGvsqLBRIdqUYi4Jof/oIVOVaBH0DUGgkp5QFWjwkRtc5d
 aycTFTlcJACsjhMyIy5o8vXO4gcAtfXc1/p+OIi+hTp8DmWXuJV5GEdsA Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="292521473"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="292521473"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 22:39:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="665219565"
Received: from sagar-optiplex-5060.iind.intel.com ([10.145.162.76])
 by fmsmga008.fm.intel.com with ESMTP; 10 Aug 2022 22:39:00 -0700
From: S A Muqthyar Ahmed <syed.abdul.muqthyar.ahmed@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 11:09:47 +0530
Message-Id: <20220811053947.3251999-1-syed.abdul.muqthyar.ahmed@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/gem: reschedule relocations to
 avoid timeouts
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

Platforms with greater system memory will need to relocate more entries.
It may lead to soft hangs.

Adding cond_resched() for rescheduling process to avoid timeouts.

Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: S A Muqthyar Ahmed <syed.abdul.muqthyar.ahmed@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index b7b2c14fd9e15e..25ab4b9e20049e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1551,6 +1551,11 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 			}
 		} while (r++, --count);
 		urelocs += ARRAY_SIZE(stack);
+
+		if (need_resched()) {
+			reloc_cache_reset(&eb->reloc_cache, eb);
+			cond_resched();
+		}
 	} while (remain);
 out:
 	reloc_cache_reset(&eb->reloc_cache, eb);
@@ -1564,18 +1569,19 @@ eb_relocate_vma_slow(struct i915_execbuffer *eb, struct eb_vma *ev)
 	struct drm_i915_gem_relocation_entry *relocs =
 		u64_to_ptr(typeof(*relocs), entry->relocs_ptr);
 	unsigned int i;
-	int err;
+	int err = 0;
 
-	for (i = 0; i < entry->relocation_count; i++) {
+	for (i = 0; !err && i < entry->relocation_count; i++) {
 		u64 offset = eb_relocate_entry(eb, ev, &relocs[i]);
 
-		if ((s64)offset < 0) {
+		if ((s64)offset < 0)
 			err = (int)offset;
-			goto err;
+
+		if (need_resched()) {
+			reloc_cache_reset(&eb->reloc_cache, eb);
+			cond_resched();
 		}
 	}
-	err = 0;
-err:
 	reloc_cache_reset(&eb->reloc_cache, eb);
 	return err;
 }
-- 
2.25.1

