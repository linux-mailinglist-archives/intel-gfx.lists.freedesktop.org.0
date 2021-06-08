Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F2039F14A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 10:46:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 942A36EB49;
	Tue,  8 Jun 2021 08:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CF6EE6EB48;
 Tue,  8 Jun 2021 08:46:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7B81AA0ED;
 Tue,  8 Jun 2021 08:46:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 08 Jun 2021 08:46:00 -0000
Message-ID: <162314196081.421.7245016740916057645@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210608073603.2408-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210608073603.2408-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_DDI_buf_trans_cleaup_and_fixes_=28rev4=29?=
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

Series: drm/i915: DDI buf trans cleaup and fixes (rev4)
URL   : https://patchwork.freedesktop.org/series/89311/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
52f3229452fb drm/i915: s/intel/hsw/ for hsw/bdw/skl buf trans
92cd92c06299 drm/i915: Introduce hsw_get_buf_trans()
05c03e8ca7cf drm/i915: Wrap the platform specific buf trans structs into a union
be978537cd1a drm/i915: Rename dkl phy buf trans tables
-:101: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#101: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1403:
+		return adlp_dkl_phy_ddi_translations_dp_hbr2_hbr3;
+	} else {

total: 0 errors, 1 warnings, 0 checks, 82 lines checked
96b3ebba8a49 drm/i915: Wrap the buf trans tables into a struct
a7a82eabdb38 drm/i915: Introduce intel_get_buf_trans()
-:25: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#25: 
+ intel_get_buf_trans(const struct intel_ddi_buf_trans *ddi_translations, int *num_entries)

total: 0 errors, 1 warnings, 0 checks, 488 lines checked
edb3783fae3c drm/i915; Return the whole buf_trans struct from get_buf_trans()
-:256: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#256: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1465:
+	dpcnt_val |= DKL_TX_DE_EMPHASIS_COEFF(ddi_translations->entries[level].dkl.dkl_de_emphasis_control);

-:257: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#257: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1466:
+	dpcnt_val |= DKL_TX_PRESHOOT_COEFF(ddi_translations->entries[level].dkl.dkl_preshoot_control);

total: 0 errors, 2 warnings, 0 checks, 651 lines checked
a5fa7896aa86 drm/i915: Store the HDMI default entry in the bug trans struct
-:119: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#119: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1712:
+			ddi_translations = tgl_get_combo_buf_trans_hdmi(encoder, crtc_state, &n_entries);

-:123: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#123: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1714:
+			ddi_translations = tgl_get_dkl_buf_trans_hdmi(encoder, crtc_state, &n_entries);

-:127: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#127: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1717:
+			ddi_translations = icl_get_combo_buf_trans_hdmi(encoder, crtc_state, &n_entries);

-:131: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#131: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1719:
+			ddi_translations = icl_get_mg_buf_trans_hdmi(encoder, crtc_state, &n_entries);

total: 0 errors, 4 warnings, 0 checks, 141 lines checked
7dc2a2bae0f1 drm/i915: Introduce encoder->get_buf_trans()
-:408: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#408: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:268:
+							   const struct intel_crtc_state *crtc_state,

total: 0 errors, 1 warnings, 0 checks, 364 lines checked
9e161e21bd23 drm/i915: Clean up hsw/bdw/skl/kbl buf trans funcs
a024fc673e7d drm/i915: Introduce rkl_get_combo_buf_trans()
57bf0c2042ff drm/i915: Fix dg1 buf trans tables
5b87954c2ede drm/i915: Deduplicate icl DP HBR2 vs. eDP HBR3 table
5e5a65a61db3 drm/i915: Fix ehl edp hbr2 vswing table
7c13bdf62ebe drm/i915: Clean up jsl/ehl buf trans functions
-:141: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#141: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1432:
+		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3, n_entries);

total: 0 errors, 1 warnings, 0 checks, 123 lines checked
ebb8659f2fe4 drm/i915: Nuke buf_trans hdmi functions
80e1204635e7 drm/i915: Add the missing adls vswing tables
-:94: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1628:
+		return intel_get_buf_trans(&adls_combo_phy_ddi_translations_dp_hbr2_hbr3, n_entries);

-:110: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#110: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1644:
+		return intel_get_buf_trans(&tgl_combo_phy_ddi_translations_edp_hbr2_hobl, n_entries);

total: 0 errors, 2 warnings, 0 checks, 119 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
