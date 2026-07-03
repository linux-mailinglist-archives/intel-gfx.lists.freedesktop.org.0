Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u1roCzzwR2p+hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC73E704A0B
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmx.de header.s=s31663417 header.b=HT1qk7Ke;
	dmarc=pass (policy=quarantine) header.from=gmx.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF5A810F888;
	Fri,  3 Jul 2026 17:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 251E010E64C;
 Fri,  3 Jul 2026 16:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1783096367; x=1783701167; i=natalie.vock@gmx.de;
 bh=N8mgjM/cCK0js9ROvtnWoqS1YFpuA7rCkxJktFtGA/M=;
 h=X-UI-Sender-Class:From:Date:Subject:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Message-Id:References:In-Reply-To:To:Cc:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=HT1qk7KeWeXh+cIFsi2aG8fzkUGB/ZtDvhIvtr1y0luDCz2YbIcNgw2FDAnR8rpW
 PSM4zqeaL4OyBlfvaKepDKmvBfwCksJA9Qd++julgLmt2/IRBXeU13V1yb3JgyaNa
 fwzV3bCcN6ezeZ0Zrn+G45clVw5kOrFHRBkpNLfZqSHAdXB+d0q3/LN/N4ag9/TDh
 TzO0XYlA6m3Xv9WOMiWqmBaHns6uaRrUHy0M07zHK0P5wCKtJ7m1cV/3sTVRFrUIt
 +3sh9Vry/94SVvxE53I0ngktWfBtxhpC+H8DX9+kDttSU4znkYcQdG+TO5eyU4eSq
 H9xk6BdcAaeh/CikEw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N6bjy-1xAoz32FO2-0159Wy; Fri, 03
 Jul 2026 18:32:47 +0200
From: Natalie Vock <natalie.vock@gmx.de>
Date: Fri, 03 Jul 2026 18:31:21 +0200
Subject: [PATCH 01/10] drm/exec: Add helper to bypass IGNORE_DUPLICATES
 flag
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20260703-ttm_2_drm_exec-v1-1-43685ac1286b@gmx.de>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
In-Reply-To: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>, 
 Matthew Auld <matthew.auld@intel.com>, 
 Matthew Brost <matthew.brost@intel.com>, 
 =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Alex Deucher <alexander.deucher@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org
X-Mailer: b4 0.15.2
X-Provags-ID: V03:K1:o6aCDQs8r1KOxfH7O2MZ3goKe/KMSR+LY9m8xiUwhFUZtDyYFnq
 r1lb+0MKeUMwK7Utpnz9t3gyVe2DfJLKIMdpnvQD0t0mhyuicY17BNxC+oAnkfSToj5VNus
 4laO1GIHznnm4NTpN44v0zmaRLp8zsADs8dg0jysQhAtCAX9XCfJ3BhQwwheNn88GI1yPpM
 YFpYpcFDEl6NZKdRUxjSg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:/Qc0IQt0K10=;OJ3nPGk+LlmTfxWwtbwas02suJH
 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
 t1VCca9VHi4l0qJoN0=
X-Mailman-Approved-At: Fri, 03 Jul 2026 17:24:06 +0000
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmx.de,quarantine];
	R_DKIM_ALLOW(-0.20)[gmx.de:s=s31663417];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmx.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[natalie.vock@gmx.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmx.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gmx.de:from_mime,gmx.de:email,gmx.de:mid,gmx.de:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC73E704A0B

TTM is about to switch to drm_exec for locking objects
in the LRU list. When we're done processing the object, we want to
unlock it only if the caller doesn't already hold that lock. If
DRM_EXEC_IGNORE_DUPLICATES is set on the exec object (which callers may
require for unrelated reasons), we have no way of knowing whether the
lock is already held.

To remedy this, add a separate helper that forcefully bypasses the
IGNORE_DUPLICATES flag for only a single locking operation.

Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
=2D--
 drivers/gpu/drm/drm_exec.c | 52 ++++++++++++++++++++++++++++++++++-------=
=2D----
 include/drm/drm_exec.h     |  2 ++
 2 files changed, 41 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/drm_exec.c b/drivers/gpu/drm/drm_exec.c
index 7988f5e7d56a3..91de6b4d29df8 100644
=2D-- a/drivers/gpu/drm/drm_exec.c
+++ b/drivers/gpu/drm/drm_exec.c
@@ -190,18 +190,9 @@ static int drm_exec_lock_contended(struct drm_exec *e=
xec)
 	return ret;
 }
