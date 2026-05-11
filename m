Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iM8cBNNmAWpvXwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:19:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73994508221
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:19:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C187410E47B;
	Mon, 11 May 2026 05:19:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gFqCoU9N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEB7510E47B;
 Mon, 11 May 2026 05:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778476752; x=1810012752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OLBf8cma7uc0eIhpBpoBYu6G/8+jCOwj21JDVzMIbeU=;
 b=gFqCoU9NJwFjT3qOrXEZQU90vVBypOFu3OrASKfoPJZg7EgNEREzonhi
 xWNDBYTnfqAtic77HxeahD2f3a+Z+VyW/OiD/NCRPEjLZmm49ss6yNq/s
 45eUdIo4gjGNVLwofW+1XR60m0lQloBwNTzU6/vJGKTyfKMXF3fodQAAL
 p52iz5/5LIHf/4UBHpdPvp+fFZoiNXoRtA4zeXh5EtL/NPJnnnabuZ8tL
 s08eI34OV36DJ4uJIyT3SvjAyRVVrdBiHJBHO4ip5aHqXvDJiPbhTGN5j
 kpIh1OX05YuOA7FpSm1WbGvgZIhhsNAKMV5P9IdCIoSAl9A1S6AmNifBn g==;
X-CSE-ConnectionGUID: g8X/eegqR/KQfj/CX4t0WA==
X-CSE-MsgGUID: RXQaia+QQmmAusbnkxmj5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="81921097"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="81921097"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:19:11 -0700
X-CSE-ConnectionGUID: 94yH9W8MQO+YcgM/jhtxWQ==
X-CSE-MsgGUID: IS6K+mpgTDOdobL+8QNmrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="261086231"
Received: from kunal-x299-aorus-gaming-3-pro.iind.intel.com ([10.190.239.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:19:10 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@intel.com,
 Kunal Joshi <kunal1.joshi@intel.com>
Subject: [RFC 1/7] drm/display/dp_tunnel: Add debugfs interface with info file
Date: Mon, 11 May 2026 11:10:22 +0530
Message-Id: <20260511054028.1310995-2-kunal1.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260511054028.1310995-1-kunal1.joshi@intel.com>
References: <20260511054028.1310995-1-kunal1.joshi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Queue-Id: 73994508221
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[kunal1.joshi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

The DP tunnel core has no way for userspace or IGT to observe
per-tunnel state (estimated BW, allocated BW, DPRX caps, BWA
enabled) without parsing dmesg. Add drm_dp_tunnel_debugfs_add()
and drm_dp_tunnel_debugfs_remove() helpers and an 'info' file
under each tunnel's debugfs subdir so this state is inspectable
through a stable ABI.

Per-tunnel debugfs subdirs are tracked in a list keyed by the
parent dentry so the same tunnel can be exposed under multiple
connector debugfs roots (e.g. an MST trunk and its children).
Teardown is two-phase under mgr->debugfs_lock to close the race
window where a concurrent add could observe a partially torn-down
tunnel.

Cc: Imre Deak <imre.deak@intel.com>
Assisted-by: Copilot:claude-sonnet-4-6
Signed-off-by: Kunal Joshi <kunal1.joshi@intel.com>
---
 drivers/gpu/drm/display/drm_dp_tunnel.c | 239 ++++++++++++++++++++++++
 include/drm/display/drm_dp_tunnel.h     |  17 ++
 2 files changed, 256 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_tunnel.c b/drivers/gpu/drm/display/drm_dp_tunnel.c
index 76c6bc84a806f..79d35d0be6b75 100644
--- a/drivers/gpu/drm/display/drm_dp_tunnel.c
+++ b/drivers/gpu/drm/display/drm_dp_tunnel.c
@@ -3,6 +3,7 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/debugfs.h>
 #include <linux/export.h>
 #include <linux/ref_tracker.h>
 #include <linux/types.h>
@@ -150,7 +151,19 @@ struct drm_dp_tunnel {
 	bool has_io_error:1;
 	bool destroyed:1;
 	bool pr_optimization_support:1;
+
+#ifdef CONFIG_DEBUG_FS
+	struct list_head debugfs_dirs;
+#endif
+};
+
+#ifdef CONFIG_DEBUG_FS
+struct drm_dp_tunnel_debugfs_dir {
+	struct list_head link;
+	struct dentry *parent;
+	struct dentry *dentry;
 };
+#endif
 
 struct drm_dp_tunnel_group_state;
 
@@ -193,6 +206,20 @@ struct drm_dp_tunnel_mgr {
 	struct drm_dp_tunnel_group *groups;
 	wait_queue_head_t bw_req_queue;
 
+#ifdef CONFIG_DEBUG_FS
+	/*
+	 * Serializes per-tunnel debugfs_dirs list mutations and the
+	 * debugfs writers (bw_alloc_enable, bw_limit). The lock is
+	 * also taken when flipping tunnel->destroyed in
+	 * drm_dp_tunnel_destroy() so debugfs writers and
+	 * drm_dp_tunnel_debugfs_add() can observe the teardown and
+	 * bail out. It does NOT synchronize against driver-side
+	 * modeset paths; the debug knobs are intended for test /
+	 * validation use only.
+	 */
+	struct mutex debugfs_lock;
+#endif
+
 #ifdef CONFIG_DRM_DISPLAY_DP_TUNNEL_STATE_DEBUG
 	struct ref_tracker_dir ref_tracker;
 #endif
@@ -482,6 +509,9 @@ create_tunnel(struct drm_dp_tunnel_mgr *mgr,
 		return NULL;
 
 	INIT_LIST_HEAD(&tunnel->node);
+#ifdef CONFIG_DEBUG_FS
+	INIT_LIST_HEAD(&tunnel->debugfs_dirs);
+#endif
 
 	kref_init(&tunnel->kref);
 
@@ -820,7 +850,36 @@ int drm_dp_tunnel_destroy(struct drm_dp_tunnel *tunnel)
 
 	tun_dbg(tunnel, "destroying\n");
 
+#ifdef CONFIG_DEBUG_FS
+	{
+		struct drm_dp_tunnel_debugfs_dir *d, *tmp;
+		LIST_HEAD(debugfs_dirs);
+
+		/*
+		 * Mark the tunnel destroyed and detach the tracked
+		 * debugfs entries under debugfs_lock so concurrent
+		 * drm_dp_tunnel_debugfs_add() / writer paths observe
+		 * teardown and bail out before touching this tunnel.
+		 * Do the actual debugfs removal after dropping
+		 * debugfs_lock: removal may synchronize against active
+		 * debugfs file operations, and those writers also take
+		 * debugfs_lock.
+		 */
+		mutex_lock(&tunnel->group->mgr->debugfs_lock);
+		tunnel->destroyed = true;
+		list_splice_init(&tunnel->debugfs_dirs, &debugfs_dirs);
+		mutex_unlock(&tunnel->group->mgr->debugfs_lock);
+
+		list_for_each_entry_safe(d, tmp, &debugfs_dirs, link) {
+			debugfs_remove_recursive(d->dentry);
+			list_del(&d->link);
+			kfree(d);
+		}
+	}
+#else
 	tunnel->destroyed = true;
+#endif
+
 	destroy_tunnel(tunnel);
 
 	return 0;
@@ -1897,6 +1956,179 @@ int drm_dp_tunnel_atomic_check_stream_bws(struct drm_atomic_commit *state,
 }
 EXPORT_SYMBOL(drm_dp_tunnel_atomic_check_stream_bws);
 
+#ifdef CONFIG_DEBUG_FS
+
+static const char *dp_link_rate_name(int rate)
+{
+	switch (rate) {
+	case 162000:	return "RBR";
+	case 270000:	return "HBR";
+	case 540000:	return "HBR2";
+	case 810000:	return "HBR3";
+	case 1000000:	return "UHBR10";
+	case 1350000:	return "UHBR13.5";
+	case 2000000:	return "UHBR20";
+	default:	return "unknown";
+	}
+}
+
+static int tunnel_info_show(struct seq_file *m, void *data)
+{
+	struct drm_dp_tunnel *tunnel = m->private;
+	bool bwa_enabled = drm_dp_tunnel_bw_alloc_is_enabled(tunnel);
+	int allocated_bw = drm_dp_tunnel_get_allocated_bw(tunnel);
+	int max_rate = tunnel->max_dprx_rate;
+
+	seq_printf(m, "Tunnel: DPTUN %s\n", drm_dp_tunnel_name(tunnel));
+	seq_printf(m, "  BW alloc mode:     %s\n",
+		   bwa_enabled ? "enabled" : "disabled");
+
+	/*
+	 * Print BW values in kB/s only so userspace parsers can use a
+	 * single format. Estimated/Allocated/granularity are only
+	 * meaningful while BWA is enabled; when disabled, surface 'n/a'
+	 * rather than the raw -1 sentinel returned by
+	 * drm_dp_tunnel_get_allocated_bw().
+	 */
+	if (bwa_enabled) {
+		seq_printf(m, "  Estimated BW:      %d kB/s\n",
+			   tunnel->estimated_bw);
+		seq_printf(m, "  Allocated BW:      %d kB/s\n", allocated_bw);
+		seq_printf(m, "  BW granularity:    %d kB/s\n",
+			   tunnel->bw_granularity);
+	} else {
+		seq_puts(m, "  Estimated BW:      n/a\n");
+		seq_puts(m, "  Allocated BW:      n/a\n");
+		seq_puts(m, "  BW granularity:    n/a\n");
+	}
+
+	/*
+	 * The DPRX caps are only valid once BWA has been enabled at
+	 * least once. Surface 'n/a' before that to avoid a bogus
+	 * '0 (unknown)'.
+	 */
+	if (max_rate > 0)
+		seq_printf(m, "  DPRX max rate:     %d (%s)\n",
+			   max_rate, dp_link_rate_name(max_rate));
+	else
+		seq_puts(m, "  DPRX max rate:     n/a\n");
+	seq_printf(m, "  DPRX max lanes:    %d\n",
+		   tunnel->max_dprx_lane_count);
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(tunnel_info);
+
+/**
+ * drm_dp_tunnel_debugfs_add - Add DP tunnel debugfs entries
+ * @tunnel: Tunnel object the entries are registered for
+ * @root: Parent debugfs directory under which the tunnel debugfs
+ *        subdir is created. Typically a connector's debugfs root.
+ *
+ * Create a "dp_tunnel" subdirectory under @root and populate it
+ * with the DP tunnel debugfs files. The subdirectory is owned by
+ * @tunnel; it is removed when @tunnel is destroyed via
+ * drm_dp_tunnel_destroy() or when the caller explicitly drops it
+ * via drm_dp_tunnel_debugfs_remove().
+ *
+ * May be called multiple times with different @root values - for
+ * example to expose the same tunnel's files under every DP
+ * connector that shares the tunnel (primary + MST children).
+ * Passing the same @root twice is a no-op.
+ *
+ * If @root may be removed before @tunnel is destroyed (for
+ * instance, an MST child connector being unregistered), the
+ * matching teardown path must call drm_dp_tunnel_debugfs_remove()
+ * so the tunnel does not retain a stale dentry pointer.
+ */
+void drm_dp_tunnel_debugfs_add(struct drm_dp_tunnel *tunnel, struct dentry *root)
+{
+	struct drm_dp_tunnel_debugfs_dir *d;
+	struct dentry *dir;
+
+	if (!tunnel || !root)
+		return;
+
+	mutex_lock(&tunnel->group->mgr->debugfs_lock);
+
+	/*
+	 * Bail out if the tunnel is being torn down: drm_dp_tunnel_destroy()
+	 * has already drained debugfs_dirs and will not run again, so any
+	 * entry added here would be leaked.
+	 */
+	if (tunnel->destroyed)
+		goto unlock;
+
+	list_for_each_entry(d, &tunnel->debugfs_dirs, link) {
+		if (d->parent == root)
+			goto unlock;
+	}
+
+	d = kzalloc(sizeof(*d), GFP_KERNEL);
+	if (!d)
+		goto unlock;
+
+	dir = debugfs_create_dir("dp_tunnel", root);
+	if (IS_ERR(dir)) {
+		kfree(d);
+		goto unlock;
+	}
+
+	d->parent = root;
+	d->dentry = dir;
+	list_add(&d->link, &tunnel->debugfs_dirs);
+
+	debugfs_create_file("info", 0444, dir, tunnel, &tunnel_info_fops);
+
+unlock:
+	mutex_unlock(&tunnel->group->mgr->debugfs_lock);
+}
+EXPORT_SYMBOL(drm_dp_tunnel_debugfs_add);
+
+/**
+ * drm_dp_tunnel_debugfs_remove - Drop DP tunnel debugfs entries for a parent
+ * @tunnel: Tunnel object the entries were registered for
+ * @root: Parent debugfs directory previously passed to
+ *        drm_dp_tunnel_debugfs_add()
+ *
+ * Remove the "dp_tunnel" subdirectory previously created under
+ * @root for @tunnel and drop it from the tunnel's tracked list.
+ * Must be called when @root is about to be torn down while
+ * @tunnel may still be alive (e.g. an MST child connector being
+ * unregistered) so the tunnel does not retain a stale dentry
+ * pointer.
+ *
+ * Calling with a @root that was never registered (or that has
+ * already been removed) is a no-op.
+ */
+void drm_dp_tunnel_debugfs_remove(struct drm_dp_tunnel *tunnel, struct dentry *root)
+{
+	struct drm_dp_tunnel_debugfs_dir *d, *found = NULL;
+
+	if (!tunnel || !root)
+		return;
+
+	mutex_lock(&tunnel->group->mgr->debugfs_lock);
+
+	list_for_each_entry(d, &tunnel->debugfs_dirs, link) {
+		if (d->parent == root) {
+			found = d;
+			list_del(&d->link);
+			break;
+		}
+	}
+
+	mutex_unlock(&tunnel->group->mgr->debugfs_lock);
+
+	if (found) {
+		debugfs_remove_recursive(found->dentry);
+		kfree(found);
+	}
+}
+EXPORT_SYMBOL(drm_dp_tunnel_debugfs_remove);
+
+#endif /* CONFIG_DEBUG_FS */
+
 static void destroy_mgr(struct drm_dp_tunnel_mgr *mgr)
 {
 	int i;
@@ -1910,6 +2142,10 @@ static void destroy_mgr(struct drm_dp_tunnel_mgr *mgr)
 	ref_tracker_dir_exit(&mgr->ref_tracker);
 #endif
 
+#ifdef CONFIG_DEBUG_FS
+	mutex_destroy(&mgr->debugfs_lock);
+#endif
+
 	kfree(mgr->groups);
 	kfree(mgr);
 }
@@ -1936,6 +2172,9 @@ drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
 
 	mgr->dev = dev;
 	init_waitqueue_head(&mgr->bw_req_queue);
+#ifdef CONFIG_DEBUG_FS
+	mutex_init(&mgr->debugfs_lock);
+#endif
 
 	mgr->groups = kzalloc_objs(*mgr->groups, max_group_count);
 	if (!mgr->groups) {
diff --git a/include/drm/display/drm_dp_tunnel.h b/include/drm/display/drm_dp_tunnel.h
index 57f5e90ba8fda..53ce71de6f258 100644
--- a/include/drm/display/drm_dp_tunnel.h
+++ b/include/drm/display/drm_dp_tunnel.h
@@ -18,6 +18,8 @@ struct drm_atomic_commit;
 struct drm_dp_tunnel_mgr;
 struct drm_dp_tunnel_state;
 
+struct dentry;
+
 struct ref_tracker;
 
 struct drm_dp_tunnel_ref {
@@ -97,6 +99,16 @@ struct drm_dp_tunnel_mgr *
 drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count);
 void drm_dp_tunnel_mgr_destroy(struct drm_dp_tunnel_mgr *mgr);
 
+#if defined(CONFIG_DEBUG_FS)
+void drm_dp_tunnel_debugfs_add(struct drm_dp_tunnel *tunnel, struct dentry *root);
+void drm_dp_tunnel_debugfs_remove(struct drm_dp_tunnel *tunnel, struct dentry *root);
+#else
+static inline void
+drm_dp_tunnel_debugfs_add(struct drm_dp_tunnel *tunnel, struct dentry *root) {}
+static inline void
+drm_dp_tunnel_debugfs_remove(struct drm_dp_tunnel *tunnel, struct dentry *root) {}
+#endif
+
 #else
 
 static inline struct drm_dp_tunnel *
@@ -249,6 +261,11 @@ drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
 static inline
 void drm_dp_tunnel_mgr_destroy(struct drm_dp_tunnel_mgr *mgr) {}
 
+static inline void
+drm_dp_tunnel_debugfs_add(struct drm_dp_tunnel *tunnel, struct dentry *root) {}
+static inline void
+drm_dp_tunnel_debugfs_remove(struct drm_dp_tunnel *tunnel, struct dentry *root) {}
+
 #endif /* CONFIG_DRM_DISPLAY_DP_TUNNEL */
 
 #endif /* __DRM_DP_TUNNEL_H__ */
-- 
2.25.1

