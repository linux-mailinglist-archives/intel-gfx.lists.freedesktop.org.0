Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7969657540F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jul 2022 19:31:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D89FD10E69A;
	Thu, 14 Jul 2022 17:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A958510E5F8;
 Thu, 14 Jul 2022 17:31:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A16AAA0169;
 Thu, 14 Jul 2022 17:31:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Thu, 14 Jul 2022 17:31:42 -0000
Message-ID: <165781990263.7512.16698832033093226141@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220713135022.3710682-1-bob.beckett@collabora.com>
In-Reply-To: <20220713135022.3710682-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_ttm_for_stolen_=28rev10=29?=
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

Series: drm/i915: ttm for stolen (rev10)
URL   : https://patchwork.freedesktop.org/series/101396/
State : warning

== Summary ==

Error: dim checkpatch failed
fc7cf622891a drm/i915/ttm: dont trample cache_level overrides during ttm move
65b85eed04f1 drm/i915: limit ttm to dma32 for i965G[M]
9fa736fcecd9 drm/i915/ttm: only trust snooping for dgfx when deciding default cache_level
cabea8e05322 drm/i915: instantiate ttm ranger manager for stolen memory
4de54157f766 drm/i915: sanitize mem_flags for stolen buffers
691c9e224855 drm/i915: ttm move/clear logic fix
2c60666271e0 drm/i915/ttm: add buffer pin on alloc flag
702ed1e169d8 drm/i915/selftest: don't attempt engine reset of guc submission engines
96933373aad2 drm/i915/selftest: maintain context ref during reset test
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
Commit "bcb9aa45d5a0 Revert "drm/i915: Hold reference to intel_context over life of i915_request""

total: 0 errors, 1 warnings, 0 checks, 48 lines checked
aad34eb0283a drm/i915: stolen memory use ttm backend


