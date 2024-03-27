Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E001388F2D7
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 00:20:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D308011215F;
	Wed, 27 Mar 2024 23:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60AB0112164;
 Wed, 27 Mar 2024 23:20:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/gt=3A_Limit?=
 =?utf-8?q?_the_reserved_VM_space_to_only_the_platforms_that_need_it?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Mar 2024 23:20:36 -0000
Message-ID: <171158163639.1060939.9463788692704281715@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240327200546.640108-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240327200546.640108-1-andi.shyti@linux.intel.com>
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

Series: drm/i915/gt: Limit the reserved VM space to only the platforms that need it
URL   : https://patchwork.freedesktop.org/series/131707/
State : warning

== Summary ==

Error: dim checkpatch failed
438bf8f0a744 drm/i915/gt: Limit the reserved VM space to only the platforms that need it
-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'engine' - possible side-effects?
#72: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:93:
+#define NEEDS_FASTCOLOR_BLT_WABB(engine) ( \
+	intel_gt_needs_wa_16018031267(engine->gt) && \
+	engine->class == COPY_ENGINE_CLASS && engine->instance == 0)

-:72: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'engine' may be better as '(engine)' to avoid precedence issues
#72: FILE: drivers/gpu/drm/i915/gt/intel_gt.h:93:
+#define NEEDS_FASTCOLOR_BLT_WABB(engine) ( \
+	intel_gt_needs_wa_16018031267(engine->gt) && \
+	engine->class == COPY_ENGINE_CLASS && engine->instance == 0)

total: 0 errors, 0 warnings, 2 checks, 43 lines checked


