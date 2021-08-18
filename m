Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D8E3F086E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 17:51:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F40D06E863;
	Wed, 18 Aug 2021 15:51:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B53F66E864;
 Wed, 18 Aug 2021 15:51:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AC531AA914;
 Wed, 18 Aug 2021 15:51:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tim Gardner" <tim.gardner@canonical.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Aug 2021 15:51:13 -0000
Message-ID: <162930187367.16674.17936734026474037576@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210818145159.12402-1-tim.gardner@canonical.com>
In-Reply-To: <20210818145159.12402-1-tim.gardner@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_Avoid_NULL_dereference_in_=5F=5Fi915=5Fgem?=
 =?utf-8?b?X29iamVjdF9sb2NrKCk=?=
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

Series: drm/i915/gem: Avoid NULL dereference in __i915_gem_object_lock()
URL   : https://patchwork.freedesktop.org/series/93787/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c2b783f48fd3 drm/i915/gem: Avoid NULL dereference in __i915_gem_object_lock()
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
Both dma_resv_lock_interruptible() and dma_resv_lock() can return -EDEADLK. Protect

total: 0 errors, 1 warnings, 0 checks, 8 lines checked


