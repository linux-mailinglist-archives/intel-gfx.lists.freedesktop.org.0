Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 541677E2DAD
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 21:08:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF81810E3F2;
	Mon,  6 Nov 2023 20:08:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A70A210E3F2;
 Mon,  6 Nov 2023 20:08:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A245CAADEF;
 Mon,  6 Nov 2023 20:08:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Mon, 06 Nov 2023 20:08:55 -0000
Message-ID: <169930133566.20424.9442873528918871612@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231106114228.146574-1-mika.kahola@intel.com>
In-Reply-To: <20231106114228.146574-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Support_PSR_entry_VSC_packet_to_be_tran?=
 =?utf-8?q?smitted_one_frame_earlier_=28rev4=29?=
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

Series: drm/i915/display: Support PSR entry VSC packet to be transmitted one frame earlier (rev4)
URL   : https://patchwork.freedesktop.org/series/125558/
State : warning

== Summary ==

Error: dim checkpatch failed
bf91ea0e1133 drm/i915/display: Support PSR entry VSC packet to be transmitted one frame earlier
-:132: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#132: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1097:
+static u8 intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
+					   const struct drm_display_mode *adjusted_mode)

-:145: CHECK:LINE_SPACING: Please don't use multiple blank lines
#145: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1110:
+
+

-:211: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#211: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:39:
+#define   LNL_EDP_PSR_ENTRY_SETUP_FRAMES(x)	REG_FIELD_PREP(LNL_EDP_PSR_ENTRY_SETUP_FRAMES_MASK, (x))

total: 0 errors, 1 warnings, 2 checks, 158 lines checked


