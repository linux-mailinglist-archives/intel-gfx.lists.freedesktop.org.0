Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C40672D3D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 01:07:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D73210E21C;
	Thu, 19 Jan 2023 00:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 22D0010E227;
 Thu, 19 Jan 2023 00:07:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1BF6BA0099;
 Thu, 19 Jan 2023 00:07:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 19 Jan 2023 00:07:30 -0000
Message-ID: <167408685007.24698.2457384872684161626@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Load_LUTs_with_DSB?=
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

Series: drm/i915: Load LUTs with DSB
URL   : https://patchwork.freedesktop.org/series/113042/
State : warning

== Summary ==

Error: dim checkpatch failed
dec4d3704799 drm/i915/dsb: Define more DSB registers
-:62: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#62: FILE: drivers/gpu/drm/i915/i915_reg.h:8146:
+#define   DSB_RM_CLAIM_TIMEOUT_COUNT(x)	REG_FIELD_PREP(DSB_RM_CLAIM_TIMEOUT_COUNT_MASK, (x)) /* clocks */

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
e9f5449ce908 drm/i915/dsb: Pimp debug/error prints
4f80d4562b76 drm/i915/dsb: Split intel_dsb_wait() from intel_dsb_commit()
819323e99297 drm/i915/dsb: Introduce intel_dsb_finish()
89414f294893 drm/i915/dsb: Dump the DSB command buffer when DSB fails
-:34: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#34: FILE: drivers/gpu/drm/i915/display/intel_dsb.c:107:
+			    i * 4, buf[i], buf[i+1], buf[i+2], buf[i+3]);
 			                        ^

-:34: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#34: FILE: drivers/gpu/drm/i915/display/intel_dsb.c:107:
+			    i * 4, buf[i], buf[i+1], buf[i+2], buf[i+3]);
 			                                  ^

-:34: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#34: FILE: drivers/gpu/drm/i915/display/intel_dsb.c:107:
+			    i * 4, buf[i], buf[i+1], buf[i+2], buf[i+3]);
 			                                            ^

total: 0 errors, 0 warnings, 3 checks, 46 lines checked
0f65ee332a2c drm/i915/dsb: Allow vblank synchronized DSB execution
99a9829d4bc3 drm/i915/dsb: Nuke the DSB debug
e65a662d0456 drm/i915/dsb: Skip DSB command buffer setup if we have no LUTs
9d1bb871a402 drm/i915/dsb: Don't use DSB to load the LUTs during full modeset
41fea74cedcf drm/i915/dsb: Load LUTs using the DSB during vblank
4f8f78ef5490 drm/i915/dsb: Write each legacy LUT entry twice with DSB
ed03d78bd2e1 drm/i915/dsb: Load LUTs with the DSB
a385a359081f drm/i915: Do state check for color management changes


