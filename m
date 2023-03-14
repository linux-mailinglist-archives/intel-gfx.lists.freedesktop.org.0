Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A66A36B97A4
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 15:19:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A263F10EA81;
	Tue, 14 Mar 2023 14:19:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB68910EA78;
 Tue, 14 Mar 2023 14:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678803584; x=1710339584;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q3d9NzbFoh1gANUnCkXfWtCqiIz1wYgVTln49cPWTPw=;
 b=lkNAyaYWaCZBzebwD8Q/BHZrfqKRd9dZuCdwsAQ12jqo7PvLJJ07tIxJ
 Gpw5j46vxCGbt7mMAQYdZiBcLJLt5SF1Y0vNkNkm4VQcNthr07ibEjAHJ
 YKjbLomqqZxBKqjtRU/ATECucyGcruUogGnhGlNvV2Mz4z1GU7DIeu3Ze
 tPB0JD125Js7u9NAQaiD8TWE067TpWB6hulyhZ6LtpugkW39vvpgF58GR
 oNr4dc/mnVrjV1k4REmBksKFwlx+804Npsx2cvAZGk+TpjlC+0rT8YI6u
 bajSyx+4sXb+nwBoHUJiPQlo/bod3wLazXwtgzWRBBxV17HXYJeClT7No g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="321284830"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="321284830"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 07:19:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="656363275"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="656363275"
Received: from mjtillin-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.236.227])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 07:19:37 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 14 Mar 2023 14:19:00 +0000
Message-Id: <20230314141904.1210824-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230314141904.1210824-1-tvrtko.ursulin@linux.intel.com>
References: <20230314141904.1210824-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 06/10] drm/cgroup: Add over budget signalling
 callback
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
Cc: Rob Clark <robdclark@chromium.org>, Kenny.Ho@amd.com,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Johannes Weiner <hannes@cmpxchg.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu@chromium.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Zefan Li <lizefan.x@bytedance.com>, Dave Airlie <airlied@redhat.com>,
 Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 "T . J . Mercier" <tjmercier@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Add a new callback via which the drm cgroup controller is notifying the
drm core that a certain process is above its allotted GPU time.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 include/drm/drm_drv.h |  8 ++++++++
 kernel/cgroup/drm.c   | 16 ++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index 01953d6b98d6..d8386b64eab5 100644
--- a/include/drm/drm_drv.h
+++ b/include/drm/drm_drv.h
@@ -167,6 +167,14 @@ struct drm_cgroup_ops {
 	 * Used by the DRM core when queried by the DRM cgroup controller.
 	 */
 	u64 (*active_time_us) (struct drm_file *);
+
+	/**
+	 * @signal_budget:
+	 *
+	 * Optional callback used by the DRM core to forward over/under GPU time
+	 * messages sent by the DRM cgroup controller.
+	 */
+	int (*signal_budget) (struct drm_file *, u64 used, u64 budget);
 };
 
 /**
diff --git a/kernel/cgroup/drm.c b/kernel/cgroup/drm.c
index acdb76635b60..68f31797c4f0 100644
--- a/kernel/cgroup/drm.c
+++ b/kernel/cgroup/drm.c
@@ -51,6 +51,22 @@ static u64 drmcs_get_active_time_us(struct drm_cgroup_state *drmcs)
 	return total;
 }
 
+static void
+drmcs_signal_budget(struct drm_cgroup_state *drmcs, u64 usage, u64 budget)
+{
+	struct drm_file *fpriv;
+
+	lockdep_assert_held(&drmcg_mutex);
+
+	list_for_each_entry(fpriv, &drmcs->clients, clink) {
+		const struct drm_cgroup_ops *cg_ops =
+			fpriv->minor->dev->driver->cg_ops;
+
+		if (cg_ops && cg_ops->signal_budget)
+			cg_ops->signal_budget(fpriv, usage, budget);
+	}
+}
+
 static void drmcs_free(struct cgroup_subsys_state *css)
 {
 	struct drm_cgroup_state *drmcs = css_to_drmcs(css);
-- 
2.37.2

