Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIHgLdZmAWpvXwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:19:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A9B508235
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:19:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E026810E488;
	Mon, 11 May 2026 05:19:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EPLe35Do";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89C3710E481;
 Mon, 11 May 2026 05:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778476755; x=1810012755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=71J/CImOf0L08MJ0vhd1RSHuhYIsnjEaIXmJvrNepbs=;
 b=EPLe35Do0NksRbejFxafdud9mGB+XWD8OX4YP0SqnQ0q59z0ri9NsR2K
 NpDf8Hnoi1dsSU6e/HXd9bjtKCRkaMIcpGa7qX+VPP2VLCTKZJUiaHbzh
 XLPGcdyivJbe2RnVuNPzehKeB7d1WTWckqxJhfcFsJ4HXNpJq2yUYeAHL
 uhR5n9Z/TVXmlI8RGJQDbCPK6NIUK3M3e8JaqeZwCiHeYjdmLHIukKRt+
 BpiQ+17pdkJWHZlhpvPsPcz7qGoPkEedE/1kxTdBK5POqEWpkPuPoRQJo
 emIq370fIBNx5C5wC14+ntU3yQcg2hiwKNIZzmA9MQnNGdnngV/W04X9T w==;
X-CSE-ConnectionGUID: KpUHFswSS5ib1sTg0YJx6A==
X-CSE-MsgGUID: DHRlCF7CQmul7uo+7BykOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="81921100"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="81921100"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:19:15 -0700
X-CSE-ConnectionGUID: HeYsfoHYRTSlil7gKmgZdA==
X-CSE-MsgGUID: QfgTnd58RTG4W3IWMTy8iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="261086247"
Received: from kunal-x299-aorus-gaming-3-pro.iind.intel.com ([10.190.239.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:19:14 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@intel.com,
 Kunal Joshi <kunal1.joshi@intel.com>
Subject: [RFC 3/7] drm/display/dp_tunnel: Add bw_limit debugfs cap for BW
 pressure injection
Date: Mon, 11 May 2026 11:10:24 +0530
Message-Id: <20260511054028.1310995-4-kunal1.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260511054028.1310995-1-kunal1.joshi@intel.com>
References: <20260511054028.1310995-1-kunal1.joshi@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: 69A9B508235
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kunal1.joshi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

IGT needs to inject deterministic BW pressure to validate mode
filtering and fallback paths without requiring a real sink that
consumes a specific amount of bandwidth. Add a writable 'bw_limit'
file (in kB/s) under each tunnel's debugfs subdir that caps the
value reported by drm_dp_tunnel_available_bw(). Writing 0 clears
the cap.

Cc: Imre Deak <imre.deak@intel.com>
Assisted-by: Copilot:claude-sonnet-4-6
Signed-off-by: Kunal Joshi <kunal1.joshi@intel.com>
---
 drivers/gpu/drm/display/drm_dp_tunnel.c | 76 ++++++++++++++++++++++++-
 1 file changed, 75 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/display/drm_dp_tunnel.c b/drivers/gpu/drm/display/drm_dp_tunnel.c
index b29dd59263ae2..c16b36d3bcf8a 100644
--- a/drivers/gpu/drm/display/drm_dp_tunnel.c
+++ b/drivers/gpu/drm/display/drm_dp_tunnel.c
@@ -154,6 +154,7 @@ struct drm_dp_tunnel {
 
 #ifdef CONFIG_DEBUG_FS
 	struct list_head debugfs_dirs;
+	int bw_limit;
 #endif
 };
 
@@ -1445,10 +1446,26 @@ EXPORT_SYMBOL(drm_dp_tunnel_max_dprx_lane_count);
  * Returns the @tunnel group's estimated total available bandwidth in kB/s
  * units, or -1 if the available BW isn't valid (the BW allocation mode is
  * not enabled or the tunnel's state hasn't been updated).
+ *
+ * If a debug BW cap has been set via the "dp_tunnel/bw_limit" debugfs
+ * file, the returned value is min(group->available_bw, bw_limit). The
+ * cap defaults to 0 (no cap) and is only available when CONFIG_DEBUG_FS
+ * is enabled.
  */
 int drm_dp_tunnel_available_bw(const struct drm_dp_tunnel *tunnel)
 {
-	return tunnel->group->available_bw;
+	int bw = tunnel->group->available_bw;
+
+#ifdef CONFIG_DEBUG_FS
+	{
+		int limit = READ_ONCE(tunnel->bw_limit);
+
+		if (bw > 0 && limit > 0)
+			bw = min(bw, limit);
+	}
+#endif
+
+	return bw;
 }
 EXPORT_SYMBOL(drm_dp_tunnel_available_bw);
 
@@ -2088,6 +2105,61 @@ static const struct file_operations tunnel_bw_alloc_enable_fops = {
 	.write		= tunnel_bw_alloc_enable_write,
 };
 
+static int tunnel_bw_limit_show(struct seq_file *m, void *data)
+{
+	struct drm_dp_tunnel *tunnel = m->private;
+
+	seq_printf(m, "%d\n", READ_ONCE(tunnel->bw_limit));
+
+	return 0;
+}
+
+static ssize_t tunnel_bw_limit_write(struct file *file,
+				     const char __user *ubuf,
+				     size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct drm_dp_tunnel *tunnel = m->private;
+	int limit;
+	int ret;
+
+	ret = kstrtoint_from_user(ubuf, len, 0, &limit);
+	if (ret)
+		return ret;
+
+	if (limit < 0)
+		return -EINVAL;
+
+	mutex_lock(&tunnel->group->mgr->debugfs_lock);
+
+	if (tunnel->destroyed) {
+		ret = -ENODEV;
+		goto unlock;
+	}
+
+	WRITE_ONCE(tunnel->bw_limit, limit);
+	ret = 0;
+
+unlock:
+	mutex_unlock(&tunnel->group->mgr->debugfs_lock);
+
+	return ret < 0 ? ret : len;
+}
+
+static int tunnel_bw_limit_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, tunnel_bw_limit_show, inode->i_private);
+}
+
+static const struct file_operations tunnel_bw_limit_fops = {
+	.owner		= THIS_MODULE,
+	.open		= tunnel_bw_limit_open,
+	.read		= seq_read,
+	.llseek		= seq_lseek,
+	.release	= single_release,
+	.write		= tunnel_bw_limit_write,
+};
+
 /**
  * drm_dp_tunnel_debugfs_add - Add DP tunnel debugfs entries
  * @tunnel: Tunnel object the entries are registered for
@@ -2150,6 +2222,8 @@ void drm_dp_tunnel_debugfs_add(struct drm_dp_tunnel *tunnel, struct dentry *root
 	debugfs_create_file("info", 0444, dir, tunnel, &tunnel_info_fops);
 	debugfs_create_file("bw_alloc_enable", 0644, dir, tunnel,
 			    &tunnel_bw_alloc_enable_fops);
+	debugfs_create_file("bw_limit", 0644, dir, tunnel,
+			    &tunnel_bw_limit_fops);
 
 unlock:
 	mutex_unlock(&tunnel->group->mgr->debugfs_lock);
-- 
2.25.1

