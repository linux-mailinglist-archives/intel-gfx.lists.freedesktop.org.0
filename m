Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD50577B7E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 08:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ECA1A9D45;
	Mon, 18 Jul 2022 06:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E71D3A9D27;
 Mon, 18 Jul 2022 06:39:08 +0000 (UTC)
Received: by mail-io1-xd2a.google.com with SMTP id x64so186682iof.1;
 Sun, 17 Jul 2022 23:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mA57lJawQaJrr0pn5IjfHrgO78kF+VSuSTaNvQRvlzQ=;
 b=dTJEItRgWoU2ChLx8Cg/dTBGyAjxpYCTnQ6vlyXIDILTz7AFhVb/vvSoPpPCGVp6Fa
 cp8dlmivB1PIq4/oTgp3oBt8s2RsFNCGVxlMzooDOFsG6ocAC/KlkIbuc2cux6SbiJqk
 cS6z/Z1aHg0bh2hEuM/iReKNJBQxu4aVRIuv8VzEjH71IgOf3bmVrcYywI/9w5xzMzBj
 qAna8ni1J5PE31fqmI6Du20DAMiBBXOCBiIMWOGtpD8MnmaU41ZWiRZ4XzUAjAI3UuuF
 VjcBeWk6ff0eKs0M9IlmhlF0j/n8kYPEyPwkjhfAyLMlkaeVTi/lYxK7vQYbtRHWVd8V
 1QbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mA57lJawQaJrr0pn5IjfHrgO78kF+VSuSTaNvQRvlzQ=;
 b=yxW9jsFGm9x5qL61d89iMkwN9dlMAzDS39WCiyh7Na0uRtHBeDTmzXkZPysYDkF4PK
 mcb1dFrE95b3FdH51bWpgUmgv27llCaciHYDscU1lJ2+nPIdKvOInoN5L9yNSTSREMn0
 mZV63q+gZvJjWY+XEHku58z0/AgFKurkdbI59beYGlZHwV2P7NQ8NjnysRc3rgXV4G6q
 LYg50tyD7zpbaEsbQq/Pbq3kS04qxM3Ekm4NaRu+ejg1k98FEn5UwyJBH+t215FrWxZw
 Sd8RsIU23wHKwdowtLWBxmkubNXAJZ0AeRjMUgrlBCByV8BWui5kfJmezEK7VYieuaFb
 nm7g==
X-Gm-Message-State: AJIora+MkPFwSdlj4ds+NBTzfwYZ6OpRcBf4yxvY/IAVE+AOQloeQQ27
 aYpAQ2+Bq9bOLQ7nFpsqs9AoWeXKsweMvw==
X-Google-Smtp-Source: AGRyM1sn52nQ1/dO/M0gx/EsB1/U07tR4XrPgr7RZcrf5WaQiM8qtrRiUz3Xe4dXcF1GYMMGcFBauw==
X-Received: by 2002:a05:6602:1406:b0:649:d35b:4bbb with SMTP id
 t6-20020a056602140600b00649d35b4bbbmr12272509iov.23.1658126348538; 
 Sun, 17 Jul 2022 23:39:08 -0700 (PDT)
Received: from frodo.. (c-73-78-62-130.hsd1.co.comcast.net. [73.78.62.130])
 by smtp.googlemail.com with ESMTPSA id
 o12-20020a92a80c000000b002dcd35bb030sm2342604ilh.74.2022.07.17.23.39.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Jul 2022 23:39:08 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: jbaron@akamai.com
Date: Mon, 18 Jul 2022 00:36:24 -0600
Message-Id: <20220718063641.9179-41-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220718063641.9179-1-jim.cromie@gmail.com>
References: <20220718063641.9179-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 32/39] dyndbg: 4 new trace-events: pr_debug,
 dev_dbg, drm_{, dev}debug
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
Cc: Jim Cromie <jim.cromie@gmail.com>, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ddebug_trace() currently issues a single printk:console event.
Replace that, adding include/trace/events/dyndbg.h, which defines 2
new events:

- dyndbg:prdbg  - from trace_prdbg()  - if !dev
- dyndbg:devdbg - from trace_devdbg() - if !!dev

This links the legacy pr_debug API to tracefs, via dyndbg, allowing
pr_debug()s etc to add just a little more user-context to the
trace-logs, and then at users option, less syslog.

