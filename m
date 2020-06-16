Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 356B61FBFE6
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 22:20:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5BCA6E1DE;
	Tue, 16 Jun 2020 20:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D91496E1DE;
 Tue, 16 Jun 2020 20:20:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D3103A3C0D;
 Tue, 16 Jun 2020 20:20:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Tue, 16 Jun 2020 20:20:39 -0000
Message-ID: <159233883983.4597.540253862102939845@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200616163406.27387-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200616163406.27387-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Apply_Wa=5F14011264657=3Agen11+?=
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

Series: drm/i915: Apply Wa_14011264657:gen11+
URL   : https://patchwork.freedesktop.org/series/78430/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
71e1726c303a drm/i915: Apply Wa_14011264657:gen11+
-:19: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#19: FILE: drivers/gpu/drm/i915/display/intel_display.c:3764:
+static int icl_min_plane_width(struct drm_i915_private *dev_priv,
+				 const struct drm_framebuffer *fb)

-:74: CHECK:BRACES: braces {} should be used on all arms of this statement
#74: FILE: drivers/gpu/drm/i915/display/intel_display.c:3878:
+	if (INTEL_GEN(dev_priv) >= 11) {
[...]
 	else if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
[...]

total: 0 errors, 0 warnings, 2 checks, 78 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
