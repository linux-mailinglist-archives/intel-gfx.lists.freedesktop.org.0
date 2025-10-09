Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBBDBD5DB8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 21:04:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B36910E4E1;
	Mon, 13 Oct 2025 19:04:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CBPSMXuu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
 [209.85.166.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1BDF10EAD7
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 17:59:01 +0000 (UTC)
Received: by mail-io1-f50.google.com with SMTP id
 ca18e2360f4ac-92c781fd73aso115622939f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Oct 2025 10:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760032741; x=1760637541; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PUjBG8W7JviM3Ypn5iExypGYjiK1aXkryX0lsVYOg2Q=;
 b=CBPSMXuu4fAKhJeGjQVMCqkP6aT5Dbb3J4gxQYHaST9KKvaBvPvsttFUYULUyV4Avq
 zsVi2jP/lENzfbCpyX2V6wfe/vmnIb1XV5/QpkRpd0DGbS/VbmvVjwGvus455kCUTA7h
 RBfG9BlkwcwBleo8ROXFC8qq2mSXAYt8QkC5MD/4JG9gvWiLXKN4wd09VHdSJwmWVFr7
 gOijB4eLERNW5W8Ha8oA+Wf8L2UgEMYwHVrJIqaE98272G8zdUROWVIxGo4hFkag13QV
 D3p+1CrpZxbM/33tYRTsIN1K0YUmaFotyuiBkfaZE2lW2sPG98FBvlvsti3QOjyEw2Bn
 VDGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760032741; x=1760637541;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PUjBG8W7JviM3Ypn5iExypGYjiK1aXkryX0lsVYOg2Q=;
 b=auji+FCvrZ2IwS4EL5EfIXDv0ffDB3uwmkyRrDs9tuw/mey8V11WR5cd0aFRb2WLuq
 Rt+0NMIjkWssjYnk+/bdL0jYRHB7mh4UJVjp50wwYcKrXdKB0kBfuuV5ioAMwb0Ude9f
 DrznV0+Wjm34lJTsW9UOXSTap7YWsooFJgCOCxoCAKwIq9eEJdEVzCJKn713+zbmQvNs
 sgDiZ3xdUPSk6zp6LCuMs1/uk5I7rrfRCrmZgqSK3b3/nLRSwrjHMqhnP6affRmTrOW2
 qRvOq9JkFp9NrhiHLf31fcorJrhm6/fijgt5MqD/mvHxToXBo/kbKyVvxRH6YOFhgp2d
 VbOw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV7SlsvgsMZN+1HyZiu66WzWBLS8G0Sx+V7WjPZwhntC7Vw3kqwC0SPoh4ByrzqB6/zThdrlgO/TR0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxnXeIJa5VMJSO3r//0FdFmTVUBQvACs0yYaNPtcW6VHJ4BlezB
 Y1GTEHdlZikNMZ2yEpOXk1YLZlNFm0wcurF0Mu83f/w9koqgyTs2aKip
X-Gm-Gg: ASbGncvdRBGNckoTp1ja7AUEbD/8duLYFQ28jTEcVkCbSlW65mjRoM7izr9Mu4/a95G
 u0lowIZWIke78cZbxZtVkHQ3WK7ph6dgYfUEXiDZIGTKi2J83SBhTvfuwT37T5ss0Y7tWuecc21
 EhWe0pmKVK0XiT7ZKZoYXiwrBqpfzrSrCX4UnPW4/KB/VGlBcs7ld9IcIqPwcSu/HyWu9V8+hWB
 zkC4sNJxy8H0Nf6+CtDxeBllIE/SklCc+DoXFu1e3AikaS3LEF06NI7RTMcO190CFCST3Liz8B0
 44L47h5Bd2YPoPy9plJHyVgJE/V4tCaItGbEzWi7DahiT5YnpF/8c5wYm0gH0KHd1Z+5IWCS78s
 uzuxL3YXJGmMUpvmrvrmpFdlPerC8MWfAeKwa9OjakCoSdp5FFGGL/HCq1/m0DegszGGewmaRKj
 hQBbwkSIRmESOGmPHy6bDMwRNdwaz1qD/3whzYrA==
X-Google-Smtp-Source: AGHT+IEs4KDkEu/Tkx7PA7Q0xJUK7cMMLKchJ3R9IgY6/hfuRIJ7D8MjEdR+TiVWsfUwI1oIJ916bw==
X-Received: by 2002:a05:6e02:1fc4:b0:427:d82b:1f36 with SMTP id
 e9e14a558f8ab-42f874010aemr82928145ab.32.1760032740923; 
 Thu, 09 Oct 2025 10:59:00 -0700 (PDT)
Received: from godzilla.raven-morpho.ts.net
 (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 8926c6da1cb9f-58f7200c4afsm30256173.35.2025.10.09.10.59.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Oct 2025 10:59:00 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: jbaron@akamai.com
Cc: gregkh@linuxfoundation.org, ukaszb@chromium.org, louis.chauvet@bootlin.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, daniel.vetter@ffwll.ch,
 tvrtko.ursulin@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, Jim Cromie <jim.cromie@gmail.com>
Subject: [PATCH v5 13/30] dyndbg: DECLARE_DYNDBG_CLASSMAP needs stub defn
Date: Thu,  9 Oct 2025 11:58:17 -0600
Message-ID: <20251009175834.1024308-14-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009175834.1024308-1-jim.cromie@gmail.com>
References: <20251009175834.1024308-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 13 Oct 2025 19:04:10 +0000
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

Add a DECLARE_DYNDBG_CLASSMAP stub/do-nothing defn, so that callers
will compile properly with CONFIG_DYNAMIC_DEBUG=n

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 include/linux/dynamic_debug.h | 39 ++++++++++++++++++-----------------
 1 file changed, 20 insertions(+), 19 deletions(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index e458d4b838ac..2a6ebc3c1459 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -91,25 +91,6 @@ struct ddebug_class_map {
 	enum class_map_type map_type;
 };
 
-/**
- * DECLARE_DYNDBG_CLASSMAP - declare classnames known by a module
- * @_var:   a struct ddebug_class_map, passed to module_param_cb
- * @_type:  enum class_map_type, chooses bits/verbose, numeric/symbolic
- * @_base:  offset of 1st class-name. splits .class_id space
- * @classes: class-names used to control class'd prdbgs
- */
-#define DECLARE_DYNDBG_CLASSMAP(_var, _maptype, _base, ...)		\
-	static const char *_var##_classnames[] = { __VA_ARGS__ };	\
-	static struct ddebug_class_map __aligned(8) __used		\
-		__section("__dyndbg_classes") _var = {			\
-		.mod = THIS_MODULE,					\
-		.mod_name = KBUILD_MODNAME,				\
-		.base = _base,						\
-		.map_type = _maptype,					\
-		.length = ARRAY_SIZE(_var##_classnames),		\
-		.class_names = _var##_classnames,			\
-	}
-
 /* encapsulate linker provided built-in (or module) dyndbg data */
 struct _ddebug_info {
 	struct _ddebug *descs;
@@ -134,6 +115,25 @@ struct ddebug_class_param {
 #if defined(CONFIG_DYNAMIC_DEBUG) || \
 	(defined(CONFIG_DYNAMIC_DEBUG_CORE) && defined(DYNAMIC_DEBUG_MODULE))
 
+/**
+ * DECLARE_DYNDBG_CLASSMAP - declare classnames known by a module
+ * @_var:   a struct ddebug_class_map, passed to module_param_cb
+ * @_type:  enum class_map_type, chooses bits/verbose, numeric/symbolic
+ * @_base:  offset of 1st class-name. splits .class_id space
+ * @classes: class-names used to control class'd prdbgs
+ */
+#define DECLARE_DYNDBG_CLASSMAP(_var, _maptype, _base, ...)		\
+	static const char *_var##_classnames[] = { __VA_ARGS__ };	\
+	static struct _ddebug_class_map __aligned(8) __used		\
+		__section("__dyndbg_classes") _var = {			\
+		.mod = THIS_MODULE,					\
+		.mod_name = KBUILD_MODNAME,				\
+		.base = _base,						\
+		.map_type = _maptype,					\
+		.length = ARRAY_SIZE(_var##_classnames),		\
+		.class_names = _var##_classnames,			\
+	}
+
 extern __printf(2, 3)
 void __dynamic_pr_debug(struct _ddebug *descriptor, const char *fmt, ...);
 
@@ -300,6 +300,7 @@ void __dynamic_ibdev_dbg(struct _ddebug *descriptor,
 
 #define DEFINE_DYNAMIC_DEBUG_METADATA(name, fmt)
 #define DYNAMIC_DEBUG_BRANCH(descriptor) false
+#define DECLARE_DYNDBG_CLASSMAP(_var, _maptype, _base, ...)
 
 #define dynamic_pr_debug(fmt, ...)					\
 	no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
-- 
2.51.0