The 2 new trace_*() calls accept their caller's args respectively,
keeping the available info w/o alteration; we can't improve on
transparency.  The args:

 1- struct _ddebug *descriptor, giving tracefs all of dyndbg's info.
 2- struct device *dev, used by trace_devdbg(), if !!dev

The trace_*() calls need the descriptor arg, the callchain prototypes
above them are extended to provide it.

The existing category param in this callchain is partially redundant;
when descriptor is available, it has the class_id.

dev_dbg(desc, dev...), if dev is true, issues a trace_devdbg(),
otherwise trace_prdbg().  This way we dont consume buffer space
storing nulls.  Otherwise the events are equivalent.

Also add include/trace/events/drm.h, to create 2 events for use in
drm_dbg() and drm_devdbg(), and call them.  This recapitulates the
changes described above, connecting 3-10K drm.debug callsites to
tracefs.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/drm_print.c   | 25 ++++++++----
 include/trace/events/drm.h    | 68 ++++++++++++++++++++++++++++++++
 include/trace/events/dyndbg.h | 74 +++++++++++++++++++++++++++++++++++
 lib/dynamic_debug.c           | 73 +++++++++++++++++-----------------
 4 files changed, 197 insertions(+), 43 deletions(-)
 create mode 100644 include/trace/events/drm.h
 create mode 100644 include/trace/events/dyndbg.h

diff --git a/drivers/gpu/drm/drm_print.c b/drivers/gpu/drm/drm_print.c
index 92f3f45e410c..9fb0b8e40dca 100644
--- a/drivers/gpu/drm/drm_print.c
+++ b/drivers/gpu/drm/drm_print.c
@@ -35,6 +35,9 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_print.h>
 
