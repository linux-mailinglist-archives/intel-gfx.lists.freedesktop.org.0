Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6422F1B6FF8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 10:46:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF9B6EA94;
	Fri, 24 Apr 2020 08:46:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 023096E446;
 Fri, 24 Apr 2020 08:46:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4B77A47E6;
 Fri, 24 Apr 2020 08:46:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 Apr 2020 08:46:56 -0000
Message-ID: <158771801691.10802.5742168720857044868@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200424083303.19226-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200424083303.19226-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/2=5D_drm/i915/selftests=3A_V?=
 =?utf-8?q?erify_context_isolation?=
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

Series: series starting with [CI,1/2] drm/i915/selftests: Verify context isolation
URL   : https://patchwork.freedesktop.org/series/76422/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4f4d2e0da2e5 drm/i915/selftests: Verify context isolation
-:345: WARNING:LINE_SPACING: Missing a blank line after declarations
#345: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:2182:
+	struct igt_live_test t;
+	I915_RND_STATE(prng);

total: 0 errors, 1 warnings, 0 checks, 453 lines checked
041952562621 drm/i915/selftets: Check random hang recovery
-:112: WARNING:LINE_SPACING: Missing a blank line after declarations
#112: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c:2399:
+	struct i915_gem_context *ctx;
+	I915_RND_STATE(prng);

total: 0 errors, 1 warnings, 0 checks, 169 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
