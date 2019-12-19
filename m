Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D74126890
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 19:00:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CFF86E394;
	Thu, 19 Dec 2019 18:00:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A81BF6E394
 for <Intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 18:00:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 10:00:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="206283872"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.84.191])
 by orsmga007.jf.intel.com with ESMTP; 19 Dec 2019 10:00:28 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2019 18:00:13 +0000
Message-Id: <20191219180019.25562-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
References: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/8] drm/i915: Reference count struct
 drm_i915_file_private
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

In the following patches we will develope a need to peek into the client
owned data from any potential leftover contexts.

To facilitate this add reference counting to file_priv.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c |  2 +-
 drivers/gpu/drm/i915/i915_drv.c             |  4 ----
 drivers/gpu/drm/i915/i915_drv.h             |  4 +++-
 drivers/gpu/drm/i915/i915_gem.c             | 14 +++++++++++++-
 4 files changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index e5a7c6f02a47..b482b2e5f31f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -853,7 +853,7 @@ int i915_gem_context_open(struct drm_i915_private *i915,
 void i915_gem_context_close(struct drm_file *file)
 {
 	struct drm_i915_file_private *file_priv = file->driver_priv;
-	struct drm_i915_private *i915 = file_priv->dev_priv;
+	struct drm_i915_private *i915 = file_priv->i915;
 	struct i915_gem_context *ctx;
 	unsigned long idx;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 8b08cfe30151..0c9c93418068 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1633,13 +1633,9 @@ static void i915_driver_lastclose(struct drm_device *dev)
 
 static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
 {
-	struct drm_i915_file_private *file_priv = file->driver_priv;
-
 	i915_gem_context_close(file);
 	i915_gem_release(dev, file);
 
-	kfree_rcu(file_priv, rcu);
-
 	/* Catch up with all the deferred frees from "this" client */
 	i915_gem_flush_free_objects(to_i915(dev));
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9226c0515506..6f13f0c619e9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -190,13 +190,15 @@ struct i915_mm_struct;
 struct i915_mmu_object;
 
 struct drm_i915_file_private {
-	struct drm_i915_private *dev_priv;
+	struct kref kref;
 
 	union {
 		struct drm_file *file;
 		struct rcu_head rcu;
 	};
 
+	struct drm_i915_private *i915;
+
 	struct {
 		spinlock_t lock;
 		struct list_head request_list;
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index f19c678ebefc..a52fdae95f58 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1518,6 +1518,14 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
 	return 0;
 }
 
+static void gem_release(struct kref *kref)
+{
+	struct drm_i915_file_private *fpriv =
+		container_of(kref, typeof(*fpriv), kref);
+
+	kfree_rcu(fpriv, rcu);
+}
+
 void i915_gem_release(struct drm_device *dev, struct drm_file *file)
 {
 	struct drm_i915_file_private *file_priv = file->driver_priv;
@@ -1531,6 +1539,8 @@ void i915_gem_release(struct drm_device *dev, struct drm_file *file)
 	list_for_each_entry(request, &file_priv->mm.request_list, client_link)
 		request->file_priv = NULL;
 	spin_unlock(&file_priv->mm.lock);
+
+	kref_put(&file_priv->kref, gem_release);
 }
 
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
@@ -1544,8 +1554,10 @@ int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
 	if (!file_priv)
 		return -ENOMEM;
 
+	kref_init(&file_priv->kref);
+
 	file->driver_priv = file_priv;
-	file_priv->dev_priv = i915;
+	file_priv->i915 = i915;
 	file_priv->file = file;
 
 	spin_lock_init(&file_priv->mm.lock);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
