Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FC4232921
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 02:48:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22E496E824;
	Thu, 30 Jul 2020 00:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979DD6E821
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 00:48:28 +0000 (UTC)
IronPort-SDR: B0F9i1GcdZw3EW8ZjykjvBNp9aL5gEM9VcUfAs9j9h7NM9AOITCFQg73aOupsSI/EZrMg0TDd3
 Qdg5IZioJ/3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="152751068"
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="152751068"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 17:48:27 -0700
IronPort-SDR: Y69vzDztj3/WlrAxJxjTDXHEtE0CXnLWlA2tvfwHjREXjnBFEbAWJbjBOJKv7ltv8RIjE2/rYD
 bo85UvPGmSDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="274032922"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga008.fm.intel.com with ESMTP; 29 Jul 2020 17:48:27 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jul 2020 17:48:22 -0700
Message-Id: <20200730004826.8415-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730004826.8415-1-umesh.nerlige.ramappa@intel.com>
References: <20200730004826.8415-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/selftests: Clear flags when using
 wa->reg for comparison
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The flags field of the wa->reg has whitelist settings as opposed to the
value returned from i915_mmio_reg_offset(reg). Clear the flags before
compare.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_workarounds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index febc9e6692ba..3753f65f62b1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -918,6 +918,9 @@ static bool find_reg(struct drm_i915_private *i915,
 {
 	u32 offset = i915_mmio_reg_offset(reg);
 
+	/* Clear non priv flags */
+	offset &= RING_FORCE_TO_NONPRIV_ADDRESS_MASK;
+
 	while (count--) {
 		if (INTEL_INFO(i915)->gen_mask & tbl->gen_mask &&
 		    i915_mmio_reg_offset(tbl->reg) == offset)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
