Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA167C8E57
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 22:27:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29C4C10E034;
	Fri, 13 Oct 2023 20:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D109910E034;
 Fri, 13 Oct 2023 20:27:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9F43AADDC;
 Fri, 13 Oct 2023 20:27:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 13 Oct 2023 20:27:47 -0000
Message-ID: <169722886779.31155.8994003975084987819@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231013131402.24072-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231013131402.24072-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_LUT_rounding?=
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

Series: drm/i915: Fix LUT rounding
URL   : https://patchwork.freedesktop.org/series/125116/
State : warning

== Summary ==

Error: dim checkpatch failed
e6e1f586ce6d drm: Fix color LUT rounding
b3b1eb0a523e drm/i915: Adjust LUT rounding rules
a0073c74c274 drm/i915: s/clamp()/min()/ in i965_lut_11p6_max_pack()
8e551577c2a7 drm/i915: Fix glk+ degamma LUT conversions
-:42: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#42: FILE: drivers/gpu/drm/i915/display/intel_color.c:1537:
+	entry->red = entry->green = entry->blue = min(val, 0xffffu);

-:54: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#54: FILE: drivers/gpu/drm/i915/display/intel_color.c:1548:
+	entry->red = entry->green = entry->blue =

total: 0 errors, 0 warnings, 2 checks, 79 lines checked


