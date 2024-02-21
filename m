Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88ACA85CDF2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 03:24:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F1A10E05F;
	Wed, 21 Feb 2024 02:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A20E10E05F;
 Wed, 21 Feb 2024 02:24:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Bigjoiner_refactorin?=
 =?utf-8?q?g_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Feb 2024 02:24:54 -0000
Message-ID: <170848229443.178297.12089909058378596790@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240220220918.8310-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240220220918.8310-1-stanislav.lisovskiy@intel.com>
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

Series: Bigjoiner refactoring (rev7)
URL   : https://patchwork.freedesktop.org/series/128311/
State : warning

== Summary ==

Error: dim checkpatch failed
3d859da21658 drm/i915/bigjoiner: Refactor bigjoiner state readout
c0d98dc3a01a Start separating pipe vs transcoder set logic for bigjoiner during modeset
-:12: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#12: 
That way we can also remove a bunch of checks like intel_crtc_is_bigjoiner_slave.

-:184: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#184: FILE: drivers/gpu/drm/i915/display/intel_display.c:1750:
+		 * to change the workaround. */

-:310: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#310: FILE: drivers/gpu/drm/i915/display/intel_display.h:283:
+#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc, pipe_mask)	\
+	list_for_each_entry_reverse(intel_crtc,					\
+				    &(dev)->mode_config.crtc_list,		\
+				    base.head)					\
+		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))

-:310: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_crtc' - possible side-effects?
#310: FILE: drivers/gpu/drm/i915/display/intel_display.h:283:
+#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc, pipe_mask)	\
+	list_for_each_entry_reverse(intel_crtc,					\
+				    &(dev)->mode_config.crtc_list,		\
+				    base.head)					\
+		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))

total: 1 errors, 2 warnings, 1 checks, 274 lines checked
805a2c1900a3 drm/i915: Fix bigjoiner case for DP2.0


