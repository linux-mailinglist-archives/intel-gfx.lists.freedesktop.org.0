Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8A73658C0
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 14:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6BFB89FA0;
	Tue, 20 Apr 2021 12:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 84E0789FA0;
 Tue, 20 Apr 2021 12:14:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B42FA00CC;
 Tue, 20 Apr 2021 12:14:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Tue, 20 Apr 2021 12:14:45 -0000
Message-ID: <161892088547.28022.14124171543172820479@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210420103451.408059-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210420103451.408059-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Remove_asynchron?=
 =?utf-8?q?ous_vma_binding?=
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

Series: series starting with [1/2] drm/i915: Remove asynchronous vma binding
URL   : https://patchwork.freedesktop.org/series/89255/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7d5c57627b7b drm/i915: Remove asynchronous vma binding
-:8: WARNING:REPEATED_WORD: Possible repeated word: 'has'
#8: 
but dma_fence_work has has signalling fence semantics.

total: 0 errors, 1 warnings, 0 checks, 362 lines checked
ca4212a94685 drm/i915: Use trylock in shrinker for ggtt on bsw vt-d and bxt, v2.
-:16: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#16: 
<4>[  462.585788] ffffffff826440b0 (cpu_hotplug_lock){++++}-{0:0}, at: stop_machine+0x12/0x30

total: 0 errors, 1 warnings, 0 checks, 119 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
