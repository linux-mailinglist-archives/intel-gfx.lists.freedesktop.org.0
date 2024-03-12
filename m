Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CEB878D74
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 04:22:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E515510E72A;
	Tue, 12 Mar 2024 03:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 723C9112186;
 Tue, 12 Mar 2024 03:22:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Fix_divide-by-zero_r?=
 =?utf-8?q?egression_on_DP_MST_unplug_with_nouveau?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Bainbridge" <chris.bainbridge@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Mar 2024 03:22:17 -0000
Message-ID: <171021373747.685601.9887542751304145902@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <ZcfpqwnkSoiJxeT9@debian.local>
In-Reply-To: <ZcfpqwnkSoiJxeT9@debian.local>
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

Series: Fix divide-by-zero regression on DP MST unplug with nouveau
URL   : https://patchwork.freedesktop.org/series/131002/
State : warning

== Summary ==

Error: dim checkpatch failed
0a773e72b268 Fix divide-by-zero regression on DP MST unplug with nouveau
-:14: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#14: 
 Code: c6 b8 01 00 00 00 75 61 01 c6 41 0f af f3 41 0f af f1 c1 e1 04 48 63 c7 31 d2 89 ff 48 8b 5d f8 c9 48 0f af f1 48 8d 44 06 ff <48> f7 f7 31 d2 31 c9 31 f6 31 ff 45 31 c0 45 31 c9 45 31 d2 45 31

-:84: WARNING:BRACES: braces {} are not necessary for single statement blocks
#84: FILE: drivers/gpu/drm/display/drm_dp_helper.c:4114:
+	if (bpp_x16 == 0) {
+		DRM_DEBUG("drm_dp_bw_overhead called with bpp 0\n");
+	}

-:85: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'drm_dp_bw_overhead', this function's name, in a string
#85: FILE: drivers/gpu/drm/display/drm_dp_helper.c:4115:
+		DRM_DEBUG("drm_dp_bw_overhead called with bpp 0\n");

-:87: WARNING:BRACES: braces {} are not necessary for single statement blocks
#87: FILE: drivers/gpu/drm/display/drm_dp_helper.c:4117:
+	if (lane_count == 0 || hactive == 0 || bpp_x16 == 0) {
+		return 0;
+	}

total: 0 errors, 4 warnings, 0 checks, 13 lines checked


