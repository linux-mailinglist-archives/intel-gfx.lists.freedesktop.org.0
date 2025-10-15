Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 949DABDE872
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 14:44:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0304410E7B3;
	Wed, 15 Oct 2025 12:44:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Aq5aF96u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D580010E7B2;
 Wed, 15 Oct 2025 12:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760532286; x=1792068286;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WV4/EitkeZppcYu9qAoxzLKXz5RGfQjhmupf2igsEwM=;
 b=Aq5aF96uI26teiL4RjG+2gZ8OxMrceL4IPyrIMGCSa2m34BgeXi+Dam0
 NFcPueC1pZ9Ka7rArsYwhJnYmWxJTN2LZ4jkndx8faT2FFFdTtSkOEdnV
 QKWWMqeoot6z2FoEsPGaKn1Jx8fYHllkDFK7eNGHerGF3yqDCUYBwVO2t
 3C8g082OjTGn/KKwEqqmZ/HNWLyj/iNmcK8w7IlFTie2CCfkaCmniukQn
 UlPyCddVgjfKBBkVkT2BG+BW5kpw7tzH0tlzR9Dz5a8eNsZNanBIVghSc
 vNVFaODEuqCmMBP1FZ/Keh2vaXOjcdkiDsWrwS1C3pHCTMl6IpTvq1v4w A==;
X-CSE-ConnectionGUID: HiWxPPukTuSbscG31ataFQ==
X-CSE-MsgGUID: qhYDAoTFQBSZ/tI3dlW3wQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62601560"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62601560"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:44:45 -0700
X-CSE-ConnectionGUID: R5XVKElKSoCt0PKqR54Leg==
X-CSE-MsgGUID: vF5p4gNlROenyA+O0iLaMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181384945"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.92])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:44:44 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH i-g-t v3 3/6] tests/gem_eio: Adjust for slow resume after
 reset on Gen12+
Date: Wed, 15 Oct 2025 14:39:21 +0200
Message-ID: <20251015124419.66460-11-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251015124419.66460-8-janusz.krzysztofik@linux.intel.com>
References: <20251015124419.66460-8-janusz.krzysztofik@linux.intel.com>
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

Upstream CI results from kms, reset-stress and unwedge-stress subtests of
igt@gem_eio show GPU resume after reset noticeably slower when running on
some Gen12+ platforms.  Since we think that's hardware specific and there
is nothing we can do about that at the i915 driver level, relax the test
expectations for Gen12+, similar to Gen5-.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index 3b7a6bd209..20f3c16ea7 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -419,7 +419,7 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
 	 * modeset back on) around resets, so may take a lot longer.
 	 */
 	limit = 250e6;
-	if (intel_gen(intel_get_drm_devid(fd)) < 5)
+	if (intel_gen(intel_get_drm_devid(fd)) < 5 || intel_gen(intel_get_drm_devid(fd)) > 11)
 		limit += 300e6; /* guestimate for 2x worstcase modeset */
 
 	med = igt_stats_get_median(st);
-- 
2.51.0

