Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 306FD150900
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 16:04:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13CD76EC16;
	Mon,  3 Feb 2020 15:04:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C66156EC16;
 Mon,  3 Feb 2020 15:04:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7055A0009;
 Mon,  3 Feb 2020 15:04:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Mon, 03 Feb 2020 15:04:04 -0000
Message-ID: <158074224465.3017.2241606872429677416@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200203095413.45084-1-michal.wajdeczko@intel.com>
In-Reply-To: <20200203095413.45084-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc=3A_Stop_using_mutex_while_sending_CTB_messages?=
 =?utf-8?q?_=28rev4=29?=
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

Series: drm/i915/guc: Stop using mutex while sending CTB messages (rev4)
URL   : https://patchwork.freedesktop.org/series/72827/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7a2d3a071119 drm/i915/guc: Stop using mutex while sending CTB messages
-:385: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#385: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h:36:
+	spinlock_t lock;

-:415: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'lock' - possible side-effects?
#415: FILE: drivers/gpu/drm/i915/i915_utils.h:455:
+#define lockdep_set_subclass_and_mark_as_used(lock, sub, irq_off) \
+	do { \
+		lockdep_set_subclass((lock), (sub)); \
+		if (irq_off) \
+			local_irq_disable(); \
+		might_lock((lock)); \
+		if (irq_off) \
+			local_irq_enable(); \
+	} while (0)

-:415: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'irq_off' - possible side-effects?
#415: FILE: drivers/gpu/drm/i915/i915_utils.h:455:
+#define lockdep_set_subclass_and_mark_as_used(lock, sub, irq_off) \
+	do { \
+		lockdep_set_subclass((lock), (sub)); \
+		if (irq_off) \
+			local_irq_disable(); \
+		might_lock((lock)); \
+		if (irq_off) \
+			local_irq_enable(); \
+	} while (0)

total: 0 errors, 0 warnings, 3 checks, 346 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
