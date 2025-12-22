Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B69C3CD6473
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 15:00:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22A7D10E0D9;
	Mon, 22 Dec 2025 14:00:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gHiTSc64";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 439A110E57B
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Dec 2025 08:23:11 +0000 (UTC)
Received: by mail-pf1-f173.google.com with SMTP id
 d2e1a72fcca58-7b9387df58cso6062607b3a.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Dec 2025 00:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766391791; x=1766996591; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kB9XGvfi6ObodyigSZBf40IoYnb1xkrL/FFwh/sfSnM=;
 b=gHiTSc64Jz/bR3RGyWQTdqByafuxJY7KFtVwpgzwWLXI0XVOgMzjLLd20kGjkiiHDN
 7lMaz6Iri1oAYhthAEQKTh/LFvL0bgg06/FMiz8LngcfQEGaj/ul99lUVzfKDIqx4EcJ
 hK2BAtRkB7xez/cEsuOTkLsN+88MpnV/x++8n2dStjMdZCnUvWAK3zkVPqmXTQ/1xtdP
 GwYw3XlYF00cY/YWF+X1/nCG/oKxQv7ckG6rajhJDPcFB0CiWrdniHebBmG/vrU6qo2m
 jUNqTfc9rvOZIL8EjB8TKwgbQp/vx7mO3h9zBmcZ/V2/EMIiN0Lzr729gpLHGSzTt1+w
 t5Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766391791; x=1766996591;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=kB9XGvfi6ObodyigSZBf40IoYnb1xkrL/FFwh/sfSnM=;
 b=QqXlLeZt3AJhFITEQdJzxTH1P1eu1uXZRzlbiRxiq1gArvYxz/f8NWImwnkyNnQqse
 9TB9QZBigb1+HMXD4enTozsy/TQAEr4GyD0KFQA13wBtzYxT9qPnb/yV3jUcz1rBDpUn
 8kH74aQJUCvj038k3ab+8Wu8L2TPQXqsumbR9smXQIddNqSYgGhqMChkpyoVqblJ60T7
 QcK6CiJPWdyRd7o0/yDpkuNGT+++To5nDn0gHl55lrjrRdoS7zos5NZ80tb++ZXvRhS4
 c2P2EQMhXdvSMJm1wmmYNBxcZNiXLWys0xIYKr9bMzW6Q8XPgbBPhYniaCY9b+5u16Wq
 honQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVn+MlTh6FFDWcEF27xe+cEuBA51le09o64xxmSdskU77x/NC3r7Zj5lo3thLWhtM5FYcp0Tc8q4EU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzLNS15IhBDoUJJajzjrMA09KKRy4YoOTpKj6A/bKwRcGDiko+9
 e+RwXdILCFqE77sihCTCrgXiCoYFjmJLTmMoZZX2RM+P8sLKmTxjm8Og
X-Gm-Gg: AY/fxX6EyUNfLTPkHaWhDjbmsZxcuYxqwN+iFMlJn3HG76C9kPmVIsiC0M5PI60isaq
 qQoM9W+jfO9vaGL3FR868p8MpIrgZe3ZUnBdICkiWvXmeJt55kelppJ0aCSWzlbV+515q3E+pYm
 8Uw6noW37M5m7UnZ1lWgF1wPqCffXt96NSkriOz4haHjtOl3nVhiaCRpEYnFvMUzGS/DaMQZWa4
 na8NLLq+HT9hi+0k2KgTG1n2kaJJszsGVu8KMevQZ5YxXOieXC/5GJQFBIUngY94OCLA7nsnk5y
 dyITP51KFyaohSMHswYQc5XyHKcRMVtJfXZ+V6VmF294jMWNG5beN1kNiQ3Y1pXM6anLQ8HYMsz
 DbDf1hIUr8loIs1/qch2COGkG4JOXWeZ2R2feaAvyXy5G4FaCVc+RbXw8xZdAx2BTTtGo5SA5XF
 54PSQSKYWO
X-Google-Smtp-Source: AGHT+IGznpKTz6ixXv+s26nHooFtLIG4Ke1AWMjy0/WKJaDBXTq6iXxKo6TPfotRdJtMkjnB8IbN1A==
X-Received: by 2002:a05:6a20:b905:b0:366:14b0:1a3b with SMTP id
 adf61e73a8af0-376ab2e4dd1mr7445280637.73.1766391790723; 
 Mon, 22 Dec 2025 00:23:10 -0800 (PST)
Received: from frodo ([2404:4400:417e:3d00:8b90:7f55:1261:772f])
 by smtp.googlemail.com with ESMTPSA id
 d2e1a72fcca58-7ff7e493123sm9540699b3a.50.2025.12.22.00.22.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Dec 2025 00:23:10 -0800 (PST)
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
Subject: [PATCH v7 10/31] dyndbg: reduce verbose/debug clutter
Date: Mon, 22 Dec 2025 21:20:27 +1300
Message-ID: <20251222082049.1782440-11-jim.cromie@gmail.com>
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

