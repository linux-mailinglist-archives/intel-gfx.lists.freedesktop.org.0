Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0001E48D843
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 13:54:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCACA10FBFC;
	Thu, 13 Jan 2022 12:53:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 68C7510FB80;
 Thu, 13 Jan 2022 12:53:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 66A89A0BCB;
 Thu, 13 Jan 2022 12:53:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 13 Jan 2022 12:53:59 -0000
Message-ID: <164207843939.19001.2449490920221637454@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220113114500.2039439-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20220113114500.2039439-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIGRy?=
 =?utf-8?q?m/i915=3A_Remove_short_term_pins_from_execbuf_by_requiring_lock?=
 =?utf-8?q?_to_unbind=2E?=
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

Series: drm/i915: Remove short term pins from execbuf by requiring lock to unbind.
URL   : https://patchwork.freedesktop.org/series/98837/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
./drivers/gpu/drm/i915/i915_gem_evict.c:150: warning: Function parameter or member 'ww' not described in 'i915_gem_evict_something'
./drivers/gpu/drm/i915/i915_gem_evict.c:319: warning: Function parameter or member 'ww' not described in 'i915_gem_evict_for_node'
./drivers/gpu/drm/i915/i915_gem_evict.c:431: warning: Function parameter or member 'ww' not described in 'i915_gem_evict_vm'
./drivers/gpu/drm/i915/i915_gem_gtt.c:101: warning: Function parameter or member 'ww' not described in 'i915_gem_gtt_reserve'
./drivers/gpu/drm/i915/i915_gem_gtt.c:193: warning: Function parameter or member 'ww' not described in 'i915_gem_gtt_insert'


