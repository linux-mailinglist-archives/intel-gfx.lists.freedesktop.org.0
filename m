Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EDC38C8A3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 15:48:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B480A6F876;
	Fri, 21 May 2021 13:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6F15887B3;
 Fri, 21 May 2021 13:48:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF1AEA47EA;
 Fri, 21 May 2021 13:48:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 21 May 2021 13:48:20 -0000
Message-ID: <162160490084.6036.2133165603634726332@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210521134323.13451-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20210521134323.13451-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Implement_PSF_GV_point_support_=28rev2=29?=
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

Series: drm/i915: Implement PSF GV point support (rev2)
URL   : https://patchwork.freedesktop.org/series/90361/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
dbf9d296fc57 drm/i915: Implement PSF GV point support
-:59: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#59: FILE: drivers/gpu/drm/i915/display/intel_bw.c:59:
+static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
+					    struct intel_psf_gv_point *points)

-:88: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#88: FILE: drivers/gpu/drm/i915/display/intel_bw.c:93:
+		drm_err(&dev_priv->drm, "Failed to disable qgv points (%d) points: %x\n", ret, points_mask);

-:113: WARNING:QUOTED_WHITESPACE_BEFORE_NEWLINE: unnecessary whitespace before a quoted newline
#113: FILE: drivers/gpu/drm/i915/display/intel_bw.c:150:
+				    "PSF GV %d: CLK=%d \n",

total: 0 errors, 2 warnings, 1 checks, 247 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
