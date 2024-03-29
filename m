Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8A1890F1D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 01:21:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E13510E4CA;
	Fri, 29 Mar 2024 00:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AF2810E4CA;
 Fri, 29 Mar 2024 00:21:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_drm/i915=3A_use_fine_gra?=
 =?utf-8?q?ined_-Woverride-init_disable?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Mar 2024 00:21:34 -0000
Message-ID: <171167169430.1064396.9005122222694089230@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240328102455.944131-1-jani.nikula@intel.com>
In-Reply-To: <20240328102455.944131-1-jani.nikula@intel.com>
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

Series: drm/i915: use fine grained -Woverride-init disable
URL   : https://patchwork.freedesktop.org/series/131753/
State : warning

== Summary ==

Error: dim sparse failed
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+drivers/gpu/drm/i915/display/intel_display_device.c:507:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/display/intel_display_device.c:509:9:   also defined here
+drivers/gpu/drm/i915/display/intel_display_device.c:629:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/display/intel_display_device.c:634:10:   also defined here
+drivers/gpu/drm/i915/display/intel_display_device.c:642:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/display/intel_display_device.c:644:10:   also defined here
+drivers/gpu/drm/i915/display/intel_display_device.c:767:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/display/intel_display_device.c:769:10:   also defined here
+drivers/gpu/drm/i915/display/intel_fbdev.c:144:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/display/intel_fbdev.c:145:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:146:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:148:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:177:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:179:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:183:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:185:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:189:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:192:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:209:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:212:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:216:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:220:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:224:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:226:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:231:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:234:10:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:400:9:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:400:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:405:9:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:405:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:410:9:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:410:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:428:9:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:428:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:433:9:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:433:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:438:9:   also defined here
+drivers/gpu/drm/i915/i915_pci.c:438:9: warning: Initializer entry defined twice
+drivers/gpu/drm/i915/i915_pci.c:446:9: warning: too many warnings


