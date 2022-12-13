Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8107364B505
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 13:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D7D910E1D7;
	Tue, 13 Dec 2022 12:20:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D717E10E1D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 12:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670934001; x=1702470001;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Rkxq2TLVsTgoGsEtd32xI3xlBGe6B2Hd1Brqtf7DhLE=;
 b=m4XguSkDDspa1xZp2HSs2fXZ+cMJaimEqH5tteAHhZdWLoO5AtFtXwLH
 F3umg9sbEY2KRqKJ0buSbjvzcmlDnSH9mjCXFSpMIrV7sATos/SKKHfcL
 iify1iyZg5oozFLUdf6TYqIbZuJ/fMLJEwPCIcs+cgLVtYTznszK0vht4
 AE+fpMvL6fErFjgGTSFHpgT8Jli1JMe7DlpUXOg500KKKlhfA9zaftPTB
 QATWcxfBEwKpIsFqH/dXzzGG2fKXNkk4OWHgQfLwttSgxt4XFM8nRvN5l
 tKnL+zQ7eFzvbUL8OsHVwTbqgf5TyJ6IATbi3GwJ5DJt1qzlUk4Jdj05F A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="305759466"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="305759466"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 04:20:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="679288442"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="679288442"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 04:19:59 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Dec 2022 13:19:50 +0100
Message-Id: <20221213121951.1515023-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: use proper helper in
 igt_vma_move_to_active_unlocked
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There is no need to use _i915_vma_move_to_active.
No functional changes.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
index 1379fbc1443126..71a3ca8a886506 100644
--- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
+++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
@@ -38,7 +38,7 @@ igt_vma_move_to_active_unlocked(struct i915_vma *vma, struct i915_request *rq,
 	int err;
 
 	i915_vma_lock(vma);
-	err = _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
+	err = i915_vma_move_to_active(vma, rq, flags);
 	i915_vma_unlock(vma);
 	return err;
 }
-- 
2.34.1

