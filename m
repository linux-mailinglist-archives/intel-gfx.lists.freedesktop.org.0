Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 120D034A019
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 04:13:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 480906E12A;
	Fri, 26 Mar 2021 03:13:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 24B716E12A;
 Fri, 26 Mar 2021 03:13:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C27BAA912;
 Fri, 26 Mar 2021 03:13:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 26 Mar 2021 03:13:03 -0000
Message-ID: <161672838308.10686.6230720668654578053@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210324211041.1354941-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210324211041.1354941-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIHNl?=
 =?utf-8?q?ries_starting_with_=5B1/2=5D_drm/i915=3A_add_gem/gt_TODO_=28rev?=
 =?utf-8?q?2=29?=
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

Series: series starting with [1/2] drm/i915: add gem/gt TODO (rev2)
URL   : https://patchwork.freedesktop.org/series/88413/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
./drivers/gpu/drm/i915/gem/i915_gem_shrinker.c:102: warning: Function parameter or member 'ww' not described in 'i915_gem_shrink'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Excess function parameter 'trampoline' description in 'intel_engine_cmd_parser'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Function parameter or member 'jump_whitelist' not described in 'intel_engine_cmd_parser'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Function parameter or member 'shadow_map' not described in 'intel_engine_cmd_parser'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Function parameter or member 'batch_map' not described in 'intel_engine_cmd_parser'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Excess function parameter 'trampoline' description in 'intel_engine_cmd_parser'
/home/cidrm/kernel/Documentation/gpu/i915:22: ./drivers/gpu/drm/i915/intel_runtime_pm.c:423: WARNING: Inline strong start-string without end-string.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
