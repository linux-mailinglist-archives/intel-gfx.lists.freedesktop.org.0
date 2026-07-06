Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gAclNZCAS2oDSgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:16:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA3A70F07C
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:16:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=pixelcluster.dev header.s=ovhmo-selector-1 header.b=g9bm8HDG;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB8C10E885;
	Mon,  6 Jul 2026 10:16:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout3.mo534.mail-out.ovh.net
 (smtpout3.mo534.mail-out.ovh.net [51.210.94.142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE8DA10E893
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2026 10:16:45 +0000 (UTC)
Received: from director3.derp.mail-out.ovh.net
 (director3.derp.mail-out.ovh.net [152.228.215.222])
 by mo534.mail-out.ovh.net (Postfix) with ESMTPS id 4gv0SC1QPYz6JPw;
 Mon,  6 Jul 2026 10:08:43 +0000 (UTC)
Received: from director3.derp.mail-out.ovh.net
 (director3.derp.mail-out.ovh.net. [127.0.0.1])
 by director3.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
 for <alexander.deucher@amd.com>; Mon,  6 Jul 2026 10:08:43 +0000 (UTC)
Received: from mta6.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.110.101.1])
 by director3.derp.mail-out.ovh.net (Postfix) with ESMTPS id 4gv0SC0HkGz5vVf;
 Mon,  6 Jul 2026 10:08:43 +0000 (UTC)
Received: from pixelcluster.dev (unknown [10.1.6.11])
 (Authenticated sender: nat@pixelcluster.dev)
 by mta6.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id C78D98E1903; 
 Mon,  6 Jul 2026 10:08:40 +0000 (UTC)
X-OVh-ClientIp: 88.133.252.134
From: Natalie Vock <nat@pixelcluster.dev>
Date: Mon, 06 Jul 2026 12:07:43 +0200
Subject: [PATCH v2 01/10] drm/exec: Add helper to bypass IGNORE_DUPLICATES flag
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260706-ttm_2_drm_exec-v2-1-4bf6bfc0d320@pixelcluster.dev>
References: <20260706-ttm_2_drm_exec-v2-0-4bf6bfc0d320@pixelcluster.dev>
In-Reply-To: <20260706-ttm_2_drm_exec-v2-0-4bf6bfc0d320@pixelcluster.dev>
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
x-ovh-tracer-id: 9127389070351032636
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTEIx5EftTv6qDYynIITLbKmw2V9F73qkvPfwN+6GC3Ph5+oNBPVWeKaotSSyzsLEoE6aoNeT/z/sb6JP+NEna0IvjfnNYhnKja1q6dxD3Jb7I4shHgEmfwt4RwYwfWMrJeeSWT1tVWzr+1Wc90ClmqxXufcv16gHHKk4vjPweAJ7XZzvQwOvhu6mvw7q+gxZaRp/SFrLzBp8jROoK4pIBgRzH7e8vIhWqDQYAnvzOg3wwI7Cm5iQjWjEqopVyP5ALcEWcgRSjmo1GQmwlWMV5+MubgYMTlgg7JHi/WHKBd7/pcOIWar7nF/9t66zi6TVtVu8SSomL6KSZeUYk011HiNWwXLDfpjBPWLSvSdmxUcsM9aYjoysNMPJOKFE8nluG2E8EZqXxvA+mdjAaTXT/M1hQOgWTPGS3FLsqSsgERyjY0Br1rtM8lxfaynmnKDOuH5dZ+vO/avb+2EpJT6UC1E9mjeCIYddylpjZFBgn3hbF9yDSZ7uNN/fAYfTjCTxYuQiDPv0pGzoO0eyl15hzjbEzRQ/VK1jR6qfZ93H0FmF0209waqBTz34/Mma8XU0xZUqgviYlMEDvnVxtOFDxHZBrBZ9lSK/2y3UQH9rHkB8l9WEvVjpYo4ySKPMOFdcmGok13u2lMDPyXdHv3zDyhh9yq+yAiEhS+dEijzDsRwow
DKIM-Signature: a=rsa-sha256; bh=N1GjEJtFReJ0oNOCKsB1O/DXSe6xcHnaiP0zlVWxP2o=; 
 c=relaxed/relaxed; d=pixelcluster.dev; h=From;
 s=ovhmo-selector-1; t=1783332523; v=1;
 b=g9bm8HDGNv+oEfb4xMXacBXhP3UH0s3rxe5xsiBflxdCipgZVZmp2R+S7eagIy9MD95MFBpB
 1t4hpDTsp9SaS7WNVj2c2NaoZnM+HToChFhrlCeDLgiuMyPztfr8jdcRlO1xKzz1a3+PdTiBDCf
 c4Kg/aVBf73Vb0+4uRRZqbI21MqNELLsgPcIE5dVK09C4U8LdHHKg6whhUm1iYpCH7HmFgfrsc8
 1l7vc12HNKgdOYtmkKwGQtEeJnR0HwPpYZIUm6lN6oeh/EMZBQ1GdY4YFtzyq5q51u2/5zaVreG
 VIy62vzjyvuk/AIdvaALpSrURIxFsg8h74Nqmqy9Qhfig==
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
X-Spamd-Result: default: False [2.69 / 15.00];
	SEM_URIBL_FRESH15(3.00)[pixelcluster.dev:from_mime,pixelcluster.dev:email,pixelcluster.dev:mid,pixelcluster.dev:dkim];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pixelcluster.dev];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[pixelcluster.dev:s=ovhmo-selector-1];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:christian.koenig@amd.com,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:alexander.deucher@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[pixelcluster.dev:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[nat@pixelcluster.dev,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nat@pixelcluster.dev,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:131.252.210.177:c];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,pixelcluster.dev:from_mime,pixelcluster.dev:email,pixelcluster.dev:mid,pixelcluster.dev:dkim,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5EA3A70F07C

TTM is about to switch to drm_exec for locking objects
in the LRU list. When we're done processing the object, we want to
unlock it only if the caller doesn't already hold that lock. If
DRM_EXEC_IGNORE_DUPLICATES is set on the exec object (which callers may
require for unrelated reasons), we have no way of knowing whether the
lock is already held.

To remedy this, add a separate helper that forcefully bypasses the
IGNORE_DUPLICATES flag for only a single locking operation.

Signed-off-by: Natalie Vock <nat@pixelcluster.dev>
---
 drivers/gpu/drm/drm_exec.c | 54 ++++++++++++++++++++++++++++++++++------------
 include/drm/drm_exec.h     |  2 ++
 2 files changed, 42 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/drm_exec.c b/drivers/gpu/drm/drm_exec.c
index 7988f5e7d56a3..ec33ed4a523cc 100644
--- a/drivers/gpu/drm/drm_exec.c
+++ b/drivers/gpu/drm/drm_exec.c
@@ -190,18 +190,9 @@ static int drm_exec_lock_contended(struct drm_exec *exec)
 	return ret;
 }
 
