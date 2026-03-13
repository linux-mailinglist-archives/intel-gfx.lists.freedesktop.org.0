Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDdlDGNkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D31F32F762F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B004310E51A;
	Mon, 23 Mar 2026 16:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="gaPvrfBk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63B0510EC04
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:23:47 +0000 (UTC)
Received: by mail-oi1-f171.google.com with SMTP id
 5614622812f47-466ed3bc95eso795019b6e.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408226; x=1774013026; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=So1OTSMskFHrYYWc+bNZ+5Ly0eOy3XxdufShv2uDEDM=;
 b=gaPvrfBkXcQpC1LYAo1ReApEuCBQc3X6A6P58QI2uez9l/Boc4sAH1KdJYNkLOC2K+
 9PGE52w4yF/rwI8c9TU1DJuHg+7WHy9Yd429tM+/lNEc59ZTcWCAIfHwAQDNJK6Cn1cK
 SCfzJ7OWqUFojm1z7F8e3lA0vd/bx12QntJ0HYYtMm5rUHAe7+FUo3Yf183kSyfATuqv
 MGQnl2xil9R3i8CF4oPqoCREB+Ym0Dlxcq33M44a1szdOGpHH/tPpIr4zszn1QwMsoux
 VCZGd5LI3Cfd1bSBWFU4bt5nS/mIp29/BDku38c/y96ib3uhhi41GryLrZn5llB24uRh
 1Fbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408226; x=1774013026;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=So1OTSMskFHrYYWc+bNZ+5Ly0eOy3XxdufShv2uDEDM=;
 b=HUdwR82Ji+gHYYtaxQeYSAuwZr8/QWNfp07blryf26NrWBNceNj0kjhlhIfirYuQ57
 0y9OBD5ovR6Q1o0N4py6ubC3U6Whb7Yf+WazbfHQNPA/hTE7ntKrmmzqt7JUGHgzCQYu
 jEYxeQIHGSIkpt+H0Tpsb6UMRBdPPU8Zw+NyqX6opvOrke3OVkNc56A4GVlH4UALIl3x
 ZInQeikSwPFSO+2xKo+CXF1A9JOR/ipEHl/UKXYkxl8O3VgbYIfE0VywRPwDmTItJOTM
 Q3bIrWAdlQ31aCcB/xHMb6NILtFg+JVtx5QtB2XBbHPraSc/f4c+ornPE82eWYlOEIO8
 iO4A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWWqPdi74tZ6wJ5pPwFwz1L479SGe97uh6DeNSJCXO1Pb38mgl/BPDjasz4gkLgsgCmMcWGl8ZUCVY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzLEjiSzp14XdT90T84THhN1xxc4nefvQo073vroVTJUh0ms8dP
 AXYnS1dgTUEZoLE7kFfUyTawreLu2mOolkBOKDp0JJA95HY6W13I5N83
X-Gm-Gg: ATEYQzzM7ndu+uyJ7uxGT2fwDW+kS4801TZRylK2JDhYCw/ay1k+W/zWtkSJ8C/eFGN
 E3gwC+SgkOASWND001RZ+C6NDZNVG/oP1ptr+Zo1v9RfR9Ofv0VsJqixZ4Hph7L+P2lljEq4FjB
 7Y+cu1Crd/quLnNkxXgzFFksQC+jxSD48a1E3O87gF1aNq7IGmMBGBAdsAp/wVLFDu0WUnJYUFC
 VeEqdk8/3Qs9mns3OZvFoywQiV4kp6gnjJ7dAOvfhCH9P8CvUp0L8HFoqXgImeNzjZbrBEhU8uI
 j+LRCgR7eeZWY5oWku0f9IxZs1d+7pLiluUiW/e7KpzV7cDb5ylNeMp46noi669nwdaPkKCat2k
 9OFJZIEPs8aLq0sFaqBKRnIzOF6w7FQsVfWcR4c0TBp0Y6Ir9Sf0pc+Fsz3XRa7aX+kCoOGXlIQ
 s4OFo6lc0r5JwXVAhsoZJeU5+nB7Ps+CwPQE4Xcbkgb+EipLl5
