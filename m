Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CBD57B9D9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 17:33:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A42538F244;
	Wed, 20 Jul 2022 15:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com
 [IPv6:2607:f8b0:4864:20::d35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A6628BA4B;
 Wed, 20 Jul 2022 15:33:03 +0000 (UTC)
Received: by mail-io1-xd35.google.com with SMTP id u20so14550680iob.8;
 Wed, 20 Jul 2022 08:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xDusQunCB1rc2oGhl0qVh9zuKvB3DHnmYV8dCnPm/ic=;
 b=P0jrd2ZdNh7LTCtmbdsTPF0AI3MkYOuMbOZOXbhyKxFZ2aaoQzlOV9inbNl8Bf2FSn
 g0TfZZ+nlqo0AzUa5f7W146optWD/9WuAWEeNQOmaZOiIUi6e3kUDfErB66Ezwh35Jyo
 LVF5XE4jwWTCAK0MjCg8YLoSSxGXbaocL0uj8aInGJ02qoo8RZPD1n0jwaqfu9SdBaTA
 KRz6wL4eGGyMTk9VKzMMjbTPJwxnSFgGOdVQJAcoz958at5/TvDgOKSkuvOSsUB3Y5+y
 VXDfnBmS+AJ/KkR//+fOPDVnQU3ualQsIjEf6Pj//ut4izrsnf5a/5GiSfPUsXykMHE/
 DiXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xDusQunCB1rc2oGhl0qVh9zuKvB3DHnmYV8dCnPm/ic=;
 b=WqFPwpw0weSZEy+ZZczdfTW9TMphTuy6gneOk+T55YEv/mGlGR2B10/QRmDIfarz3x
 BK/Jf1UgFv2sLLQZWTw15OM8UwOIXL6uNnb3bCLoM3eUSx0kwQ9KUO1xZqLO9PjdJlNk
 rmeieKDTdNcNQbuuuF05TgEuENn5Yky1aacx54A54t9y2Opa4Tq7Td+Ik0vQ6yyXd11B
 Y5Fh4DrSpXD0rwmG/H3tpAMpMSKbECk42Lbn39G9E17hVDknYmpgKAPmITxZwYaIq/h/
 rUsOWpT0SW8qFmjuQGp/fbQ6rd1BbAC4kGSK+Idihgfxc7OFmGqGcrTuQHqCSYwPYsov
 AZcg==
X-Gm-Message-State: AJIora/gTb4OituWHP7U928b5rqAu2gBTima3tZsQAdQ5qhCPj+PWg7V
 q5rNB3XOcFzcru3WwxszfHxX8JtWMon53Q==
X-Google-Smtp-Source: AGRyM1tuMGq+3sar0nM5gDNBmt/Svrov9/g3d3HlCwThwf+7CSaw3w1b3XMrIbgkEmahCt9aT/nC2g==
X-Received: by 2002:a05:6602:2cce:b0:67c:17ec:f1c1 with SMTP id
 j14-20020a0566022cce00b0067c17ecf1c1mr6413510iow.96.1658331182496; 
 Wed, 20 Jul 2022 08:33:02 -0700 (PDT)
Received: from frodo.. (c-73-78-62-130.hsd1.co.comcast.net. [73.78.62.130])
 by smtp.googlemail.com with ESMTPSA id
 q1-20020a92d401000000b002dcdb4bbe87sm4579581ilm.22.2022.07.20.08.33.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jul 2022 08:33:02 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 jbaron@akamai.com, gregkh@linuxfoundation.org, daniel.vetter@ffwll.ch,
 seanpaul@chromium.org, robdclark@gmail.com
Date: Wed, 20 Jul 2022 09:31:57 -0600
Message-Id: <20220720153233.144129-6-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220720153233.144129-1-jim.cromie@gmail.com>
References: <20220720153233.144129-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 05/41] dyndbg: reverse module.callsite walk
 in cat control
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

Walk the module's vector of callsites backwards; ie N..0.  This
"corrects" the backwards appearance of a module's prdbg vector when
walked 0..N.  I think this is due to linker mechanics, which I'm
inclined to treat as immutable, and the order is fixable in display.

No functional changes.

Combined with previous commit, which reversed tables-list, we get:

  :#> head -n7 /proc/dynamic_debug/control
  # filename:lineno [module]function flags format
  init/main.c:1179 [main]initcall_blacklist =_ "blacklisting initcall %s\012"
  init/main.c:1218 [main]initcall_blacklisted =_ "initcall %s blacklisted\012"
  init/main.c:1424 [main]run_init_process =_ "  with arguments:\012"
  init/main.c:1426 [main]run_init_process =_ "    %s\012"
  init/main.c:1427 [main]run_init_process =_ "  with environment:\012"
  init/main.c:1429 [main]run_init_process =_ "    %s\012"

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/dynamic_debug.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 7fb99492c16f..8ff11977b8bd 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -59,7 +59,7 @@ struct ddebug_query {
 
 struct ddebug_iter {
 	struct ddebug_table *table;
-	unsigned int idx;
+	int idx;
 };
 
 struct flag_settings {
@@ -805,13 +805,12 @@ static struct _ddebug *ddebug_iter_first(struct ddebug_iter *iter)
 {
 	if (list_empty(&ddebug_tables)) {
 		iter->table = NULL;
-		iter->idx = 0;
 		return NULL;
 	}
 	iter->table = list_entry(ddebug_tables.next,
 				 struct ddebug_table, link);
-	iter->idx = 0;
-	return &iter->table->ddebugs[iter->idx];
+	iter->idx = iter->table->num_ddebugs;
+	return &iter->table->ddebugs[--iter->idx];
 }
 
 /*
@@ -824,15 +823,16 @@ static struct _ddebug *ddebug_iter_next(struct ddebug_iter *iter)
 {
 	if (iter->table == NULL)
 		return NULL;
-	if (++iter->idx == iter->table->num_ddebugs) {
+	if (--iter->idx < 0) {
 		/* iterate to next table */
-		iter->idx = 0;
 		if (list_is_last(&iter->table->link, &ddebug_tables)) {
 			iter->table = NULL;
 			return NULL;
 		}
 		iter->table = list_entry(iter->table->link.next,
 					 struct ddebug_table, link);
+		iter->idx = iter->table->num_ddebugs;
+		--iter->idx;
 	}
 	return &iter->table->ddebugs[iter->idx];
 }
-- 
2.36.1

