Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4DE29282B
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 15:29:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3945C6E98C;
	Mon, 19 Oct 2020 13:29:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C9276E98C;
 Mon, 19 Oct 2020 13:29:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 558EAA7DFB;
 Mon, 19 Oct 2020 13:29:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 19 Oct 2020 13:29:39 -0000
Message-ID: <160311417932.32023.2741146065378168667@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIGRy?=
 =?utf-8?q?m/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev10=29?=
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

Series: drm/i915: Remove obj->mm.lock! (rev10)
URL   : https://patchwork.freedesktop.org/series/82337/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
./drivers/gpu/drm/i915/gem/i915_gem_shrinker.c:102: warning: Function parameter or member 'ww' not described in 'i915_gem_shrink'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1414: warning: Excess function parameter 'trampoline' description in 'intel_engine_cmd_parser'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1415: warning: Function parameter or member 'jump_whitelist' not described in 'intel_engine_cmd_parser'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1415: warning: Function parameter or member 'shadow_map' not described in 'intel_engine_cmd_parser'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1415: warning: Function parameter or member 'batch_map' not described in 'intel_engine_cmd_parser'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1415: warning: Excess function parameter 'trampoline' description in 'intel_engine_cmd_parser'


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
