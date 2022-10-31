Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A60E6613886
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 14:57:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A8FB10E2BD;
	Mon, 31 Oct 2022 13:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0217810E2B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 13:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667224639; x=1698760639;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rptMwfEnLpR6xtAkY533QIEjk+Ka1jhGR8Z10llMwEk=;
 b=WCr8X9+Oq2kRuZQEwV65j+wPHIpzNjsXApSBJw4ef+JNvMLtr1mF3Br0
 Ah6KTmtYJqc9zChNRllNI3rDuglRDD+SlkJWHxnplFa1vttqXJymwY5z4
 BkDM9B1+Gf+gbIBiwhRbrQVLF7/MLjfNHcrb7kCP+DSc/uKFXPFwRAXcw
 hCc3RB0fmp22CY41vWnstEKBEfytaD0k6ZQGKGmzoLyQ3BDPRpfyHoiko
 hEAtGuw9hHXGdbQ6bT2z+SZcDL/bgAcgXXgM2ISKkT1MK1Dvs/KXrHJjt
 U3sysQGDHFkqH8ss0PCDqsteqPghLFbfZqdc4O6uTqZPIKIbIzCfhJ/26 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="307624835"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="307624835"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 06:57:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="633532177"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="633532177"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 31 Oct 2022 06:57:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Oct 2022 15:57:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Oct 2022 15:57:01 +0200
Message-Id: <20221031135703.14670-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
References: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/selftests: Run MI_BB perf
 selftests on SNB
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

SNB does have the RING_TIMESTAMP register on the RCS engine.
Run the MI_BB perf tests on it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
index 1b75f478d1b8..b11152f87627 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
@@ -125,7 +125,7 @@ static int perf_mi_bb_start(void *arg)
 	enum intel_engine_id id;
 	int err = 0;
 
-	if (GRAPHICS_VER(gt->i915) < 7) /* for per-engine CS_TIMESTAMP */
+	if (GRAPHICS_VER(gt->i915) < 6) /* for per-engine CS_TIMESTAMP */
 		return 0;
 
 	perf_begin(gt);
@@ -135,6 +135,9 @@ static int perf_mi_bb_start(void *arg)
 		u32 cycles[COUNT];
 		int i;
 
+		if (GRAPHICS_VER(engine->i915) < 7 && engine->id != RCS0)
+			continue;
+
 		intel_engine_pm_get(engine);
 
 		batch = create_empty_batch(ce);
@@ -249,7 +252,7 @@ static int perf_mi_noop(void *arg)
 	enum intel_engine_id id;
 	int err = 0;
 
-	if (GRAPHICS_VER(gt->i915) < 7) /* for per-engine CS_TIMESTAMP */
+	if (GRAPHICS_VER(gt->i915) < 6) /* for per-engine CS_TIMESTAMP */
 		return 0;
 
 	perf_begin(gt);
@@ -259,6 +262,9 @@ static int perf_mi_noop(void *arg)
 		u32 cycles[COUNT];
 		int i;
 
+		if (GRAPHICS_VER(engine->i915) < 7 && engine->id != RCS0)
+			continue;
+
 		intel_engine_pm_get(engine);
 
 		base = create_empty_batch(ce);
-- 
2.37.4

