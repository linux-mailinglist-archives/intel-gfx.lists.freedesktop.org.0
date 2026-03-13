Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFpuG2RkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 184262F764B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3EDE10E51E;
	Mon, 23 Mar 2026 16:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="mOzDWYib";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ACAE10EC06
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:07 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id
 5614622812f47-4671119c1c0so1595680b6e.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408247; x=1774013047; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RUFWI26wJ3+Z57HFFsxefXkK3D/1IEaVOdGJ9g+Mjso=;
 b=mOzDWYib02hXz1WqVhevQUL1cUUyaHw9mW8uuFIQNJ0pxV10YFg5xUlkI0rTlZC8ev
 WO8PCVox27kfG7WBjflCfF/6e8W0pAN1sSvPdgbBH9mrPDpnJm8K2bLTLBszrL0yKBow
 FEiGVv6k5IKFaFzX0MWdobEKnz3cbstJBDnIy8p/8hZPh0SBnXIKw2OxWSSjjpp4PhOd
 qcn8tPFoYpOxEdsBjEN6J+NgCeT9Rr/tNDjGyEZHldRKL+0LLLRKqwERv9rjPHLd5yN0
 nNOvJpZtHmz7zbJndEMQP8DC0kJc1nsmcCtJ9FXq5sOBXk4A6uvRUAmzt47lp0DZJneg
 ZA1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408247; x=1774013047;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=RUFWI26wJ3+Z57HFFsxefXkK3D/1IEaVOdGJ9g+Mjso=;
 b=G0vXaC0JsPkMEvoC72olXUeCt2hRDQvUjbPj/VDeIRDpxy+5iQ6u69Lu6WlW11EfZm
 gkyXh3xbm82jbpXe085+QKbqBrcsT+Wm5y7tKgzoK4tdbZVnygmQ3zczIIHC2piNS6px
 qvBv8ctjRZWH5UtExL0gM1kZqzWWjBLlh8yM6atPGMyZ1p2RGAnyEetE6ImMHSqHFbCo
 gpcK6AgeUeHGpYQoL+rZ3wovXIEn3dhTtooN0ZzG2o57Vepuq9wgDLKmMM1FJGfzaeFO
 FHiC3M8lZE481TCvbPpHhP9ttwIUp8q0HCpdJg7rLL75J7oKOgKPTM+/1qbu28EkQyt4
 Hazg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVFRlDnMRaRDSUqC7Km0r5Vp2iB1CaWNaCtW0J2KFdRQYhz53ZRw4vNF552BPVkZO1ZLpC3TgBoRJw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw7RO4dSJFqmUnW4jrzNi8mA8jehuau3S18lGPG/FioOPU6hFJI
 L4olokrcQ7rM+2Q2NF3TDmvT3f6kJX/RVplNi09AafAmfl+y0s63DiKC
X-Gm-Gg: ATEYQzwJ+cIQ44qXke/Au9p4GWFNMCyFgqN9kwUCe/aPqhnI9gdcCoH2TXotyCaxuiy
 m4MpAb1k/eZ1mnFRvc9OUmrGDLNJKqHDTNS4wK6AuWtzOkC0PI0a9vVdYoliSplnMks0beCS+FU
 y5l92X+WPKze47hMPHqzCFn/DAPb4c0yV0wtRi6L+/zRTix39dWHuL9xaJVceF9pjtKSU0NchnN
 AE5i0y7b9tUFYDxwQJ2uijfsHFAkTmvggV65tm4UD590s6y8b1UDx/fiytEiuFGw06//6z9DrHY
 82o1jYT8eOAFIQQ1aP3XivhEBHgf5pXpdCZ9SedOqpm6O9N4aPX2+XfZ6ulHegizDFrwH0jqs76
 XGYxv7aMoAv0GTm7mx3e10EW3l3iGKesJrwXB1aWmuDSk3eWU9Z/3jaVMD9mW6HouIY0+WjkS1f
 WpwHbInx9LC6mU28a7+WG6IrVBY7GRNmkmcRXpHXq4bx1sPL5oIxLc9twVyRg=
X-Received: by 2002:a05:6808:2385:b0:450:bcc7:18d7 with SMTP id
 5614622812f47-4675704dfa8mr1712441b6e.2.1773408246581; 
 Fri, 13 Mar 2026 06:24:06 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:06 -0700 (PDT)
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
Subject: [PATCH v11 32/65] dyndbg: Harden classmap and callsite validation
Date: Fri, 13 Mar 2026 07:19:57 -0600
Message-ID: <20260313132103.2529746-33-jim.cromie@gmail.com>
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
	NEURAL_HAM(-0.00)[-0.954];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 184262F764B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dynamic debug classmaps allow modules to _DEFINE or _USE classmaps,
which map classnames to a range of class-IDs (0..62) that they are
using.  This names => IDs mapping allows many modules to use 0..N
independently, and even allows (carefully) shared classnames.

Previously, class validation only caught some violations in _DEFINEd
classmaps; 0..62 range checks, overlaps among _DEFINEd classmaps, but
left blind spots in _USEs, for out of bounds manual offsets,
overlapping _USEd classmaps, unknown map types, and orphaned callsite
IDs. These oversights could lead to ambiguous routing or spammy
warnings during control query execution.

This commit hardens classmap and descriptor validation:

