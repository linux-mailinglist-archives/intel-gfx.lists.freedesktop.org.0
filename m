Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EA04C90BD
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 17:47:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22AF610E6DF;
	Tue,  1 Mar 2022 16:46:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com
 [IPv6:2607:f8b0:4864:20::136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF5BA10E68E;
 Tue,  1 Mar 2022 16:46:54 +0000 (UTC)
Received: by mail-il1-x136.google.com with SMTP id y5so12959523ill.13;
 Tue, 01 Mar 2022 08:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/iB17natQD1MoZXV2qkvWvbusYAfF8+WZi2MjQWQu/w=;
 b=SHplEMJ4dgHQP7e3PXFiBHg0b5PrXGyYSjVU4WM97MmcMC8lOxaE+n44zic8aROkue
 YJdXX8P0waLgppC8wUfg3TPWWpPLZ43WMZhNXseOpaKUIiaQwABtxpUf9fsu7DNCjstI
 8IbA0ejfY82JTbCixhin11dJbzKOp6EHlG+zrVV9HCZcuvwQdSz48pnbzG4vk7M7RlUx
 VG6drh2X1ywcyBZ2WRkNyO5FWAldJ8e+ijz/Zx5BvGVUqczqyRyvgZZFm9AAh9aHCAtt
 JMjSVUBelGF+64eRHC6eM1PvoM0Y5Piq4V6fEpZLUed4c0GPKgFKSFH3RGyUaBYCImXz
 GMWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/iB17natQD1MoZXV2qkvWvbusYAfF8+WZi2MjQWQu/w=;
 b=7ATkrXGVSIsmhMM3BQosbLwjwEyemABmOrGUCh2Z1+W4iwJeoU9fpEiBlm1WtustOb
 fP3rZG1PBz1wEMknuSk5silYa/xjgI/p/9KEWkpJZ892SqyAjbrbv/r8tzmlrboCZikE
 4laFBlmdPKLIg8u3fB/mTgbaks8GOxaEWpjhU546iWt1qgjjs+A7Lhq6u6t6ALexu6n1
 Mow/yC4O/vWlbOJHC+ncI8qckj4Ypc/LpPTNzWp28DkGJRv3T9n35glUo1+LUmdKIxrz
 zY9/wfz1pVhF3GSFPrHR6ZNgZdfK210SZIYvOOpEiQQzJrors8ayrw+08yQo4afoc6wY
 y5iQ==
X-Gm-Message-State: AOAM532r0I+ho/6PqmLTxWc0g/vLj/2dbMKxEJee/1lfBDkpPC095Zp8
 hNgAj/RHh6p5tXHfYCpFwH8=
X-Google-Smtp-Source: ABdhPJxLY8uCZOj8gfXThodH+sbeS3tw4N8aFtECPOV8owdml6wtey6aG7AC7+fAtaCy8s8BIGAwZg==
X-Received: by 2002:a05:6e02:20e8:b0:2c1:e164:76e6 with SMTP id
 q8-20020a056e0220e800b002c1e16476e6mr23670264ilv.135.1646153214231; 
 Tue, 01 Mar 2022 08:46:54 -0800 (PST)
Received: from frodo.hsd1.co.comcast.net ([2601:284:8204:2010::f10e])
 by smtp.googlemail.com with ESMTPSA id
 o3-20020a6b5a03000000b00640a33c5b0dsm7272411iob.17.2022.03.01.08.46.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 08:46:53 -0800 (PST)
From: Jim Cromie <jim.cromie@gmail.com>
To: jbaron@akamai.com, gregkh@linuxfoundation.org, daniel.vetter@ffwll.ch,
 seanpaul@chromium.org, robdclark@gmail.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 09:46:22 -0700
Message-Id: <20220301164629.3814634-7-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220301164629.3814634-1-jim.cromie@gmail.com>
References: <20220301164629.3814634-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/13] dyndbg: abstract dyndbg_site_is_printing
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
Cc: Jim Cromie <jim.cromie@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hide flags test in a macro.
no functional changes.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 include/linux/dynamic_debug.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index 664bb83778d2..106065244f73 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -56,7 +56,7 @@ struct _ddebug {
 #endif
 } __attribute__((aligned(8)));
 
-
+#define dyndbg_site_is_printing(desc)	(desc->flags & _DPRINTK_FLAGS_PRINT)
 
 #if defined(CONFIG_DYNAMIC_DEBUG_CORE)
 
-- 
2.35.1

