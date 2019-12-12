Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A20E511C945
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 10:37:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC4A96ECEB;
	Thu, 12 Dec 2019 09:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C7766ECEB;
 Thu, 12 Dec 2019 09:37:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74EC4A0138;
 Thu, 12 Dec 2019 09:37:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris.p.wilson@intel.com>
Date: Thu, 12 Dec 2019 09:37:27 -0000
Message-ID: <157614344745.32008.13278013982881832903@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212073522.27785-1-venkata.s.dhanalakota@intel.com>
In-Reply-To: <20191212073522.27785-1-venkata.s.dhanalakota@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/perf=3A_Register_sy?=
 =?utf-8?q?sctl_path_globally_=28rev2=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/2] drm/i915/perf: Register sysctl path globally (rev2)
URL   : https://patchwork.freedesktop.org/series/70802/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bea21235639b drm/i915/perf: Register sysctl path globally
9755ac8c9861 drm/i915: Tag GEM_TRACE with device name
-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'e__' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/gt/intel_engine.h:32:
+#define ENGINE_TRACE(e__, fmt, ...) do {				\
+	typecheck(struct intel_engine_cs, *(e__));			\
+	GEM_TRACE("%s %s: " fmt, 					\
+		  dev_name((e__)->i915->drm.dev),			\
+		  (e__)->name,						\
+		  ##__VA_ARGS__);					\
+} while (0)

-:23: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#23: FILE: drivers/gpu/drm/i915/gt/intel_engine.h:34:
+^IGEM_TRACE("%s %s: " fmt, ^I^I^I^I^I\$

-:364: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#364: FILE: drivers/gpu/drm/i915/gt/intel_ring_submission.c:769:
+		ENGINE_TRACE(engine, "ring head [%x] not parked\n",
 			  intel_uncore_read_fw(uncore, RING_HEAD(base)));

-:399: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 2 checks, 329 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
