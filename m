Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMf/D1dzymlQ9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFCE35B6F4
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9EE210E709;
	Mon, 30 Mar 2026 12:57:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dgBjeuIT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B773810EBC6
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:14 +0000 (UTC)
Received: by mail-oi1-f169.google.com with SMTP id
 5614622812f47-464bba3a9easo828238b6e.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551314; x=1775156114; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=emP3nQcuNL/ne18G73lPz2QFpBWIEZlStjMlA9+Jcn0=;
 b=dgBjeuITuEgb7kmV6YKGTYbtcfvC9ELbLTZx1Cnel5uGIksULIxSdi7QFQvGzQnbuH
 iZ6QotLWpH/LVBmyL0M7HYHFBxdEwyikHWqyBgLY7a0iMD67wAR+N6V3CfhwPtFYfGEF
 C4XqECCAjWsEXvhK2dogwhzH91mXq8Lf3xpB6O2uJmWVbFBf6FAQiPvb/IV6OPnm3AEZ
 Tq3qQsZB8k6IfdJRNERNY8vaPeas0L7EgxCO4Nhlksh6JyqHiSsJoaMslmFyJkBa1k/w
 1iQEe/WZushfcALByQBfyDTSRpN9b5NwFjmLyrlRZ1r7DHMhMQi5PjQ6rBE8Kix7FijJ
 kIzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551314; x=1775156114;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=emP3nQcuNL/ne18G73lPz2QFpBWIEZlStjMlA9+Jcn0=;
 b=h514FSuklPSwN0kpFeVuJ7s/c6sGeDMvGrVrcD8klrUEw9Lhq88zyThaBXGG7BFZDn
 MC63Uo6qy/S4rj9EDcb/470v+KbygIlq9Kbx/n2CWYmH5YStpPj89kTqrKjc9Omo/keS
 7W0WAMHAXw7B/jENaq/xzxRrt36OhPTld4mM5z8jOaq39VZ7qpOfhqZYWl92SiGxioUt
 142SOOb8QdVfYjYa4hb8dpHhsH9z2P9gHqJ+Jr8byMukQAlQJptUXCefsYBToGCKUNN+
 nyXAGlgFovPR0sKOjV9Yi/DmD+APLlQbIb4fZpC+fXcV4wbR5OUEYDIktEa1N0E80Stu
 vTAw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWRoD1ufBYCrHEUwu7c35K/dDhP704aPCgRRKCsZpIvKEpxmpvqmd5UhE1zik+RU9dGuMj6jXPoJR8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyMjUaMZExoETXWNW2LtoP913dviot816MmO+U9OEbJUikiX4BB
 k4e6lfcYdeB9agoAr04bfL6zPBIUIDvCi9YoPy86bYsbjTG3cGTsE+w9
X-Gm-Gg: ATEYQzwfgLJMuC95HydUzUdKPF3nalfgnEXIv1naN4aCH5hiaa901jCKmWozdcDd80V
 z5ik1PLOBvshDfeyEFaR99xVTqXEOsr/hdXwOu/GT6pV+21gdY0S2Xq+CCoFrmaYnwSkA2mqeic
 quxkD0CVECoCQ/3B0Gpc244MYEzywO5S4iIR0GOMgMRm9O+/JPxHVqC8tBWhcACQTmsRz6wiLIE
 fDei3fQswAvXWtB30sT5JpAJJuP7ycJSPpUy4c2KZxHsz4n3loGsQCbhBU/LTtlBB4FQr91OG2j
 yM1TcboUwSzdH5BmvbIIquTueQgG9lMlHExrDuyCgInUkCRqTd74u5a6b4nB1gGb5LITD3ERVEP
 tVEe7OdX7uGHxIjc5/hPs9com9RYrhgjFr+Bc1fATJWOxqB1xCYsdwCO4OXMXvw3ePvZPVaGIYB
 grXgCaOzDHE81Xq1md6vXbI+/I+nU7Am5g8Sh6OMIkRcuEDTW+