+#define CREATE_TRACE_POINTS
+#include <trace/events/drm.h>
+
 /*
  * __drm_debug: Enable debug output.
  * Bitmask of DRM_UT_x. See include/drm/drm_print.h for details.
@@ -293,13 +296,19 @@ void __drm_dev_dbg(struct _ddebug *desc, const struct device *dev,
 	vaf.fmt = format;
 	vaf.va = &args;
 
-	if (dev)
-		dev_printk(KERN_DEBUG, dev, "[" DRM_NAME ":%ps] %pV",
-			   __builtin_return_address(0), &vaf);
-	else
-		printk(KERN_DEBUG "[" DRM_NAME ":%ps] %pV",
-		       __builtin_return_address(0), &vaf);
-
+	if (dev) {
+		if (desc->flags & _DPRINTK_FLAGS_PRINTK)
+			dev_printk(KERN_DEBUG, dev, "[" DRM_NAME ":%ps] %pV",
+				   __builtin_return_address(0), &vaf);
+		if (desc->flags & _DPRINTK_FLAGS_TRACE)
+			trace_drm_devdbg(dev, category, &vaf);
+	} else {
+		if (desc->flags & _DPRINTK_FLAGS_PRINTK)
+			printk(KERN_DEBUG "[" DRM_NAME ":%ps] %pV",
+			       __builtin_return_address(0), &vaf);
+		if (desc->flags & _DPRINTK_FLAGS_TRACE)
+			trace_drm_debug(category, &vaf);
+	}
 	va_end(args);
 }
 EXPORT_SYMBOL(__drm_dev_dbg);
@@ -319,6 +328,8 @@ void ___drm_dbg(struct _ddebug *desc, enum drm_debug_category category, const ch
 	printk(KERN_DEBUG "[" DRM_NAME ":%ps] %pV",
 	       __builtin_return_address(0), &vaf);
 
+	trace_drm_debug(category, &vaf);
+
 	va_end(args);
 }
 EXPORT_SYMBOL(___drm_dbg);
diff --git a/include/trace/events/drm.h b/include/trace/events/drm.h
new file mode 100644
index 000000000000..6de80dd68620
--- /dev/null
+++ b/include/trace/events/drm.h
@@ -0,0 +1,68 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM drm
+
+#if !defined(_TRACE_DRM_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_DRM_H
+
+#include <linux/tracepoint.h>
+
+/* drm_debug() was called, pass its args */
+TRACE_EVENT(drm_debug,
+	    TP_PROTO(int drm_debug_category, struct va_format *vaf),
+
+	    TP_ARGS(drm_debug_category, vaf),
+
+	    TP_STRUCT__entry(
+		    __field(int, drm_debug_category)
+		    __dynamic_array(char, msg, 256)
+		    ),
+
+	    TP_fast_assign(
+		    int len;
+
+		    __entry->drm_debug_category = drm_debug_category;
+		    vsnprintf(__get_str(msg), 256, vaf->fmt, *vaf->va);
+
+		    len = strlen(__get_str(msg));
+		    if (len > 0 && (__get_str(msg)[len - 1] == '\n'))
+			    len -= 1;
+		    __get_str(msg)[len] = 0;
+		    ),
+
+	    TP_printk("%s", __get_str(msg))
+);
+
+/* drm_devdbg() was called, pass its args, preserving order */
+TRACE_EVENT(drm_devdbg,
+	    TP_PROTO(const struct device *dev, int drm_debug_category, struct va_format *vaf),
+
+	    TP_ARGS(dev, drm_debug_category, vaf),
+
+	    TP_STRUCT__entry(
+		    __field(const struct device*, dev)
+		    __field(int, drm_debug_category)
+		    __dynamic_array(char, msg, 256)
+		    ),
+
+	    TP_fast_assign(
+		    int len;
+
+		    __entry->drm_debug_category = drm_debug_category;
+		    __entry->dev = dev;
+		    vsnprintf(__get_str(msg), 256, vaf->fmt, *vaf->va);
+
+		    len = strlen(__get_str(msg));
+		    if (len > 0 && (__get_str(msg)[len - 1] == '\n'))
+			    len -= 1;
+		    __get_str(msg)[len] = 0;
+		    ),
+
+	    TP_printk("cat:%d, %s %s", __entry->drm_debug_category,
+		      dev_name(__entry->dev), __get_str(msg))
+);
+
+#endif /* _TRACE_DRM_H */
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>
diff --git a/include/trace/events/dyndbg.h b/include/trace/events/dyndbg.h
new file mode 100644
index 000000000000..e19fcb56566c
--- /dev/null
+++ b/include/trace/events/dyndbg.h
@@ -0,0 +1,74 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM dyndbg
+
+#if !defined(_TRACE_DYNDBG_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_DYNDBG_H
+
+#include <linux/tracepoint.h>
+
+/* capture pr_debug() callsite descriptor and message */
+TRACE_EVENT(prdbg,
+	    TP_PROTO(const struct _ddebug *desc, const char *text, size_t len),
+
+	    TP_ARGS(desc, text, len),
+
+	    TP_STRUCT__entry(
+		    __field(const struct _ddebug *, desc)
+		    __dynamic_array(char, msg, len + 1)
+		    ),
+
+	    TP_fast_assign(
+		    __entry->desc = desc;
+		    /*
+		     * Each trace entry is printed in a new line.
+		     * If the msg finishes with '\n', cut it off
+		     * to avoid blank lines in the trace.
+		     */
+		    if (len > 0 && (text[len - 1] == '\n'))
+			    len -= 1;
+
+		    memcpy(__get_str(msg), text, len);
+		    __get_str(msg)[len] = 0;
+		    ),
+
+	    TP_printk("%s.%s %s", __entry->desc->modname,
+		      __entry->desc->function, __get_str(msg))
+);
+
+/* capture dev_dbg() callsite descriptor, device, and message */
+TRACE_EVENT(devdbg,
+	    TP_PROTO(const struct _ddebug *desc, const struct device *dev,
+		     const char *text, size_t len),
+
+	    TP_ARGS(desc, dev, text, len),
+
+	    TP_STRUCT__entry(
+		    __field(const struct _ddebug *, desc)
+		    __field(const struct device *, dev)
+		    __dynamic_array(char, msg, len + 1)
+		    ),
+
+	    TP_fast_assign(
+		    __entry->desc = desc;
+		    __entry->dev = (struct device *) dev;
+		    /*
+		     * Each trace entry is printed in a new line.
+		     * If the msg finishes with '\n', cut it off
+		     * to avoid blank lines in the trace.
+		     */
+		    if (len > 0 && (text[len - 1] == '\n'))
+			    len -= 1;
+
+		    memcpy(__get_str(msg), text, len);
+		    __get_str(msg)[len] = 0;
+		    ),
+
+	    TP_printk("%s.%s %s", __entry->desc->modname,
+		      __entry->desc->function, __get_str(msg))
+);
+
+#endif /* _TRACE_DYNDBG_H */
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>
diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 66f12b9127c7..e000d037cb2e 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -36,7 +36,9 @@
 #include <linux/sched.h>
 #include <linux/device.h>
 #include <linux/netdevice.h>
