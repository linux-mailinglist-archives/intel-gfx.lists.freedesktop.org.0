Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A0F69CC08
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 14:25:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9479010E684;
	Mon, 20 Feb 2023 13:25:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89BBF10E0A6;
 Mon, 20 Feb 2023 13:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676899529; x=1708435529;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aIveYM7iOans68MaVh1HkwZNceLWEymtvS0UFWDMDsA=;
 b=JCuvRw5dx+++CQy4lqyAHe8/I6iG/orttTJoabhNw5tYZ8U1164T5AIX
 PtJhhZbE0X0SL0NPSrh6qWXBei6cLoLzfqET9PyCdx36lxuo4BC2N2X9S
 RibQjvGDjtF3yhqhqMPhwWVWwlCDaYI/wr4z2M23N0OBIOrfMLcsON++g
 OdSpjsOWtQ4qQZYP1eC+i0XOypghV3o9Ml/iiaAQuPu98PRSKX+Ju/1QH
 hZrfzrRy8fzHitRl2tyvSDMQUQY+nXU/8d2MQWRKEkB/9J1GWToYzg2VF
 SPIZQEb4PzECbjFEPP8FShwmy2w8B0NAXLDJj9Yf7BC8jlnRlGdJBWXbH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="320524035"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="320524035"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 05:25:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="1000266971"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="1000266971"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.24.158])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 05:25:26 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Feb 2023 14:24:45 +0100
Message-Id: <20230220132445.32129-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/gem_barrier_race: Extend support
 over compute engines
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This test can work not only on render engines, as its current code
suggests, but also on compute class engines.  Add them to the set of
engine classes supported by the test, in case a future platform has only
those and no RCS available.

Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/i915/gem_barrier_race.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_barrier_race.c b/tests/i915/gem_barrier_race.c
index 484fef85ac..053fa2069e 100644
--- a/tests/i915/gem_barrier_race.c
+++ b/tests/i915/gem_barrier_race.c
@@ -142,7 +142,8 @@ igt_main
 		struct intel_execution_engine2 *e;
 
 		for_each_physical_engine(fd, e) {
-			if (e->class != I915_ENGINE_CLASS_RENDER)
+			if (e->class != I915_ENGINE_CLASS_RENDER &&
+			    e->class != I915_ENGINE_CLASS_COMPUTE)
 				continue;
 
 			igt_dynamic(e->name)
-- 
2.25.1

