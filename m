Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B30BA24A7D7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 22:45:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 934E46E81B;
	Wed, 19 Aug 2020 20:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6C4646E81B;
 Wed, 19 Aug 2020 20:44:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 661A3A008A;
 Wed, 19 Aug 2020 20:44:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 19 Aug 2020 20:44:56 -0000
Message-ID: <159786989639.23595.6828779940447234821@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200819203302.47673-1-jose.souza@intel.com>
In-Reply-To: <20200819203302.47673-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tgl=3A_Fix_stepping_WA_matching?=
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

Series: drm/i915/tgl: Fix stepping WA matching
URL   : https://patchwork.freedesktop.org/series/80820/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0a625a7a4c3e drm/i915/tgl: Fix stepping WA matching
-:180: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#180: FILE: drivers/gpu/drm/i915/i915_drv.h:1595:
+#define IS_TGL_DISP_REVID(p, since, until) \
+	(IS_TIGERLAKE(p) && \
+	 tgl_revids_get(p)->disp_stepping >= (since) && \
+	 tgl_revids_get(p)->disp_stepping <= (until))

-:185: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#185: FILE: drivers/gpu/drm/i915/i915_drv.h:1600:
+#define IS_TGL_UY_GT_REVID(p, since, until) \
+	((IS_TGL_U(p) || IS_TGL_Y(p)) && \
+	 tgl_uy_revids->gt_stepping >= (since) && \
+	 tgl_uy_revids->gt_stepping <= (until))

-:190: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#190: FILE: drivers/gpu/drm/i915/i915_drv.h:1605:
+#define IS_TGL_GT_REVID(p, since, until) \
+	(IS_TIGERLAKE(p) && \
+	 !(IS_TGL_U(p) || IS_TGL_Y(p)) && \
+	 tgl_revids->gt_stepping >= (since) && \
+	 tgl_revids->gt_stepping <= (until))

total: 0 errors, 0 warnings, 3 checks, 145 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
