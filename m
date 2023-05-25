Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C11711997
	for <lists+intel-gfx@lfdr.de>; Thu, 25 May 2023 23:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EBB910E07F;
	Thu, 25 May 2023 21:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A7C9C10E07F;
 Thu, 25 May 2023 21:54:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9DA3FAADE6;
 Thu, 25 May 2023 21:54:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 25 May 2023 21:54:40 -0000
Message-ID: <168505168061.5915.6141644529586151033@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230525210653.1048972-1-jani.nikula@intel.com>
In-Reply-To: <20230525210653.1048972-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915=3A_use_localized_=5F=5Fdiag=5Fignore=5Fall=28=29_inste?=
 =?utf-8?q?ad_of_per_file?=
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

Series: drm/i915: use localized __diag_ignore_all() instead of per file
URL   : https://patchwork.freedesktop.org/series/118395/
State : warning

== Summary ==

Error: dim sparse failed
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+drivers/gpu/drm/i915/display/intel_display_device.c:468:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/display/intel_display_device.c:470:9:   also defined here
+drivers/gpu/drm/i915/display/intel_display_device.c:565:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/display/intel_display_device.c:570:10:   also defined here
+drivers/gpu/drm/i915/display/intel_display_device.c:576:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/display/intel_display_device.c:578:10:   also defined here
+drivers/gpu/drm/i915/display/intel_display_device.c:645:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/display/intel_display_device.c:649:10:   also defined here
+drivers/gpu/drm/i915/display/intel_fbdev.c:138:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/display/intel_fbdev.c:139:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:154:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:156:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:185:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:187:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:191:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:193:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:197:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:200:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:217:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:220:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:224:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:228:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:232:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:235:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:239:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:243:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:408:9:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:408:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:413:9:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:413:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:418:9:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:418:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:436:9:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:436:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:441:9:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:441:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:446:9:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:446:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:454:9: warning: too many warnings


