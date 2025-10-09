Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F08BD5D85
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 21:04:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC7B110E4D0;
	Mon, 13 Oct 2025 19:04:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BSnAPg4y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com
 [209.85.166.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108A610EAD6
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 17:58:54 +0000 (UTC)
Received: by mail-il1-f182.google.com with SMTP id
 e9e14a558f8ab-42d8bf52325so6006605ab.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Oct 2025 10:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760032733; x=1760637533; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VFKSLN6BiOw7bUnN4PQUQFUZxRNUkszMTNMdPxBofl8=;
 b=BSnAPg4y3FbHu7LGYkZQnNA5KbAuOIMHsNwWGMgmJi/cTdzfaZicoo2h/Y0coDO2ey
 DmbdiyjEythU9uqxMtxyrWJgOEuySrgZMrYAXqrVOUw9EYl5xIZ04yeEjuDnfQObNXhJ
 szGWz5MuMjT/pYV5ama0lw6NGZ5UvteNFVCnSBaqUsTFPXSOXULIuw1cTZIy8fIrZq3R
 Mz+WLZt/GbBhMWzfxf8bnOwQeWSXFnMTYcJIUAAmY4On7+pj6eyrNz5Sxqxej+9D1vNL
 pKN7YU5BCS6Jw2ULXwkwFjPkN6ZVpr9Ej6PJe+Hm6dQyIdAPBLbiRbi4oWJVfM6tL+4O
 zIHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760032733; x=1760637533;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VFKSLN6BiOw7bUnN4PQUQFUZxRNUkszMTNMdPxBofl8=;
 b=AOmBYe8bdBZvaZb52V6jz5pjQpwhTyqKxfxNTq/rvoxAhhHjBy2bO1NLTitDGewxYj
 6LbDZ78ePCks5Q9vJhIvHKts90FU2k/WSRSvIkYUG2jNo1zvSEA/BI7qCTf8J9SG/0oO
 oD/jjvwSSGzU5dZIrfEF02AWZhy9zFAWNT+/DE8vuySmNvxuEUI2bZnJFy6myS0e8+X1
 BRLbrU6OfJpfsXx8LDQFsnAYJRmOnbmWsOQKjGIe9QXsvPmeK53P5CVJLtCP+mbnzwU/
 PVILAnULoQaezqTxUluqesyhsPJU9AWpnmjldB+rTNRzmC411fH3sLTZEOQvq2fHYoBW
 jguA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQCo80a4PyStq/65UQwy9YD+umWNhA817pspixHbTryVV9T9tdP+NDVrqQaGNl2XPIHc16OBIQrRg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx2/dQX3rDvuOJRgpcWHHhYmSG/yjFzE4EUPr/b5FlK6B542HBk
 WTkok7upkAhk8RA0ATnHuZ7j+zCSlNKCpZK6xYcc2fxNwR887Ws9vqLQ
X-Gm-Gg: ASbGnct73B44KGw1T7lMYIKrM+RBznGmYZIcqyRKTXGHcsg+qsym0KhfxmNDxZHd/ic
 YSSwk8h78vhUi5vBT+dHIK22Un/0irHFOyqiwPRNzeCAd/xxc393fNzq9s7KG0x5TAyG5990Qxj
 JPy6yY14qtD4M7/aF6KVDDMrIbdF7l4jNGFZqZBTUN0idamYB1opwExRQDwBsQg+YXOWhopqV5A
 MJiP79ZpxbxSTB9pSSSmIdlI65mvRrPbHgFGwVjAbT+fb5KdGETJVNW+ACfhIUwgaDrKesOlukQ
 qvnDCSplDsmF8jIy3vTfPZGYYnpRbv2PPvU4CQsStOKWNrnU41eRHOf+i7TNO3XXTi+zNcFjr87
 uv6StXunRd+Z3884rOl9385C2ave2Ennd3LHIRtdkN8wKL7Lud/kMWqlMJ5VoLmmJaCLEKYxZSV
 +wxloER3RRIIKe6WCcYmc7kV8heJp1Sh5X7QZ2cw==
X-Google-Smtp-Source: AGHT+IEFgHidntDfvFhDlZruUCJmrkaroGW1qP4eIEz2kkTaQPPkZf7Zvr9cHn+uTBEE/+gwDo4uRw==
X-Received: by 2002:a05:6e02:1a89:b0:42e:72ee:cde6 with SMTP id
 e9e14a558f8ab-42f8736aa0bmr82269925ab.12.1760032733126; 
 Thu, 09 Oct 2025 10:58:53 -0700 (PDT)
Received: from godzilla.raven-morpho.ts.net
 (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 8926c6da1cb9f-58f7200c4afsm30256173.35.2025.10.09.10.58.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Oct 2025 10:58:52 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: jbaron@akamai.com
Cc: gregkh@linuxfoundation.org, ukaszb@chromium.org, louis.chauvet@bootlin.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, daniel.vetter@ffwll.ch,
 tvrtko.ursulin@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, Jim Cromie <jim.cromie@gmail.com>
Subject: [PATCH v5 06/30] dyndbg: drop NUM_TYPE_ARRAY
Date: Thu,  9 Oct 2025 11:58:10 -0600
Message-ID: <20251009175834.1024308-7-jim.cromie@gmail.com>
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

ARRAY_SIZE works here, since array decl is complete.

no functional change

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
---
 include/linux/dynamic_debug.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index b9afc7731b7c..ac199293d203 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -107,11 +107,9 @@ struct ddebug_class_map {
 		.mod_name = KBUILD_MODNAME,				\
 		.base = _base,						\
 		.map_type = _maptype,					\
-		.length = NUM_TYPE_ARGS(char*, __VA_ARGS__),		\
+		.length = ARRAY_SIZE(_var##_classnames),		\
 		.class_names = _var##_classnames,			\
 	}
-#define NUM_TYPE_ARGS(eltype, ...)				\
-        (sizeof((eltype[]){__VA_ARGS__}) / sizeof(eltype))
 
 /* encapsulate linker provided built-in (or module) dyndbg data */
 struct _ddebug_info {
-- 
2.51.0

