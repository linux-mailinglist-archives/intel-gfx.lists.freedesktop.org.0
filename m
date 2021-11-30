Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D5E463E5C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 20:02:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA2BF89FAD;
	Tue, 30 Nov 2021 19:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0014C89FAD;
 Tue, 30 Nov 2021 19:02:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ECBF8A0003;
 Tue, 30 Nov 2021 19:02:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>
Date: Tue, 30 Nov 2021 19:02:27 -0000
Message-ID: <163829894794.20412.5400268770819710372@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211118062516.22535-1-vidya.srinivas@intel.com>
In-Reply-To: <20211118062516.22535-1-vidya.srinivas@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Reject_5k_on_HDR_planes_for_planar_fb_formats_?=
 =?utf-8?b?KHJldjUp?=
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

Series: drm/i915: Reject 5k on HDR planes for planar fb formats (rev5)
URL   : https://patchwork.freedesktop.org/series/97053/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
09f89f851e74 drm/i915: Add PLANE_CUS_CTL restriction in max_width
-:34: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#34: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:424:
+static int icl_plane_max_width_hdr(const struct drm_framebuffer *fb,
+			       int color_plane,

-:44: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#44: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:434:
+static int icl_plane_max_width_sdr(const struct drm_framebuffer *fb,
 			       int color_plane,

total: 0 errors, 0 warnings, 2 checks, 29 lines checked


