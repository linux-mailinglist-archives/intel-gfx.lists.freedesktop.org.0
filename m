Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKSfDFdzymnG8gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BF335B6F5
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDECE10E701;
	Mon, 30 Mar 2026 12:57:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rsJ1vhD5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com
 [209.85.160.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D8E510EBB9
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:10 +0000 (UTC)
Received: by mail-oa1-f46.google.com with SMTP id
 586e51a60fabf-41576c5c01cso891019fac.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551309; x=1775156109; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fhkUA1UVesD8yNrP4RsQIbF+Lt6WpQrbgggJ/VjIv9U=;
 b=rsJ1vhD5+kYQ+qJIv7BPsWZblY/S4YGV6NPAn7+1+/syCzP1iEgsw2l5BGIKuIUh9o
 EzvIQIC775YuZcmfwUmcdo/BLYrNQ79cVWKhA3Z4yPjaKF3DAy0YCIhWD475vJveAMP/
 iWyDWAzoopBeyF4iVy09bCOdozhKUH6MkFIABEJ9NnnWtND6oP/dqaUKnDHhMgP5dCrx
 rv38rpiBe15T09n5rSEc7NdpEX2zo5hJVfz9onpBoJNDX2WFugl63SoxNd1Ms1EToyfL
 ideZcIWRj14qyUOQQ/jReKFuKFYE33YjigL01JI0MoMzdbEIBzymfpiKRO+HFqJh4Rto
 Inng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551309; x=1775156109;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=fhkUA1UVesD8yNrP4RsQIbF+Lt6WpQrbgggJ/VjIv9U=;
 b=mw1ZOh3PPNRl0myKxGILWN5Y6lOsRmAms8qWiFwnbQfzVvtIzoz8hFSWgDb+8oKXYO
 f8VcNzfl0ahTbWCVPDhkQOQbbtQcld8DB5C9MXCZ8KAsjfeQxV04JtBZyJga37YmGIWQ
 TlEKZksrKbh1HT8z2U01FwEy6ChIPnCW5g0RGTA3O3LGPAG/bs8syEaJ52IBFvoKD3iC
 MGvL2pxvNg5r5BxnbU2Kkcp2/UFfFW4LS+upMlXo56ccDs4331SOBbaE6lR2hwO+gjyC
 KnJgmczDVFUO8EJ/WoplukFfcbrqMn15o1WsZV+0BlOri5y+ByxdPiwanhj3jZZKUecc
 51tQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGUsL39q4nLauOnBiyZKkZ70an+khjGLs5wTrgAQn8EYzJ5xUTCmLAS2Lfgv5PG6UHlU6n+cM5WLA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwNViPMZrLQHjruAOxNLlhNTHuLP71+0+iYNryBHDpR3+hf5umo
 Q+UcXnHP6tZIAaOoEaH3gLWJlCT8XJwJGgCsrk5wk3uY3xYyGhwVoNVb
X-Gm-Gg: ATEYQzyy2rwHhCoclcsndGIb6/qNZ7XoFl3xjxLssQsXgFqgY3gXwLBGEL0s203S7L7
 BXtyHrrNSIqbm4MNme8YJrzmYSHkZfkwcQJpmlQ3Rb4cwjFfbcQCsYb287FOHYWDWT7/LgUVLKY
 3tWbCQDDqRAzTaLoIOYpbY1MndyzvtgJGWAsifND/4Ju77tGB7RgUy92DgX2YfJMe3bKOPD+688
 kmE3AvBIenOOFMS6WUEi+BpA2xbK4a4xy+gvWnXZWlMLSc1s7D95J23VZ/YhTGMWuaCmrdSY0jf
 +O4GUUtf5EQ3T2JOmTIuQzcgQTRpcx2D6hWHBL4WyUaLF0DH0R+bd8373HnehqN3k38piYZLmN0
 taosCzl/Kpl2I0pVc2JvMOvuWMYpiohfVMA/0LNisZd91+5BqFYQ91qUV2v+/BF91Z7+nT0ZURJ
 6DldcPRGe7uWKOiiHnb3RcUrLLjlYm+LYV4/3YY+gX6aWAimbC
X-Received: by 2002:a05:6871:820d:b0:404:1250:1c1f with SMTP id
 586e51a60fabf-41ca6d160c2mr4341523fac.5.1774551309361; 
 Thu, 26 Mar 2026 11:55:09 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:08 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org
Cc: jim.cromie@gmail.com, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v12 26/69] dyndbg: detect class_id reservation conflicts
Date: Thu, 26 Mar 2026 12:53:30 -0600
Message-ID: <20260326185413.1205870-27-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260326185413.1205870-1-jim.cromie@gmail.com>
References: <20260326185413.1205870-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 30 Mar 2026 12:57:43 +0000
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[90];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: D6BF335B6F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

If a module _DEFINEs 2 or more classmaps, it must devise them to share
the per-module 0..62 class-id space; ie their respective base,+length
reservations cannot overlap.

To detect conflicts at modprobe, add ddebug_class_range_overlap(),
call it from ddebug_add_module(), and WARN and return -EINVAL when
they're detected.

This insures that class_id -> classname lookup has just 1 answer, so
the 1st-found search in find-class-name works properly.

