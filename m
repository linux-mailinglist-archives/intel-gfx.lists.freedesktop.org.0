Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F745363EF4
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Apr 2021 11:40:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3011A89ED3;
	Mon, 19 Apr 2021 09:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A26089ED3;
 Mon, 19 Apr 2021 09:40:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 321D1A73C9;
 Mon, 19 Apr 2021 09:40:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 19 Apr 2021 09:40:36 -0000
Message-ID: <161882523617.27828.15705059236365711397@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210412224330.515926-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210412224330.515926-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_for_BSW_and_BXT_vt-d=2E_=28rev2=29?=
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

Series: drm/i915: Fix for BSW and BXT vt-d. (rev2)
URL   : https://patchwork.freedesktop.org/series/88976/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e50df516bbfe drm/i915: Remove asynchronous vma binding
-:8: WARNING:REPEATED_WORD: Possible repeated word: 'has'
#8: 
but dma_fence_work has has signalling fence semantics.

total: 0 errors, 1 warnings, 0 checks, 362 lines checked
b8e652ae0e61 drm/i915: Use trylock in shrinker for ggtt on bsw vt-d and bxt.
-:16: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#16: 
<4>[  462.585788] ffffffff826440b0 (cpu_hotplug_lock){++++}-{0:0}, at: stop_machine+0x12/0x30

total: 0 errors, 1 warnings, 0 checks, 107 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
