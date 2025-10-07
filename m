Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 703CCBC13E9
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 13:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F373F10E66F;
	Tue,  7 Oct 2025 11:40:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JvB3LhVT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A236A10E66F;
 Tue,  7 Oct 2025 11:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759837221; x=1791373221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PZAZ4lKmoPNLBv2/0U2wK0ayn44vlvGVTJHAWvkHecc=;
 b=JvB3LhVT8FgDdFjhRksDBxC3Dd6UxWaff4OCMgDr4jTbn0mHnZyrcRTX
 OtmBrtagdCLuQWL4KzVUDgZXNJJ+N7Ogl/zPqVmsMHTIjzVkjatuD+sXQ
 KcrL1WzT+45TcRd13M2mlJWmoa1nYV0/vU8Yelt95TqMS7vRLLzdk5UXx
 K5QOciGYlX8hBHKpntcA8CEVveNsClXxjW8WYHbTtovEdbsVfZ/+pn6tJ
 swSzTm0V9q43TZR9joch3UyFJTV0wxqCKBWXWFxaS4XPwILhj/jflhuBz
 v7j/QfgHefVtR9LA0ul3+TCDVgGrNU5e3UfVvMMhwtTdSMARuKIm7k/Rh A==;
X-CSE-ConnectionGUID: qrHF6u1cSeWSCF+GxELm4Q==
X-CSE-MsgGUID: oDPC5VprQhWxZCFncTEN6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73442917"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="73442917"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 04:40:21 -0700
X-CSE-ConnectionGUID: crz4NKttQeujKCfbCwfbFw==
X-CSE-MsgGUID: 4vbFzkwjTvSDGkZsOgwmJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="184161250"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.245.225])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 04:40:16 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH i-g-t v2 4/5] tests/gem_eio: Iterate over physical rings in
 stress subtests
Date: Tue,  7 Oct 2025 13:38:27 +0200
Message-ID: <20251007113910.3336564-11-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251007113910.3336564-7-janusz.krzysztofik@linux.intel.com>
References: <20251007113910.3336564-7-janusz.krzysztofik@linux.intel.com>
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

To avoid igt_runner timing out stress subtests, limit the number of
exercised rings by iterating over physical rings and skipping other.

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index da6171aee8..cbbf78b932 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -996,7 +996,7 @@ static void test_reset_stress(int fd, unsigned int flags)
 	const intel_ctx_t *ctx0 = context_create_safe(fd);
 	uint64_t ahnd = get_reloc_ahnd(fd, ctx0->id);
 
-	for_each_ring(e, fd) {
+	for_each_physical_ring(e, fd) {
 		struct intel_execution_engine2 engine;
 
 		engine = gem_eb_flags_to_engine(eb_ring(e));
-- 
2.51.0

