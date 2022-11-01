Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FB7614A4E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 13:07:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 573B110E3A4;
	Tue,  1 Nov 2022 12:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1231E10E398;
 Tue,  1 Nov 2022 12:07:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8EFEA47EB;
 Tue,  1 Nov 2022 12:07:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 01 Nov 2022 12:07:46 -0000
Message-ID: <166730446666.13544.12528176215208886747@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221101094222.22091-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20221101094222.22091-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DP_MST_DSC_support_to_i915_=28rev14=29?=
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

Series: Add DP MST DSC support to i915 (rev14)
URL   : https://patchwork.freedesktop.org/series/101492/
State : warning

== Summary ==

Error: dim checkpatch failed
a682457fad34 drm: Add missing DP DSC extended capability definitions.
b9b9c7187c42 drm/i915: Fix intel_dp_mst_compute_link_config
c44bb8185012 drm/i915: Extract drm_dp_atomic_find_vcpi_slots cycle to separate function
-:79: CHECK:LINE_SPACING: Please don't use multiple blank lines
#79: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:116:
+
+

total: 0 errors, 0 warnings, 1 checks, 75 lines checked
eca8be230991 drm/i915: Add DSC support to MST path
387fa6bcef93 drm/i915: Extract VESA DSC bpp alignment to separate function
-:52: CHECK:LINE_SPACING: Please don't use multiple blank lines
#52: FILE: drivers/gpu/drm/i915/display/intel_dp.c:704:
+
+

total: 0 errors, 0 warnings, 1 checks, 76 lines checked
4370dddb8d16 drm/i915: Bpp/timeslot calculation fixes for DP MST DSC
-:166: ERROR:CODE_INDENT: code indent should use tabs where possible
#166: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:113:
+        else {$

-:166: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#166: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:113:
+        else {$

-:166: CHECK:BRACES: Unbalanced braces around else statement
#166: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:113:
+        else {

-:167: ERROR:CODE_INDENT: code indent should use tabs where possible
#167: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:114:
+                if (!dsc)$

-:167: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#167: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:114:
+                if (!dsc)$

-:200: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#200: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:187:
+	sink_min_bpp = sink_max_bpp = dsc_bpc[0] * 3;

total: 2 errors, 2 warnings, 2 checks, 220 lines checked