- Mirror the compile-time limits of _DEFINE by adding a static_assert
  to validate the _offset value passed to DYNAMIC_DEBUG_CLASSMAP_USE_.
- Add run-time overlap checks for _USEd classmaps in ddebug_add_module()
  to prevent collisions between private maps and imported APIs.
- Validate that module classmaps use known enum map types.
- Scan module descriptors at load time to print a single warning per
  missing class_id, rather than waiting for a user query to trip over it.
- Downgrade the global WARN_ONCE in ddebug_match_desc() to a
  pr_warn_ratelimited, since orphaned class IDs are now tracked and
  warned about early at module load.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 include/linux/dynamic_debug.h |  2 ++
 lib/dynamic_debug.c           | 52 +++++++++++++++++++++++++++++++----
 2 files changed, 48 insertions(+), 6 deletions(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index 0d1245aefc69..28684cfc0937 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -262,6 +262,8 @@ struct _ddebug_class_param {
 
 #define __DYNAMIC_DEBUG_CLASSMAP_USE(_var, _offset, _uname)		\
 	extern struct _ddebug_class_map _var;				\
+	static_assert((_offset) >= 0 && (_offset) < _DPRINTK_CLASS_DFLT, \
+		      "classmap use offset must be in 0..62");		\
 	static struct _ddebug_class_user __aligned(8) __used		\
 	__section("__dyndbg_class_users") _uname = {			\
 		.mod_name = KBUILD_MODNAME,				\
diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 2083a8546460..635df6edb4cf 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -320,7 +320,7 @@ static bool ddebug_match_desc(const struct ddebug_query *query,
 	/* site is class'd */
 	site_map = ddebug_find_map_by_class_id(di, dp->class_id);
 	if (!site_map) {
-		WARN_ONCE(1, "unknown class_id %d, check %s's CLASSMAP definitions",
+		pr_warn_ratelimited("unknown class_id %d, check %s's CLASSMAP definitions\n",
 			  dp->class_id, di->mod_name);
 		return false;
 	}
@@ -1404,9 +1404,8 @@ static void ddebug_apply_class_users(const struct _ddebug_info *di)
 	(__dst)->info._vec.len = __nc;					\
 })
 
-static int __maybe_unused
-ddebug_class_range_overlap(struct _ddebug_class_map *cm,
-			   u64 *reserved_ids)
+static int ddebug_class_range_overlap(struct _ddebug_class_map *cm,
+				      u64 *reserved_ids)
 {
 	u64 range = (((1ULL << cm->length) - 1) << cm->base);
 
@@ -1420,6 +1419,23 @@ ddebug_class_range_overlap(struct _ddebug_class_map *cm,
 	return 0;
 }
 
+static int ddebug_class_user_overlap(struct _ddebug_class_user *cli,
+				     u64 *reserved_ids)
+{
+	struct _ddebug_class_map *cm = cli->map;
+	int base = cm->base + cli->offset;
+	u64 range = (((1ULL << cm->length) - 1) << base);
+
+	if (range & *reserved_ids) {
+		pr_err("[%d..%d] (from %s) conflicts with %llx\n", base,
+		       base + cm->length - 1, cm->class_names[0],
+		       *reserved_ids);
+		return -EINVAL;
+	}
+	*reserved_ids |= range;
+	return 0;
+}
+
 /*
  * Allocate a new ddebug_table for the given module
  * and add it to the global list.
@@ -1430,6 +1446,7 @@ static int ddebug_add_module(struct _ddebug_info *di)
 	struct _ddebug_class_map *cm;
 	struct _ddebug_class_user *cli;
 	u64 reserved_ids = 0;
+	u64 bad_ids = 0;
 	int i;
 
 	if (!di->descs.len)
@@ -1454,10 +1471,33 @@ static int ddebug_add_module(struct _ddebug_info *di)
 	dd_mark_vector_subrange(i, cli, &dt->info, users, dt);
 	/* now di is stale */
 
-	/* insure 2+ classmaps share the per-module 0..62 class_id space */
-	for_subvec(i, cm, &dt->info, maps)
+	/* validate class map types and the per-module 0..62 class_id space */
+	for_subvec(i, cm, &dt->info, maps) {
+		if (cm->map_type > DD_CLASS_TYPE_LEVEL_NUM) {
+			pr_err("module %s has unknown classmap type %d\n", dt->info.mod_name, cm->map_type);
+			goto cleanup;
+		}
 		if (ddebug_class_range_overlap(cm, &reserved_ids))
 			goto cleanup;
+	}
+
+	for_subvec(i, cli, &dt->info, users)
+		if (ddebug_class_user_overlap(cli, &reserved_ids))
+			goto cleanup;
+
+	/* validate all class_ids against module's classmaps/users */
+	for (i = 0; i < dt->info.descs.len; i++) {
+		struct _ddebug *dp = &dt->info.descs.start[i];
+
+		if (dp->class_id == _DPRINTK_CLASS_DFLT)
+			continue;
+		if (bad_ids & (1ULL << dp->class_id))
+			continue;
+		if (!ddebug_find_map_by_class_id(&dt->info, dp->class_id)) {
+			pr_warn("module %s uses unknown class_id %d\n", dt->info.mod_name, dp->class_id);
+			bad_ids |= (1ULL << dp->class_id);
+		}
+	}
 
 	mutex_lock(&ddebug_lock);
 	list_add_tail(&dt->link, &ddebug_tables);
-- 
2.53.0

