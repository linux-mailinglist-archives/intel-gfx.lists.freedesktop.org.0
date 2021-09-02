Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE153FF335
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 20:26:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C49A6E7DC;
	Thu,  2 Sep 2021 18:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E607B6E7DC;
 Thu,  2 Sep 2021 18:26:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE153A9A42;
 Thu,  2 Sep 2021 18:26:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 02 Sep 2021 18:26:18 -0000
Message-ID: <163060717890.29439.11530440186906971075@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B01/11=5D_drm/i915=3A_Release_i915=5Fgem?=
 =?utf-8?q?=5Fcontext_from_a_worker_=28rev2=29?=
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

Series: series starting with [01/11] drm/i915: Release i915_gem_context from a worker (rev2)
URL   : https://patchwork.freedesktop.org/series/94285/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-drivers/gpu/drm/i915/gem/i915_gem_context.c:1349:34:    expected struct i915_address_space *vm
-drivers/gpu/drm/i915/gem/i915_gem_context.c:1349:34:    got struct i915_address_space [noderef] __rcu *vm
-drivers/gpu/drm/i915/gem/i915_gem_context.c:1349:34: warning: incorrect type in argument 1 (different address spaces)
-drivers/gpu/drm/i915/gem/selftests/mock_context.c:44:25:    expected struct i915_address_space [noderef] __rcu *vm
-drivers/gpu/drm/i915/gem/selftests/mock_context.c:44:25:    got struct i915_address_space *
-drivers/gpu/drm/i915/gem/selftests/mock_context.c:44:25: warning: incorrect type in assignment (different address spaces)
-drivers/gpu/drm/i915/gem/selftests/mock_context.c:61:34:    expected struct i915_address_space *vm
-drivers/gpu/drm/i915/gem/selftests/mock_context.c:61:34:    got struct i915_address_space [noderef] __rcu *vm
-drivers/gpu/drm/i915/gem/selftests/mock_context.c:61:34: warning: incorrect type in argument 1 (different address spaces)