-#include <trace/events/printk.h>
+
+#define CREATE_TRACE_POINTS
+#include <trace/events/dyndbg.h>
 
 #include <rdma/ib_verbs.h>
 
@@ -855,7 +857,9 @@ struct ddebug_trace_bufs {
 static DEFINE_PER_CPU(struct ddebug_trace_bufs, ddebug_trace_bufs);
 static DEFINE_PER_CPU(int, ddebug_trace_reserve);
 
-static void ddebug_trace(const char *fmt, va_list args)
+__printf(3, 0)
+static void ddebug_trace(struct _ddebug *desc, const struct device *dev,
+			 const char *fmt, va_list args)
 {
 	struct ddebug_trace_buf *buf;
 	int bufidx;
@@ -874,7 +878,11 @@ static void ddebug_trace(const char *fmt, va_list args)
 	buf = this_cpu_ptr(ddebug_trace_bufs.bufs) + bufidx;
 
 	len = vscnprintf(buf->buf, sizeof(buf->buf), fmt, args);
-	trace_console(buf->buf, len);
+
+	if (!dev)
+		trace_prdbg(desc, buf->buf, len);
+	else
+		trace_devdbg(desc, dev, buf->buf, len);
 
 out:
 	/* As above. */
@@ -884,9 +892,9 @@ static void ddebug_trace(const char *fmt, va_list args)
 }
 
 __printf(2, 3)
-static void ddebug_printk(unsigned int flags, const char *fmt, ...)
+static void ddebug_printk(struct _ddebug *desc, const char *fmt, ...)
 {
-	if (flags & _DPRINTK_FLAGS_TRACE) {
+	if (desc->flags & _DPRINTK_FLAGS_TRACE) {
 		va_list args;
 
 		va_start(args, fmt);
@@ -894,11 +902,11 @@ static void ddebug_printk(unsigned int flags, const char *fmt, ...)
 		 * All callers include the KERN_DEBUG prefix to keep the
 		 * vprintk case simple; strip it out for tracing.
 		 */
-		ddebug_trace(fmt + strlen(KERN_DEBUG), args);
+		ddebug_trace(desc, NULL, fmt + strlen(KERN_DEBUG), args);
 		va_end(args);
 	}
 
-	if (flags & _DPRINTK_FLAGS_PRINTK) {
+	if (desc->flags & _DPRINTK_FLAGS_PRINTK) {
 		va_list args;
 
 		va_start(args, fmt);
@@ -908,19 +916,19 @@ static void ddebug_printk(unsigned int flags, const char *fmt, ...)
 }
 
 __printf(3, 4)
-static void ddebug_dev_printk(unsigned int flags, const struct device *dev,
+static void ddebug_dev_printk(struct _ddebug *desc, const struct device *dev,
 			      const char *fmt, ...)
 {
 
-	if (flags & _DPRINTK_FLAGS_TRACE) {
+	if (desc->flags & _DPRINTK_FLAGS_TRACE) {
 		va_list args;
 
 		va_start(args, fmt);
-		ddebug_trace(fmt, args);
+		ddebug_trace(desc, dev, fmt, args);
 		va_end(args);
 	}
 
-	if (flags & _DPRINTK_FLAGS_PRINTK) {
+	if (desc->flags & _DPRINTK_FLAGS_PRINTK) {
 		va_list args;
 
 		va_start(args, fmt);
@@ -943,7 +951,7 @@ void __dynamic_pr_debug(struct _ddebug *descriptor, const char *fmt, ...)
 	vaf.fmt = fmt;
 	vaf.va = &args;
 
-	ddebug_printk(descriptor->flags, KERN_DEBUG "%s%pV",
+	ddebug_printk(descriptor, KERN_DEBUG "%s%pV",
 		      dynamic_emit_prefix(descriptor, buf), &vaf);
 
 	va_end(args);
@@ -954,7 +962,6 @@ void __dynamic_dev_dbg(struct _ddebug *descriptor,
 		       const struct device *dev, const char *fmt, ...)
 {
 	struct va_format vaf;
-	unsigned int flags;
 	va_list args;
 
 	BUG_ON(!descriptor);
@@ -964,15 +971,14 @@ void __dynamic_dev_dbg(struct _ddebug *descriptor,
 
 	vaf.fmt = fmt;
 	vaf.va = &args;
-	flags = descriptor->flags;
 
 	if (!dev) {
-		ddebug_printk(flags, KERN_DEBUG "(NULL device *): %pV",
-			      &vaf);
+		ddebug_printk(descriptor, KERN_DEBUG "(NULL device *): %pV",
+			       &vaf);
 	} else {
 		char buf[PREFIX_SIZE] = "";
 
-		ddebug_dev_printk(flags, dev, "%s%s %s: %pV",
+		ddebug_dev_printk(descriptor, dev, "%s%s %s: %pV",
 				  dynamic_emit_prefix(descriptor, buf),
 				  dev_driver_string(dev), dev_name(dev),
 				  &vaf);
@@ -988,7 +994,6 @@ void __dynamic_netdev_dbg(struct _ddebug *descriptor,
 			  const struct net_device *dev, const char *fmt, ...)
 {
 	struct va_format vaf;
-	unsigned int flags;
 	va_list args;
 
 	BUG_ON(!descriptor);
@@ -998,24 +1003,22 @@ void __dynamic_netdev_dbg(struct _ddebug *descriptor,
 
 	vaf.fmt = fmt;
 	vaf.va = &args;
-	flags = descriptor->flags;
 
 	if (dev && dev->dev.parent) {
 		char buf[PREFIX_SIZE] = "";
 
-		ddebug_dev_printk(flags, dev->dev.parent,
-				   "%s%s %s %s%s: %pV",
-				   dynamic_emit_prefix(descriptor, buf),
-				   dev_driver_string(dev->dev.parent),
-				   dev_name(dev->dev.parent),
-				   netdev_name(dev), netdev_reg_state(dev),
-				   &vaf);
+		ddebug_dev_printk(descriptor, dev->dev.parent,
+				  "%s%s %s %s%s: %pV",
+				  dynamic_emit_prefix(descriptor, buf),
+				  dev_driver_string(dev->dev.parent),
+				  dev_name(dev->dev.parent),
+				  netdev_name(dev), netdev_reg_state(dev),
+				  &vaf);
 	} else if (dev) {
-		ddebug_printk(flags, KERN_DEBUG "%s%s: %pV",
-			       netdev_name(dev), netdev_reg_state(dev), &vaf);
+		ddebug_dev_printk(descriptor, &dev->dev, KERN_DEBUG "%s%s: %pV",
+				  netdev_name(dev), netdev_reg_state(dev), &vaf);
 	} else {
-		ddebug_printk(flags, KERN_DEBUG "(NULL net_device): %pV",
-			       &vaf);
+		ddebug_printk(descriptor, KERN_DEBUG "(NULL net_device): %pV", &vaf);
 	}
 
 	va_end(args);
@@ -1031,18 +1034,16 @@ void __dynamic_ibdev_dbg(struct _ddebug *descriptor,
 {
 	struct va_format vaf;
 	va_list args;
-	unsigned int flags;
 
 	va_start(args, fmt);
 
 	vaf.fmt = fmt;
 	vaf.va = &args;
-	flags = descriptor->flags;
 
 	if (ibdev && ibdev->dev.parent) {
 		char buf[PREFIX_SIZE] = "";
 
-		ddebug_dev_printk(flags, ibdev->dev.parent,
+		ddebug_dev_printk(descriptor, ibdev->dev.parent,
 				  "%s%s %s %s: %pV",
 				  dynamic_emit_prefix(descriptor, buf),
 				  dev_driver_string(ibdev->dev.parent),
@@ -1050,10 +1051,10 @@ void __dynamic_ibdev_dbg(struct _ddebug *descriptor,
 				  dev_name(&ibdev->dev),
 				  &vaf);
 	} else if (ibdev) {
-		ddebug_printk(flags, KERN_DEBUG "%s: %pV",
-			      dev_name(&ibdev->dev), &vaf);
+		ddebug_dev_printk(descriptor, &ibdev->dev, KERN_DEBUG "%s: %pV",
+				  dev_name(&ibdev->dev), &vaf);
 	} else {
-		ddebug_printk(flags, KERN_DEBUG "(NULL ip_device): %pV", &vaf);
+		ddebug_printk(descriptor, KERN_DEBUG "(NULL ip_device): %pV", &vaf);
 	}
 
 	va_end(args);
-- 
2.36.1

