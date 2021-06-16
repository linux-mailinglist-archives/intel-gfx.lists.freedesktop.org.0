Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C22FE3AA570
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 22:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E580B89E32;
	Wed, 16 Jun 2021 20:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2435C89E32;
 Wed, 16 Jun 2021 20:39:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D7B1A8832;
 Wed, 16 Jun 2021 20:39:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 16 Jun 2021 20:39:46 -0000
Message-ID: <162387598609.8275.17116739519507015910@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210616203158.118111-1-jose.souza@intel.com>
In-Reply-To: <20210616203158.118111-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/i915/display/psr=3A_Hand?=
 =?utf-8?q?le_SU_Y_granularity?=
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

Series: series starting with [1/6] drm/i915/display/psr: Handle SU Y granularity
URL   : https://patchwork.freedesktop.org/series/91594/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
47efae2a069f drm/i915/display/psr: Handle SU Y granularity
a03bc073ba13 drm/i915/display/adl_p: Implement Wa_22012278275
-:66: WARNING:LONG_LINE: line length of 136 exceeds 100 columns
#66: FILE: drivers/gpu/drm/i915/i915_reg.h:4600:
+#define   TGL_EDP_PSR2_IO_BUFFER_WAKE(lines)	(((lines) - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES) << TGL_EDP_PSR2_IO_BUFFER_WAKE_SHIFT)

-:74: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#74: FILE: drivers/gpu/drm/i915/i915_reg.h:4607:
+#define   TGL_EDP_PSR2_FAST_WAKE(lines)		(((lines) - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES) << TGL_EDP_PSR2_FAST_WAKE_MIN_SHIFT)

total: 0 errors, 2 warnings, 0 checks, 52 lines checked
b08ac7934e09 drm/i915/display/adl_p: Implement Wa_16011168373
b84f76144d24 drm/i915/xelpd: Handle PSR2 SDP indication in the prior scanline
07e0f4c3c72b drm/i915/display/adl_p: Implement Wa_16011303918
4f4308c4b4f7 drm/i915/display/adl_p: Implement PSR changes
-:149: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#149: FILE: drivers/gpu/drm/i915/i915_reg.h:4660:
+#define PSR2_MAN_TRK_CTL(tran)					_MMIO_TRANS2(tran, _PSR2_MAN_TRK_CTL_A)

-:152: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#152: FILE: drivers/gpu/drm/i915/i915_reg.h:4663:
+#define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)

-:162: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#162: FILE: drivers/gpu/drm/i915/i915_reg.h:4670:
+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)	REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)

-:164: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#164: FILE: drivers/gpu/drm/i915/i915_reg.h:4672:
+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)

total: 0 errors, 4 warnings, 0 checks, 131 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