X-Received: by 2002:a05:6808:4f4c:b0:467:f3d4:fc4e with SMTP id
 5614622812f47-46a5c719aa6mr4130081b6e.33.1774551313851; 
 Thu, 26 Mar 2026 11:55:13 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:13 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org
Cc: jim.cromie@gmail.com, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v12 29/69] dyndbg-API: promote DYNAMIC_DEBUG_CLASSMAP_PARAM to
 API
Date: Thu, 26 Mar 2026 12:53:33 -0600
Message-ID: <20260326185413.1205870-30-jim.cromie@gmail.com>
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
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
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
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org,vger.kernel.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: CCFCE35B6F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

move the DYNAMIC_DEBUG_CLASSMAP_PARAM macro from test-dynamic-debug.c into
the header, and refine it, by distinguishing the 2 use cases:

1.DYNAMIC_DEBUG_CLASSMAP_PARAM_REF
    for DRM, to pass in extern __drm_debug by name.
    dyndbg keeps bits in it, so drm can still use it as before

2.DYNAMIC_DEBUG_CLASSMAP_PARAM
    new user (test_dynamic_debug) doesn't need to share state,
    decls a static long unsigned int to store the bitvec.

__DYNAMIC_DEBUG_CLASSMAP_PARAM
   bottom layer - allocate,init a ddebug-class-param, module-param-cb.

Modify ddebug_sync_classbits() argtype deref inside the fn, to give
access to all kp members.

Also add stub macros, clean up and improve comments in test-code, and
add MODULE_DESCRIPTIONs.

