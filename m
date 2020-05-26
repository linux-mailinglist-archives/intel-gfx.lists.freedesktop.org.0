Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBCB1E329D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 00:31:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6431C89C9A;
	Tue, 26 May 2020 22:31:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AAB8289C9A;
 Tue, 26 May 2020 22:31:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A45C8A0019;
 Tue, 26 May 2020 22:31:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 26 May 2020 22:31:37 -0000
Message-ID: <159053229764.28045.9652797139039656697@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200526221447.64110-1-jose.souza@intel.com>
In-Reply-To: <20200526221447.64110-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/i915/rkl=3A_Disable_PSR2?=
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

Series: series starting with [1/6] drm/i915/rkl: Disable PSR2
URL   : https://patchwork.freedesktop.org/series/77676/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3b5607178b4a drm/i915/rkl: Disable PSR2
54e02163a7f7 drm/i915: Add plane damage clips property
af8c4264fa17 drm/i915: Reorder intel_psr2_config_valid()
837cb19aab8f drm/i915: Add PSR2 software tracking registers
-:29: WARNING:LONG_LINE: line over 100 characters
#29: FILE: drivers/gpu/drm/i915/i915_reg.h:4574:
+#define  PSR2_MAN_TRK_CTL_REGION_START_ADDR(val)	REG_FIELD_PREP(PSR2_MAN_TRK_CTL_REGION_START_ADDR_MASK, val)

-:31: WARNING:LONG_LINE: line over 100 characters
#31: FILE: drivers/gpu/drm/i915/i915_reg.h:4576:
+#define  PSR2_MAN_TRK_CTL_REGION_END_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_REGION_END_ADDR_MASK, val)

-:63: WARNING:LONG_LINE: line over 100 characters
#63: FILE: drivers/gpu/drm/i915/i915_reg.h:7163:
+#define _PLANE_SEL_FETCH_BASE_1(pipe) _PIPE(pipe, _PLANE_SEL_FETCH_BASE_1_A, _PLANE_SEL_FETCH_BASE_1_A)

total: 0 errors, 3 warnings, 0 checks, 87 lines checked
8dcb0cb37119 drm/i915: Implement PSR2 selective fetch
-:565: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#565: FILE: drivers/gpu/drm/i915/i915_params.c:92:
+i915_param_named_unsafe(enable_psr2_sel_fetch, int, 0400,
+	"Enable PSR2 selective fetch "

total: 0 errors, 0 warnings, 1 checks, 488 lines checked
d80c35b30749 drm/i915: Implement PSR2 selective fetch WAs

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
