Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB85974F379
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 17:31:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F094310E3BF;
	Tue, 11 Jul 2023 15:31:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A8D210E3C1;
 Tue, 11 Jul 2023 15:31:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16C8EAADED;
 Tue, 11 Jul 2023 15:31:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 11 Jul 2023 15:31:28 -0000
Message-ID: <168908948808.18664.15711771219652680026@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230711110214.25093-1-jani.nikula@intel.com>
In-Reply-To: <20230711110214.25093-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Revert_=22drm/i915=3A_use_localized_=5F=5Fdiag=5Fignore=5Fall?=
 =?utf-8?q?=28=29_instead_of_per_file=22?=
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

Series: Revert "drm/i915: use localized __diag_ignore_all() instead of per file"
URL   : https://patchwork.freedesktop.org/series/120541/
State : warning

== Summary ==

Error: dim sparse failed
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-drivers/gpu/drm/i915/display/intel_display_device.c:503:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/display/intel_display_device.c:505:9:   also defined here
-drivers/gpu/drm/i915/display/intel_display_device.c:625:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/display/intel_display_device.c:630:10:   also defined here
-drivers/gpu/drm/i915/display/intel_display_device.c:638:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/display/intel_display_device.c:640:10:   also defined here
-drivers/gpu/drm/i915/display/intel_display_device.c:714:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/display/intel_display_device.c:718:10:   also defined here
-drivers/gpu/drm/i915/display/intel_fbdev.c:141:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/display/intel_fbdev.c:142:10:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:151:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/i915_pci.c:153:10:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:182:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/i915_pci.c:184:10:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:188:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/i915_pci.c:190:10:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:194:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/i915_pci.c:197:10:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:214:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/i915_pci.c:217:10:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:221:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/i915_pci.c:225:10:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:229:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/i915_pci.c:231:10:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:236:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/i915_pci.c:239:10:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:405:9:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:405:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/i915_pci.c:410:9:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:410:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/i915_pci.c:415:9:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:415:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/i915_pci.c:433:9:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:433:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/i915_pci.c:438:9:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:438:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/i915_pci.c:443:9:   also defined here
-drivers/gpu/drm/i915/i915_pci.c:443:9: warning: Initializer entry defined twice
-drivers/gpu/drm/i915/i915_pci.c:451:9: warning: too many warnings


