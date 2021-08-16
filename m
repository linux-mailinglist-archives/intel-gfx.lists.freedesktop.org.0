Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3273ED127
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 11:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B1B78887E;
	Mon, 16 Aug 2021 09:41:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 49C778887E;
 Mon, 16 Aug 2021 09:41:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3C39BAA0EA;
 Mon, 16 Aug 2021 09:41:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Aug 2021 09:41:40 -0000
Message-ID: <162910690021.26194.451803896590941276@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210816084855.75586-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210816084855.75586-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Ditch_the_i915=5Fgem=5Fww=5Fctx_loop_member?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Ditch the i915_gem_ww_ctx loop member
URL   : https://patchwork.freedesktop.org/series/93711/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e82160475e8e drm/i915: Ditch the i915_gem_ww_ctx loop member
-:67: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_ww' - possible side-effects?
#67: FILE: drivers/gpu/drm/i915/i915_gem_ww.h:39:
+#define for_i915_gem_ww(_ww, _err, _intr)			  \
+	for (i915_gem_ww_ctx_init(_ww, _intr), (_err) = -EDEADLK; \
+	     fetch_and_zero(&_err) == -EDEADLK;			  \
 	     _err = __i915_gem_ww_fini(_ww, _err))

-:67: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_err' - possible side-effects?
#67: FILE: drivers/gpu/drm/i915/i915_gem_ww.h:39:
+#define for_i915_gem_ww(_ww, _err, _intr)			  \
+	for (i915_gem_ww_ctx_init(_ww, _intr), (_err) = -EDEADLK; \
+	     fetch_and_zero(&_err) == -EDEADLK;			  \
 	     _err = __i915_gem_ww_fini(_ww, _err))

total: 0 errors, 0 warnings, 2 checks, 48 lines checked


