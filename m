Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CBHcLdRmAWpUYAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:19:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A81050822E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:19:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6C8210E480;
	Mon, 11 May 2026 05:19:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V5xo7ND9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A221610E47D;
 Mon, 11 May 2026 05:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778476753; x=1810012753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yLYnPBwUobZ3ya0wdl9jRERZCjsDA375wKPeFl2nkpQ=;
 b=V5xo7ND9N7MhQoUcPUGwU2tGqDNJdG53WkjCOEBLLS/JMuH0cbTvQtAj
 esCx7it74iwvEerXsgykbys+VdPQCqlOw7/jvkO4AjweHnSydWB46FHCZ
 zLvWKe4FEVVmEEiyfwbpuvCziL0bMi6mpGLALYbd4tPnGUh/Ish54mIlv
 nbsMsGSSrKBiFCF4q/F6GFgsQQ43vYTJBcv/NoINjx+y4/arXinF1TsHq
 RNHCcj+IpL5VkbroewH9mlsaIabCprwV4Lq/xWyscj3Wl7RBfTAlpA+dB
 l67LJZav7dlbPIIAEbB1BEZa83lWmtuLmVcQhfkX1Dfk1rzIMoYB+nlxO g==;
X-CSE-ConnectionGUID: Q786zgHQQ8O5BmmHOFLI+A==
X-CSE-MsgGUID: 3pfYcj2iTZSa2V8QAAzZbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="81921099"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="81921099"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:19:13 -0700
X-CSE-ConnectionGUID: ZorYuYnFQiuvDpDxY+pmiA==
X-CSE-MsgGUID: 5EesldX0SxSVUlL7CWVANw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="261086235"
Received: from kunal-x299-aorus-gaming-3-pro.iind.intel.com ([10.190.239.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:19:12 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@intel.com,
 Kunal Joshi <kunal1.joshi@intel.com>
Subject: [RFC 2/7] drm/display/dp_tunnel: Add bw_alloc_enable debugfs knob
Date: Mon, 11 May 2026 11:10:23 +0530
Message-Id: <20260511054028.1310995-3-kunal1.joshi@intel.com>
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
X-Rspamd-Queue-Id: 6A81050822E
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

IGT needs to toggle Bandwidth Allocation Mode on a live tunnel to
validate BWA disable/re-enable flows and confirm the driver
recovers allocation correctly. Add a writable 'bw_alloc_enable'
file under each tunnel's debugfs subdir; reading returns 0/1
(round-trippable via kstrtobool_from_user()), writing toggles
the BWA state. The writer serializes against teardown via
mgr->debugfs_lock.

Cc: Imre Deak <imre.deak@intel.com>
Assisted-by: Copilot:claude-sonnet-4-6
Signed-off-by: Kunal Joshi <kunal1.joshi@intel.com>
---
 drivers/gpu/drm/display/drm_dp_tunnel.c | 77 ++++++++++++++++++++++++-
 1 file changed, 74 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_tunnel.c b/drivers/gpu/drm/display/drm_dp_tunnel.c
index 79d35d0be6b75..b29dd59263ae2 100644
--- a/drivers/gpu/drm/display/drm_dp_tunnel.c
+++ b/drivers/gpu/drm/display/drm_dp_tunnel.c
@@ -213,9 +213,17 @@ struct drm_dp_tunnel_mgr {
 	 * also taken when flipping tunnel->destroyed in
 	 * drm_dp_tunnel_destroy() so debugfs writers and
 	 * drm_dp_tunnel_debugfs_add() can observe the teardown and
-	 * bail out. It does NOT synchronize against driver-side
-	 * modeset paths; the debug knobs are intended for test /
-	 * validation use only.
+	 * bail out.
+	 *
+	 * Note: the bw_alloc_enable writer holds this lock across
+	 * drm_dp_tunnel_{enable,disable}_bw_alloc(), which issue
+	 * AUX/DPCD transactions. No driver-side path takes this lock,
+	 * so there is no nesting against AUX-internal locks; however
+	 * callers must not acquire this lock from any context that
+	 * already holds an AUX or DPCD lock.
+	 *
+	 * It does NOT synchronize against driver-side modeset paths;
+	 * the debug knobs are intended for test / validation use only.
 	 */
 	struct mutex debugfs_lock;
 #endif
@@ -2019,6 +2027,67 @@ static int tunnel_info_show(struct seq_file *m, void *data)
 }
 DEFINE_SHOW_ATTRIBUTE(tunnel_info);
 
+static int tunnel_bw_alloc_enable_show(struct seq_file *m, void *data)
+{
+	struct drm_dp_tunnel *tunnel = m->private;
+
+	/*
+	 * Print 0/1 so the file is round-trippable through
+	 * kstrtobool_from_user(): cat foo > saved && cat saved > foo.
+	 * The human-readable state is also available in 'info'.
+	 */
+	seq_printf(m, "%d\n", drm_dp_tunnel_bw_alloc_is_enabled(tunnel));
+
+	return 0;
+}
+
+static ssize_t tunnel_bw_alloc_enable_write(struct file *file,
+					    const char __user *ubuf,
+					    size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct drm_dp_tunnel *tunnel = m->private;
+	bool enable;
+	int ret;
+
+	ret = kstrtobool_from_user(ubuf, len, &enable);
+	if (ret)
+		return ret;
+
+	mutex_lock(&tunnel->group->mgr->debugfs_lock);
+
+	if (tunnel->destroyed) {
+		ret = -ENODEV;
+		goto unlock;
+	}
+
+	if (enable == drm_dp_tunnel_bw_alloc_is_enabled(tunnel))
+		ret = 0;
+	else if (enable)
+		ret = drm_dp_tunnel_enable_bw_alloc(tunnel);
+	else
+		ret = drm_dp_tunnel_disable_bw_alloc(tunnel);
+
+unlock:
+	mutex_unlock(&tunnel->group->mgr->debugfs_lock);
+
+	return ret < 0 ? ret : len;
+}
+
+static int tunnel_bw_alloc_enable_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, tunnel_bw_alloc_enable_show, inode->i_private);
+}
+
+static const struct file_operations tunnel_bw_alloc_enable_fops = {
+	.owner		= THIS_MODULE,
+	.open		= tunnel_bw_alloc_enable_open,
+	.read		= seq_read,
+	.llseek		= seq_lseek,
+	.release	= single_release,
+	.write		= tunnel_bw_alloc_enable_write,
+};
+
 /**
  * drm_dp_tunnel_debugfs_add - Add DP tunnel debugfs entries
  * @tunnel: Tunnel object the entries are registered for
@@ -2079,6 +2148,8 @@ void drm_dp_tunnel_debugfs_add(struct drm_dp_tunnel *tunnel, struct dentry *root
 	list_add(&d->link, &tunnel->debugfs_dirs);
 
 	debugfs_create_file("info", 0444, dir, tunnel, &tunnel_info_fops);
+	debugfs_create_file("bw_alloc_enable", 0644, dir, tunnel,
+			    &tunnel_bw_alloc_enable_fops);
 
 unlock:
 	mutex_unlock(&tunnel->group->mgr->debugfs_lock);
-- 
2.25.1

