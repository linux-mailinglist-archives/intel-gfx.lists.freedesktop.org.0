Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B50F13729E0
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 14:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117276EACC;
	Tue,  4 May 2021 12:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CBFED6EACC;
 Tue,  4 May 2021 12:13:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C45D0A00C9;
 Tue,  4 May 2021 12:13:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 04 May 2021 12:13:27 -0000
Message-ID: <162013040777.3295.13202933368504956359@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210421164849.12806-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210421164849.12806-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_DDI_buf_trans_cleaup_and_fixes_=28rev3=29?=
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

Series: drm/i915: DDI buf trans cleaup and fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/89311/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
41597e735d81 drm/i915: s/intel/hsw/ for hsw/bde/skl buf trans
f12ad854bbba drm/i915: Introduce hsw_get_buf_trans()
92c909de2a5f drm/i915: Wrap the platform specific buf trans structs into a union
c2887df88bd7 drm/i915: Rename dkl phy buf trans tables
681adec95a5c drm/i915: Wrap the buf trans tables into a struct
1e6b611520e0 drm/i915: Introduce intel_get_buf_trans()
-:25: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#25: 
+ intel_get_buf_trans(const struct intel_ddi_buf_trans *ddi_translations, int *num_entries)

total: 0 errors, 1 warnings, 0 checks, 473 lines checked
4aefdd5efa28 drm/i915; Return the whole buf_trans struct from get_buf_trans()
-:253: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#253: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1425:
+	dpcnt_val |= DKL_TX_DE_EMPHASIS_COEFF(ddi_translations->entries[level].dkl.dkl_de_emphasis_control);

-:254: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#254: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1426:
+	dpcnt_val |= DKL_TX_PRESHOOT_COEFF(ddi_translations->entries[level].dkl.dkl_preshoot_control);

total: 0 errors, 2 warnings, 0 checks, 630 lines checked
89125d4782bd drm/i915: Store the HDMI default entry in the bug trans struct
-:118: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#118: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1648:
+			ddi_translations = tgl_get_combo_buf_trans_hdmi(encoder, crtc_state, &n_entries);

-:122: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#122: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1650:
+			ddi_translations = tgl_get_dkl_buf_trans_hdmi(encoder, crtc_state, &n_entries);

-:126: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#126: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1653:
+			ddi_translations = icl_get_combo_buf_trans_hdmi(encoder, crtc_state, &n_entries);

-:130: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#130: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1655:
+			ddi_translations = icl_get_mg_buf_trans_hdmi(encoder, crtc_state, &n_entries);

total: 0 errors, 4 warnings, 0 checks, 141 lines checked
8d20186e4a5b drm/i915: Introduce encoder->get_buf_trans()
-:382: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#382: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:265:
+							   const struct intel_crtc_state *crtc_state,

total: 0 errors, 1 warnings, 0 checks, 342 lines checked
2f814a8d7445 drm/i915: Clean up hsw/bdw/skl/kbl buf trans funcs
bd2188204d3a drm/i915: Introduce rkl_get_combo_buf_trans()
ed4788c769b6 drm/i915: Fix dg1 buf trans tables
56b9a07d75d5 drm/i915: Deduplicate icl DP HBR2 vs. eDP HBR3 table
7f03efbc37b6 drm/i915: Fix ehl edp hbr2 vswing table
edbc05ee202f drm/i915: Clean up jsl/ehl buf trans functions
-:141: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#141: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1393:
+		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3, n_entries);

total: 0 errors, 1 warnings, 0 checks, 123 lines checked
5b1bb03f7c33 drm/i915: Nuke buf_trans hdmi functions
e8816b2c1069 drm/i915: Add the missing adls vswing tables
-:94: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1590:
+		return intel_get_buf_trans(&adls_combo_phy_ddi_translations_dp_hbr2_hbr3, n_entries);

-:110: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#110: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1606:
+		return intel_get_buf_trans(&tgl_combo_phy_ddi_translations_edp_hbr2_hobl, n_entries);

total: 0 errors, 2 warnings, 0 checks, 121 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
