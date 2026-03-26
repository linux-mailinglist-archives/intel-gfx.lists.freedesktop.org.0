Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WO1rEl9zymmB9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5B135B7A5
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4469210E741;
	Mon, 30 Mar 2026 12:58:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dtEyGh88";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DFBF10EBC9
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:02 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id
 5614622812f47-464ba2bb3aeso744803b6e.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551301; x=1775156101; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NLjFx8xvoYU6I9e8U5366NO9qUPUvtME5XDnhqfKA8c=;
 b=dtEyGh88X+r5zpzihl27D8Up+IHI1Aklog6su6Gl8SXCxGlAosTsvK5DBfAPHSg6rx
 5JmlZY+5WTkR8cmVh3DKUiU5IGh2tq9SEmxCbombX23utRl5y7W4tFeNVq/7xmdVHEBX
 PpXgGanBom7oZoC8fdOkX3pyN9FCyVcR2lZc9NQRupDvWnvfQiEwbviN89RJ+eRwxH8m
 JkywqxPsVSg+EDcSFZEgY67cGR1nHcabq1FGuigf7RdZEikNzlcepL9BN6q0yGU63SXY
 vP44iWe1xDrHzyEkch0FZ05c4x+qbTsQOLaw+13HJzQBxjb/CH711LmFWsreOgW4cCio
 LOnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551301; x=1775156101;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=NLjFx8xvoYU6I9e8U5366NO9qUPUvtME5XDnhqfKA8c=;
 b=nusYqc0HzI6vP9tQjzhFXkqxq21j9Ii8P3whWq8j6qzN7ba8JNRx0A26nySXpnLejy
 hGFzbCDzG2eI46HjRSQgY5D2uPcpOprfgwa6+qyfwyPpj91v5OAlzGET62jtUgyBzBtW
 mcmyBl5H8B/10iJF41tNbpJxDrIRX88R4VJDUJSZrM7DkbmLIDOLkhy3QPbSFskgyjW1
 mVvitf2LcHkrW4L6FkdF7wB+R5REL+B5FPSlmnT+UHTWfoBF17aMtQxOhyx0p3eO1agR
 tX88MrrwJteDtZZLtRgdGWFRs3Mqhu38ffkzpqABfXl2YwoH4eMbWSIqpeLKYsjwP8BT
 pgvQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVBioUwI4bzZeX2Ax+c3fYd3Q1CJ/z2qr7ZegClgM2ncqJoQHYMMoyW8p0Y8vXPcH0edN78ggXki+U=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyJxNJDVM5ka8hmyBB2KCwjICb2eFMZ8BZmVDdTOB/Puy3Qrwqi
 3J09I5BTD7IeANitTKVD8Ot2bWJ0lJa+p8hs3RX+FcydMNWEStOG/a7P
X-Gm-Gg: ATEYQzwOMrqOL6yi2IWto/IUX0p0A6OXli7ZXXD07AQ7Wrd0c4s5jQFSgFDRsSjnkqG
 Uok93X7LvmaN5bYuo/sGsnkvptsmtwymRzdNsv8EsXbezWFZg9Re2a+vXyMPPFaBlk2/1nm5nlI
 00OLRqEtUKQfwwjSPFE6T4khZp5JpdKTWu+9iQlblaRdtgE2PI3n2nFSzzjFgglU7potDoScyTH
 ClelTcMnqZBnvxIKKEf0KGHAskesBp/CSsDsUk1D4vCo4wformAxbk/HpvkZkU3ZGq0U9AoKHIh
 2cbc/dXYC7VZwPxscAzGMM72Cb9/Q7KWnfal8zE3QbcEGZIY5CioL4Uss8+iBKKpDX44/00wPWa
 VOemlpOrMBf8+80r+T312ChtYKVr5dIxIBUz1RR2c5ZrFc6I27s/l/iBJCVvwnb2q2e3c8QDA43
 t/3KQLr5dsM+YdQzviqCA9omy0Lk+gIHK19PLOnGstVMgL5dbI
X-Received: by 2002:a05:6808:3509:b0:466:f451:a0c0 with SMTP id
 5614622812f47-46a7a84537amr1185457b6e.1.1774551301362; 
 Thu, 26 Mar 2026 11:55:01 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.54.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:00 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org
Cc: jim.cromie@gmail.com, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v12 21/69] dyndbg: hoist classmap-filter-by-modname up to
 ddebug_add_module
