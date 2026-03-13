Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNPKEWFkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E89DA2F7604
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3450F10E50B;
	Mon, 23 Mar 2026 16:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="AaF/Apbi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C460110EBF8
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:23:49 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id
 5614622812f47-466ec4c6852so1372642b6e.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408229; x=1774013029; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=j2MYJzJHADFhmDlQmMQlbImDYfLHhfEQ7IriPsfmok0=;
 b=AaF/Apbijun7Cv0lz+Xam8ftDdVFzHsSMtDYju7MucCTl/ZXiTSyxvYpakqzODdkUG
 +3nGdEFeASKvPJvp7vBMDriXU0MFypUQhmm3zHrKnewF60e2WYTl7IeYmBrNFiU+FOuh
 6B1JTghwuRAwjjlY76Z/anANP72NVV/jls8+fccgvuzL5tSojQtI7atMeFi+Y8VzEbQ8
 BaWTynikekUMn6GlNIYJr/srLiGoPktENs9K1eCudF5fuIu95Cu5OWjAt17PIxCQ65tD
 qvcf73HocStSBs49hYvFqM7xbPJP/BwwVfEqKm3sHbTuqpFp9aEuizwmdTr63mso3cYX
 GB9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408229; x=1774013029;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=j2MYJzJHADFhmDlQmMQlbImDYfLHhfEQ7IriPsfmok0=;
 b=UmtnmYftqIGS9HGRG3RTEl4zKD3j95k9Srv3wqaAs+4tgUQDiFKmsT5bucJ0Yzk4qY
 s7juZg67Wwez2JUC+tq6KVFbZZHEZzYpcT9fHjzlcCC2XO9kqAO7Q8AO+AthO4TKowV+
 UeD2DrYTpPq4RxdhgqP4MPYN2YHjeYCwurvFHiBvlydvY1zLnZQ46kzik1TBFGlbCB8V
 P74ykFCrxVWMaqVbM+daDM6TKXiuD9bui5lZFhFEaQHGbkURweiBiUMsztIlvUDS+6Lw
 TaDCGBNsNsT+75fA/3lOUKo/hr7aMqkUXCO/wPKaj3kV6HN/9xbUK2iSpO1CJ4x7Jlzo
 f43Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVrKPUSp25tMqvwAG29p6RvfJABHqQzPvMnanWM+IjLkH4oRhe95Z2tYXg1iNguMuvfzFx3OTaibVc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwtBXNkI1CXmKqcED7d0U8h0t4hLQpzE6sjjz9QYigH19rEna7G
 iW0WQ0c0BQMIXco0g7rMcEoqKUCYuUw+s7UmtY4ndNawmDaLPiWPijlx
X-Gm-Gg: ATEYQzx3JlLMRSL3fRytbFq7Bcjzq0+HynE8imoLkXsg8O0WmaM4SZdyHlVgchJntuE
 9/359BXGIZy6ngppis9RpKYsTmpviT2lbv24teUizR1iSXLNa7l9xE/MU08KEcLxGEwwTiLpx5o
 HafhBkUw5HXtOsV5OzOcIUQz1wrdW3XfiuOLT877XxT9m4BiyBCLPsgiwF0skjYxR1HfT8rgRwp
 Vmi8Jk/8Wmgb8a710UGST4mSC0yW5NJTb4behjcEygqc+hRIG7M6otL+a6EqzgeV2yxkVtHAVxG
 F5aHy5ZVlVzPlzySixY+NE3fPZMxv0vCbAKLSt0sNRS2YI6Nz/dTbvksnX6qFi9O56LfH1e5rgA
 pP6RmiFoPDi1LKI2d1N9j71hlaeZV1VEXY5LZxhBCDmXPDb5SHasyrbV3MgMQ2qMUVa+6PNOflk
 PzQTfoh2YHwW65xV1qUtgIzEp1fC7Y6Pw0aUjRnUtzjFSkH9gR
X-Received: by 2002:a05:6808:c2d1:b0:467:26e4:728e with SMTP id
 5614622812f47-467575c42d6mr1645259b6e.49.1773408228837; 
 Fri, 13 Mar 2026 06:23:48 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.23.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:23:48 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Jim Cromie <jim.cromie@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org
Cc: mripard@kernel.org, tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 christian.koenig@amd.com, matthew.auld@intel.com,
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com,
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 24/65] dyndbg: check DYNAMIC_DEBUG_CLASSMAP_DEFINE args at
 compile-time
