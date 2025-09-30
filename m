Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2831BACF25
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Sep 2025 14:54:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8324310E5B2;
	Tue, 30 Sep 2025 12:54:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WVv/2Whf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA8B910E5B2;
 Tue, 30 Sep 2025 12:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759236895; x=1790772895;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kn3G+qgMh4TPEaWr/z89w7sCtrDsNfN3lTrUgH3LsAI=;
 b=WVv/2Whfc2Vg6EzdlXaWwdWxnbckz44vCyyEmVW7+MdQAQh7Qzhn4Ros
 Lluc3iGne074cYDSfcyNdhS401PykpUOz+6Fvhi3CfTYSHDGwHs7IUG9c
 QiCaggVdYrpk5e2UUadwk2jO9W1J4nZsCkZ1rPD9mNFG1NEybceneNy/p
 1eJfPpJRSv7Zi0Ns3sDOCW+72mzq9QrU4eN7a0D4XnN0v3TyF2gAXHFuT
 XBbQkxWOqRRfW5YNXUnp8FqjqjjRw6Uk2//8xA8637TyEnr+ttMwywGzR
 2tEalRJD/Oumt5cZPWaAEIMOyVMAvq9/9Hz7NbKvz5f38SrJ1FM0XccbP Q==;
X-CSE-ConnectionGUID: UzRpA5zZS1q8HGg6if9cew==
X-CSE-MsgGUID: ECJ3vrUbRIyJqwGF86ZfUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="86934588"
X-IronPort-AV: E=Sophos;i="6.18,304,1751266800"; d="scan'208";a="86934588"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 05:54:55 -0700
X-CSE-ConnectionGUID: k61IelMvSwOBSMyyc78Ogw==
X-CSE-MsgGUID: TOi5D/mBTrynDLO7zDnoVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,304,1751266800"; d="scan'208";a="209466895"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.244.151])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 05:54:53 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 3/3] tests/gem_eio: Iterate over physical rings in
 stress subtests
Date: Tue, 30 Sep 2025 14:49:03 +0200
Message-ID: <20250930125430.2323555-8-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250930125430.2323555-5-janusz.krzysztofik@linux.intel.com>
References: <20250930125430.2323555-5-janusz.krzysztofik@linux.intel.com>
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

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index 5b0925a8c6..cbfed99b61 100644
--- a/tests/intel/gem_eio.c
+++ b/tests/intel/gem_eio.c
@@ -997,7 +997,7 @@ static void test_reset_stress(int fd, unsigned int flags)
 	const intel_ctx_t *ctx0 = context_create_safe(fd);
 	uint64_t ahnd = get_reloc_ahnd(fd, ctx0->id);
 
-	for_each_ring(e, fd) {
+	for_each_physical_ring(e, fd) {
 		struct intel_execution_engine2 engine;
 
 		engine = gem_eb_flags_to_engine(eb_ring(e));
-- 
2.51.0

