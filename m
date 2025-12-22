Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DAFCD648B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 15:00:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACC7A10E57D;
	Mon, 22 Dec 2025 14:00:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Brjw5unT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
 [209.85.210.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B84110E578
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Dec 2025 08:23:00 +0000 (UTC)
Received: by mail-pf1-f171.google.com with SMTP id
 d2e1a72fcca58-7acd9a03ba9so3969013b3a.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Dec 2025 00:23:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766391779; x=1766996579; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Elt5R/CoR9iQcckLm+LWmPbMBH4lmPXk70cWipXnli0=;
 b=Brjw5unTzSHDsmO8miQo7SuVGXWhpnHe8uK4Llhf4P+Ah/vxasi986m80Ij17e909g
 YLiLZI6m0xYGqQ+oI6fum0WYyYFjbxaVdMBVB+bxjg+hmL3e5+zYnF5SONQsYkDZ1rP9
 5z5089WXBijkuVrQh6wSPE+QzPXIuSEO8vboUiqDANJERjspRYm9D/aWiBPdQfyUCnDh
 BdeCHPrr1gPePOudj8l4PlgNTKoC3/SLqzN+HZoZe46+m01I3VJtnXO7G6li6hYpLGp6
 RRLHedrd1c5kySrAK3lh8XI6kZaLgztsoGmB4i3ITo9l8GHS3MUFanCCCFdtmBFF+HlM
 T3Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766391779; x=1766996579;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Elt5R/CoR9iQcckLm+LWmPbMBH4lmPXk70cWipXnli0=;
 b=xL3qLFDQmiw2dCfttwNwNlnNhim9hZDic4coVarKh/cheZCEGpej1Tk8Qt2D1o46BP
 0TNoxmOc/ASMmVqqAlTOeIZ/FVbtSD85aJShuAQaRFv13U3kx/qKAwDpA3GKph8+nYXW
 75KGGsRr9EzFy81YFKNNbLb1Mevadd2rtWa8DwE75VreoNUnPIr38aUIRzPiPhoht1wh
 2Qi3JuJJ9MzjIcSEIvw1rGrskvxCpSehYIy1Rsos9aVxDAa9svsZgljqwqDSXRWyiLD1
 EGnrR+b6yFFy5/4In1f9atR1XTw5qecu6IsiKRW/qQVPSbACgZ0sSAl98p+0GKdCaZ4t
 +kvw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVHuLBdUTaItsdrTnyqZ47jGHcT9VGjGSrVnaXfnn12tu/EHfqGSpkO6gKJucT4jX+L5vXZO7HGwvc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwS57nsvdVwsTvB0LPi0XvHxYYajwoY4tZt7QnGf0kzctzRdXeP
 ac6uvGqymVM5P3RVBGj4F85owCxIzoFBv/+qa4sqZzMekWBtYrPmlv1m
X-Gm-Gg: AY/fxX5W0WGwu3pmHclrYOPGy1BXz+JaYsoBce/ejgRHzuB7QPlihm0KFSkysiSg9hd
 EUyUUkuPmd35fe1v0zFfQ7BjyTvy93KLBKvyOP3rWcCZSFnenH2ebLW4tCJ3uGChygGJUdUzNUc
 pkJINVon38QgjWQ9lO890k4WkXMWfKdKHVYUk+9stAgqJ0dyPo2ISjt4sqd4B6yP4HNSBeBLUg9
 MKwvPVySf8ktK727x8/OP6FuP6axlwrXFeW6+Rqq42J4jHYZ3kjQQkCE43jwgotvlrorXSsKtx/
 7wednSTY3UI0IFD72HOxNnrcTUmQLjGZtok5ZBEgVrHgIRSYnH8xnYQZ1ndJXEgTDJGRMQ1RTfR
 Lw2azUeuJdOFzZHdkqJBXm9iqsCoVWh641q6jErf+kM8azKJ0HnM7KvDkvWfZsbyUJ4QCSLfDSv
 2slw4dRQ1WG2Obu6rWLjk=
X-Google-Smtp-Source: AGHT+IGPhjVEd8hFCFWSuzrJ6/8E9Tcr4jw08Ck32qa0ZVNPKd3V6Hm2f6vkNyl5Idf/bQen/LCS2Q==
X-Received: by 2002:a05:6a00:b902:b0:7a1:49f7:ad04 with SMTP id
 d2e1a72fcca58-7ff642154b6mr9938622b3a.14.1766391779554; 
 Mon, 22 Dec 2025 00:22:59 -0800 (PST)
Received: from frodo ([2404:4400:417e:3d00:8b90:7f55:1261:772f])
 by smtp.googlemail.com with ESMTPSA id
 d2e1a72fcca58-7ff7e493123sm9540699b3a.50.2025.12.22.00.22.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Dec 2025 00:22:58 -0800 (PST)
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
Subject: [PATCH v7 09/31] dyndbg: tweak pr_fmt to avoid expansion conflicts
Date: Mon, 22 Dec 2025 21:20:26 +1300
Message-ID: <20251222082049.1782440-10-jim.cromie@gmail.com>
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

Disambiguate pr_fmt(fmt) arg, by changing it to _FMT_, to avoid naming
confusion with many later macros also using that argname.

no functional change

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index d2ff203d0873..21c1db7e8705 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -11,7 +11,7 @@
  * Copyright (C) 2013 Du, Changbin <changbin.du@gmail.com>
  */
 
-#define pr_fmt(fmt) "dyndbg: " fmt
+#define pr_fmt(_FMT_) "dyndbg: " _FMT_
 
 #include <linux/kernel.h>
 #include <linux/module.h>
-- 
2.52.0

