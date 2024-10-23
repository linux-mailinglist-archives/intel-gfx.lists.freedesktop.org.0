Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 119529AC061
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 09:34:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFBD110E773;
	Wed, 23 Oct 2024 07:34:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 396E410E773;
 Wed, 23 Oct 2024 07:34:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Add_support_for_3_VD?=
 =?utf-8?q?SC_engines_12_slices_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Oct 2024 07:34:00 -0000
Message-ID: <172966884023.1322970.4617043372586522933@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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

Series: Add support for 3 VDSC engines 12 slices (rev5)
URL   : https://patchwork.freedesktop.org/series/139934/
State : warning

== Summary ==

Error: dim checkpatch failed
e10dc647dab1 drm/i915/dp: Update Comment for Valid DSC Slices per Line
9b62b6dbf1b1 drm/i915/display: Prepare for dsc 3 stream splitter
b648dfb4f350 drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT VDSC engine
62425f3c6ba2 drm/i915/vdsc: Introduce 3rd VDSC engine VDSC2
f6c807b6d7aa drm/i915/vdsc: Add support for read/write PPS for 3rd DSC engine
80b3cac8f820 drm/i915/dp: Ensure hactive is divisible by slice count
bae1bb5875d9 drm/i915/dp: Enable 3 DSC engines for 12 slices
7998440e6a13 drm/i915/display: Add macro HAS_PIXEL_REPLICATION
-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#19: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:152:
+#define HAS_PIXEL_REPLICATION(i915)	(HAS_DSC(i915) && \
+					 (DISPLAY_VER(i915) >= 20 || \
+					  DISPLAY_VER_FULL(i915) == IP_VER(14, 1)))

total: 0 errors, 0 warnings, 1 checks, 9 lines checked
bd77528aa771 drm/i915/display: Add support for DSC pixel replication
-:141: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#141: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:59:
+#define  DSC_PIXEL_REPLICATION(count)		(REG_FIELD_PREP(DSC_PIXEL_REPLICATION_MASK, (count)))

total: 0 errors, 1 warnings, 0 checks, 101 lines checked
823e0adb2157 drm/i915/dp_mst: Account for pixel replication for MST overhead with DSC
46400fe947b0 drm/i915/dp: Account for pixel replication for BW computation with DSC
22df068f09ce drm/i915/display: Account for pixel replication in pipe_src
f0ce2acbe274 drm/i915/dp: Enable DSC pixel replication
55336aa227e5 drm/i915/dsc: Introduce odd pixel removal
0350b3583749 drm/i915/display: Adjust Pipe SRC Width for Odd Pixels
705832d27ba2 drm/i915/dp: Add Check for Odd Pixel Requirement


