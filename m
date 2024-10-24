Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9EB9AF58A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:46:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B86CA10E3C8;
	Thu, 24 Oct 2024 22:46:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23ABC10E3C8;
 Thu, 24 Oct 2024 22:46:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/xe3lpd=3A_p?=
 =?utf-8?q?tl_display_patches_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2024 22:46:11 -0000
Message-ID: <172980997114.1327227.4263557920703190890@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241024220752.714457-1-clinton.a.taylor@intel.com>
In-Reply-To: <20241024220752.714457-1-clinton.a.taylor@intel.com>
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

Series: drm/i915/xe3lpd: ptl display patches (rev3)
URL   : https://patchwork.freedesktop.org/series/140196/
State : warning

== Summary ==

Error: dim checkpatch failed
2b6994afd790 drm/i915/xe3lpd: Update pmdemand programming
-:78: ERROR:ELSE_AFTER_BRACE: else should follow close brace '}'
#78: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:341:
+	}
+	else

total: 1 errors, 0 warnings, 0 checks, 161 lines checked
2d3f9dcda6bd drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
9c80de54bb94 drm/i915/xe3lpd: Add check to see if edp over type c is allowed
b0f22f4efabb drm/i915/ptl: Define IS_PANTHERLAKE macro
-:21: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#21: FILE: drivers/gpu/drm/i915/i915_drv.h:539:
+#define IS_PANTHERLAKE(i915) (0 && i915)

total: 0 errors, 0 warnings, 1 checks, 7 lines checked
f119df375600 drm/i915/cx0: Extend C10 check to PTL
614dc7fec38c drm/i915/cx0: Remove bus reset after every c10 transaction
504ac4424704 drm/i915/xe3lpd: Move async flip bit to PLANE_SURF register
afeaefeacd2a drm/i915/xe3: Underrun recovery does not exist post Xe2
3dc5b996b720 drm/i915/display/xe3: disable x-tiled framebuffers
ec96bb0d579a drm/i915/xe3lpd: Skip disabling VRR during modeset disable
4c999f7acc8d drm/i915/xe3lpd: Power request asserting/deasserting
-:95: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#95: FILE: drivers/gpu/drm/i915/i915_reg.h:4545:
+#define   TCSS_DISP_MAILBOX_IN_CMD_DATA(x)	TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY | \
+						REG_FIELD_PREP(TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK, (x))

-:96: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#96: FILE: drivers/gpu/drm/i915/i915_reg.h:4546:
+						REG_FIELD_PREP(TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK, (x))

total: 1 errors, 1 warnings, 0 checks, 65 lines checked


