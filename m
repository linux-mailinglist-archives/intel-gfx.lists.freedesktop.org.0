Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B543BDE87B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 14:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2E0A10E7AE;
	Wed, 15 Oct 2025 12:44:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="caLq/a4N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1FA810E7AE;
 Wed, 15 Oct 2025 12:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760532292; x=1792068292;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OnNWxmetnBfs7kn2hTh1ZjZ9ElCqksnwxBP4woWcaiQ=;
 b=caLq/a4Nr8EVVFTEGmjS43ynoBBf+v5rN0fgn9lHx31o5H3RnO6T12AF
 67T4XvILsHyiQjTTQX8I4C97eQQdL1b9nAY0H9Q1hyK9lnonGOqr+f2OP
 l7nr7i9XNAGAeCkJD7VhN2VYAtLANbXTfQZ4YHZJu6FsITGCrNnG/9sVb
 aA3yAWyn5rClfh03VaG4MN/E37m/hDqIba3W2lhEJM9wNHDfahUfllqvy
 +DVmwxxvzsGZH+Fs7uWSMDnPs5K5iiesJActvr37pdY1Xu5MJb+UuJ8d3
 uKpU9pyf0z24sN7M1jl6/R2yrXqEaso9/k7DY6Hig2aVoGfHINUfBJt8X Q==;
X-CSE-ConnectionGUID: r5seAnR2SVmyWlE8x3kDSQ==
X-CSE-MsgGUID: J6szaevQS3W2H4VHt+u/7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62601569"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62601569"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:44:52 -0700
X-CSE-ConnectionGUID: 3fULrNVqQaCvtmE3C/z5nw==
X-CSE-MsgGUID: ZuNXqPs/TBKM4sgc6+W1qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181384961"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.92])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:44:51 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH i-g-t v3 6/6] tests/gem_eio: Reduce debug info on dmesg from
 kms subtest
Date: Wed, 15 Oct 2025 14:39:24 +0200
Message-ID: <20251015124419.66460-14-janusz.krzysztofik@linux.intel.com>
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

CI enables drm_debug flags that result in significant amount of display
related messages appearing in dmesg.  In case of kms subtest, which runs
a loop of reset-resume cycles while touching a display in background, the
amount of dsiplay related debug messages may lead to exhaustion of per
test disk space limit.  Disable those messages while a display helper
spawned by that subtest is running.

Suggested-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index be071ba8a0..9389efb968 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -1022,6 +1022,9 @@ static void display_helper(igt_display_t *dpy, int *done)
 	const int commit = dpy->is_atomic ? COMMIT_ATOMIC : COMMIT_LEGACY;
 	struct igt_fb fb = {};
 
+	igt_install_exit_handler(igt_drm_debug_mask_reset_exit_handler);
+	igt_drm_debug_mask_update(DRM_UT_DRIVER);
+
 	while (!READ_ONCE(*done)) {
 		drmModeModeInfoPtr mode;
 		igt_plane_t *primary;
-- 
2.51.0

