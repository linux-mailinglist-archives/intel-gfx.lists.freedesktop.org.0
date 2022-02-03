Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF1B4A88B3
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 17:39:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED80210E6EC;
	Thu,  3 Feb 2022 16:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5287F10E6EC;
 Thu,  3 Feb 2022 16:39:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 536CCA00CC;
 Thu,  3 Feb 2022 16:39:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Date: Thu, 03 Feb 2022 16:39:51 -0000
Message-ID: <164390639133.15870.1600250154038605626@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220203162703.352447-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20220203162703.352447-1-balasubramani.vivekanandan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915=3A_Add_fallback_inside_memcpy=5Ffrom=5Fwc_functions?=
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

Series: drm/i915: Add fallback inside memcpy_from_wc functions
URL   : https://patchwork.freedesktop.org/series/99675/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+drivers/gpu/drm/i915/gem/i915_gem_object.c:455:37:    expected void const *src
+drivers/gpu/drm/i915/gem/i915_gem_object.c:455:37:    got void [noderef] __iomem *[assigned] src_ptr
+drivers/gpu/drm/i915/gem/i915_gem_object.c:455:37: warning: incorrect type in argument 2 (different address spaces)
+drivers/gpu/drm/i915/i915_memcpy.c:187:6: error: symbol 'i915_io_memcpy_from_wc' redeclared with different type (incompatible argument 2 (different address spaces)):
+drivers/gpu/drm/i915/i915_memcpy.c:187:6:    void extern [addressable] [toplevel] i915_io_memcpy_from_wc( ... )
+drivers/gpu/drm/i915/i915_memcpy.c:189:42:    expected void const *src
+drivers/gpu/drm/i915/i915_memcpy.c:189:42:    got void const [noderef] __iomem *src
+drivers/gpu/drm/i915/i915_memcpy.c:189:42: warning: incorrect type in argument 2 (different address spaces)
+drivers/gpu/drm/i915/i915_memcpy.c:191:45:    expected void const *[assigned] src
+drivers/gpu/drm/i915/i915_memcpy.c:191:45:    got void const [noderef] __iomem *src
+drivers/gpu/drm/i915/i915_memcpy.c:191:45: warning: incorrect type in argument 2 (different address spaces)
+drivers/gpu/drm/i915/i915_memcpy.h:17:6: note: previously declared as:
+drivers/gpu/drm/i915/i915_memcpy.h:17:6:    void extern [addressable] [toplevel] i915_io_memcpy_from_wc( ... )


