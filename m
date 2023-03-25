Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9486C89AA
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Mar 2023 01:33:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3441A10E049;
	Sat, 25 Mar 2023 00:33:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FF3110E049;
 Sat, 25 Mar 2023 00:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679704384; x=1711240384;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RZ1vXpxFNnyC7bD+6iWQl9D/6zkypuU/TAptFly3Rn8=;
 b=Xy41U2R9FBa4T6dbuIryPnf2s1syF9sjAlFk35N2NPOP38E4lO6AQFHW
 jdCWwhtfPLDlgWEh3kdEuBA/FCuV/W/eObq5KpDVA9uypwlA1SmuqEBcX
 GJhEaIFCHhG9FQRV41rPQiYAmXklsbmSCrjGhha5Kns8J9yjPqMS5TkzK
 aCVhiJDzXPUkNYbjbUxgaHB2y1jGuBVGpAZl/TeQ+r7BmQxe800AeawXJ
 waQmb8+XxYpxpMqxPf14cFuqKls/vPk9AdwE9c1cBFoTbfrguGmt4cKFO
 SELXy7FEg9m7Ee3HuXpoOtIgJG2K1akLEQq5cK9Kw7uEojeRAPc1fHGLh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="319570984"
X-IronPort-AV: E=Sophos;i="5.98,289,1673942400"; d="scan'208";a="319570984"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 17:33:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="857062416"
X-IronPort-AV: E=Sophos;i="5.98,289,1673942400"; d="scan'208";a="857062416"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga005.jf.intel.com with ESMTP; 24 Mar 2023 17:33:03 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri, 24 Mar 2023 17:34:42 -0700
Message-Id: <20230325003442.1767568-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/xe_guc_pc: Restore max freq first
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

When min/max are both at RPn, restoring min back to 300
will not work. Max needs to be increased first. Also, add
igt_assert() here, which would have caught the issue.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/xe/xe_guc_pc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tests/xe/xe_guc_pc.c b/tests/xe/xe_guc_pc.c
index 60c93288..43bf6f48 100644
--- a/tests/xe/xe_guc_pc.c
+++ b/tests/xe/xe_guc_pc.c
@@ -489,8 +489,8 @@ igt_main
 
 	igt_fixture {
 		xe_for_each_gt(fd, gt) {
-			set_freq(sysfs, gt, "min", stash_min);
-			set_freq(sysfs, gt, "max", stash_max);
+			igt_assert(set_freq(sysfs, gt, "max", stash_max) > 0);
+			igt_assert(set_freq(sysfs, gt, "min", stash_min) > 0);
 		}
 		close(sysfs);
 		xe_device_put(fd);
-- 
2.38.1

