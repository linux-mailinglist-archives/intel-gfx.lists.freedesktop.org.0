Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AE759F46E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 09:33:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED824113143;
	Wed, 24 Aug 2022 07:33:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DE631125CB;
 Wed, 24 Aug 2022 07:33:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8413EAADD6;
 Wed, 24 Aug 2022 07:33:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 24 Aug 2022 07:33:20 -0000
Message-ID: <166132640053.9870.16021586190460071023@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220823090128.488008-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20220823090128.488008-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_Move_display_pco?=
 =?utf-8?q?de_requests_to_intel=5Fde_=28rev2=29?=
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

Series: series starting with [1/4] drm/i915: Move display pcode requests to intel_de (rev2)
URL   : https://patchwork.freedesktop.org/series/107610/
State : warning

== Summary ==

Error: dim checkpatch failed
65b635139e84 drm/i915: Move display pcode requests to intel_de
-:226: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#226: FILE: drivers/gpu/drm/i915/display/intel_de.h:87:
+intel_de_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u32 val,
+			    int fast_timeout_us, int slow_timeout_ms)

-:235: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#235: FILE: drivers/gpu/drm/i915/display/intel_de.h:96:
+{
+

total: 0 errors, 0 warnings, 2 checks, 273 lines checked
44a7584dedad drm/i915: Remove uncore from intel_tc.c
7f461f0feb68 drm/i915: Remove uncore from intel_bios.c
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 55 lines checked
b90cf674f840 drm/i915: Replace remaining display uncore references to use intel_de
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:80: WARNING:LINE_SPACING: Missing a blank line after declarations
#80: FILE: drivers/gpu/drm/i915/display/intel_crt.c:717:
+		u32 pipeconf = intel_de_read(dev_priv, pipeconf_reg);
+		intel_de_write(dev_priv,

-:81: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#81: FILE: drivers/gpu/drm/i915/display/intel_crt.c:718:
+		intel_de_write(dev_priv,
 				   pipeconf_reg,

-:105: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#105: FILE: drivers/gpu/drm/i915/display/intel_crt.c:744:
+			intel_de_write(dev_priv,
 					   vblank_reg,

-:414: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#414: FILE: drivers/gpu/drm/i915/display/intel_gmbus.c:240:
+	intel_de_write_notrace(i915,
 				   bus->gpio_reg,

total: 0 errors, 2 warnings, 3 checks, 468 lines checked


