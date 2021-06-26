Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A793B4B70
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Jun 2021 02:08:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE3986E0D6;
	Sat, 26 Jun 2021 00:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 03D506E986;
 Sat, 26 Jun 2021 00:08:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F144BA47DF;
 Sat, 26 Jun 2021 00:08:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Sat, 26 Jun 2021 00:08:40 -0000
Message-ID: <162466612096.10570.2212495285289106140@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210625235600.765677-1-jose.souza@intel.com>
In-Reply-To: <20210625235600.765677-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/display/adl=5Fp=3A_?=
 =?utf-8?q?Implement_PSR_changes?=
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

Series: series starting with [1/2] drm/i915/display/adl_p: Implement PSR changes
URL   : https://patchwork.freedesktop.org/series/91931/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
40703d3f9d23 drm/i915/display/adl_p: Implement PSR changes
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
399cecf3f729 drm/i915/display: Disable FBC when PSR2 is enabled display 12 and newer


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
