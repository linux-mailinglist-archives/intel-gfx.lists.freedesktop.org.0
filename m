Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E13637B3277
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 14:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6096F10E6FD;
	Fri, 29 Sep 2023 12:25:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7DE10E6FC;
 Fri, 29 Sep 2023 12:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695990326; x=1727526326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fHoj1IsAZty2I0ZpHfNKydpjxbohb3jClnXT5IDWVHs=;
 b=XpHUXgd5hmRpSfX2n9RMt7gOxMEHOaccq+uSuGgHfyCsD0rIKgwYzLTX
 DceglttEsvRjuUbuExVJ8OCYhUwPY89clHb+s6LN0Z3RKy80K0R+22aH8
 YIV/ptaVCkAVlsl/mKiVKstphtUaEfyqmZnihM5OYoM+ydD0DxKcQ9FJm
 zXqoal5rFUwOJM/8x1SeGJYdYJ9ydOoB0yI3d0tn3OopQ7ji0hl6IGW2p
 rNs4d9vT8LtQAytG9s7UC6WESoiHBqCQGp/Xye+RkjqOPiYSJIyOvpqnr
 Rbon/oJUb+ZEXomRVGhj68snQVR7XaGgHaQ+r3GaTgUJXJMgEAOJh0bNx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="446443760"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="446443760"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726577127"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="726577127"
Received: from pbrady4x-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.203.84])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:25 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 13:25:06 +0100
Message-Id: <20230929122517.349348-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
References: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 01/12] tests/i915/drm_fdinfo: Check engine
 info is supported
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

