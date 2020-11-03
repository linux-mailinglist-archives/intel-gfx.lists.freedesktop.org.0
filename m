Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C0D2A4ADD
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 17:11:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B544B6ECCF;
	Tue,  3 Nov 2020 16:11:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6E9E6ECCD;
 Tue,  3 Nov 2020 16:11:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C706AA8835;
 Tue,  3 Nov 2020 16:11:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 03 Nov 2020 16:11:13 -0000
Message-ID: <160441987381.25739.6202994146648692796@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201103153026.16566-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201103153026.16566-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Include_fb_modidier_in_state_dumps?=
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

Series: drm/i915: Include fb modidier in state dumps
URL   : https://patchwork.freedesktop.org/series/83438/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
843ae78a11bb drm/i915: Include fb modidier in state dumps
-:43: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:776:
+	seq_printf(m, "\t\tuapi: [FB:%d] %s,0x%llx,%dx%d, src=" DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",

-:54: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#54: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:801:
+	seq_printf(m, "\t\thw: [FB:%d] %s,0x%llx,%dx%d, visible=%s, src=" DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",

total: 0 errors, 2 warnings, 0 checks, 34 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
