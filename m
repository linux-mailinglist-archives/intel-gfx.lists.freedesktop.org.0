Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A58C94E6511
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 15:26:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFEE610E8B9;
	Thu, 24 Mar 2022 14:26:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0B2610E8C0;
 Thu, 24 Mar 2022 14:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648132006; x=1679668006;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/p5Aa6XbfnzxcI3FoX1qobFC2tWz6303M5novF6uXho=;
 b=b4FMFKhxEDBvbeQJnEAp6mSOWApn955H1uukZ8h/JJewgAeP2R9obolQ
 qEiJjEhFbXUWmzGHGMHs2zjjJ7S+1gtB/Npw/1Ef+9qr8a5F4wMDjsnvx
 rD5MISSchF08Q3eHP8lT5kqriT/dxavGQI/los3YuaRbxfec6C2B3fU4M
 2xV+TwG4HyOX3NUyGP0aSvoWDBKlBPmSzGcEMV42FxlTP6hikOn6L1YI5
 u6lRinTEHTtJNW0bjuDPhaAtyrZ6+x17uv3kokZoXVsfIqNxPOrZAllcs
 mJbYiMEAmdomJY7jIDs72pihg6lDOdfMQjnXZGem22Gt25bHzPg8OfKli g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="283249740"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="283249740"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 07:26:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="501409771"
Received: from smurkank-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.102])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 07:26:45 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 24 Mar 2022 14:26:21 +0000
Message-Id: <20220324142621.347452-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220324142621.347452-1-matthew.auld@intel.com>
References: <20220324142621.347452-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 4/4] tests/gem_lmem_swapping: reduce the
 timeout
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

300s is way too much for some BAT test. Drop it down to 45s.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 tests/i915/gem_lmem_swapping.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
index ad1c989c..6c47bff2 100644
--- a/tests/i915/gem_lmem_swapping.c
+++ b/tests/i915/gem_lmem_swapping.c
@@ -219,7 +219,7 @@ static void __do_evict(int i915,
 	 * For TEST_MULTI runs, make each object counts a loop to
 	 * avoid excessive run times.
 	 */
-	for (l = 0; l < params->loops && igt_seconds_elapsed(&t) < 300; l += num) {
+	for (l = 0; l < params->loops && igt_seconds_elapsed(&t) < 45; l += num) {
 		unsigned int idx = rand() % params->count;
 
 		num = params->flags & TEST_MULTI ? rand() % max_swap_in + 1 : 1;
-- 
2.34.1

