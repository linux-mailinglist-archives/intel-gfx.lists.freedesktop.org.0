Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A828656DE5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Dec 2022 19:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DD8110E167;
	Tue, 27 Dec 2022 18:21:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E789910E167;
 Tue, 27 Dec 2022 18:21:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E02F4A00E6;
 Tue, 27 Dec 2022 18:21:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Deepak R Varma" <drv@mailo.com>
Date: Tue, 27 Dec 2022 18:21:56 -0000
Message-ID: <167216531688.15129.12109688622263401930@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1671952191.git.drv@mailo.com>
In-Reply-To: <cover.1671952191.git.drv@mailo.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_convert_i915=5Factive=2Ecount_from_atomic=5Ft_to_refcount?=
 =?utf-8?q?=5Ft?=
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

Series: convert i915_active.count from atomic_t to refcount_t
URL   : https://patchwork.freedesktop.org/series/112246/
State : warning

== Summary ==

Error: dim checkpatch failed
f3d75205bec5 drm/i915: convert i915_active.count from atomic_t to refcount_t
-:60: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#60: FILE: drivers/gpu/drm/i915/i915_active.c:182:
+	GEM_BUG_ON(!refcount_read(&ref->count));

-:71: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#71: FILE: drivers/gpu/drm/i915/i915_active.c:192:
+	GEM_BUG_ON(!refcount_read(&ref->count));

-:118: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#118: FILE: drivers/gpu/drm/i915/i915_active.c:762:
+	GEM_BUG_ON(refcount_read(&ref->count));

-:141: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#141: FILE: drivers/gpu/drm/i915/i915_active.h:196:
+	GEM_BUG_ON(!refcount_read(&ref->count));

total: 0 errors, 4 warnings, 0 checks, 127 lines checked
ae36a0e30e8d drm/i915/selftests: Convert atomic_* API calls for i915_active.count refcount_*


