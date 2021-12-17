Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 243D147867E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 09:51:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319CD10F693;
	Fri, 17 Dec 2021 08:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A28C10F695;
 Fri, 17 Dec 2021 08:51:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 202B2A0078;
 Fri, 17 Dec 2021 08:51:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 17 Dec 2021 08:51:45 -0000
Message-ID: <163973110512.10412.17249761925260763092@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211216142749.1966107-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20211216142749.1966107-1-maarten.lankhorst@linux.intel.com>
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
URL   : https://patchwork.freedesktop.org/series/98137/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
./drivers/gpu/drm/i915/i915_gem_evict.c:110: warning: Function parameter or member 'ww' not described in 'i915_gem_evict_something'
./drivers/gpu/drm/i915/i915_gem_evict.c:281: warning: Function parameter or member 'ww' not described in 'i915_gem_evict_for_node'
./drivers/gpu/drm/i915/i915_gem_evict.c:393: warning: Function parameter or member 'ww' not described in 'i915_gem_evict_vm'
./drivers/gpu/drm/i915/i915_gem_gtt.c:100: warning: Function parameter or member 'ww' not described in 'i915_gem_gtt_reserve'
./drivers/gpu/drm/i915/i915_gem_gtt.c:192: warning: Function parameter or member 'ww' not described in 'i915_gem_gtt_insert'


