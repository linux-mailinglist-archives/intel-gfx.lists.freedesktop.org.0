Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7AB2179CE
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 22:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC21D6E46E;
	Tue,  7 Jul 2020 20:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8BC416E056;
 Tue,  7 Jul 2020 20:57:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6A7CA0BCB;
 Tue,  7 Jul 2020 20:57:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 07 Jul 2020 20:57:45 -0000
Message-ID: <159415546572.7663.7907884407733807345@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200707200743.11182-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200707200743.11182-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/gt=3A_Replace_openc?=
 =?utf-8?b?b2RlZCBpOTE1X2dlbV9vYmplY3RfcGluX21hcCgp?=
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

Series: series starting with [1/3] drm/i915/gt: Replace opencoded i915_gem_object_pin_map()
URL   : https://patchwork.freedesktop.org/series/79211/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3286cb8bd6d2 drm/i915/gt: Replace opencoded i915_gem_object_pin_map()
9caa553dca10 drm/i915: Release shortlived maps of longlived objects
-:22: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#22: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.h:396:
 }
+int i915_gem_object_release_map(struct drm_i915_gem_object *obj);

total: 0 errors, 0 warnings, 1 checks, 68 lines checked
b500f5a58d25 drm/i915: Remove i915_gem_object_get_dirty_page()

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
