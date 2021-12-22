Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC8D47D51A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 17:28:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F203D10E21A;
	Wed, 22 Dec 2021 16:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C21A110E21A;
 Wed, 22 Dec 2021 16:28:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6D99AA917;
 Wed, 22 Dec 2021 16:28:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 22 Dec 2021 16:28:22 -0000
Message-ID: <164019050272.15677.15636067382775756342@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211222155622.2960379-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20211222155622.2960379-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Use_trylock_instead_of_blocking_lock_for_=5F=5F?=
 =?utf-8?q?i915=5Fgem=5Ffree=5Fobjects=2E?=
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

Series: drm/i915: Use trylock instead of blocking lock for __i915_gem_free_objects.
URL   : https://patchwork.freedesktop.org/series/98306/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
dfcddd530d5e drm/i915: Use trylock instead of blocking lock for __i915_gem_free_objects.
-:37: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:337:
+				queue_delayed_work(i915->wq, &i915->mm.free_work, msecs_to_jiffies(10));

total: 0 errors, 1 warnings, 0 checks, 54 lines checked


