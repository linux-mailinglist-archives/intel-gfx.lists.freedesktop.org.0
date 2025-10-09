Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1DDBD5DE2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 21:04:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8889710E4F2;
	Mon, 13 Oct 2025 19:04:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EilnKP5/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
 [209.85.166.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09FD710EAE0
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 17:59:11 +0000 (UTC)
Received: by mail-io1-f45.google.com with SMTP id
 ca18e2360f4ac-93b9022d037so53935139f.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Oct 2025 10:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760032750; x=1760637550; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BkrhZds/ll2Xl8Nzf4vLphQpqfGvsMLkRQg1rNtfyx0=;
 b=EilnKP5/bguJwDbH7skyWsqmXyM05iAaHIT2iIVH5lzM6U+dpCjwpEXucq3d/DeCS1
 Ixy/Xxq0zg1gmEDn0Z3VojcDNq6oXWLgWRuH9M+19Z6K0H5hTPINVOnmqoslttR5DYcT
 o5gaO70Q6F+Ski2MW+pagPdwB+tq09LphHvFIBu/p3tHr2Vrt3woqGG/evRpBOUdns6M
 iglzOgCNTwf6YhSTmqDOLwph2mPfrbEhJHvOTMGTCtBINpD9HtjgEjoGJxRf97pixT8c
 em05maBcLYL7ZA+XLvFL3A1A5h1VCsTakIh3QHd6jrjnOkgV0Di10HXnPzLtKfa/fdSd
 pvzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760032750; x=1760637550;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BkrhZds/ll2Xl8Nzf4vLphQpqfGvsMLkRQg1rNtfyx0=;
 b=ddPXmmAujERB8XCMDZb0u6mFKNh/gNVwcoLS3+4Fucq8QferpMmuw8NLOwUbis/Czy
 wR15MU5r38Q/FFzo1zf8w8Hcgtxv0IUOOB/YPVUsOUZQzQNYDC+NHBrpelwCDlcVyvWc
 5Es7Etm5HGcJy23webjNyyORG2b0NtRgnXeu+i1wM1mvicbqVvn2lqk+3RD7JT0rGYby
 nCD5sDVB+wh+UCcC5wqhChKxPZ5Z1inK8N/TwqTDSqIxC6B1vvCrNxIoojd/QYoTdK1o
 CiMKNqEeASY1+vIOIxyb4OinO1lFLDwOar48oYDXT9ufhSmGJGm/usEgstP1EydGkcvC
 Rekw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUtBtMvWPx6Q4qcSICNNXElAKnfWDwlTTwLUhe0pba17g+wCk3e56i++F/9TrK5U8DLjerF0ToPvAM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwSbpeX/K/omkMaE2WtDkyfnfaKN6ZQHkzfJJJkBU3t0CEAPxsD
 t8DO4eaiNxLxvQ0Gp3hCF7KYbVo2DH9+YzzR/m6hqzcvXM1I59letPXQ
X-Gm-Gg: ASbGncvAS9vkF1dTGWliZTtpkP9xV2tiEdrk0mZiXqkSZaX0fHnXYVr5Aapsva7QB5Q
 hPj+O9LxHPJR+dgse1J5sL0Nj3d9+Wnvxe7Nd7poI6HrCwBCw1VlW+JzW3JaosgeheJOWcnr59O
 zpT/c5HIof4gG6ORfEklnHRO+MR8/LTzE9zVlbB7U/bQkzoWWK1sJ7rM13USJJoiW0pBIfAzukl
 UalYDatv22QfV6fFxWnCeAvgrC0hQDfYruVimKy0fJw8TkjwwYA4JrmIpbXC9kXkO1rERQM6qhq
 DlscYUizmW6R2f995VBQGwYm+MJ27KYQOWf1v2IXm6aWU5pKbHftSaOU1sem2PeLYNYWsbg/AjH
 6XUDE49tZme86koK9Rbg9uNprx07s/ToixEYfU1U6eoZLVLHkSyHPv7e3+WLKXl7ftI4/fXtbIn
 atm1XgWdpJr3fd0Uq3Ft56H/rHkWXQ9kwYHmp2DQ==
X-Google-Smtp-Source: AGHT+IFUtIEt4hZGGPIJzsczKNqnueKXhXvFJxzwNM//vyW6z4t8ra586gGXxFd/BYpLugooChengg==
X-Received: by 2002:a05:6602:492:b0:900:1fa2:5919 with SMTP id
 ca18e2360f4ac-93bd19882e8mr959644239f.9.1760032749970; 
 Thu, 09 Oct 2025 10:59:09 -0700 (PDT)
Received: from godzilla.raven-morpho.ts.net
 (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 8926c6da1cb9f-58f7200c4afsm30256173.35.2025.10.09.10.59.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Oct 2025 10:59:09 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: jbaron@akamai.com
Cc: gregkh@linuxfoundation.org, ukaszb@chromium.org, louis.chauvet@bootlin.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, daniel.vetter@ffwll.ch,
 tvrtko.ursulin@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, Jim Cromie <jim.cromie@gmail.com>
Subject: [PATCH v5 21/30] dyndbg: detect class_id reservation conflicts
Date: Thu,  9 Oct 2025 11:58:25 -0600
Message-ID: <20251009175834.1024308-22-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009175834.1024308-1-jim.cromie@gmail.com>
References: <20251009175834.1024308-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 13 Oct 2025 19:04:11 +0000
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
parent (D2_CORE..etc), causing the modprobe(s) to warn

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
- USE doesnt need conflict test against DEFINE
  infact its wrong-headed - of course theyd overlap.
---
 lib/dynamic_debug.c      | 40 +++++++++++++++++++++++++++++++++-------
 lib/test_dynamic_debug.c |  8 ++++++++
 2 files changed, 41 insertions(+), 7 deletions(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 54f93d1d0ff2..f94ee518ed62 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -1267,6 +1267,22 @@ static void ddebug_apply_class_users(const struct _ddebug_info *di)
 	(_dst)->info._vec.len = nc;					\
 })
 
+static int __maybe_unused
+ddebug_class_range_overlap(struct _ddebug_class_map *cm,
+			   u64 *reserved_ids)
+{
+	u64 range = (((1ULL << cm->length) - 1) << cm->base);
+
+	if (range & *reserved_ids) {
+		pr_err("[%d..%d] on %s conflicts with %llx\n", cm->base,
+		       cm->base + cm->length - 1, cm->class_names[0],
+		       *reserved_ids);
+		return -EINVAL;
+	}
+	*reserved_ids |= range;
+	return 0;
+}
+
 /*
  * Allocate a new ddebug_table for the given module
  * and add it to the global list.
@@ -1276,6 +1292,7 @@ static int ddebug_add_module(struct _ddebug_info *di)
 	struct ddebug_table *dt;
 	struct _ddebug_class_map *cm;
 	struct _ddebug_class_user *cli;
+	u64 reserved_ids = 0;
 	int i;
 
 	if (!di->descs.len)
@@ -1290,15 +1307,20 @@ static int ddebug_add_module(struct _ddebug_info *di)
 	}
 	INIT_LIST_HEAD(&dt->link);
 	/*
-	 * For built-in modules, di-> referents live in .rodata and is
-	 * are immortal. For loaded modules, name points at the name[]
-	 * member of struct module, which lives at least as long as
-	 * this struct ddebug_table.
+	 * For built-in modules, di-> referents live in .*data and are
+	 * immortal. For loaded modules, di points at the dyndbg_info
+	 * member of its struct module, which lives at least as
+	 * long as this struct ddebug_table.
 	 */
 	dt->info = *di;
-	dd_mark_vector_subrange(i, dt, cm, di, maps);
-	dd_mark_vector_subrange(i, dt, cli, di, users);
-	/* now di may be stale */
+	dd_mark_vector_subrange(i, dt, cm, &dt->info, maps);
+	dd_mark_vector_subrange(i, dt, cli, &dt->info, users);
+	/* now di is stale */
+
+	/* insure 2+ classmaps share the per-module 0..62 class_id space */
+	for_subvec(i, cm, &dt->info, maps)
+		if (ddebug_class_range_overlap(cm, &reserved_ids))
+			goto cleanup;
 
 	mutex_lock(&ddebug_lock);
 	list_add_tail(&dt->link, &ddebug_tables);
@@ -1312,6 +1334,10 @@ static int ddebug_add_module(struct _ddebug_info *di)
 	vpr_info("%3u debug prints in module %s\n",
 		 dt->info.descs.len, dt->info.mod_name);
 	return 0;
+cleanup:
+	WARN_ONCE("dyndbg multi-classmap conflict in %s\n", di->mod_name);
+	kfree(dt);
+	return -EINVAL;
 }
 
 /* helper for ddebug_dyndbg_(boot|module)_param_cb */
diff --git a/lib/test_dynamic_debug.c b/lib/test_dynamic_debug.c
index 6c4548f63512..1ba4be9a403a 100644
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
+DYNDBG_CLASSMAP_DEFINE(classid_range_conflict, 0, D2_CORE + 1, "D3_CORE");
+#endif
+
 #else /* TEST_DYNAMIC_DEBUG_SUBMOD */
 
 /*
-- 
2.51.0

