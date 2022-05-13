Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2907B525EB8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 11:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6902610F9B2;
	Fri, 13 May 2022 09:31:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70F7F10F9AA;
 Fri, 13 May 2022 09:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652434303; x=1683970303;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ahlYZ0xk9sHPilC42RovGN01pI5Mu6cm75hSVn0Qq4o=;
 b=FAn0mEXUvskxoAw1p2QhQS77TWtIZDlCaFngpbckWZP49I4lbWdleCQh
 HvnpvJG5iD28tIrxWG3tRbz1HGbAgCqM9KINB3eS5oYV+HyWpGweWURmZ
 8rCfGpkq10Dqum0H7xxkJIr/aKonSV7yHu9CE/G77GwGyhHTo3aZCe0x3
 EOs3Ot/OCDiKi657Q8sFL15NI9M+5MojtyL2/d6i2o0iDujQl3j0GLMwX
 xymc050Ql95bv6T86pkatIrC2iNrk52NcCnBY4DRcjsXkdSwU/mYNoSgo
 Q8pInjpXl4Xk5Qo9QOvIBqGBqO6+zWqv74XWaA9vK+oS1whuPpKwA3v3f g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="269934347"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="269934347"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 02:31:36 -0700
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="595141717"
Received: from cpazx-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.209.239])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 02:31:35 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 13 May 2022 10:31:28 +0100
Message-Id: <20220513093128.1027997-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/core_hotunplug: Check sysfs reads
 after hotunplug
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Leave some sysfs files open and attempt to read from them after hotunplug.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 tests/core_hotunplug.c | 62 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 02eae19e1e16..c3831541202d 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -602,6 +602,59 @@ static void hotreplug_lateclose(struct hotunplug *priv)
 	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
 }
 
+static void hotunplug_sysfs(struct hotunplug *priv)
+{
+	int i915, sysfs;
+	struct {
+		int fd;
+		const char *path;
+		char buf[256];
+	} *item, items[] = {
+		{ .fd = -1, .path = "error" },
+		{ .fd = -1, .path = "gt_act_freq_mhz" },
+		{ .fd = -1, .path = "gt/gt0/rps_act_freq_mhz" },
+		{ .fd = -1, .path = "gt/gt0/rc6_residency_ms" },
+		{ .fd = -1, .path = "engine/rcs0/name" },
+		{ .fd = -1, .path = "engine/bcs0/name" },
+		{ .path = NULL },
+	};
+	unsigned int cnt = 0;
+
+	pre_check(priv);
+
+	i915 = local_drm_open_driver(false, "", " for hot unplug");
+	sysfs = igt_sysfs_open(i915);
+	igt_require(sysfs >= 0);
+	for (item = &items[0]; item->path; item++) {
+		item->fd = openat(sysfs, item->path, O_RDONLY);
+		cnt += item->fd >= 0;
+	}
+	close(sysfs);
+	close_device(i915, " ", "sysfs open ");
+
+	igt_require(cnt >= 3);
+
+	device_unplug(priv, "hot ", 60);
+
+	sleep(2);
+
+	for (item = &items[0]; item->path; item++) {
+		ssize_t len;
+		int err;
+
+		if (item->fd < 0)
+			continue;
+
+		len = read(item->fd, item->buf, sizeof(item->buf));
+		err = len < 0 ? -errno : 0;
+		close(item->fd);
+		igt_debug("%s='%s' (%d)\n", item->path, item->buf, err);
+		igt_assert_eq(err, -ENODEV);
+	}
+
+	igt_assert_f(healthcheck(priv, false), "%s\n", priv->failure);
+}
+
 /* Main */
 
 igt_main
@@ -735,6 +788,15 @@ igt_main
 			recover(&priv);
 	}
 
+	igt_subtest_group {
+		igt_describe("Check if sysfs files left open can be safely accessed after hotunplug.");
+		igt_subtest("hotunplug-sysfs")
+			hotunplug_sysfs(&priv);
+
+		igt_fixture
+			recover(&priv);
+	}
+
 	igt_fixture {
 		post_healthcheck(&priv);
 
-- 
2.32.0