=20
-/**
- * drm_exec_lock_obj - lock a GEM object for use
- * @exec: the drm_exec object with the state
- * @obj: the GEM object to lock
- *
- * Lock a GEM object for use and grab a reference to it.
- *
- * Returns: -EDEADLK if a contention is detected, -EALREADY when object i=
s
- * already locked (can be suppressed by setting the DRM_EXEC_IGNORE_DUPLI=
CATES
- * flag), -ENOMEM when memory allocation failed and zero for success.
- */
-int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
+static int __drm_exec_lock_obj(struct drm_exec *exec,
+			       struct drm_gem_object *obj,
+			       bool always_report_duplicates)
 {
 	int ret;
=20
@@ -226,7 +217,7 @@ int drm_exec_lock_obj(struct drm_exec *exec, struct dr=
m_gem_object *obj)
 		return -EDEADLK;
 	}
=20
-	if (unlikely(ret =3D=3D -EALREADY) &&
+	if (unlikely(ret =3D=3D -EALREADY) && !always_report_duplicates &&
 	    exec->flags & DRM_EXEC_IGNORE_DUPLICATES)
 		return 0;
=20
@@ -243,8 +234,43 @@ int drm_exec_lock_obj(struct drm_exec *exec, struct d=
rm_gem_object *obj)
 	dma_resv_unlock(obj->resv);
 	return ret;
 }
+
+/**
+ * drm_exec_lock_obj - lock a GEM object for use
+ * @exec: the drm_exec object with the state
+ * @obj: the GEM object to lock
+ *
+ * Lock a GEM object for use and grab a reference to it.
+ *
+ * Returns: -EDEADLK if a contention is detected, -EALREADY when object i=
s
+ * already locked (can be suppressed by setting the DRM_EXEC_IGNORE_DUPLI=
CATES
+ * flag), -ENOMEM when memory allocation failed and zero for success.
+ */
+int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
+{
+	return __drm_exec_lock_obj(exec, obj, false);
+}
 EXPORT_SYMBOL(drm_exec_lock_obj);
=20
+/**
+ * drm_exec_lock_obj_report_dup - lock a GEM object for use, but always r=
eport duplicates
+ * @exec: the drm_exec object with the state
+ * @obj: the GEM object to lock
+ *
+ * Like drm_exec_lock_obj, lock a GEM object for use and grab a reference=
 to it.
+ * Unlike drm_exec_lock_obj, DRM_EXEC_IGNORE_DUPLICATES is ignored and du=
plicates are
+ * always reported.
+ *
+ * Returns: -EDEADLK if a contention is detected, -EALREADY when object i=
s
+ * already locked, -ENOMEM when memory allocation failed and zero for suc=
cess.
+ */
+int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
+				 struct drm_gem_object *obj)
+{
+	return __drm_exec_lock_obj(exec, obj, false);
+}
+EXPORT_SYMBOL(drm_exec_lock_obj_report_dup);
+
 /**
  * drm_exec_unlock_obj - unlock a GEM object in this exec context
  * @exec: the drm_exec object with the state
diff --git a/include/drm/drm_exec.h b/include/drm/drm_exec.h
index 8725ba92ff916..ff80dd2b72240 100644
=2D-- a/include/drm/drm_exec.h
+++ b/include/drm/drm_exec.h
@@ -176,6 +176,8 @@ void drm_exec_init(struct drm_exec *exec, u32 flags, u=
nsigned nr);
 void drm_exec_fini(struct drm_exec *exec);
 bool drm_exec_cleanup(struct drm_exec *exec);
 int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj);
+int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
+				 struct drm_gem_object *obj);
 void drm_exec_unlock_obj(struct drm_exec *exec, struct drm_gem_object *ob=
j);
 int drm_exec_prepare_obj(struct drm_exec *exec, struct drm_gem_object *ob=
j,
 			 unsigned int num_fences);

=2D-=20
2.55.0

