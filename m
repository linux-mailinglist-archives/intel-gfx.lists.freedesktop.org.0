Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F001ECD64D1
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 15:00:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5020210E6B3;
	Mon, 22 Dec 2025 14:00:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RQvrTyqo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E005E10E5CD
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Dec 2025 08:24:56 +0000 (UTC)
Received: by mail-pf1-f178.google.com with SMTP id
 d2e1a72fcca58-7b9387df58cso6064625b3a.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Dec 2025 00:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766391896; x=1766996696; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kgJaffb+G8M2IXpwFpfYggq/3ogV1jI3bmNBB+yiGR4=;
 b=RQvrTyqooS4I1OuftFOJxV7Vemd2N0GjeH7zs5n+Cc3c2Wgu0PE2S0G2thVLoZgwvN
 B+Rv9O1y1bJpFrIPn065S8AA5c6IcfaQTCEretrk7dYigtGb2QNlWgGH/XSGpawoIUr+
 p65UhHMT2W/0bsKFjgSaP+AcR7LI3OE/8iCV3Uhb6Dz3t8h0sVJA4r319o8n6wn9ohYG
 02x7NExK4A+qbnE10ypC/f7CS1pCsMizQyJla1woaIS0b492HNAS/qGvLLP6ed1vJgjg
 dZeooiF8ETS59lfYbyFhViv1gA0y0b4NCq0n5VuB61UKlwAYgKnOgFPAjxVgY+Boz+u6
 bP9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766391896; x=1766996696;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=kgJaffb+G8M2IXpwFpfYggq/3ogV1jI3bmNBB+yiGR4=;
 b=UlhsQ+Gc5RzD36asYIuWf6C2JMrO/mOU0epzx8IfLhCB+e1vFvvTKIH1VGZhS3zzuH
 Pi6UQJoP5/q28aUaxqu7/u27XYATPR5E96JMEAmXo0Zx3UmwEGVvJlRhuBceZyh2TOdA
 zk9Q6OHhoKYY/1Z+0BakMUA0CXIvVUpKNacy0veXgKdqeL5WwT11sR94QuxCY8JAu6ht
 m84GSA+DmGoXxsKRP7Os4m2p5slAM+pn6jFjiKI0KdSzqTyxegDe/RgoQPzIKyJHFR5J
 ibKZvYix+K9G8grMWlwB0mYWBPNlMB8hnV5Dze3A0i/j0Du/tnb/UGW+g5nCmIminA7W
 +SXQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVIswkhrdf8yGayS5O8+qNVMkFDlZj0cgNUR7U9I10I0pJD2X5joJRzO0qQNX0BJRh8L1oLS+CQcts=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzOlgRHs40YnrfmFpGRVMbMCcCAgrUF+z902ubAKlx1Tc7F2dPD
 wLYVo9BDXcEZctHoauL5iFCcUy8FArfS8K8vjCqzEvRTVkqa/0dETOZL
X-Gm-Gg: AY/fxX7Ddm5It0uSJ3gi5LriP1ODrdSTmOLpXUNqpJl1FT8kYqsdarItQhJ57iis8Om
 +1hhhi+75wu7aUYvy9Jaf+ggSqCkkN6agHEuSP6O58QOMMvwXmH1Zj9Qu755Ys1aiUXFqfL8L6h
 d86I+qlC9xmWrRDRm1R8/+h+903orgEZdmOTBcoxfs1BEvtPQBt3d8el2kCGfgMT1TVKFrUuhAr
 KEGhf+py0jqhZySr0XyhYgfK5yOQdusgO9Ow/IOdA8IqCIvQZJQwy+zVHmMZDCTDHdChoGjjBYn
 Eydf8/cjgZdOEU9WbwwYPl/rJVdbvds9NVXisDwfba+9nVS83PAULC1OZm1Vjd+ux8fiktM1fWw
 AvUx7wGARcC9+SUoQRCQaVjJMr4tuwKzrSSXgpjGkBDL0Y9ehET+gZm8y1Mx/9j9HOnoIwLhLG2
 WWYDgjjbhK
