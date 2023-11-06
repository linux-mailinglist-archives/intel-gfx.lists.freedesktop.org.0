Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A757E21C7
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 13:35:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2817D10E2DD;
	Mon,  6 Nov 2023 12:35:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59ECD10E06F;
 Mon,  6 Nov 2023 12:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699274125; x=1730810125;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/eJ95NmKrXbktgkStPToH//mEk/QTfimajFsZiM6qFg=;
 b=hF6H/UHXBbUbc+UvMUFGoE4OtPNoq94XrBUzBfTbYVpM0n8HNM4+HK6x
 e+7PZBB+XxVMp43Xa4EjXCeajRkV+ncim9aQFMqff9ojV1jcdQN9BwW2z
 9xhynEa+ocogcwW/tKMuFDaqO55VNcuFI0Wj+FonAqBB9gG/1DrEtkL9s
 /pAQqb7BLLnopTT7P82rxC7hmD/XMmAXQa5MIdsfJx19P43xQhlR9FKGk
 oxkhxkR7in/k57g271HXIjb7tUA8xg8NNZQJCm1mTTwS5ValMtEhmtUis
 NWf6ZfNdozyfr81ynosqpnOPdOurpjwWjTGt2IvQT/TDT55pqXqYB9US6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="393159536"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="393159536"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:35:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="712188448"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="712188448"
Received: from ajayshan-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.234.152])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:35:23 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 12:35:10 +0000
Message-Id: <20231106123518.588528-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/9] tests/i915/drm_fdinfo: Check engine info is
 supported
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

On top of checking that parsing works, check that there are some engines
present. This will be needed once the memory stats are added and so return
value from __igt_parse_drm_fdinfo() will then be possible to be greater
than zero even when engine stats are not supported.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 tests/intel/drm_fdinfo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tests/intel/drm_fdinfo.c b/tests/intel/drm_fdinfo.c
index aca19db50680..344c44dce78b 100644
--- a/tests/intel/drm_fdinfo.c
+++ b/tests/intel/drm_fdinfo.c
@@ -737,6 +737,7 @@ igt_main
 
 		igt_require_gem(i915);
 		igt_require(igt_parse_drm_fdinfo(i915, &info, NULL, 0, NULL, 0));
+		igt_require(info.num_engines);
 
 		ctx = intel_ctx_create_all_physical(i915);
 
-- 
2.39.2

