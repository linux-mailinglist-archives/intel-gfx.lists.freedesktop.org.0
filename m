Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71825A727B0
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 01:14:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E5710E842;
	Thu, 27 Mar 2025 00:13:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB94610E831;
 Thu, 27 Mar 2025 00:13:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Remove_I915=5FENGINE?=
 =?utf-8?q?=5FFIRST=5FRENDER=5FCOMPUTE?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Mar 2025 00:13:57 -0000
Message-ID: <174303443782.9053.6972003290070637327@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <20250326234005.1574688-1-andi.shyti@linux.intel.com>
In-Reply-To: <20250326234005.1574688-1-andi.shyti@linux.intel.com>
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

Series: Remove I915_ENGINE_FIRST_RENDER_COMPUTE
URL   : https://patchwork.freedesktop.org/series/146832/
State : warning

== Summary ==

Error: dim checkpatch failed
a150ec769409 drm/i915: Add the FIRST_CCS() helper
-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'e__' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/i915_drv.h:622:
+#define FIRST_CCS(e__) \
+	(CCS_MASK(e__->gt) && (__ffs(CCS_MASK(e__->gt)) == e__->instance))

-:27: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'e__' may be better as '(e__)' to avoid precedence issues
#27: FILE: drivers/gpu/drm/i915/i915_drv.h:622:
+#define FIRST_CCS(e__) \
+	(CCS_MASK(e__->gt) && (__ffs(CCS_MASK(e__->gt)) == e__->instance))

total: 0 errors, 0 warnings, 2 checks, 9 lines checked
eadd6d4a2092 drm/i915/gt: Move CCS workaround to the correct section
82c17b19530b drm/i915/gt: Remove FIRST_RENDER_COMPUTE in workaround
4fe052e75e45 drm/i915/gt: Check for the first CCS instead of FIRST_RENDER_COMPUTE
61c07aa7b402 drm/i915/gt/uc: Use FIRST_CCS() helper for one-time CCS operations
030506b29b01 drm/i915/gt: Remove unused I915_ENGINE_FIRST_RENDER_COMPUTE flag


