Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8652E640CF4
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 19:17:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CB6D10E721;
	Fri,  2 Dec 2022 18:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF35F10E737;
 Fri,  2 Dec 2022 18:17:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF206A7DFC;
 Fri,  2 Dec 2022 18:17:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Fri, 02 Dec 2022 18:17:42 -0000
Message-ID: <167000506277.27865.3653792544622225526@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221202165143.82538-1-matthew.s.atwood@intel.com>
In-Reply-To: <20221202165143.82538-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Initial_display_workarounds?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/mtl: Initial display workarounds
URL   : https://patchwork.freedesktop.org/series/111592/
State : warning

== Summary ==

Error: dim checkpatch failed
8b2d9fc49c57 drm/i915/mtl: Initial display workarounds
-:125: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#125: FILE: drivers/gpu/drm/i915/i915_drv.h:730:
+#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
+	(IS_METEORLAKE(__i915) && \
+	 IS_DISPLAY_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 1 checks, 89 lines checked


