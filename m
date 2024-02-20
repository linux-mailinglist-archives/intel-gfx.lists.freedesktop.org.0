Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE24D85BF11
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 15:47:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D255510E491;
	Tue, 20 Feb 2024 14:47:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A650110E493;
 Tue, 20 Feb 2024 14:47:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Disable_automatic_lo?=
 =?utf-8?q?ad_CCS_load_balancing_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Feb 2024 14:47:55 -0000
Message-ID: <170844047568.125781.18063403062460615058@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240220142034.257370-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240220142034.257370-1-andi.shyti@linux.intel.com>
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

Series: Disable automatic load CCS load balancing (rev2)
URL   : https://patchwork.freedesktop.org/series/129951/
State : warning

== Summary ==

Error: dim checkpatch failed
2065c72a8acd drm/i915/gt: Disable HW load balancing for CCS
5e600e4db29b drm/i915/gt: Set default CCS mode '1'
-:80: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#80: FILE: drivers/gpu/drm/i915/i915_drv.h:409:
+#define for_each_available_uabi_engine(engine__, i915__) \
+	for_each_uabi_engine(engine__, i915__) \
+		if ((IS_DG2(i915__)) && \
+		    ((engine__)->uabi_class == I915_ENGINE_CLASS_COMPUTE) && \
+		    ((engine__)->uabi_instance)) { } \
+		else

-:80: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'engine__' - possible side-effects?
#80: FILE: drivers/gpu/drm/i915/i915_drv.h:409:
+#define for_each_available_uabi_engine(engine__, i915__) \
+	for_each_uabi_engine(engine__, i915__) \
+		if ((IS_DG2(i915__)) && \
+		    ((engine__)->uabi_class == I915_ENGINE_CLASS_COMPUTE) && \
+		    ((engine__)->uabi_instance)) { } \
+		else

-:80: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915__' - possible side-effects?
#80: FILE: drivers/gpu/drm/i915/i915_drv.h:409:
+#define for_each_available_uabi_engine(engine__, i915__) \
+	for_each_uabi_engine(engine__, i915__) \
+		if ((IS_DG2(i915__)) && \
+		    ((engine__)->uabi_class == I915_ENGINE_CLASS_COMPUTE) && \
+		    ((engine__)->uabi_instance)) { } \
+		else

-:82: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#82: FILE: drivers/gpu/drm/i915/i915_drv.h:411:
+		if ((IS_DG2(i915__)) && \
[...]
+		    ((engine__)->uabi_instance)) { } \

-:98: CHECK:LINE_SPACING: Please don't use multiple blank lines
#98: FILE: drivers/gpu/drm/i915/i915_query.c:127:
 
+

total: 2 errors, 0 warnings, 3 checks, 77 lines checked