X-Received: by 2002:a05:6808:6717:b0:467:462b:ab0 with SMTP id
 5614622812f47-46757050cfbmr1535486b6e.2.1773408226613; 
 Fri, 13 Mar 2026 06:23:46 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.23.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:23:45 -0700 (PDT)
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
Subject: [PATCH v11 23/65] dyndbg: detect class_id reservation conflicts
Date: Fri, 13 Mar 2026 07:19:48 -0600
Message-ID: <20260313132103.2529746-24-jim.cromie@gmail.com>
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
	NEURAL_HAM(-0.00)[-0.957];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: D31F32F762F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

If a module _DEFINEs 2 or more classmaps, it must devise them to share
the per-module 0..62 class-id space; ie their respective base,+length
reservations cannot overlap.

To detect conflicts at modprobe, add ddebug_class_range_overlap(),
call it from ddebug_add_module(), and WARN and return -EINVAL when
they're detected.

This insures that class_id -> classname lookup has just 1 answer, so
the 1st-found search in find-class-name works properly.

test_dynamic_debug.c:

If built with -DFORCE_CLASSID_CONFLICT, the test-modules invoke 2
conflicting DYNAMIC_DEBUG_CLASSMAP_DEFINE() declarations, into parent
and the _submod.  These conflict with one of the good ones in the
parent (D2_CORE..etc), causing the modprobe(s) to warn

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
v9 - fix WARN() by adding new 1st arg 1.
---
 lib/dynamic_debug.c      | 10 ++++++++++
 lib/test_dynamic_debug.c |  8 ++++++++
 2 files changed, 18 insertions(+)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 66f4bfe39e89..ec0d1c427d59 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -1317,6 +1317,7 @@ static int ddebug_add_module(struct _ddebug_info *di)
 	struct ddebug_table *dt;
 	struct _ddebug_class_map *cm;
 	struct _ddebug_class_user *cli;
+	u64 reserved_ids = 0;
 	int i;
 
 	if (!di->descs.len)
@@ -1341,6 +1342,11 @@ static int ddebug_add_module(struct _ddebug_info *di)
 	dd_mark_vector_subrange(i, cli, &dt->info, users, dt);
 	/* now di is stale */
 
+	/* insure 2+ classmaps share the per-module 0..62 class_id space */
+	for_subvec(i, cm, &dt->info, maps)
+		if (ddebug_class_range_overlap(cm, &reserved_ids))
+			goto cleanup;
+
 	mutex_lock(&ddebug_lock);
 	list_add_tail(&dt->link, &ddebug_tables);
 	mutex_unlock(&ddebug_lock);
@@ -1353,6 +1359,10 @@ static int ddebug_add_module(struct _ddebug_info *di)
 	vpr_info("%3u debug prints in module %s\n",
 		 dt->info.descs.len, dt->info.mod_name);
 	return 0;
+cleanup:
+	WARN_ONCE(1, "dyndbg multi-classmap conflict in %s\n", di->mod_name);
+	kfree(dt);
+	return -EINVAL;
 }
 
 /* helper for ddebug_dyndbg_(boot|module)_param_cb */
diff --git a/lib/test_dynamic_debug.c b/lib/test_dynamic_debug.c
index 6c4548f63512..1ba4be9a403a 100644
--- a/lib/test_dynamic_debug.c
+++ b/lib/test_dynamic_debug.c
@@ -128,6 +128,14 @@ DYNAMIC_DEBUG_CLASSMAP_DEFINE(map_level_num, DD_CLASS_TYPE_LEVEL_NUM,
 DYNAMIC_DEBUG_CLASSMAP_PARAM(disjoint_bits, p);
 DYNAMIC_DEBUG_CLASSMAP_PARAM(level_num, p);
 
+#ifdef FORCE_CLASSID_CONFLICT
+/*
+ * Enable with -Dflag on compile to test overlapping class-id range
+ * detection.  This should warn on modprobes.
+ */
+DYNDBG_CLASSMAP_DEFINE(classid_range_conflict, 0, D2_CORE + 1, "D3_CORE");
+#endif
+
 #else /* TEST_DYNAMIC_DEBUG_SUBMOD */
 
 /*
-- 
2.53.0

