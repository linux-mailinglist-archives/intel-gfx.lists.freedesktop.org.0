Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40844BD5DE1
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 21:04:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77BD810E4F1;
	Mon, 13 Oct 2025 19:04:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g1+OTruO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com
 [209.85.166.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADBDD10EAE6
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 17:59:08 +0000 (UTC)
Received: by mail-il1-f174.google.com with SMTP id
 e9e14a558f8ab-4291359714eso11117995ab.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Oct 2025 10:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760032748; x=1760637548; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bBVZWusQDNba37/oJBvqNeU2d7R0nqKRYCmReL4RLfo=;
 b=g1+OTruOwXUtpZCChlqSjufkn1gHQw47rdHtOIz7woS69D9fktOUS8kicdNKmC0PW4
 tQuTFE5w3oh/drt8EVAtrfsPExFuG5ra3rQXaHQoZOB9YE+bEDpl2S2fqwJYKKd1jdYe
 Uq/6VHhaiquvWG4/d5Le7HlicmnYdMAZFUQ57ilgq7reEyoTFC5z6SKHw3h4LSI9GLWC
 nNYLau2CxOvRXESk1G8Mr7Jha+fgXnKl+G7b8ZmHC4yOqPro471ImuVyOWXFpwfKU3h/
 YxQdBtaYrDAwHSyA1ekyooT55zlkpc0YYUKUISdH2VV6IsLBY8LQvmOgWxtUpOy0KFHe
 GFkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760032748; x=1760637548;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=bBVZWusQDNba37/oJBvqNeU2d7R0nqKRYCmReL4RLfo=;
 b=a/HHBwvEMAHCgOydS3X028nCKmRmaAzbjxTH9XEaCmF7scswDfiAvhWmp1Qwzbp78e
 C/LViYR0frw2toMkkzcFHXNi0UiOjh7rWcc2mHVQhsknypZW/WRp24BGk2Tmk6N5mAHx
 KNk+CTOETfX/DHbc8zXrRen2CNpv4xO667ai7JFEfYigXY6hDq6dGNsP4AIkwklrRqs1
 zhI+bsg8VUzulnhpn4uASOGNs46E6g0gNmmn/K69JNKL/zgE47jyEx8i8WNI1P1hbjQA
 pyHiDJZN6pf5OMD8mkt0wl5r0Z7YmCgnz1P4xhZ2vQmkhNmyLygIJmvCvh/9/LUMnzSH
 nOgw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWqVo2URHhjwjx7pwNEvuyWNuEuvFLIRrShztpQboqoXxmCc6i2SagCTu+djXv+k2aVcubkt8NeF3k=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyK8nSlBc4JBHrnJcA9OKanKFX5lpXF10MN24fsXP0sUg8bXB/m
 kxBquC7vgykMfUjy6cbr5E1yeQ0hBz8cxH76ITrIwi853V1R8SDmKDtP
X-Gm-Gg: ASbGnct+xGXBOOYZ6ghEHXDvxX7s/Sz2xoHUGDasSX+Yc+K5xUEIXTbeIFA5J6Lz1mS
 8czFKPitIrrp45falJW+zWGTBpMOl3aCBVqAXV8J1/EJof9JRhD9VsJTGI0foZ+njd1tOwT8zNg
 1sD3V3XhRZbXFt+L2TcHb2yjDhYugRGv+JTczKC3D7aLn/5EC3inyI42+dqGzvRhAiPv72O6fG+
 JIPsZvxJC6QoKMbx2NdpIfHInFHyd0gzWlS27Dt+0QgY1yIPm8jbwvwLVKMrc8lyB+MZkS0Q1Ay
 COAQdo7QB7zRyhlMhEtBsxWTuExYTiT75yCewgGGV/EH9oPNjHh4DhVwqKy16UikiAMdCgkw0sE
 zaSDVpxW4xLIof95pGi2sKNaTPA5iyRLCbeLueXw4IW2GVqQZ1o5Mozz7uaZaxy5bywQYrf5z/C
 gJkCE9IGMurADO67UDKPqf/eabc7I=
X-Google-Smtp-Source: AGHT+IGyz5PWJ72Qylu52JN98V5hPC/owd9s7jI1qO3g0mG+L/5zspcKIM0k6PzzDXXuTsCSBFWwxA==
X-Received: by 2002:a05:6e02:1a88:b0:42d:86cc:1bd2 with SMTP id
 e9e14a558f8ab-42f87410bd5mr76537985ab.32.1760032747736; 
 Thu, 09 Oct 2025 10:59:07 -0700 (PDT)
Received: from godzilla.raven-morpho.ts.net
 (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 8926c6da1cb9f-58f7200c4afsm30256173.35.2025.10.09.10.59.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Oct 2025 10:59:07 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: jbaron@akamai.com
Cc: gregkh@linuxfoundation.org, ukaszb@chromium.org, louis.chauvet@bootlin.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, daniel.vetter@ffwll.ch,
 tvrtko.ursulin@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, Jim Cromie <jim.cromie@gmail.com>
Subject: [PATCH v5 19/30] dyndbg: change __dynamic_func_call_cls* macros into
 expressions
Date: Thu,  9 Oct 2025 11:58:23 -0600
Message-ID: <20251009175834.1024308-20-jim.cromie@gmail.com>
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

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
---
 include/linux/dynamic_debug.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index b6f3689912fe..68568a71f265 100644
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
2.51.0

