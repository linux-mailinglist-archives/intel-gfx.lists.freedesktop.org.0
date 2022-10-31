Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA3F613883
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 14:57:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67F2110E2B7;
	Mon, 31 Oct 2022 13:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2701210E2B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 13:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667224645; x=1698760645;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hFNQY5RUkkWEpTg1rDC8o3CeFD/veEPj7J6IkuihPHg=;
 b=U69dr26+koIUC+4f07941dE43Z8osY8Cq08mRnQ4HG3hZG7zO0Lj8CH8
 qz0TT5pqegTQXnltMeplrpryFRbrVG/yUedp+HiCoDkC4NHfycUJz4t2S
 PL7DdAhjZV2huFfTG9uzfFe4ZFBfYCUcprfUTQ59SQneQi3ISYVmcfB30
 U5H6NHZVN0MJqbXJiwVicO96WSr8yHvlnoR2BqSMldkzRQDVUzbqhbXMF
 ZrWuIFOWeWVCGEfqoyqO3BRPpNpcv6bib1ZAWcqHWe6drrNiic8EFtlWI
 XN+JQEfMADTjKt6b1WeDclXWJ3NuItXthIxSHiFsJ1WC/vctP6oi6rb7X A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="307624863"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="307624863"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 06:57:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="633532204"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="633532204"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 31 Oct 2022 06:57:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Oct 2022 15:57:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Oct 2022 15:57:03 +0200
Message-Id: <20221031135703.14670-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
References: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/selftests: Run the perf MI_BB
 tests on gen4/5
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that we know the ring timestamp frequency on gen4/5 we
can run the perf tests that depend on sampling the timestamp.

On g4x/ilk we must read the udw of the 64bit timestamp
register. Details in {g4x,gen5)_read_clock_frequency().

When executing the read via the CS i965 doesn't seem to need
the double read trick that CPU mmio reads need.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
index b11152f87627..881b64f3e7b9 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
@@ -39,6 +39,16 @@ static int perf_end(struct intel_gt *gt)
 	return igt_flush_test(gt->i915);
 }
 
+static i915_reg_t timestamp_reg(struct intel_engine_cs *engine)
+{
+	struct drm_i915_private *i915 = engine->i915;
+
+	if (GRAPHICS_VER(i915) == 5 || IS_G4X(i915))
+		return RING_TIMESTAMP_UDW(engine->mmio_base);
+	else
+		return RING_TIMESTAMP(engine->mmio_base);
+}
+
 static int write_timestamp(struct i915_request *rq, int slot)
 {
 	struct intel_timeline *tl =
@@ -55,7 +65,7 @@ static int write_timestamp(struct i915_request *rq, int slot)
 	if (GRAPHICS_VER(rq->engine->i915) >= 8)
 		cmd++;
 	*cs++ = cmd;
-	*cs++ = i915_mmio_reg_offset(RING_TIMESTAMP(rq->engine->mmio_base));
+	*cs++ = i915_mmio_reg_offset(timestamp_reg(rq->engine));
 	*cs++ = tl->hwsp_offset + slot * sizeof(u32);
 	*cs++ = 0;
 
@@ -125,7 +135,7 @@ static int perf_mi_bb_start(void *arg)
 	enum intel_engine_id id;
 	int err = 0;
 
-	if (GRAPHICS_VER(gt->i915) < 6) /* for per-engine CS_TIMESTAMP */
+	if (GRAPHICS_VER(gt->i915) < 4) /* Any CS_TIMESTAMP? */
 		return 0;
 
 	perf_begin(gt);
@@ -252,7 +262,7 @@ static int perf_mi_noop(void *arg)
 	enum intel_engine_id id;
 	int err = 0;
 
-	if (GRAPHICS_VER(gt->i915) < 6) /* for per-engine CS_TIMESTAMP */
+	if (GRAPHICS_VER(gt->i915) < 4) /* Any CS_TIMESTAMP? */
 		return 0;
 
 	perf_begin(gt);
-- 
2.37.4