cc: linux-doc@vger.kernel.org
Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 include/linux/dynamic_debug.h   | 40 ++++++++++++++++++++++
 lib/dynamic_debug.c             | 60 ++++++++++++++++++++++-----------
 lib/test_dynamic_debug.c        | 47 ++++++++++----------------
 lib/test_dynamic_debug_submod.c |  9 ++++-
 4 files changed, 106 insertions(+), 50 deletions(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index a1c75237abaa..1cae9a2f32d7 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -273,6 +273,44 @@ struct _ddebug_class_param {
 		.offset = _offset					\
 	}
 
+/**
+ * DYNAMIC_DEBUG_CLASSMAP_PARAM - control a ddebug-classmap from a sys-param
+ * @_name:  sysfs node name
+ * @_var:   name of the classmap var defining the controlled classes/bits
+ * @_flags: flags to be toggled, typically just 'p'
+ *
+ * Creates a sysfs-param to control the classes defined by the
+ * exported classmap, with bits 0..N-1 mapped to the classes named.
+ * This version keeps class-state in a private long int.
+ */
+#define DYNAMIC_DEBUG_CLASSMAP_PARAM(_name, _var, _flags)		\
+	static unsigned long _name##_bvec;				\
+	__DYNAMIC_DEBUG_CLASSMAP_PARAM(_name, _name##_bvec, _var, _flags)
+
+/**
+ * DYNAMIC_DEBUG_CLASSMAP_PARAM_REF - wrap a classmap with a controlling sys-param
+ * @_name:  sysfs node name
+ * @_bits:  name of the module's unsigned long bit-vector, ex: __drm_debug
+ * @_var:   name of the (exported) classmap var defining the classes/bits
+ * @_flags: flags to be toggled, typically just 'p'
+ *
+ * Creates a sysfs-param to control the classes defined by the
+ * exported clasmap, with bits 0..N-1 mapped to the classes named.
+ * This version keeps class-state in user @_bits.  This lets drm check
+ * __drm_debug elsewhere too.
+ */
+#define DYNAMIC_DEBUG_CLASSMAP_PARAM_REF(_name, _bits, _var, _flags)	\
+	__DYNAMIC_DEBUG_CLASSMAP_PARAM(_name, _bits, _var, _flags)
+
+#define __DYNAMIC_DEBUG_CLASSMAP_PARAM(_name, _bits, _var, _flags)	\
+	static struct _ddebug_class_param _name##_##_flags = {		\
+		.bits = &(_bits),					\
+		.flags = #_flags,					\
+		.map = &(_var),						\
+	};								\
+	module_param_cb(_name, &param_ops_dyndbg_classes,		\
+			&_name##_##_flags, 0600)
+
 extern __printf(2, 3)
 void __dynamic_pr_debug(struct _ddebug *descriptor, const char *fmt, ...);
 
@@ -455,6 +493,8 @@ void __dynamic_ibdev_dbg(struct _ddebug *descriptor,
 
 #define DYNAMIC_DEBUG_CLASSMAP_DEFINE(_var, _mapty, _base, ...)
 #define DYNAMIC_DEBUG_CLASSMAP_USE(_var)
+#define DYNAMIC_DEBUG_CLASSMAP_PARAM(_name, _var, _flags)
+#define DYNAMIC_DEBUG_CLASSMAP_PARAM_REF(_name, _var, _flags)
 #define DEFINE_DYNAMIC_DEBUG_METADATA(name, fmt)
 #define DYNAMIC_DEBUG_BRANCH(descriptor) false
 #define DECLARE_DYNDBG_CLASSMAP(...)
diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index a7f67ecbc4d7..c6f3b0452dfa 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -687,6 +687,30 @@ static int ddebug_apply_class_bitmap(const struct _ddebug_class_param *dcp,
 
 #define CLASSMAP_BITMASK(width) ((1UL << (width)) - 1)
 
+static void ddebug_class_param_clamp_input(unsigned long *inrep, const struct kernel_param *kp)
+{
+	const struct _ddebug_class_param *dcp = kp->arg;
+	const struct _ddebug_class_map *map = dcp->map;
+
+	switch (map->map_type) {
+	case DD_CLASS_TYPE_DISJOINT_BITS:
+		/* expect bits. mask and warn if too many */
+		if (*inrep & ~CLASSMAP_BITMASK(map->length)) {
+			pr_warn("%s: input: 0x%lx exceeds mask: 0x%lx, masking\n",
+				KP_NAME(kp), *inrep, CLASSMAP_BITMASK(map->length));
+			*inrep &= CLASSMAP_BITMASK(map->length);
+		}
+		break;
+	case DD_CLASS_TYPE_LEVEL_NUM:
+		/* input is bitpos, of highest verbosity to be enabled */
+		if (*inrep > map->length) {
+			pr_warn("%s: level:%ld exceeds max:%d, clamping\n",
+				KP_NAME(kp), *inrep, map->length);
+			*inrep = map->length;
+		}
+		break;
+	}
+}
 static int param_set_dyndbg_module_classes(const char *instr,
 					   const struct kernel_param *kp,
 					   const char *mod_name)
@@ -705,26 +729,15 @@ static int param_set_dyndbg_module_classes(const char *instr,
 		pr_err("expecting numeric input, not: %s > %s\n", instr, KP_NAME(kp));
 		return -EINVAL;
 	}
+	ddebug_class_param_clamp_input(&inrep, kp);
 
 	switch (map->map_type) {
 	case DD_CLASS_TYPE_DISJOINT_BITS:
-		/* expect bits. mask and warn if too many */
-		if (inrep & ~CLASSMAP_BITMASK(map->length)) {
-			pr_warn("%s: input: 0x%lx exceeds mask: 0x%lx, masking\n",
-				KP_NAME(kp), inrep, CLASSMAP_BITMASK(map->length));
-			inrep &= CLASSMAP_BITMASK(map->length);
-		}
 		v2pr_info("bits:0x%lx > %s.%s\n", inrep, mod_name ?: "*", KP_NAME(kp));
 		totct += ddebug_apply_class_bitmap(dcp, &inrep, *dcp->bits, mod_name);
 		*dcp->bits = inrep;
 		break;
 	case DD_CLASS_TYPE_LEVEL_NUM:
-		/* input is bitpos, of highest verbosity to be enabled */
-		if (inrep > map->length) {
-			pr_warn("%s: level:%ld exceeds max:%d, clamping\n",
-				KP_NAME(kp), inrep, map->length);
-			inrep = map->length;
-		}
 		old_bits = CLASSMAP_BITMASK(*dcp->lvl);
 		new_bits = CLASSMAP_BITMASK(inrep);
 		v2pr_info("lvl:%ld bits:0x%lx > %s\n", inrep, new_bits, KP_NAME(kp));
@@ -1200,15 +1213,24 @@ static const struct proc_ops proc_fops = {
 static void ddebug_sync_classbits(const struct kernel_param *kp, const char *modname)
 {
 	const struct _ddebug_class_param *dcp = kp->arg;
+	unsigned long new_bits;
 
-	/* clamp initial bitvec, mask off hi-bits */
-	if (*dcp->bits & ~CLASSMAP_BITMASK(dcp->map->length)) {
-		*dcp->bits &= CLASSMAP_BITMASK(dcp->map->length);
-		v2pr_info("preset classbits: %lx\n", *dcp->bits);
+	ddebug_class_param_clamp_input(dcp->bits, kp);
+
+	switch (dcp->map->map_type) {
+	case DD_CLASS_TYPE_DISJOINT_BITS:
+		v2pr_info("  %s: classbits: 0x%lx\n", KP_NAME(kp), *dcp->bits);
+		ddebug_apply_class_bitmap(dcp, dcp->bits, 0UL, modname);
+		break;
+	case DD_CLASS_TYPE_LEVEL_NUM:
+		new_bits = CLASSMAP_BITMASK(*dcp->lvl);
+		v2pr_info("  %s: lvl:%ld bits:0x%lx\n", KP_NAME(kp), *dcp->lvl, new_bits);
+		ddebug_apply_class_bitmap(dcp, &new_bits, 0UL, modname);
+		break;
+	default:
+		pr_err("bad map type %d\n", dcp->map->map_type);
+		return;
 	}
-	/* force class'd prdbgs (in USEr module) to match (DEFINEr module) class-param */
-	ddebug_apply_class_bitmap(dcp, dcp->bits, ~0, modname);
-	ddebug_apply_class_bitmap(dcp, dcp->bits, 0, modname);
 }
 
 static void ddebug_match_apply_kparam(const struct kernel_param *kp,
diff --git a/lib/test_dynamic_debug.c b/lib/test_dynamic_debug.c
index 756bbb7506ea..08d4e3962026 100644
--- a/lib/test_dynamic_debug.c
+++ b/lib/test_dynamic_debug.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Kernel module for testing dynamic_debug
+ * Kernel module to test/demonstrate dynamic_debug features,
+ * particularly classmaps and their support for subsystems like DRM.
  *
  * Authors:
  *      Jim Cromie	<jim.cromie@gmail.com>
@@ -57,24 +58,6 @@ module_param_cb(do_prints, &param_ops_do_prints, NULL, 0600);
 
 #define CLASSMAP_BITMASK(width, base) (((1UL << (width)) - 1) << (base))
 
-/* sysfs param wrapper, proto-API */
-#define DYNAMIC_DEBUG_CLASSMAP_PARAM_(_model, _flags, _init)		\
-	static unsigned long bits_##_model = _init;			\
-	static struct _ddebug_class_param _flags##_##_model = {		\
-		.bits = &bits_##_model,					\
-		.flags = #_flags,					\
-		.map = &map_##_model,					\
-	};								\
-	module_param_cb(_flags##_##_model, &param_ops_dyndbg_classes,	\
-			&_flags##_##_model, 0600)
-#ifdef DEBUG
-#define DYNAMIC_DEBUG_CLASSMAP_PARAM(_model, _flags)		\
-	DYNAMIC_DEBUG_CLASSMAP_PARAM_(_model, _flags, ~0)
-#else
-#define DYNAMIC_DEBUG_CLASSMAP_PARAM(_model, _flags)		\
-	DYNAMIC_DEBUG_CLASSMAP_PARAM_(_model, _flags, 0)
-#endif
-
 /*
  * Demonstrate/test DISJOINT & LEVEL typed classmaps with a sys-param.
  *
@@ -105,12 +88,15 @@ enum cat_disjoint_bits {
 /* numeric verbosity, V2 > V1 related.  V0 is > D2_DRMRES */
 enum cat_level_num { V0 = 16, V1, V2, V3, V4, V5, V6, V7 };
 
-/* recapitulate DRM's multi-classmap setup */
+/*
+ * use/demonstrate multi-module-group classmaps, as for DRM
+ */
 #if !defined(TEST_DYNAMIC_DEBUG_SUBMOD)
 /*
- * In single user, or parent / coordinator (drm.ko) modules, define
- * classmaps on the client enums above, and then declares the PARAMS
- * ref'g the classmaps.  Each is exported.
+ * For module-groups of 1+, define classmaps with names (stringified
+ * enum-symbols) copied from above. 1-to-1 mapping is recommended.
+ * The classmap is exported, so that other modules in the group can
+ * link to it and control their prdbgs.
  */
 DYNAMIC_DEBUG_CLASSMAP_DEFINE(map_disjoint_bits, DD_CLASS_TYPE_DISJOINT_BITS,
 			      D2_CORE,
@@ -129,11 +115,13 @@ DYNAMIC_DEBUG_CLASSMAP_DEFINE(map_level_num, DD_CLASS_TYPE_LEVEL_NUM,
 			      V0, "V0", "V1", "V2", "V3", "V4", "V5", "V6", "V7");
 
 /*
- * now add the sysfs-params
+ * for use-cases that want it, provide a sysfs-param to set the
+ * classes in the classmap.  It is at this interface where the
+ * "v3>v2" property is applied to DD_CLASS_TYPE_LEVEL_NUM inputs.
  */
 
-DYNAMIC_DEBUG_CLASSMAP_PARAM(disjoint_bits, p);
-DYNAMIC_DEBUG_CLASSMAP_PARAM(level_num, p);
+DYNAMIC_DEBUG_CLASSMAP_PARAM(p_disjoint_bits,	map_disjoint_bits, p);
+DYNAMIC_DEBUG_CLASSMAP_PARAM(p_level_num,	map_level_num, p);
 
 #ifdef FORCE_CLASSID_CONFLICT
 /*
@@ -144,12 +132,10 @@ DYNAMIC_DEBUG_CLASSMAP_DEFINE(classid_range_conflict, 0, D2_CORE + 1, "D3_CORE")
 #endif
 
 #else /* TEST_DYNAMIC_DEBUG_SUBMOD */
-
 /*
- * in submod/drm-drivers, use the classmaps defined in top/parent
- * module above.
+ * the +1 members of a multi-module group refer to the classmap
+ * DEFINEd (and exported) above.
  */
-
 DYNAMIC_DEBUG_CLASSMAP_USE(map_disjoint_bits);
 DYNAMIC_DEBUG_CLASSMAP_USE(map_level_num);
 
@@ -227,6 +213,7 @@ static void __exit test_dynamic_debug_exit(void)
 module_init(test_dynamic_debug_init);
 module_exit(test_dynamic_debug_exit);
 
+MODULE_DESCRIPTION("test/demonstrate dynamic-debug features");
 MODULE_AUTHOR("Jim Cromie <jim.cromie@gmail.com>");
 MODULE_DESCRIPTION("Kernel module for testing dynamic_debug");
 MODULE_LICENSE("GPL");
diff --git a/lib/test_dynamic_debug_submod.c b/lib/test_dynamic_debug_submod.c
index 672aabf40160..3adf3925fb86 100644
--- a/lib/test_dynamic_debug_submod.c
+++ b/lib/test_dynamic_debug_submod.c
@@ -1,6 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Kernel module for testing dynamic_debug
+ * Kernel module to test/demonstrate dynamic_debug features,
+ * particularly classmaps and their support for subsystems, like DRM,
+ * which defines its drm_debug classmap in drm module, and uses it in
+ * helpers & drivers.
  *
  * Authors:
  *      Jim Cromie	<jim.cromie@gmail.com>
@@ -12,3 +15,7 @@
  */
 #define TEST_DYNAMIC_DEBUG_SUBMOD
 #include "test_dynamic_debug.c"
+
+MODULE_DESCRIPTION("test/demonstrate dynamic-debug subsystem support");
+MODULE_AUTHOR("Jim Cromie <jim.cromie@gmail.com>");
+MODULE_LICENSE("GPL");
-- 
2.53.0

