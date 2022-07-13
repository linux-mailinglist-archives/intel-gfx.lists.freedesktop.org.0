Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2B3573992
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 17:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5EF9B509;
	Wed, 13 Jul 2022 15:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 99CF79B456;
 Wed, 13 Jul 2022 15:04:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91860A00A0;
 Wed, 13 Jul 2022 15:04:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Wed, 13 Jul 2022 15:04:20 -0000
Message-ID: <165772466056.739.4618397727801322971@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220713135022.3710682-1-bob.beckett@collabora.com>
In-Reply-To: <20220713135022.3710682-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_ttm_for_stolen_=28rev9=29?=
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

Series: drm/i915: ttm for stolen (rev9)
URL   : https://patchwork.freedesktop.org/series/101396/
State : warning

== Summary ==

Error: dim checkpatch failed
a9138083bda2 drm/i915/ttm: dont trample cache_level overrides during ttm move
9d3769792d14 drm/i915: limit ttm to dma32 for i965G[M]
166ce17314f9 drm/i915/ttm: only trust snooping for dgfx when deciding default cache_level
e70eb7cbad94 drm/i915: instantiate ttm ranger manager for stolen memory
69c6082b5850 drm/i915: sanitize mem_flags for stolen buffers
f22bb8043fe7 drm/i915: ttm move/clear logic fix
78f205280831 drm/i915/ttm: add buffer pin on alloc flag
a289bd6556e6 drm/i915/selftest: don't attempt engine reset of guc submission engines
d9506eb9243a drm/i915/selftest: maintain context ref during reset test
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
Commit "bcb9aa45d5a0 Revert "drm/i915: Hold reference to intel_context over life of i915_request""

total: 0 errors, 1 warnings, 0 checks, 48 lines checked
e6558b94b26e drm/i915: stolen memory use ttm backend


