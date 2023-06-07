Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3348B7267F2
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 20:06:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9396C10E064;
	Wed,  7 Jun 2023 18:06:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9391010E064;
 Wed,  7 Jun 2023 18:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686161189; x=1717697189;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LhoYgHsMbwnbB7t/20Fifza2YAGaj0JQmAGM8MpwHsI=;
 b=B0s2nUBzfqJoLk9dGFncE/GP/rjPFGX4pWO53hsmPkBmhCUVbmn/6YlU
 iQxP1tyIl4Q661kToqupSsm+VR1YZu6o/pPbiORtEz2OpE9GQlSd0w1dl
 pOH51Oyu2DK7Hi6z+v8u1oocIe+Y4ap7iZY6z7bpiBobuzWdi6/q08JCQ
 zMdxOkeAiYrG+3Q076GSUkdCJ2UUawGd7qoMD23z/dl4mbc0Um/MtZTxR
 TKF1ulC6AOW3eoYoqw7a/2pazcvnYFR8Nc21ic3YmnEzYAZKVQQkSjsuN
 4FHzkbNFLbuB8Ow0srIYwAzaU9qIM/jOdMKvKS5+a5lUZRWbGEgYhYlGn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="337429061"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="337429061"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 11:06:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="883896531"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="883896531"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga005.jf.intel.com with ESMTP; 07 Jun 2023 11:06:28 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Wed,  7 Jun 2023 11:06:14 -0700
Message-Id: <20230607180614.333109-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t] tests/gem_ctx_persistence: Skip hang
 subtest with GuC
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

Hang scenarios are not supported with persistent contexts
when GuC submission is enabled.

Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/i915/gem_ctx_persistence.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
index df9b1c491..d2558354e 100644
--- a/tests/i915/gem_ctx_persistence.c
+++ b/tests/i915/gem_ctx_persistence.c
@@ -577,6 +577,8 @@ static void test_nohangcheck_hang(int i915, const intel_ctx_cfg_t *cfg)
 	int testable_engines = 0;
 	int dir;
 
+	igt_require(!gem_using_guc_submission(i915));
+
 	cleanup(i915);
 
 	/*
-- 
2.38.1