test_dynamic_debug.c:

If built with -DFORCE_CLASSID_CONFLICT, the test-modules invoke 2
conflicting DYNAMIC_DEBUG_CLASSMAP_DEFINE() declarations, into parent
and the _submod.  These conflict with one of the good ones in the
parent (D2_CORE..etc), causing the modprobe(s) to WARN and fail.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
v9 - fix WARN() by adding new 1st arg 1.
v12 - drop maybe_unused on range-overlap fn
---
 lib/dynamic_debug.c      | 25 +++++++++++++++++++------
 lib/test_dynamic_debug.c |  8 ++++++++
 2 files changed, 27 insertions(+), 6 deletions(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index ce512efaeffd..a7f67ecbc4d7 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -1085,12 +1085,17 @@ static void *ddebug_proc_next(struct seq_file *m, void *p, loff_t *pos)
 	return dp;
 }
 
-static bool ddebug_class_in_range(const int class_id, const struct _ddebug_class_map *map)
+static bool ddebug_class_map_in_range(const int class_id, const struct _ddebug_class_map *map)
 {
 	return (class_id >= map->base &&
 		class_id < map->base + map->length);
 }
 
+static bool ddebug_class_user_in_range(const int class_id, const struct _ddebug_class_user *user)
+{
+	return ddebug_class_map_in_range(class_id - user->offset, user->map);
+}
+
 static const char *ddebug_class_name(struct _ddebug_info *di, struct _ddebug *dp)
 {
 	struct _ddebug_class_map *map;
@@ -1098,11 +1103,11 @@ static const char *ddebug_class_name(struct _ddebug_info *di, struct _ddebug *dp
 	int i;
 
 	for_subvec(i, map, di, maps)
-		if (ddebug_class_in_range(dp->class_id, map))
+		if (ddebug_class_map_in_range(dp->class_id, map))
 			return map->class_names[dp->class_id - map->base];
 
 	for_subvec(i, cli, di, users)
-		if (ddebug_class_in_range(dp->class_id, cli->map))
+		if (ddebug_class_user_in_range(dp->class_id, cli))
 			return cli->map->class_names[dp->class_id - cli->map->base - cli->offset];
 
 	return NULL;
@@ -1295,9 +1300,7 @@ static void ddebug_apply_class_users(const struct _ddebug_info *di)
 	__di->_vec.len = __nc;						\
 })
 
-static int __maybe_unused
-ddebug_class_range_overlap(struct _ddebug_class_map *cm,
-			   u64 *reserved_ids)
+static int ddebug_class_range_overlap(struct _ddebug_class_map *cm, u64 *reserved_ids)
 {
 	u64 range = (((1ULL << cm->length) - 1) << cm->base);
 
@@ -1320,6 +1323,7 @@ static int ddebug_add_module(struct _ddebug_info *di)
 	struct ddebug_table *dt;
 	struct _ddebug_class_map *cm;
 	struct _ddebug_class_user *cli;
+	u64 reserved_ids = 0;
 	int i;
 
 	if (!di->descs.len)
@@ -1344,6 +1348,11 @@ static int ddebug_add_module(struct _ddebug_info *di)
 	dd_set_module_subrange(i, cli, &dt->info, users);
 	/* now di is stale */
 
+	/* insure 2+ classmaps share the per-module 0..62 class_id space */
+	for_subvec(i, cm, &dt->info, maps)
+		if (ddebug_class_range_overlap(cm, &reserved_ids))
+			goto cleanup;
+
 	mutex_lock(&ddebug_lock);
 	list_add_tail(&dt->link, &ddebug_tables);
 	mutex_unlock(&ddebug_lock);
@@ -1356,6 +1365,10 @@ static int ddebug_add_module(struct _ddebug_info *di)
 	vpr_info("%3u debug prints in module %s\n",
 		 dt->info.descs.len, dt->info.mod_name);
 	return 0;
+cleanup:
+	WARN_ONCE(1, "dyndbg multi-classmap conflict in %s\n", di->mod_name);
+	kfree(dt);
+	return -EINVAL;
 }
 
 /* helper for ddebug_dyndbg_(boot|module)_param_cb */
diff --git a/lib/test_dynamic_debug.c b/lib/test_dynamic_debug.c
index 6c4548f63512..fc599bbe605e 100644
--- a/lib/test_dynamic_debug.c
+++ b/lib/test_dynamic_debug.c
@@ -128,6 +128,14 @@ DYNAMIC_DEBUG_CLASSMAP_DEFINE(map_level_num, DD_CLASS_TYPE_LEVEL_NUM,
 DYNAMIC_DEBUG_CLASSMAP_PARAM(disjoint_bits, p);
 DYNAMIC_DEBUG_CLASSMAP_PARAM(level_num, p);
 
+#ifdef FORCE_CLASSID_CONFLICT
+/*
+ * Enable with -Dflag on compile to test overlapping class-id range
+ * detection.  This should warn on modprobes.
+ */
+DYNAMIC_DEBUG_CLASSMAP_DEFINE(classid_range_conflict, 0, D2_CORE + 1, "D3_CORE");
+#endif
+
 #else /* TEST_DYNAMIC_DEBUG_SUBMOD */
 
 /*
-- 
2.53.0

