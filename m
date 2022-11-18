Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A7362F3EE
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 12:44:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DB9210E1C9;
	Fri, 18 Nov 2022 11:44:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6DA7410E1C9;
 Fri, 18 Nov 2022 11:44:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6CA27AADE1;
 Fri, 18 Nov 2022 11:44:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 18 Nov 2022 11:44:12 -0000
Message-ID: <166877185244.25642.11886416345716199367@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dvo=3A_DVO_init_fixes/cleanps?=
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

Series: drm/i915/dvo: DVO init fixes/cleanps
URL   : https://patchwork.freedesktop.org/series/111066/
State : warning

== Summary ==

Error: dim checkpatch failed
31ec571cb014 drm/i915/dvo: Remove unused panel_wants_dither
c9da1e495ad7 drm/i915/dvo: Don't leak connector state on DVO init failure
59880e593787 drm/i915/dvo: Actually initialize the DVO encoder type
0625749326d5 drm/i915/dvo: Introduce intel_dvo_connector_type()
6c30df4f3b60 drm/i915/dvo: Eliminate useless 'port' variable
a83da608cc24 drm/i915/dvo: Flatten intel_dvo_init()
-:185: CHECK:CAMELCASE: Avoid CamelCase: <SubPixelHorizontalRGB>
#185: FILE: drivers/gpu/drm/i915/display/intel_dvo.c:555:
+	connector->display_info.subpixel_order = SubPixelHorizontalRGB;

total: 0 errors, 0 warnings, 1 checks, 247 lines checked
8af7706c0d42 drm/i915/dvo: s/intel_encoder/encoder/ etc.
-:182: CHECK:CAMELCASE: Avoid CamelCase: <SubPixelHorizontalRGB>
#182: FILE: drivers/gpu/drm/i915/display/intel_dvo.c:554:
+	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB;

total: 0 errors, 0 warnings, 1 checks, 177 lines checked
f2d632893373 drm/i915/dvo: s/dev_priv/i915/
c103975f29ff drm/i915/dvo: Use per device debugs


