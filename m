Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4D467BCEA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 21:38:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB3EC10E891;
	Wed, 25 Jan 2023 20:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B72F10E878;
 Wed, 25 Jan 2023 20:38:07 +0000 (UTC)
Received: by mail-il1-x135.google.com with SMTP id a9so33333ilb.0;
 Wed, 25 Jan 2023 12:38:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9Me70+Eki9NCto8VnvB3w3VfShg/xZ4FsWDiFg0Z63s=;
 b=mVFkvVr8zjNEnUBM3qayiN/sYTleHtLVOwYxZQJAp+N9az+P0vT8mdzqU7Q+uJgp09
 nG312QNUQGqZAx6dTjJ7eeeeIvP5Nv1j4mW8KEHEkGaMXrty/geGUEoenNwQq30WtQhL
 mBs7qmwxGSXT4HluKpIk6BnUMjQg+9zhBpxQo0ZlxPO64amgpdKB0wujsGPf80BJHNjq
 TtFsCLF3Lif9vJZN8Xa8tNRT809Ky4dlW1sYd1sGAixOrPgpFuj8QdFBMkDexeSnOT1x
 AahdZut6G6B43I3zuCN2GJiXy6Yxpx8oUzmcH/pxSK056cAcyANdCcMqsV7BLvF16uq8
 l8/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9Me70+Eki9NCto8VnvB3w3VfShg/xZ4FsWDiFg0Z63s=;
 b=wFyKFBSM0FASg7Z/WSDYZro7GAkee7NCqxrbVZ6f5tkpGqewVXO4LIx7nSjdS8X7uk
 ltDCRwEVWl2SDC0qqsSyCXrkUn53SHJp0O/866kUj41SgwxMtBmI1Brhea50Eq45aipk
 iLHlCaHIIEAD1jIUMmZGw5ImYcRCxtznFOlRwtbBgdTEqBDlj58Z4cxIYNhz2miS9EkW
 GgkY+GgWU+TgsXUGc90RlwhNLn2PBGP3SbC01enpO5qdINAxVKRIRmsP1I9nQPsP50hL
 HQMC/jqmI795r25fkIGVrPASGkHhXeqa2x82z40T8GN1PWHqDWSBFPKFnFHniCf0itxd
 G6BA==
X-Gm-Message-State: AFqh2kpG/En0+4eiShAwf5EZSQvP6x/XgdfIQtUPdRWpzrvCJexdxyAL
 0euIgt40nLsvebR9pqOZsFc=
X-Google-Smtp-Source: AMrXdXuZs9pLJmgSeXV35amurJhQQWarQOrtXrigQdJWMiWDm6TnP/8VZtyYssscTH45UCiqIcIMKw==
X-Received: by 2002:a05:6e02:1c84:b0:30f:514b:fac0 with SMTP id
 w4-20020a056e021c8400b0030f514bfac0mr11919393ill.8.1674679086921; 
 Wed, 25 Jan 2023 12:38:06 -0800 (PST)
Received: from frodo.. (c-73-78-62-130.hsd1.co.comcast.net. [73.78.62.130])
 by smtp.googlemail.com with ESMTPSA id
 y11-20020a056e02128b00b00310a599fd43sm665104ilq.46.2023.01.25.12.38.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Jan 2023 12:38:06 -0800 (PST)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 13:37:33 -0700
Message-Id: <20230125203743.564009-10-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230125203743.564009-1-jim.cromie@gmail.com>
References: <20230125203743.564009-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 09/19] dyndbg: constify
 ddebug_apply_class_bitmap args
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch,
 Jim Cromie <jim.cromie@gmail.com>, seanpaul@chromium.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ddebug_apply_class_bitmap() does not alter its 2 bitmap args, make
this guarantee in the interface.

NOTE: the bitmap is also available in the dcp arg, but the 2 vars
serve a 2nd purpose; the CLASS_TYPE callers use them to translate
levels into their underlying disjoint representation.

no functional change

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 10c29bc19901..b51f4bde6198 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -592,7 +592,7 @@ static int ddebug_exec_queries(char *query, const char *modname)
 
 /* apply a new bitmap to the sys-knob's current bit-state */
 static int ddebug_apply_class_bitmap(const struct ddebug_class_param *dcp,
-				     unsigned long *new_bits, unsigned long *old_bits,
+				     const unsigned long *new_bits, const unsigned long *old_bits,
 				     const char *query_modname)
 {
 #define QUERY_SIZE 128
-- 
2.39.1

