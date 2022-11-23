Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9220A635A6F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 11:45:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0AD710E216;
	Wed, 23 Nov 2022 10:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5A6E10E216;
 Wed, 23 Nov 2022 10:45:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B73DA00E8;
 Wed, 23 Nov 2022 10:45:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 23 Nov 2022 10:45:25 -0000
Message-ID: <166920032561.15573.11425850969107914539@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221101094222.22091-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20221101094222.22091-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DP_MST_DSC_support_to_i915_=28rev18=29?=
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

Series: Add DP MST DSC support to i915 (rev18)
URL   : https://patchwork.freedesktop.org/series/101492/
State : warning

== Summary ==

Error: dim checkpatch failed
dff236bab4de drm: Add missing DP DSC extended capability definitions.
c17c70fbc92f drm/i915: Fix intel_dp_mst_compute_link_config
8dbe5bdbab22 drm/i915: Extract drm_dp_atomic_find_vcpi_slots cycle to separate function
-:79: CHECK:LINE_SPACING: Please don't use multiple blank lines
#79: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:117:
+
+

total: 0 errors, 0 warnings, 1 checks, 75 lines checked
f943eaead677 drm/i915: Add DSC support to MST path
d46738bb841e drm/i915: Extract VESA DSC bpp alignment to separate function
621bdbdbe734 drm/i915: Bpp/timeslot calculation fixes for DP MST DSC
-:257: ERROR:CODE_INDENT: code indent should use tabs where possible
#257: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:216:
+^I^I^I^I^I^I^I^I        last_compressed_bpp,$

-:257: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#257: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:216:
+	crtc_state->dsc.compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915,
+								        last_compressed_bpp,

-:258: ERROR:CODE_INDENT: code indent should use tabs where possible
#258: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:217:
+^I^I^I^I^I^I^I^I        crtc_state->pipe_bpp);$

total: 2 errors, 0 warnings, 1 checks, 244 lines checked