-/**
- * drm_exec_lock_obj - lock a GEM object for use
- * @exec: the drm_exec object with the state
- * @obj: the GEM object to lock
- *
- * Lock a GEM object for use and grab a reference to it.
- *
- * Returns: -EDEADLK if a contention is detected, -EALREADY when object is
- * already locked (can be suppressed by setting the DRM_EXEC_IGNORE_DUPLICATES
- * flag), -ENOMEM when memory allocation failed and zero for success.
- */
-int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
+static int __drm_exec_lock_obj(struct drm_exec *exec,
+			       struct drm_gem_object *obj,
+			       bool ignore_duplicates)
 {
 	int ret;
 
@@ -226,8 +217,7 @@ int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
 		return -EDEADLK;
 	}
 
-	if (unlikely(ret == -EALREADY) &&
-	    exec->flags & DRM_EXEC_IGNORE_DUPLICATES)
+	if (unlikely(ret == -EALREADY) && ignore_duplicates)
 		return 0;
 
 	if (unlikely(ret))
@@ -243,8 +233,44 @@ int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
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
+ * Returns: -EDEADLK if a contention is detected, -EALREADY when object is
+ * already locked (can be suppressed by setting the DRM_EXEC_IGNORE_DUPLICATES
+ * flag), -ENOMEM when memory allocation failed and zero for success.
+ */
+int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
+{
+	return __drm_exec_lock_obj(exec, obj,
+				   exec->flags & DRM_EXEC_IGNORE_DUPLICATES);
+}
 EXPORT_SYMBOL(drm_exec_lock_obj);
 
+/**
+ * drm_exec_lock_obj_report_dup - lock a GEM object for use, but always report duplicates
+ * @exec: the drm_exec object with the state
+ * @obj: the GEM object to lock
+ *
+ * Like drm_exec_lock_obj, lock a GEM object for use and grab a reference to it.
+ * Unlike drm_exec_lock_obj, DRM_EXEC_IGNORE_DUPLICATES is ignored and duplicates are
+ * always reported.
+ *
+ * Returns: -EDEADLK if a contention is detected, -EALREADY when object is
+ * already locked, -ENOMEM when memory allocation failed and zero for success.
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
--- a/include/drm/drm_exec.h
+++ b/include/drm/drm_exec.h
@@ -176,6 +176,8 @@ void drm_exec_init(struct drm_exec *exec, u32 flags, unsigned nr);
 void drm_exec_fini(struct drm_exec *exec);
 bool drm_exec_cleanup(struct drm_exec *exec);
 int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj);
+int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
+				 struct drm_gem_object *obj);
 void drm_exec_unlock_obj(struct drm_exec *exec, struct drm_gem_object *obj);
 int drm_exec_prepare_obj(struct drm_exec *exec, struct drm_gem_object *obj,
 			 unsigned int num_fences);

-- 
2.55.0

