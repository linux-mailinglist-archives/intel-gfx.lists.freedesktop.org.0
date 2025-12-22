Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B0FCD64D0
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 15:00:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45ABC10E6B2;
	Mon, 22 Dec 2025 14:00:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CsOlhF+U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2392810E5D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Dec 2025 08:25:18 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id
 d2e1a72fcca58-7b7828bf7bcso4178236b3a.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Dec 2025 00:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766391917; x=1766996717; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=m6OB9Pa9Gle2V+EOSWrg2iFtsBZdBFQQ3jPBPibwDk8=;
 b=CsOlhF+UnKB6OCmBTP8MyEAME+Fi72rpZQ/deofplJuEYt9y+9aFZCGt1LKTV6fVps
 RuDSyos5j6v7MgYnPpGo9HUuOwApN/NZsXAu19U/7oC0PLg78sWs6kaRs7xpBAVtVRai
 dC3+LfvXfGh3yzJ/MNI0bf07UFNDrACDOl1hCnr3OsJjwFvYKpNHX/gjy8I332G/XMWF
 rlgNtVe75hL710nNf2SPhupkorHqlrFZd8+f0uj8MwE0cbqGT828oLXu+5TIh+AUi0YC
 G+hJD0N7pM/5cZbc1XFu+Tswh1RZFKB72r9josdCk3Vtfxxmb5UmFPsgKBQQ6Z644pQ/
 A1Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766391917; x=1766996717;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=m6OB9Pa9Gle2V+EOSWrg2iFtsBZdBFQQ3jPBPibwDk8=;
 b=f4aKyQDSVK7AJ2dSxp7+ok9+Si/xBw/DTEi0ZlDK4+LxE3NB2pJjoy0oE81XrONGLZ
 PPOYeeo+xdkbh7Twf3EmxqdNTkGfFHqqvBv5j7+xxW/igzeXA9nVikiJx0MiIxWnU8bi
 3UA7CXlV13a4QWNkmLUnwzAv9nGwtthJuIR5LCjlNXDkvtJsU74LIuKM9LpF/hU6YsJF
 OPzJIcfwD4Dh2TcXG1Bopd+TXbzEiGw0u+ZV7AKge/eYVdS4tuZXJJ3BWTrh2l8AA8Cj
 b/3tVdiUCRE6DN851ulaYNrjN3MPk14zQ8XgTE+vPuwlxa9BEOvWP1i+9J+xnSb0nu/R
 UBEg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7lf0aCARiAFON4r/3eQXNR6XsX1OFdpf5CBtgtva5D/tEJp/vi7pkoLo7BziPsC337t1gLHITkN8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyH0sCsRARrP6X0s4vfNwpwcvAy8iQfn3RGUXA9UNV6wPFdcmJp
 a9BNMHlV/6VCbklaInwIjuTsGVGQ51SqDmdrKo3ki2TPOCs0THQiCAH+
X-Gm-Gg: AY/fxX5ejDVQnHHX9vFm93rKgw7dRvach6WOaIf+tkblziZYiQgCnIWqvBotO+xEkVB
 selpjCUIC7AH3fcimx1D1N8BDeHhCbBNjTek2Qu9NzPeSOe/sXEv4l2e4xTzTv60TQpGl+l4i7J
 vRBz6p6iBftxEe4TxuQTikGEi734DJc2sAQ6GcLKZXVCuUR4YmCLtaIn2yg1l6nFoPTwwBN88AH
 OTrXZ4f4I9dRsvN/vxeXKvE8mxc4WNvz0zcM4jN8qq/9XZqCrhGpgdz/puH+w6/gTY8yUO76H1n
 KGyWIwWbjShDEDi5ClfSb0YBSNW4wvfW7bNgcfOakx2HdpNQK5bfjA/2RtCO3hgnC1Xxmqccv+Q
 wOorre/i/UTSo5UAlOFOU1HufFvfv66Fhv5Th8dzWHhYMx35mvzRv89sSc6he4JrqHkPifatqa+
 T/te09mE+c
X-Google-Smtp-Source: AGHT+IHMhCJxcqdCZRWx/qONCBKUX17SaWR7PpHRxbERjSaUq38+8Dckg7eE7Aqa1nDG0nfGy3nZYg==
X-Received: by 2002:a05:6a00:2c85:b0:7ac:3529:afbb with SMTP id
 d2e1a72fcca58-7ff648e9b90mr8900885b3a.20.1766391917524; 
 Mon, 22 Dec 2025 00:25:17 -0800 (PST)
Received: from frodo ([2404:4400:417e:3d00:8b90:7f55:1261:772f])
 by smtp.googlemail.com with ESMTPSA id
 d2e1a72fcca58-7ff7e493123sm9540699b3a.50.2025.12.22.00.25.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Dec 2025 00:25:17 -0800 (PST)
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
Subject: [PATCH v7 22/31] dyndbg: detect class_id reservation conflicts
Date: Mon, 22 Dec 2025 21:20:39 +1300
Message-ID: <20251222082049.1782440-23-jim.cromie@gmail.com>
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
 lib/dynamic_debug.c      | 10 ++++++++++
 lib/test_dynamic_debug.c |  8 ++++++++
 2 files changed, 18 insertions(+)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index c60c2142f8ac..e5a18a7d3780 100644
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
+	WARN_ONCE("dyndbg multi-classmap conflict in %s\n", di->mod_name);
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
2.52.0

