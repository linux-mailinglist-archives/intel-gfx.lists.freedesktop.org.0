Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BThHFtzymmB9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B3335B73F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D62F710E718;
	Mon, 30 Mar 2026 12:57:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="S+9bcOMh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com
 [209.85.161.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AACAE10EBBB
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:21 +0000 (UTC)
Received: by mail-oo1-f47.google.com with SMTP id
 006d021491bc7-67deb70bc76so796405eaf.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551321; x=1775156121; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kmGyHMtly7Qz0CqR2wXNKvZRnLsbvPnYKpSxXzkbtSQ=;
 b=S+9bcOMhhxMlz2iiGvz1w+Ys3jtUzT7xUxLsVr95NvYrfLAP7owgVEuCVEH6fpOOYz
 5mFlBopMkYNQMXktWv4QHRtnSgkCgjqLW/5+xmsSoaaq+Ie7sd2o1N8ydsdxlmuqRwE8
 6e7DuPsUzm/Xa3nh0lOAuxRIdrehXUY8pzEhRD+1LUqWSKxCpSuki0ofWpNk62plw+bM
 w1DnHI2EI38Gc+lI2v9e70uGMx8Gp/l5oZUkO9ZCcLuEKeJYgitag1Usiih+0bmeGmnl
 pqvS4oebR5FeAuChUtbu/SBp6a8vJq0c//hqGDflwXmCwYwYolv1IQnbTJgNkPQqYaVl
 ofag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551321; x=1775156121;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=kmGyHMtly7Qz0CqR2wXNKvZRnLsbvPnYKpSxXzkbtSQ=;
 b=i9MI6R1AEXKnb4HUz1yYQel9K9NRv5J7jA2DrTFAwm6icaNC4dA6FnwJQnHOTY5tNb
 BgvjpD+09bjw1zpN29jc6GTn9GrdmxQ7l3sq/GcCCDRDJWMrCH/kA30Nz1V1hQ9tr9B5
 gsYa2u7knBF1m8igG1EPUs8jZCk8xKQ14vv2WQ6cqX5jp8XRVYvwozhBLGPXA8leUekP
 cyBDjpH1TU81/+xNLmgrRm/sH+ZqQBaNUAjKOpszlh/8tpASTkDGtNMDbo680gAONixt
 fyB55VsJH5I2+486MSMqc1/m0foDS8wUKSc25CeFKqogLObsCnlGN1BNN6ikxlaAk62x
 3OJg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXYLdAF2a/edFBggumwRxpLecc/YycjFXBS2uIWKRZ8EXapHZheElRYgiutcTM4LWVlmfkftbgSqO8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx1dATgjl3V71nwX/YuMi7MJp2J5EFd1DtSbwkn6qNtphrrh1SL
 x3xetm+zk9SWmMJCa36z2T8GjbAq5nj1kYj2MHC8OgIUcK5AdymC8kfc
X-Gm-Gg: ATEYQzyRALybT/DgXhCok0sSQRbnQxXYdlFmtlBFP2on0nDHkhVs6eNBqfOO66nJJH3
 ipjRKwd53d/3JVG12zG894KN8nXG032zCnSTTRBuY73LoFOX2jRfuq4ghKuUecHthv7rwSAAn4j
 w6tvLocjWGK42MBElfXyF2SCTb14V/pqUUF1S7i4MsYhYWmFYb2+TyBHW5i9UjNVbaFLYCx4VRg
 lv8KT2GLmOeiSqpWhbWNACRkjNiaywbXVsbd0yLPybVPgnIYdu0VOmCKkQaDI1YMqA9vzTNaYV3
 LoxN373VfLB7Iao3FUxghyWOVLvsRnAlWQ9AXbVytQvN1KLKWKVI12LsZ43oKZ7P0Dwb7Fr2XG8
 F3hLeycUBOZDcTCsgrae5PKceTOQfpgs01gwkwvJo2G5Ui3XOFyQ9lctuox0NxTsEax5dccPZgZ
 5XZ3Vxyi0D+RfILYU5SYJ5iK7mG9DqsqAKfrQmnrMNHHZn03bpNF0IcddVp8k=
X-Received: by 2002:a05:6820:4715:b0:67e:d8c:9f87 with SMTP id
 006d021491bc7-67e0d8caa1amr1460403eaf.5.1774551320853; 
 Thu, 26 Mar 2026 11:55:20 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:20 -0700 (PDT)
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
Subject: [PATCH v12 34/69] dyndbg: harden classmap and descriptor validation
Date: Thu, 26 Mar 2026 12:53:38 -0600
Message-ID: <20260326185413.1205870-35-jim.cromie@gmail.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: D3B3335B73F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dynamic debug classmaps allow modules to _DEFINE and/or _USE multiple
classmaps, but this requires coordination amongst the classmaps.

Previously, class validation done by DYNAMIC_DEBUG_CLASSMAP_DEFINE at
compile-time, and ddebug_class_range_overlap() at modprobe-time, was
incomplete, and DYNAMIC_DEBUG_CLASSMAP_USE_ had no validation.  This
could allow broken classmaps, making them harder to use well.

This commit improves classmap and descriptor validation:

- Mirror the compile-time limits of _DEFINE by adding a static_assert
  to validate the _offset value passed to DYNAMIC_DEBUG_CLASSMAP_USE_.

- Add run-time overlap checks for _USEd classmaps in ddebug_add_module()
  to prevent collisions between private maps and imported APIs.

- Scan module descriptors at load time to print a single warning per
  missing class_id, rather than waiting for a user query to trip over it.

- Downgrade the global WARN_ONCE in ddebug_match_desc() to a
  pr_warn_ratelimited, since orphaned class IDs are now tracked and
  warned about early at module load.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
-v12 - squash several enhancments together

drop run-time USE check, now done at compile-time

s/WARN_ONCE/pr_err/, dont need stack trace for this, and do want
multiple error reports, so dont quit on 1st err.

Now that DYNAMIC_DEBUG_CLASSMAP_USE_() has an offset parameter, it is
possible for a user to specify an illegal value - one that shifts the
bit-range past the 64 bit max.  The macro detects an offset > 63, but
this isn't enough; the legal max is:

  map.length - 1 + map.base + user.offset < 64

Testing class-map vs class-user overlap is nonsense if the class-user
range extends past the implemented limit.  So check that 1st, before
looking for map/user overlap.

To validate this, add ifdef DD_RUNTIME_CLASS_CHECK code to
test_dynamic_debug_submod.ko.  When its enabled, it creates a bad
class-user record via:

  DYNAMIC_DEBUG_CLASSMAP_USE_(map_level_num, 55);

bash-5.3# modprobe test_dynamic_debug_submod
[   19.359818] dyndbg:  23 debug prints in module test_dynamic_debug
[   19.366239] dyndbg: module test_dynamic_debug_submod: base:16 + classes.len:8 + cli.offset:55 must be < 63
[   19.366612] dyndbg: dyndbg multi-classmap conflict in test_dynamic_debug_submod
[   19.366945] dyndbg: dyndbg: failed to add module test_dynamic_debug_submod: -22

Finally, replace the misleading "Failed to allocate memory" WARN in
the module notifier with a pr_err that reports the specific failure
code without the stack-trace.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/dynamic_debug.c      | 67 ++++++++++++++++++++++++++++++++++++----
 lib/test_dynamic_debug.c |  9 +++++-
 2 files changed, 69 insertions(+), 7 deletions(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 66879a40b822..3cd9b67bd995 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -320,7 +320,8 @@ static bool ddebug_match_desc(const struct ddebug_query *query,
 	/* site is class'd */
 	site_map = ddebug_find_map_by_class_id(di, dp->class_id);
 	if (!site_map) {
-		WARN_ONCE(1, "unknown class_id %d, check %s's CLASSMAP definitions", dp->class_id, di->mod_name);
+		pr_warn_ratelimited("unknown class_id %d, check %s's CLASSMAP definitions\n",
+			  dp->class_id, di->mod_name);
 		return false;
 	}
 	/* module(-param) decides protection */
@@ -1420,6 +1421,23 @@ static int ddebug_class_range_overlap(struct _ddebug_class_map *cm, u64 *reserve
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
+		pr_err("module %s: [%d..%d] (from %s) conflicts with %llx\n",
+		       cli->mod_name, base, base + cm->length - 1,
+		       cm->class_names[0], *reserved_ids);
+		return -EINVAL;
+	}
+	*reserved_ids |= range;
+	return 0;
+}
+
 /*
  * Allocate a new ddebug_table for the given module
  * and add it to the global list.
@@ -1430,7 +1448,8 @@ static int ddebug_add_module(struct _ddebug_info *di)
 	struct _ddebug_class_map *cm;
 	struct _ddebug_class_user *cli;
 	u64 reserved_ids = 0;
-	int i;
+	u64 bad_ids = 0;
+	int i, err = 0;
 
 	if (!di->descs.len)
 		return 0;
@@ -1454,10 +1473,46 @@ static int ddebug_add_module(struct _ddebug_info *di)
 	dd_set_module_subrange(i, cli, &dt->info, users);
 	/* now di is stale */
 
-	/* insure 2+ classmaps share the per-module 0..62 class_id space */
+	/* validate the per-module shared 0..62 class_id space */
 	for_subvec(i, cm, &dt->info, maps)
 		if (ddebug_class_range_overlap(cm, &reserved_ids))
-			goto cleanup;
+			err = -EINVAL;
+
+	for_subvec(i, cli, &dt->info, users) {
+		cm = cli->map;
+		if (!cm) {
+			pr_err("module %s: classmap not found for user\n", di->mod_name);
+			err = -EINVAL;
+			continue;
+		}
+
+		if (cm->base + cm->length + cli->offset >= _DPRINTK_CLASS_DFLT) {
+			pr_err("module %s: base:%d + classes.len:%d + cli.offset:%d must be < %d\n",
+			       di->mod_name, cm->base, cm->length, cli->offset, _DPRINTK_CLASS_DFLT);
+			err = -EINVAL;
+			continue;
+		}
+
+		if (ddebug_class_user_overlap(cli, &reserved_ids))
+			err = -EINVAL;
+	}
+	if (err)
+		goto cleanup;
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
+			pr_warn("module %s uses unknown class_id %d\n",
+				dt->info.mod_name, dp->class_id);
+			bad_ids |= (1ULL << dp->class_id);
+		}
+	}
 
 	mutex_lock(&ddebug_lock);
 	list_add_tail(&dt->link, &ddebug_tables);
