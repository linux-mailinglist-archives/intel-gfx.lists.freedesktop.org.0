Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A95121707DA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 19:42:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C4326EB83;
	Wed, 26 Feb 2020 18:42:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB76F6EB83;
 Wed, 26 Feb 2020 18:42:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BCD16A3ECB;
 Wed, 26 Feb 2020 18:42:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 26 Feb 2020 18:42:41 -0000
Message-ID: <158274256174.21010.17412443834838528163@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226014603.42190-1-jose.souza@intel.com>
In-Reply-To: <20200226014603.42190-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C01/14=5D_drm/i915/tgl=3A_Split?=
 =?utf-8?q?_GT_and_display_workarounds?=
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

Series: series starting with [v2,01/14] drm/i915/tgl: Split GT and display workarounds
URL   : https://patchwork.freedesktop.org/series/73934/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
78f68ec9e707 drm/i915/tgl: Split GT and display workarounds
-:98: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#98: FILE: drivers/gpu/drm/i915/i915_drv.h:1579:
+#define IS_TGL_GT_REVID(p, since, until) \
 	(IS_TIGERLAKE(p) && IS_REVID(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 102 lines checked
c844fca8f0ab drm/i915/tgl: Extend Wa_1409825376 stepping
636c7aa65c45 drm/i915/tgl: Implement Wa_1409804808
33c977b2b167 drm/i915/tgl: Implement Wa_1806527549
48fc18342e19 drm/i915/tgl: Add Wa_1409085225, Wa_14010229206
41b18f808a31 drm/i915/tgl: Extend Wa_1606931601 for all steppings
c1bfb255ece7 drm/i915/tgl: Add note to Wa_1607297627
a9caaf045a2d drm/i915/tgl: Add note about Wa_1607063988
5a6cb2d06c81 drm/i915/tgl: Extend Wa_1409767108 to B0
89be33cb7055 drm/i915/tgl: Fix the Wa number of a fix
2b971433ed1e drm/i915/tgl: Add note about Wa_1409142259
4663f5dc469f drm/i915/tgl: Restrict Wa_1408615072 to GT A0 stepping
91ad7e7c3b57 drm/i915/tgl: Add Wa number to WaAllowPMDepthAndInvocationCountAccessFromUMD
3f7e7be95819 drm/i915/tgl: Implement Wa_1407901919

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