Date: Fri, 13 Mar 2026 07:19:49 -0600
Message-ID: <20260313132103.2529746-25-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260313132103.2529746-1-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:24 +0000
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
X-Spamd-Result: default: False [2.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[242];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:akpm@linux-foundation.org,m:linux-kernel@vger.kernel.org,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,linux-foundation.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.948];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E89DA2F7604
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add __DYNAMIC_DEBUG_CLASSMAP_CHECK to implement the following
arg-checks at compile-time:

	0 <= _base < 63
	class_names is not empty
	class_names[0] is a string
	(class_names.length + _base) < 63

These compile-time checks will prevent several simple misuses, and
will issue obvious errors if violated.

4 such examples are added to test_dynamic_debug_submod.ko, and will
fail compilation if -DDD_MACRO_ARGCHECK is added to cflags.  This
wouldn't be a useful CONFIG_ item, since it breaks the build.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 include/linux/dynamic_debug.h |  9 +++++++++
 lib/test_dynamic_debug.c      | 13 ++++++++++++-
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index 74ed18a038bd..d3889173abf3 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -181,6 +181,14 @@ struct _ddebug_class_param {
  * __pr_debug_cls(22, "no such class"); compiles but is not reachable
  */
 
+#define __DYNAMIC_DEBUG_CLASSMAP_CHECK(_clnames, _base)			\
+	static_assert(((_base) >= 0 && (_base) < _DPRINTK_CLASS_DFLT),	\
+		      "_base must be in 0..62");			\
+	static_assert(ARRAY_SIZE(_clnames) > 0,				\
+		      "classnames array size must be > 0");		\
+	static_assert((ARRAY_SIZE(_clnames) + (_base)) < _DPRINTK_CLASS_DFLT, \
+		      "_base + classnames.length exceeds range")
+
 /**
  * DYNAMIC_DEBUG_CLASSMAP_DEFINE - define debug classes used by a module.
  * @_var:   name of the classmap, exported for other modules coordinated use.
@@ -194,6 +202,7 @@ struct _ddebug_class_param {
  */
 #define DYNAMIC_DEBUG_CLASSMAP_DEFINE(_var, _mapty, _base, ...)		\
 	static const char *_var##_classnames[] = { __VA_ARGS__ };	\
+	__DYNAMIC_DEBUG_CLASSMAP_CHECK(_var##_classnames, (_base));	\
 	extern struct _ddebug_class_map _var;				\
 	struct _ddebug_class_map __aligned(8) __used			\
 		__section("__dyndbg_class_maps") _var = {		\
diff --git a/lib/test_dynamic_debug.c b/lib/test_dynamic_debug.c
index 1ba4be9a403a..b2bdfdfb6ba1 100644
--- a/lib/test_dynamic_debug.c
+++ b/lib/test_dynamic_debug.c
@@ -133,7 +133,7 @@ DYNAMIC_DEBUG_CLASSMAP_PARAM(level_num, p);
  * Enable with -Dflag on compile to test overlapping class-id range
  * detection.  This should warn on modprobes.
  */
-DYNDBG_CLASSMAP_DEFINE(classid_range_conflict, 0, D2_CORE + 1, "D3_CORE");
+DYNAMIC_DEBUG_CLASSMAP_DEFINE(classid_range_conflict, 0, D2_CORE + 1, "D3_CORE");
 #endif
 
 #else /* TEST_DYNAMIC_DEBUG_SUBMOD */
@@ -146,8 +146,19 @@ DYNDBG_CLASSMAP_DEFINE(classid_range_conflict, 0, D2_CORE + 1, "D3_CORE");
 DYNAMIC_DEBUG_CLASSMAP_USE(map_disjoint_bits);
 DYNAMIC_DEBUG_CLASSMAP_USE(map_level_num);
 
+#if defined(DD_MACRO_ARGCHECK)
+/*
+ * Exersize compile-time arg-checks in DYNAMIC_DEBUG_CLASSMAP_DEFINE.
+ * These will break compilation.
+ */
+DYNAMIC_DEBUG_CLASSMAP_DEFINE(fail_base_neg, 0, -1, "NEGATIVE_BASE_ARG");
+DYNAMIC_DEBUG_CLASSMAP_DEFINE(fail_base_big, 0, 100, "TOOBIG_BASE_ARG");
+DYNAMIC_DEBUG_CLASSMAP_DEFINE(fail_str_type, 0, 0, 1 /* not a string */);
+DYNAMIC_DEBUG_CLASSMAP_DEFINE(fail_emptyclass, 0, 0 /* ,empty */);
 #endif
 
+#endif /* TEST_DYNAMIC_DEBUG_SUBMOD */
+
 /* stand-in for all pr_debug etc */
 #define prdbg(SYM) __pr_debug_cls(SYM, #SYM " msg\n")
 
-- 
2.53.0