@@ -1472,7 +1527,7 @@ static int ddebug_add_module(struct _ddebug_info *di)
 		 dt->info.descs.len, dt->info.mod_name);
 	return 0;
 cleanup:
-	WARN_ONCE(1, "dyndbg multi-classmap conflict in %s\n", di->mod_name);
+	pr_err("dyndbg multi-classmap conflict in %s\n", di->mod_name);
 	kfree(dt);
 	return -EINVAL;
 }
@@ -1559,7 +1614,7 @@ static int ddebug_module_notify(struct notifier_block *self, unsigned long val,
 		mod->dyndbg_info.mod_name = mod->name;
 		ret = ddebug_add_module(&mod->dyndbg_info);
 		if (ret)
-			WARN(1, "Failed to allocate memory: dyndbg may not work properly.\n");
+			pr_err("dyndbg: failed to add module %s: %d\n", mod->name, ret);
 		break;
 	case MODULE_STATE_GOING:
 		ddebug_remove_module(mod->name);
diff --git a/lib/test_dynamic_debug.c b/lib/test_dynamic_debug.c
index 08d4e3962026..db555f5f8ea4 100644
--- a/lib/test_dynamic_debug.c
+++ b/lib/test_dynamic_debug.c
@@ -137,7 +137,14 @@ DYNAMIC_DEBUG_CLASSMAP_DEFINE(classid_range_conflict, 0, D2_CORE + 1, "D3_CORE")
  * DEFINEd (and exported) above.
  */
 DYNAMIC_DEBUG_CLASSMAP_USE(map_disjoint_bits);
-DYNAMIC_DEBUG_CLASSMAP_USE(map_level_num);
+#if !defined(DD_RUNTIME_CLASS_CHECK)
+  DYNAMIC_DEBUG_CLASSMAP_USE(map_level_num);
+#else
+/*
+ * force failure of runtime sanity test of classmap.length + offset < 63
+ */
+DYNAMIC_DEBUG_CLASSMAP_USE_(map_level_num, 55);
+#endif
 
 #if defined(DD_MACRO_ARGCHECK)
 /*
-- 
2.53.0

