Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDetAPQSwWnVQQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 11:16:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A77F02EFD6D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 11:16:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 468C410E109;
	Mon, 23 Mar 2026 10:16:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f5icaDsZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B28B10E109
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2026 10:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774260977; x=1805796977;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=b3XU75ak77tpHgOy8aBgMzKxbY4RCdmwjI109qNqPJc=;
 b=f5icaDsZcHfGdMV1D9EglvEDj+EJ7TOVg7xwAVwfe5ulB4blRHBZEWLh
 SkVgsRCsgYwRQ6mV/UnvG6ZfvDhEk9Ki/LBbnLkOTBb75E2FKIDBvBOH/
 g7KNkrzeVXvrJYAQy3+80r42Z+nSH7z1hLxT6lFTafs2j/2i7XJk0W95k
 41Nhe002+oLDmdcaeITuax/bpi3Rnv7PN2uEbS0aRyPnhSrtKfQRVUlsU
 65vQz6nSNQ5A3gbEF03mevJlrqJp8O3OHXJSKWM4O7oX2TOlMuBOCToms
 1dgijge0OC5jaKU02jjqQeII9Nn8eQ59t2FsWA8tBEQXYdMkCXuPZMgjK Q==;
X-CSE-ConnectionGUID: CuqDV/MfTOG3LmN/8me0qw==
X-CSE-MsgGUID: JEkvYbY3ToG2icSuEddtcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="77865050"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="77865050"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 03:16:17 -0700
X-CSE-ConnectionGUID: CUp94niaT1CvsGQXXwq2OA==
X-CSE-MsgGUID: uiricdx6R0iZh+Bx5OMfkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="219630571"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.55])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 03:16:16 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/selftests: Nuke live_forcewake_domains selftest
Date: Mon, 23 Mar 2026 12:16:08 +0200
Message-ID: <20260323101609.8391-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260323101609.8391-1-ville.syrjala@linux.intel.com>
References: <20260323101609.8391-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A77F02EFD6D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The live_forcewake_domains selftest doesn't really test anything
particularly sensible. It only runs on platforms that have RMbus
unclaimer error detection, but that only catches display registers
which the test doesn't even access.

I suppose if we really wanted to we might try to make the test
exercise the GT FIFO instead by writing GT registers as fast
as possible, and then checking GTFIFODBG to see if the FIFO has
overflowed. But dunno if there's much point in that. I think a
GT FIFO overflow might even be fatal to the machine.

So in its current for the test doesn't really make sense,
and it's in the way of moving all the RMbus noclaim stuff
to the display driver side. So let's just get rid of it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/selftests/intel_uncore.c | 62 -------------------
 1 file changed, 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
index 507bf42a1aaf..514d2200751b 100644
--- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
+++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
@@ -272,67 +272,6 @@ static int live_forcewake_ops(void *arg)
 	return err;
 }
 
-static int live_forcewake_domains(void *arg)
-{
-#define FW_RANGE 0x40000
-	struct intel_gt *gt = arg;
-	struct intel_uncore *uncore = gt->uncore;
-	struct drm_i915_private *i915 = gt->i915;
-	struct intel_display *display = i915->display;
-	unsigned long *valid;
-	u32 offset;
-	int err;
-
-	if (!HAS_FPGA_DBG_UNCLAIMED(display) &&
-	    !IS_VALLEYVIEW(i915) &&
-	    !IS_CHERRYVIEW(i915))
-		return 0;
-
-	/*
-	 * This test may lockup the machine or cause GPU hangs afterwards.
-	 */
-	if (!IS_ENABLED(CONFIG_DRM_I915_SELFTEST_BROKEN))
-		return 0;
-
-	valid = bitmap_zalloc(FW_RANGE, GFP_KERNEL);
-	if (!valid)
-		return -ENOMEM;
-
-	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
-
-	check_for_unclaimed_mmio(uncore);
-	for (offset = 0; offset < FW_RANGE; offset += 4) {
-		i915_reg_t reg = { offset };
-
-		intel_uncore_posting_read_fw(uncore, reg);
-		if (!check_for_unclaimed_mmio(uncore))
-			set_bit(offset, valid);
-	}
-
-	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
-
-	err = 0;
-	for_each_set_bit(offset, valid, FW_RANGE) {
-		i915_reg_t reg = { offset };
-
-		iosf_mbi_punit_acquire();
-		intel_uncore_forcewake_reset(uncore);
-		iosf_mbi_punit_release();
-
-		check_for_unclaimed_mmio(uncore);
-
-		intel_uncore_posting_read_fw(uncore, reg);
-		if (check_for_unclaimed_mmio(uncore)) {
-			pr_err("Unclaimed mmio read to register 0x%04x\n",
-			       offset);
-			err = -EINVAL;
-		}
-	}
-
-	bitmap_free(valid);
-	return err;
-}
-
 static int live_fw_table(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -348,7 +287,6 @@ int intel_uncore_live_selftests(struct drm_i915_private *i915)
 	static const struct i915_subtest tests[] = {
 		SUBTEST(live_fw_table),
 		SUBTEST(live_forcewake_ops),
-		SUBTEST(live_forcewake_domains),
 	};
 
 	return intel_gt_live_subtests(tests, to_gt(i915));
-- 
2.52.0