currently, for verbose=3, these are logged (blank lines for clarity):

 dyndbg: query 0: "class DRM_UT_CORE +p" mod:*
 dyndbg: split into words: "class" "DRM_UT_CORE" "+p"

 dyndbg: op='+'
 dyndbg: flags=0x1
 dyndbg: *flagsp=0x1 *maskp=0xffffffff

 dyndbg: parsed: func="" file="" module="" format="" lineno=0-0 class=...
 dyndbg: no matches for query
 dyndbg: no-match: func="" file="" module="" format="" lineno=0-0 class=...
 dyndbg: processed 1 queries, with 0 matches, 0 errs

That is excessive, so this patch:
 - shrinks 3 lines of 2nd stanza to single line
 - drops 1st 2 lines of 3rd stanza
   3rd line is like 1st, with result, not procedure.
   2nd line is just status, retold in 4th, with more info.

New output:

 dyndbg: query 0: "class DRM_UT_CORE +p" mod:*
 dyndbg: split into words: "class" "DRM_UT_CORE" "+p"
 dyndbg: op='+' flags=0x1 *flagsp=0x1 *maskp=0xffffffff
 dyndbg: no-match: func="" file="" module="" format="" lineno=0-0 class=...
 dyndbg: processed 1 queries, with 0 matches, 0 errs

Also reduce verbose=3 messages in ddebug_add_module

When modprobing a module, dyndbg currently logs/says "add-module", and
then "skipping" if the module has no prdbgs.  Instead just check 1st
and return quietly.

no functional change

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/dynamic_debug.c | 21 ++++++---------------
 1 file changed, 6 insertions(+), 15 deletions(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 21c1db7e8705..1db2f627237a 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -275,9 +275,6 @@ static int ddebug_change(const struct ddebug_query *query,
 	}
 	mutex_unlock(&ddebug_lock);
 
-	if (!nfound && verbose)
-		pr_info("no matches for query\n");
-
 	return nfound;
 }
 
@@ -510,7 +507,6 @@ static int ddebug_parse_flags(const char *str, struct flag_settings *modifiers)
 		pr_err("bad flag-op %c, at start of %s\n", *str, str);
 		return -EINVAL;
 	}
-	v3pr_info("op='%c'\n", op);
 
 	for (; *str ; ++str) {
 		for (i = ARRAY_SIZE(opt_array) - 1; i >= 0; i--) {
@@ -524,7 +520,6 @@ static int ddebug_parse_flags(const char *str, struct flag_settings *modifiers)
 			return -EINVAL;
 		}
 	}
-	v3pr_info("flags=0x%x\n", modifiers->flags);
 
 	/* calculate final flags, mask based upon op */
 	switch (op) {
@@ -540,7 +535,7 @@ static int ddebug_parse_flags(const char *str, struct flag_settings *modifiers)
 		modifiers->flags = 0;
 		break;
 	}
-	v3pr_info("*flagsp=0x%x *maskp=0x%x\n", modifiers->flags, modifiers->mask);
+	v3pr_info("op='%c' flags=0x%x maskp=0x%x\n", op, modifiers->flags, modifiers->mask);
 
 	return 0;
 }
@@ -550,7 +545,7 @@ static int ddebug_exec_query(char *query_string, const char *modname)
 	struct flag_settings modifiers = {};
 	struct ddebug_query query = {};
 #define MAXWORDS 9
-	int nwords, nfound;
+	int nwords;
 	char *words[MAXWORDS];
 
 	nwords = ddebug_tokenize(query_string, words, MAXWORDS);
@@ -568,10 +563,7 @@ static int ddebug_exec_query(char *query_string, const char *modname)
 		return -EINVAL;
 	}
 	/* actually go and implement the change */
-	nfound = ddebug_change(&query, &modifiers);
-	vpr_info_dq(&query, nfound ? "applied" : "no-match");
-
-	return nfound;
+	return ddebug_change(&query, &modifiers);
 }
 
 /* handle multiple queries in query string, continue on error, return
@@ -1245,11 +1237,10 @@ static int ddebug_add_module(struct _ddebug_info *di, const char *modname)
 {
 	struct ddebug_table *dt;
 
-	v3pr_info("add-module: %s.%d sites\n", modname, di->num_descs);
-	if (!di->num_descs) {
-		v3pr_info(" skip %s\n", modname);
+	if (!di->num_descs)
 		return 0;
-	}
+
+	v3pr_info("add-module: %s %d sites\n", modname, di->num_descs);
 
 	dt = kzalloc(sizeof(*dt), GFP_KERNEL);
 	if (dt == NULL) {
-- 
2.52.0

