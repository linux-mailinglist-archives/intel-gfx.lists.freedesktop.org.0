Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4607E87D0D1
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Mar 2024 16:58:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CED6E112317;
	Fri, 15 Mar 2024 15:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AB68112317;
 Fri, 15 Mar 2024 15:58:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Bigjoiner_refactorin?=
 =?utf-8?q?g_=28rev11=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Mar 2024 15:58:00 -0000
Message-ID: <171051828011.795787.16812066236337197283@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240313095949.6898-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240313095949.6898-1-stanislav.lisovskiy@intel.com>
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

Series: Bigjoiner refactoring (rev11)
URL   : https://patchwork.freedesktop.org/series/128311/
State : warning

== Summary ==

Error: dim checkpatch failed
067d687e4409 drm/i915: Add a small helper to compute the set of pipes for crtc
a42e4b192f23 drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
-:77: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#77: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3136:
+{
+

total: 0 errors, 0 warnings, 1 checks, 57 lines checked
1a0dacc895ff drm/i915: Utilize intel_crtc_joined_pipe_mask() more
ea31030d2413 drm/i915: Handle joined pipes inside hsw_crtc_disable()
-:130: ERROR:CODE_INDENT: code indent should use tabs where possible
#130: FILE: drivers/gpu/drm/i915/display/intel_display.c:6819:
+                if (intel_crtc_is_bigjoiner_slave(old_crtc_state))$

-:130: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#130: FILE: drivers/gpu/drm/i915/display/intel_display.c:6819:
+                if (intel_crtc_is_bigjoiner_slave(old_crtc_state))$

-:131: ERROR:CODE_INDENT: code indent should use tabs where possible
#131: FILE: drivers/gpu/drm/i915/display/intel_display.c:6820:
+                        continue;$

-:131: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#131: FILE: drivers/gpu/drm/i915/display/intel_display.c:6820:
+                        continue;$

total: 2 errors, 2 warnings, 0 checks, 111 lines checked
f2889db0c40e drm/i915: Handle joined pipes inside hsw_crtc_enable()
-:8: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#8: 
That way we can also remove a bunch of checks like intel_crtc_is_bigjoiner_slave.

-:259: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#259: FILE: drivers/gpu/drm/i915/display/intel_display.c:1718:
+		 * to change the workaround. */

-:312: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#312: FILE: drivers/gpu/drm/i915/display/intel_display.h:315:
+#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc, pipe_mask)	\
+	list_for_each_entry_reverse(intel_crtc,					\
+				    &(dev)->mode_config.crtc_list,		\
+				    base.head)					\
+		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))

-:312: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_crtc' - possible side-effects?
#312: FILE: drivers/gpu/drm/i915/display/intel_display.h:315:
+#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc, pipe_mask)	\
+	list_for_each_entry_reverse(intel_crtc,					\
+				    &(dev)->mode_config.crtc_list,		\
+				    base.head)					\
+		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))

total: 1 errors, 2 warnings, 1 checks, 287 lines checked
bfb3e87680ce drm/i915: Allow bigjoiner for MST


