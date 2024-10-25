Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D5C9AFA14
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 08:35:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880CE10E9FF;
	Fri, 25 Oct 2024 06:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3EE710E9FF;
 Fri, 25 Oct 2024 06:35:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/color=3A_De?=
 =?utf-8?q?bug_improvements_and_intel=5Fdisplay_conversion_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2024 06:35:12 -0000
Message-ID: <172983811299.1330837.6451349306398828380@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241024165356.17756-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241024165356.17756-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/color: Debug improvements and intel_display conversion (rev2)
URL   : https://patchwork.freedesktop.org/series/140452/
State : warning

== Summary ==

Error: dim checkpatch failed
fb010a54bba5 drm/i915/color: Pimp debugs
0315a7f61cfb drm/i915: Handle intel_plane and intel_plane_state in to_intel_display()
37c3c1392af1 drm/i915/color: Convert color management code to intel_display
-:1379: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1379: FILE: drivers/gpu/drm/i915/display/intel_color.c:3335:
+	lut[i].green = i965_lut_11p6_max_pack(intel_de_read_fw(display, PIPEGCMAX(display, pipe, 1)));

-:1380: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1380: FILE: drivers/gpu/drm/i915/display/intel_color.c:3336:
+	lut[i].blue = i965_lut_11p6_max_pack(intel_de_read_fw(display, PIPEGCMAX(display, pipe, 2)));

total: 0 errors, 2 warnings, 0 checks, 1691 lines checked
207074e92bbf drm/i915/color: Make color .get_config() mandatory


