Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25ED554E2D1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 16:01:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8034F113CBA;
	Thu, 16 Jun 2022 14:01:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B811113BB7
 for <Intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 14:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655388065; x=1686924065;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j9vLcatMVJPnnXhtjMqwe5obhQ+DNLhDiaXCkSbfWX8=;
 b=LbB+tCprul2ghcNNZeQ4njZ6i+KDreFA8/3XkNf9KzW5cs6nbHbZ9+9x
 3l4V31rU+1OngNclKcf+mBgYFy7ql1rc3plCNqFPcVWWO7rO44kiwwCGN
 PYig3ZIl3kmbiE9F8pQuT3luGogtM+yED+7IYB2LyLbXZOTOw1+r5tbxa
 DtCtPUJNe5ldFw/QUxrjngQCRH3XpXv3xDSo8eabkw7KfSJEXNXeTzw1Y
 DWJcjFillcmnuwcVXXfU6sFXWaJvJYSUFgjT9yhppj1RSoNh/snhlkvNA
 I5UazYlQbo4sY1tOvpJ4T42q3OBCiSNjALsCwm7UAVWanxfDVGN+ECZD6 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="262273824"
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="262273824"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 07:01:04 -0700
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="613168543"
Received: from mstokes1-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.198.82])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 07:01:02 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 15:00:56 +0100
Message-Id: <20220616140056.559074-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/fdinfo: Don't show engine classes not
 present
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

Stop displaying engine classes with no engines - it is not a huge problem
if they are shown, since the values will correctly be all zeroes, but it
does count as misleading.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: 055634e4b62f ("drm/i915: Expose client engine utilisation via fdinfo")
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_drm_client.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 18d38cb59923..b09d1d386574 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -116,8 +116,9 @@ show_client_class(struct seq_file *m,
 		total += busy_add(ctx, class);
 	rcu_read_unlock();
 
-	seq_printf(m, "drm-engine-%s:\t%llu ns\n",
-		   uabi_class_names[class], total);
+	if (capacity)
+		seq_printf(m, "drm-engine-%s:\t%llu ns\n",
+			   uabi_class_names[class], total);
 
 	if (capacity > 1)
 		seq_printf(m, "drm-engine-capacity-%s:\t%u\n",
-- 
2.34.1