X-Google-Smtp-Source: AGHT+IEBN8n7tfe9iu0lB0z5JyKVlf1YDr7ixcXKx8kSouS/KoZMy7Fhajpfqtky2YSRXNA/9ikrkg==
X-Received: by 2002:a05:6a00:1d12:b0:7b8:16af:3bbc with SMTP id
 d2e1a72fcca58-7ff650ce054mr9990683b3a.31.1766391896403; 
 Mon, 22 Dec 2025 00:24:56 -0800 (PST)
Received: from frodo ([2404:4400:417e:3d00:8b90:7f55:1261:772f])
 by smtp.googlemail.com with ESMTPSA id
 d2e1a72fcca58-7ff7e493123sm9540699b3a.50.2025.12.22.00.24.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Dec 2025 00:24:55 -0800 (PST)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, jbaron@akamai.com,
 gregkh@linuxfoundation.org, ukaszb@chromium.org, louis.chauvet@bootlin.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 daniel.vetter@ffwll.ch, tvrtko.ursulin@linux.intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 seanpaul@chromium.org, robdclark@gmail.com, groeck@google.com,
 yanivt@google.com, bleung@google.com, quic_saipraka@quicinc.com,
 will@kernel.org, catalin.marinas@arm.com, quic_psodagud@quicinc.com,
 maz@kernel.org, arnd@arndb.de, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, mingo@redhat.com, jim.cromie@gmail.com
Subject: [PATCH v7 20/31] dyndbg: change __dynamic_func_call_cls* macros into
 expressions
Date: Mon, 22 Dec 2025 21:20:37 +1300
Message-ID: <20251222082049.1782440-21-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251222082049.1782440-3-jim.cromie@gmail.com>
References: <20251222082049.1782440-3-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 22 Dec 2025 14:00:06 +0000
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

The Xe driver's XE_IOCTL_DBG macro calls drm_dbg() from inside an if
(expression).  This breaks when CONFIG_DRM_USE_DYNAMIC_DEBUG=y because
the invoked macro has a do-while-0 wrapper, and is not an expression.

   if (cond && (drm_dbg("expr-form"),1)) {
      ... do some more stuff
   }

Fix for this usage by changing __dynamic_func_call_cls{,_no_desc}
macros into expressions, by replacing the do-while-0s with a ({ })
wrapper.  In the common usage, the trailing ';' converts the
expression into a statement.

   drm_dbg("statement form");

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 include/linux/dynamic_debug.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index d543b84d447e..c4ebbccca5d1 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -217,20 +217,20 @@ void __dynamic_ibdev_dbg(struct _ddebug *descriptor,
  * (|_cls):	adds in _DPRINT_CLASS_DFLT as needed
  * (|_no_desc):	former gets callsite descriptor as 1st arg (for prdbgs)
  */
-#define __dynamic_func_call_cls(id, cls, fmt, func, ...) do {	\
+#define __dynamic_func_call_cls(id, cls, fmt, func, ...) ({	\
 	DEFINE_DYNAMIC_DEBUG_METADATA_CLS(id, cls, fmt);	\
 	if (DYNAMIC_DEBUG_BRANCH(id))				\
 		func(&id, ##__VA_ARGS__);			\
-} while (0)
+})
 #define __dynamic_func_call(id, fmt, func, ...)				\
 	__dynamic_func_call_cls(id, _DPRINTK_CLASS_DFLT, fmt,		\
 				func, ##__VA_ARGS__)
 
-#define __dynamic_func_call_cls_no_desc(id, cls, fmt, func, ...) do {	\
+#define __dynamic_func_call_cls_no_desc(id, cls, fmt, func, ...) ({	\
 	DEFINE_DYNAMIC_DEBUG_METADATA_CLS(id, cls, fmt);		\
 	if (DYNAMIC_DEBUG_BRANCH(id))					\
 		func(__VA_ARGS__);					\
-} while (0)
+})
 #define __dynamic_func_call_no_desc(id, fmt, func, ...)			\
 	__dynamic_func_call_cls_no_desc(id, _DPRINTK_CLASS_DFLT,	\
 					fmt, func, ##__VA_ARGS__)
-- 
2.52.0

