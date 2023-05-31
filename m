Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5444371874F
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 18:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F8210E102;
	Wed, 31 May 2023 16:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCCDE10E102;
 Wed, 31 May 2023 16:26:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5BE8AADD6;
 Wed, 31 May 2023 16:26:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Wed, 31 May 2023 16:26:56 -0000
Message-ID: <168555041678.17616.2693800683113560398@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
In-Reply-To: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_s/ADL/ALDERLAKE?=
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

Series: s/ADL/ALDERLAKE
URL   : https://patchwork.freedesktop.org/series/118596/
State : warning

== Summary ==

Error: dim checkpatch failed
4fc3d4f72d67 drm/i915/adlp: s/ADLP/ALDERLAKE_P for display and graphics step
-:7: WARNING:TYPO_SPELLING: 'platfrom' may be misspelled - perhaps 'platform'?
#7: 
Driver refers to the platfrom Alderlake P as ADLP in places
                     ^^^^^^^^

-:111: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#111: FILE: drivers/gpu/drm/i915/i915_drv.h:672:
+#define IS_ALDERLAKE_P_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_P(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))

-:116: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#116: FILE: drivers/gpu/drm/i915/i915_drv.h:676:
+#define IS_ALDERLAKE_P_GRAPHICS_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_P(__i915) && \
 	 IS_GRAPHICS_STEP(__i915, since, until))

total: 0 errors, 1 warnings, 2 checks, 77 lines checked
6da159fe5a5e drm/i915/rplp: s/ADLP/ALDERLAKE_P for RPLP defines
eeff70227232 drm/i915/rplu: s/ADLP/ALDERLAKE_P in RPLU defines
e941cc927ade drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN defines
fcf47d823462 drm/i915/adls: s/ADLS/ALDERLAKE_S in platform and subplatform defines
-:7: WARNING:TYPO_SPELLING: 'platfrom' may be misspelled - perhaps 'platform'?
#7: 
Driver refers to the platfrom Alderlake S as ADLS in places
                     ^^^^^^^^

-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#45: FILE: drivers/gpu/drm/i915/i915_drv.h:664:
+#define IS_ALDERLAKE_S_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))

-:50: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#50: FILE: drivers/gpu/drm/i915/i915_drv.h:668:
+#define IS_ALDERLAKE_S_GRAPHICS_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
 	 IS_GRAPHICS_STEP(__i915, since, until))

total: 0 errors, 1 warnings, 2 checks, 45 lines checked


