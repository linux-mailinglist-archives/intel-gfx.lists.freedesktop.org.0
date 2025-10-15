Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A88BDE875
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 14:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF10410E7AC;
	Wed, 15 Oct 2025 12:44:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CsvzkhQR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78ADF10E7AC;
 Wed, 15 Oct 2025 12:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760532288; x=1792068288;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OfhyS6HZOB1qFQVRMiRDu644n9z+3W+cIfeEwwGWbE0=;
 b=CsvzkhQRs9ebXdztb0Vozr+wzDEAk0KSp9u/BzgB3ExB9Ws6kDwCYB6h
 L01KUbg4pksLwoC/wGyOFKZDuI1JDa6dzNcb5sIKIAJu+Uw3DePgV+Hd8
 PC+SRPtrXiwfdFBDe98rwvA4C183caQ3aQStUqTQwLxdyyus/85oHMFvj
 jpuhqM5C0iGazLnSLrfDKu7qs+8skj38iujRvN8obpYdCX0bQXVDFYIXb
 pqwb94JaOB0qL1QTsilEWOrZhhHZb6aOritotgtSyk3DFqu4Qbm5shI9q
 lsrXPGG7mBHLvwLnVLAUHK8zPfw4FheocVd9B2c/T1O7Nsv5nkCtHiTw4 g==;
X-CSE-ConnectionGUID: yLq/QSqKRteJND/yWEmiRg==
X-CSE-MsgGUID: UgA2fXktSHqDUN9Oa66aVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62601562"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62601562"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:44:48 -0700
X-CSE-ConnectionGUID: rEngtwSQT9yHactux3MqDQ==
X-CSE-MsgGUID: 5C/wNIA5Qqa4EdQeLpnU/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181384949"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.92])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 05:44:46 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH i-g-t v3 4/6] tests/gem_eio: Iterate over physical rings in
 stress subtests
Date: Wed, 15 Oct 2025 14:39:22 +0200
Message-ID: <20251015124419.66460-12-janusz.krzysztofik@linux.intel.com>
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

To avoid igt_runner timing out stress subtests, limit the number of
exercised rings by iterating over physical rings and skipping other.

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_eio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
index 20f3c16ea7..05c54514ac 100644
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