Date: Thu, 26 Mar 2026 12:53:25 -0600
Message-ID: <20260326185413.1205870-22-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260326185413.1205870-1-jim.cromie@gmail.com>
References: <20260326185413.1205870-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 30 Mar 2026 12:57:43 +0000
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[90];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: EA5B135B7A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The body of ddebug_attach_module_classes() is dominated by a
code-block that finds the contiguous subrange of classmaps matching on
modname, and saves it into the ddebug_table's info record.

Implement this block in a macro to accommodate different component
vectors in the "box" (as named in the for_subvec macro).  We will
reuse this macro shortly.

And hoist its invocation out of ddebug_attach_module_classes() up into
ddebug_add_module().  This moves the filtering step up closer to
dynamic_debug_init(), which already segments the builtin pr_debug
descriptors on their mod_name boundaries.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
v10?- reordered params to match kdoc

v12- refactor/rename: s/dd_mark_vector_subrange/dd_set_module_subrange/

1. Renamed the macro from dd_mark_vector_subrange to
   dd_set_module_subrange to better reflect its purpose of narrowing a
   vector to a module-specific subrange.

2. Simplified the arguments by removing the redundant _dst, as the _di
   pointer already provides access to the target _ddebug_info struct.

3. Refactored for Clarity: Instead of overwriting the struct's start
   pointer while the for_subvec loop is using it to iterate, I
   introduced a temporary __start variable. This avoids the "subtle"
   side effect and makes the logic easier to follow.

4. Updated Documentation: Improved the comment block to explicitly
   state that the macro scans for the first match and counts
   contiguous elements.
---
 lib/dynamic_debug.c | 37 +++++++++++++++++++++++++++++++++++--
 1 file changed, 35 insertions(+), 2 deletions(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 21ba5cb3b406..443f0fd6e8c4 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -169,8 +169,8 @@ static void vpr_info_dq(const struct ddebug_query *query, const char *msg)
 }
 
 static struct _ddebug_class_map *ddebug_find_valid_class(struct ddebug_table const *dt,
-							const char *class_string,
-							int *class_id)
+							 const char *class_string,
+							 int *class_id)
 {
 	struct _ddebug_class_map *map;
 	int i, idx;
@@ -1271,6 +1271,35 @@ static void ddebug_attach_module_classes(struct ddebug_table *dt, struct _ddebug
 	}
 }
 
+/*
+ * Narrow a _ddebug_info's vector (@_vec) to the contiguous subrange
+ * of elements where ->mod_name matches @__di->mod_name.
+ *
+ * This scans the @_di->_vec for the first element matching the module
+ * name, and counts contiguous matches to define the subrange.
+ *
+ * @_i:   caller-provided index var
+ * @_sp:  cursor into @_vec
+ * @_di:  pointer to the struct _ddebug_info to be narrowed
+ * @_vec: name of the vector member (must have .start and .len)
+ */
+#define dd_set_module_subrange(_i, _sp, _di, _vec) ({			\
+	struct _ddebug_info *__di = (_di);				\
+	typeof(__di->_vec.start) __start = NULL;			\
+	int __nc = 0;							\
+	for_subvec(_i, _sp, __di, _vec) {				\
+		if (!strcmp((_sp)->mod_name, __di->mod_name)) {		\
+			if (!__nc++)					\
+				__start = (_sp);			\
+		} else if (__nc) {					\
+			break; /* end of consecutive matches */		\
+		}							\
+	}								\
+	if (__nc)							\
+		__di->_vec.start = __start;				\
+	__di->_vec.len = __nc;						\
+})
+
 /*
  * Allocate a new ddebug_table for the given module
  * and add it to the global list.
@@ -1278,6 +1307,8 @@ static void ddebug_attach_module_classes(struct ddebug_table *dt, struct _ddebug
 static int ddebug_add_module(struct _ddebug_info *di)
 {
 	struct ddebug_table *dt;
+	struct _ddebug_class_map *cm;
+	int i;
 
 	if (!di->descs.len)
 		return 0;
@@ -1299,6 +1330,8 @@ static int ddebug_add_module(struct _ddebug_info *di)
 
 	INIT_LIST_HEAD(&dt->link);
 
+	dd_set_module_subrange(i, cm, &dt->info, maps);
+
 	if (di->maps.len)
 		ddebug_attach_module_classes(dt, di);
 
-- 
2.53.0

