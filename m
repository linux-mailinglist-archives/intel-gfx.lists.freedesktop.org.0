Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFA83CBB1E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 19:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D091C89BB2;
	Fri, 16 Jul 2021 17:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 38F6388DAE;
 Fri, 16 Jul 2021 17:23:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 323E6A008A;
 Fri, 16 Jul 2021 17:23:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Date: Fri, 16 Jul 2021 17:23:36 -0000
Message-ID: <162645621618.12777.9122739529525351484@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210715050507.31176-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210715050507.31176-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/step=3A_Add_macro_m?=
 =?utf-8?q?agic_for_handling_steps_=28rev2=29?=
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

Series: series starting with [1/2] drm/i915/step: Add macro magic for handling steps (rev2)
URL   : https://patchwork.freedesktop.org/series/92560/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e95d63d8b4e0 drm/i915/step: Add macro magic for handling steps
-:24: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#24: FILE: drivers/gpu/drm/i915/intel_step.c:186:
+#define STEP_NAME_CASE(name)	\
+	case STEP_##name:	\
+		return #name;

-:24: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#24: FILE: drivers/gpu/drm/i915/intel_step.c:186:
+#define STEP_NAME_CASE(name)	\
+	case STEP_##name:	\
+		return #name;

-:30: ERROR:SPACING: space required before the open parenthesis '('
#30: FILE: drivers/gpu/drm/i915/intel_step.c:192:
+	switch(step) {

-:33: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#33: FILE: drivers/gpu/drm/i915/intel_step.c:195:
+	default :
 	        ^

-:47: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#47: FILE: drivers/gpu/drm/i915/intel_step.h:20:
+#define STEP_NAME_LIST(func)		\
+	func(A0)			\
+	func(A1)			\
+	func(A2)			\
+	func(B0)			\
+	func(B1)			\
+	func(B2)			\
+	func(C0)			\
+	func(C1)			\
+	func(D0)			\
+	func(D1)			\
+	func(E0)			\
+	func(F0)			\
+	func(G0)			\
+	func(H0)			\
+	func(I0)			\
+	func(I1)			\
+	func(J0)

-:47: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'func' - possible side-effects?
#47: FILE: drivers/gpu/drm/i915/intel_step.h:20:
+#define STEP_NAME_LIST(func)		\
+	func(A0)			\
+	func(A1)			\
+	func(A2)			\
+	func(B0)			\
+	func(B1)			\
+	func(B2)			\
+	func(C0)			\
+	func(C1)			\
+	func(D0)			\
+	func(D1)			\
+	func(E0)			\
+	func(F0)			\
+	func(G0)			\
+	func(H0)			\
+	func(I0)			\
+	func(I1)			\
+	func(J0)

total: 4 errors, 1 warnings, 1 checks, 70 lines checked
60161ed9f955 drm/i915/dmc: Change intel_get_stepping_info()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
