Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EE820C055
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2020 10:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C9EE6E07B;
	Sat, 27 Jun 2020 08:42:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BAA846E07B;
 Sat, 27 Jun 2020 08:42:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4BACA47DF;
 Sat, 27 Jun 2020 08:42:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Sat, 27 Jun 2020 08:42:06 -0000
Message-ID: <159324732671.5397.11104628895904323217@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200626010151.221388-1-jose.souza@intel.com>
In-Reply-To: <20200626010151.221388-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/5=5D_drm/i915=3A_Add_plane_d?=
 =?utf-8?q?amage_clips_property?=
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

Series: series starting with [v2,1/5] drm/i915: Add plane damage clips property
URL   : https://patchwork.freedesktop.org/series/78830/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
93646a5debb4 drm/i915: Add plane damage clips property
876e57df337b drm/i915: Reorder intel_psr2_config_valid()
220cc1343ce6 drm/i915: Add PSR2 selective fetch registers
-:37: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/i915_reg.h:4593:
+#define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)	REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)

-:39: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/i915_reg.h:4595:
+#define  PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)

-:71: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#71: FILE: drivers/gpu/drm/i915/i915_reg.h:7182:
+#define _SEL_FETCH_PLANE_BASE_1(pipe) _PIPE(pipe, _SEL_FETCH_PLANE_BASE_1_A, _SEL_FETCH_PLANE_BASE_1_B)

total: 0 errors, 3 warnings, 0 checks, 87 lines checked
0a361499f045 drm/i915: Initial implementation of PSR2 selective fetch
-:283: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#283: FILE: drivers/gpu/drm/i915/i915_params.c:106:
+i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
+	"Enable PSR2 selective fetch "

total: 0 errors, 0 warnings, 1 checks, 220 lines checked
db04305684b4 drm/i915/display: Implement WA 1408330847

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
