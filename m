Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 846851EE4D0
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 14:54:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C31FE6E364;
	Thu,  4 Jun 2020 12:54:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0A7A6E35F;
 Thu,  4 Jun 2020 12:54:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA7EAA0091;
 Thu,  4 Jun 2020 12:54:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 04 Jun 2020 12:54:03 -0000
Message-ID: <159127524366.14554.4317136333331096360@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200604102140.8845-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200604102140.8845-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/selftests=3A_Exercise_all_copy_engines_with_the_bl?=
 =?utf-8?q?t_routines_=28rev2=29?=
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

Series: drm/i915/selftests: Exercise all copy engines with the blt routines (rev2)
URL   : https://patchwork.freedesktop.org/series/77994/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9edabff31b22 drm/i915/selftests: Exercise all copy engines with the blt routines
-:292: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'engine__' - possible side-effects?
#292: FILE: drivers/gpu/drm/i915/i915_drv.h:1267:
+#define for_each_uabi_class_engine(engine__, class__, i915__) \
+	for ((engine__) = intel_engine_lookup_user((i915__), (class__), 0); \
+	     (engine__) && (engine__)->uabi_class == (class__); \
+	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))

-:292: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'class__' - possible side-effects?
#292: FILE: drivers/gpu/drm/i915/i915_drv.h:1267:
+#define for_each_uabi_class_engine(engine__, class__, i915__) \
+	for ((engine__) = intel_engine_lookup_user((i915__), (class__), 0); \
+	     (engine__) && (engine__)->uabi_class == (class__); \
+	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))

total: 0 errors, 0 warnings, 2 checks, 243 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
