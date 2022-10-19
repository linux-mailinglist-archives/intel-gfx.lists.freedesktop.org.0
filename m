Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD03604EF3
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 19:36:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A32810EB45;
	Wed, 19 Oct 2022 17:36:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B4D10F2A3
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666200833; x=1697736833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=57xevMaPNuTYw9loIK3v8HjbtAVBJSLqQ4lTiTCwMqQ=;
 b=nsoP9adQIPM0XUDzfaTVp2l91hMzBOSEjHl0+2T+a1xBPbq/9Q65Fvou
 NUemIX5ld2s7PcCFMrJ/OMcprdyNpC+2mNW1mpGFlrXxpeBV14Le966Z2
 7Arzlajjywkdm9iSV/IET19dmeN52VL6rBTMAjHtT/0nxgGGHh4YIE33b
 +ifiPr7RyBYfaAaUlecW1IWaOiHsgPhyZPQsiF/IgBLL6H5cEBBSOOqdS
 STMlNP+JRXHLGk4hPOmmUEwSOCCeFuwCQ59UTTaWu11z5gTGn1y37FUxn
 2Wjv0FkikC8uAjlB2R3lwgdeOywNOrFTuHhQ6fnFWygBNLoLAi0KNrX9E Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286201741"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="286201741"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:33:53 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="607204806"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="607204806"
Received: from mjmcener-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.40])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 10:33:50 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 18:32:47 +0100
Message-Id: <20221019173254.3361334-11-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
References: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 10/17] drm: Add ability to query drm cgroup GPU
 time
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

Add a driver callback and core helper which allow querying the time spent
on GPUs for processes belonging to a group.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/drm_cgroup.c | 24 ++++++++++++++++++++++++
 include/drm/drm_clients.h    |  1 +
 include/drm/drm_drv.h        |  9 +++++++++
 3 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/drm_cgroup.c b/drivers/gpu/drm/drm_cgroup.c
index 59b730ed1334..e0cadb5e5659 100644
--- a/drivers/gpu/drm/drm_cgroup.c
+++ b/drivers/gpu/drm/drm_cgroup.c
@@ -206,3 +206,27 @@ void drm_pid_update_priority(struct pid *pid, int priority)
 	rcu_read_unlock();
 }
 EXPORT_SYMBOL_GPL(drm_pid_update_priority);
+
+u64 drm_pid_get_active_time_us(struct pid *pid)
+{
+	struct drm_pid_clients *clients;
+	u64 total = 0;
+
+	rcu_read_lock();
+	clients = xa_load(&drm_pid_clients, (unsigned long)pid);
+	if (clients) {
+		struct drm_file *fpriv;
+
+		list_for_each_entry_rcu(fpriv, &clients->file_list, clink) {
+			const struct drm_cgroup_ops *cg_ops =
+				fpriv->minor->dev->driver->cg_ops;
+
+			if (cg_ops && cg_ops->active_time_us)
+				total += cg_ops->active_time_us(fpriv);
+		}
+	}
+	rcu_read_unlock();
+
+	return total;
+}
+EXPORT_SYMBOL_GPL(drm_pid_get_active_time_us);
diff --git a/include/drm/drm_clients.h b/include/drm/drm_clients.h
index 3a0b1cdb338f..f25e09ed5feb 100644
--- a/include/drm/drm_clients.h
+++ b/include/drm/drm_clients.h
@@ -37,5 +37,6 @@ static inline void drm_clients_migrate(struct drm_file *file_priv)
 
 unsigned int drm_pid_priority_levels(struct pid *pid, bool *non_uniform);
 void drm_pid_update_priority(struct pid *pid, int priority);
+u64 drm_pid_get_active_time_us(struct pid *pid);
 
 #endif
diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index 2371d73e12cf..0f1802df01fe 100644
--- a/include/drm/drm_drv.h
+++ b/include/drm/drm_drv.h
@@ -183,6 +183,15 @@ struct drm_cgroup_ops {
 	 * priorities of already running workloads.
 	 */
 	void (*update_priority) (struct drm_file *, int priority);
+
+	/**
+	 * @active_time_us:
+	 *
+	 * Optional callback for reporting the GPU time consumed by this client.
+	 *
+	 * Used by the DRM core when queried by the DRM cgroup controller.
+	 */
+	u64 (*active_time_us) (struct drm_file *);
 };
 
 /**
-- 
2.34.1

