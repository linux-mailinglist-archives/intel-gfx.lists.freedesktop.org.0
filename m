Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A703E1BA7
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 20:46:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD91589F75;
	Thu,  5 Aug 2021 18:46:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 131AE89F75;
 Thu,  5 Aug 2021 18:46:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09FF1A8830;
 Thu,  5 Aug 2021 18:46:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 05 Aug 2021 18:46:44 -0000
Message-ID: <162818920403.30836.3144615007634437891@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210805103916.860853-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210805103916.860853-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?remove_rcu_support_from_i915=5Faddress=5Fspace_=28rev5=29?=
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

Series: remove rcu support from i915_address_space (rev5)
URL   : https://patchwork.freedesktop.org/series/93314/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-drivers/gpu/drm/i915/gem/i915_gem_context.c:1364:34:    expected struct i915_address_space *vm
-drivers/gpu/drm/i915/gem/i915_gem_context.c:1364:34:    got struct i915_address_space [noderef] __rcu *vm
-drivers/gpu/drm/i915/gem/i915_gem_context.c:1364:34: warning: incorrect type in argument 1 (different address spaces)
-drivers/gpu/drm/i915/gem/selftests/mock_context.c:43:25:    expected struct i915_address_space [noderef] __rcu *vm
-drivers/gpu/drm/i915/gem/selftests/mock_context.c:43:25:    got struct i915_address_space *
-drivers/gpu/drm/i915/gem/selftests/mock_context.c:43:25: warning: incorrect type in assignment (different address spaces)
-drivers/gpu/drm/i915/gem/selftests/mock_context.c:60:34:    expected struct i915_address_space *vm
-drivers/gpu/drm/i915/gem/selftests/mock_context.c:60:34:    got struct i915_address_space [noderef] __rcu *vm
-drivers/gpu/drm/i915/gem/selftests/mock_context.c:60:34: warning: incorrect type in argument 1 (different address spaces)


