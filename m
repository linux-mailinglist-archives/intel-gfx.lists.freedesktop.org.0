Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3676135B5
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 13:18:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB59310E1E6;
	Mon, 31 Oct 2022 12:18:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 678B810E1F6;
 Mon, 31 Oct 2022 12:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667218711; x=1698754711;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GEsd6o2D/MqUrn5MCCDV2LOA0tuKO/wnCRJ6R7iymgg=;
 b=VJ+wknDWlJXYNq+l++NzGFPrFNcKBA4jhMM9yd17XRBEpksAlYyfp4fT
 96ULSSFwtB2YoqsCikEB3FpmHNnrkNL0XcfJv3+F9QRl+THz7ATVwLumV
 QUqWC41mI27Abf37gPQOLSbyUU1GsIH7D5EcjHhs40HY26vcbxE+yDTK+
 loHQi1i+xisetq7nf3aF1Fx3JF/TdgWKm0JcF3WRcpK5jkVhKHMyR9/Gz
 HGXdOyME46dzlH4OtED0DODRYuSY3zC9Kxogj3G0ZpAK++x3z6qhpZ6pG
 oUfceTvVZBcVVbRRnAJKOoDwUp9+DnTPvjasciecovRqlLVTHgSGsGGtU A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="373094695"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="373094695"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 05:18:26 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="636033552"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="636033552"
Received: from fzaher-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.29.143])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 05:18:14 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 31 Oct 2022 12:17:30 +0000
Message-Id: <20221031121730.32056-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/query: use 48B_ADDRESS in
 upload
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Our working set could be larger than 4G here.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6671
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/i915_query.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index 4e43c7cd..e725e04e 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -625,10 +625,14 @@ static void upload(int fd, struct igt_list_head *handles, uint32_t num_handles)
 		      sizeof(struct drm_i915_gem_exec_object2));
 
 	i = 0;
-	igt_list_for_each_entry(iter, handles, link)
-		exec[i++].handle = iter->handle;
+	igt_list_for_each_entry(iter, handles, link) {
+		exec[i].handle = iter->handle;
+		exec[i].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
+		i++;
+	}
 
 	exec[i].handle = batch_create_size(fd, 4096);
+	exec[i].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
 
 	execbuf.buffers_ptr = to_user_pointer(exec);
 	execbuf.buffer_count = num_handles + 1;
-- 
2.38.1

