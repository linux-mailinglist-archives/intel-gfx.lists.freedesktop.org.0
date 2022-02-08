Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 070B64ADEBD
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 17:57:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD88010E7AB;
	Tue,  8 Feb 2022 16:57:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CDB9610E7AB;
 Tue,  8 Feb 2022 16:57:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CB5A9A66C9;
 Tue,  8 Feb 2022 16:57:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 08 Feb 2022 16:57:14 -0000
Message-ID: <164433943481.22537.3455850202625744749@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1643878928.git.jani.nikula@intel.com>
In-Reply-To: <cover.1643878928.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/dp=2C_drm/i915=3A_128b/132b_updates_=28rev5=29?=
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

Series: drm/dp, drm/i915: 128b/132b updates (rev5)
URL   : https://patchwork.freedesktop.org/series/99324/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
20e6f540b666 drm/dp: add drm_dp_128b132b_read_aux_rd_interval()
33af01e431af drm/dp: add 128b/132b link status helpers from DP 2.0 E11
9362394c0701 drm/dp: add some new DPCD macros from DP 2.0 E11
965064d5f41d drm/i915/dp: move intel_dp_prepare_link_train() call
530327803cfd drm/i915/dp: rewrite DP 2.0 128b/132b link training based on errata
-:108: CHECK:LINE_SPACING: Please don't use multiple blank lines
#108: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1132:
 
+

-:333: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#333: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1357:
+
+	}

total: 0 errors, 0 warnings, 2 checks, 337 lines checked
ce2c19e796be drm/i915/dp: add 128b/132b support to link status checks
f5777bc7387e drm/i915/mst: update slot information for 128b/132b
18f489ee5d20 HACK: drm/i915/dp: give more time for CDS


