Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8122139578F
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 10:54:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BAA36E893;
	Mon, 31 May 2021 08:54:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BA0A56E88E;
 Mon, 31 May 2021 08:54:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2D51A8836;
 Mon, 31 May 2021 08:54:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 31 May 2021 08:54:45 -0000
Message-ID: <162245128570.27951.1640408264035839281@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210531064845.4389-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20210531064845.4389-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Extend_QGV_point?=
 =?utf-8?q?_restrict_mask_to_0x3?=
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

Series: series starting with [1/2] drm/i915: Extend QGV point restrict mask to 0x3
URL   : https://patchwork.freedesktop.org/series/90776/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a12e5c83304a drm/i915: Extend QGV point restrict mask to 0x3
603bd832dcc5 drm/i915: Implement PSF GV point support
-:65: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#65: FILE: drivers/gpu/drm/i915/display/intel_bw.c:59:
+static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
+					    struct intel_psf_gv_point *points)

-:94: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_bw.c:93:
+		drm_err(&dev_priv->drm, "Failed to disable qgv points (%d) points: 0x%x\n", ret, points_mask);

-:119: WARNING:QUOTED_WHITESPACE_BEFORE_NEWLINE: unnecessary whitespace before a quoted newline
#119: FILE: drivers/gpu/drm/i915/display/intel_bw.c:150:
+				    "PSF GV %d: CLK=%d \n",

total: 0 errors, 2 warnings, 1 checks, 248 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
