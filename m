Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4135E751D5F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 11:36:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41A8610E008;
	Thu, 13 Jul 2023 09:36:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95ADA10E008;
 Thu, 13 Jul 2023 09:36:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E8E8AADE4;
 Thu, 13 Jul 2023 09:36:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Thu, 13 Jul 2023 09:36:38 -0000
Message-ID: <168924099855.14984.10736177039072783085@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230713062924.2894736-1-suraj.kandpal@intel.com>
In-Reply-To: <20230713062924.2894736-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DSC_PPS_readout_=28rev2=29?=
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

Series: Add DSC PPS readout (rev2)
URL   : https://patchwork.freedesktop.org/series/120456/
State : warning

== Summary ==

Error: dim checkpatch failed
522b07084859 drm/i915/vdsc: Refactor dsc register field macro
-:174: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#174: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:284:
+#define  DSC_RC_TARGET_OFF_HIGH(rc_tgt_off_high)	REG_FIELD_PREP(DSC_RC_TARGET_OFF_HIGH_MASK, \

-:191: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#191: FILE: drivers/gpu/drm/i915/display/intel_vdsc_regs.h:369:
+#define  DSC_SLICE_ROW_PER_FRAME(slice_row_per_frame)	REG_FIELD_PREP(DSC_SLICE_ROW_PER_FRAME_MASK, \

total: 0 errors, 2 warnings, 0 checks, 170 lines checked
f292bef24a4f drm/i915/vdsc: Add a check for dsc split cases
3d1649bffa43 drm/i915/vdsc: Add function to read any PPS register
56955c412ac8 drm/i915/vdsc: Add function to write in PPS register
4783180b2833 drm/i915/vdsc: Fill the intel_dsc_get_pps_config function
6b6e60445265 drm/i915/display: Compare the readout dsc pps params


