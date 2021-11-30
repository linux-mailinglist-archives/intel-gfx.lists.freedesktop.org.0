Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A74463C52
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 17:54:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F1C6E2B4;
	Tue, 30 Nov 2021 16:54:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A07E6E328;
 Tue, 30 Nov 2021 16:54:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82FBDA008A;
 Tue, 30 Nov 2021 16:54:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>
Date: Tue, 30 Nov 2021 16:54:37 -0000
Message-ID: <163829127753.20410.1536559420969771792@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211118062516.22535-1-vidya.srinivas@intel.com>
In-Reply-To: <20211118062516.22535-1-vidya.srinivas@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Reject_5k_on_HDR_planes_for_planar_fb_formats_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915: Reject 5k on HDR planes for planar fb formats (rev2)
URL   : https://patchwork.freedesktop.org/series/97053/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
84c898254500 drm/i915: Add PLANE_CUS_CTL restriction in max_width
-:16: ERROR:GERRIT_CHANGE_ID: Remove Gerrit Change-Id's before submitting upstream
#16: 
Change-Id: If629c478ba044c8bde633de9f0fc638aa6c44233

-:42: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#42: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:317:
+static int skl_plane_max_width(struct intel_plane *plane,
+				const struct drm_framebuffer *fb,

-:52: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#52: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:357:
+static int glk_plane_max_width(struct intel_plane *plane,
+				const struct drm_framebuffer *fb,

-:62: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#62: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:426:
+static int icl_plane_max_width(struct intel_plane *plane,
+				const struct drm_framebuffer *fb,

total: 1 errors, 0 warnings, 3 checks, 53 lines checked


