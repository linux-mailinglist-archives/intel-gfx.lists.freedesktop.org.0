Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3mAAG9lvVWqkoQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 01:08:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F356174F9FE
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 01:08:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=igalia.com header.s=20170329 header.b=Lu2ot6s3;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1224E10EB61;
	Mon, 13 Jul 2026 23:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8811E10EB61;
 Mon, 13 Jul 2026 23:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wNmmFNAwI9FcQSiSm7+xoqkJ4Ka7jjK3NBV2GA8RMvY=; b=Lu2ot6s3kpYOk+s+b7mb4WmnOF
 ICeW7PWqPR2lHN8CC4jH4JMoFm74JAVY6Mmk0ZJeS6RTlb4HZJUbYKlwytPBf/3QRvcn8LzXzFgOu
 84FWGLDYNfeMG6ejIQE67SdzlZSln6wm0r+U6V/2oUuF0fzdUwZ4YSp2wiR/+QbSJ7hAzvKOwJTBW
 VCjhhjV8LXXUlhPT3nM0nKC/hjyE7LOQQG/OA9dzOck9N6Ia8tliSC3jGClZvAmUC94EVcn+TGaG+
 2QZVBckD+O1Zp7nhPZtLI6eBo23yAZujTbL/3TQ0zrTsfyahYskodFIUoon/uke7ijuD2lvZYutms
 Qw6RB4ug==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=localhost.localdomain) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1wjPkm-00EiHA-0Y; Tue, 14 Jul 2026 01:08:00 +0200
From: John Harrison <John.Harrison@Igalia.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: kernel-dev@igalia.com, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v7 1/9] drm/managed: implement managed versions of
 kzalloc_obj/objs()
Date: Mon, 13 Jul 2026 16:07:17 -0700
Message-ID: <20260713230726.3738290-2-John.Harrison@Igalia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260713230726.3738290-1-John.Harrison@Igalia.com>
References: <20260713230726.3738290-1-John.Harrison@Igalia.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Igalia.com:from_mime,Igalia.com:mid,igalia.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F356174F9FE

From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

The kzalloc_obj() and kzalloc_objs() functions have proven to be
useful and are widely used by the reset of the kernel. Implement
drm_device-managed versions of those macros to mix the nice interface
with the automatic freeing of the pointers.

Note: the original macros accept optional GFP_foo arguments. They are
skipped for now, making all allocations use GFP_KERNEL. If necessary,
support for overriding the GFP type can be introduced later.

v2: Made use of 'p' vs 'P' consistent, add typecast of returned pointer.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: John Harrison <John.Harrison@Igalia.com>
Reviewed-by: John Harrison <John.Harrison@Igalia.com>
---
 include/drm/drm_managed.h | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
index 72d0d68be226..4614d49748cf 100644
--- a/include/drm/drm_managed.h
+++ b/include/drm/drm_managed.h
@@ -105,6 +105,29 @@ static inline void *drmm_kcalloc(struct drm_device *dev,
 	return drmm_kmalloc_array(dev, n, size, flags | __GFP_ZERO);
 }
 
+/**
+ * drmm_kzalloc_objs - &drm_device-managed kzalloc_objs()
+ * @dev: DRM device
+ * @P: Variable or type to allocate an array of
+ * @count: How many elements in the array
+ *
+ * Returns: newly allocated pointer to the zeroed array of @P on success, or
+ * NULL on failure.
+ */
+#define drmm_kzalloc_objs(dev, P, count) \
+	((typeof(P) *) drmm_kcalloc(dev, count, sizeof(typeof(P)), GFP_KERNEL))
+
+/**
+ * drmm_kzalloc_obj - &drm_device-managed kzalloc_obj()
+ * @dev: DRM device
+ * @P: Variable or type to allocate
+ *
+ * Returns: newly allocated pointer to zeroed instance of @P on success,
+ * or NULL on failure.
+ */
+#define drmm_kzalloc_obj(dev, P) \
+	drmm_kzalloc_objs(dev, P, 1)
+
 char *drmm_kstrdup(struct drm_device *dev, const char *s, gfp_t gfp);
 
 void drmm_kfree(struct drm_device *dev, void *data);
-- 
2.43.0

