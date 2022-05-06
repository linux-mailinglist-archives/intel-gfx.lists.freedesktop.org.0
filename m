Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5215C51D646
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 13:12:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6AD91120C7;
	Fri,  6 May 2022 11:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BC8D1120C0;
 Fri,  6 May 2022 11:12:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1A397A0096;
 Fri,  6 May 2022 11:12:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 06 May 2022 11:12:06 -0000
Message-ID: <165183552608.18816.13720295247737519706@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1651830938.git.jani.nikula@intel.com>
In-Reply-To: <cover.1651830938.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_introduce_struct_drm=5Fedid?=
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

Series: drm/edid: introduce struct drm_edid
URL   : https://patchwork.freedesktop.org/series/103665/
State : warning

== Summary ==

Error: dim checkpatch failed
d886c554f1a8 drm/edid: use else-if in CTA extension parsing
4cbaa4d285a2 drm/edid: convert drm_for_each_detailed_block() to edid iter
5a728625bfb4 drm/edid: add struct drm_edid container
4f87a69d8848 drm/edid: start propagating drm_edid to lower levels
-:32: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!drm_edid"
#32: FILE: drivers/gpu/drm/drm_edid.c:5823:
+	if (drm_edid == NULL) {

total: 0 errors, 0 warnings, 1 checks, 43 lines checked
b3ace29ad531 drm/edid: keep propagating drm_edid to display info
c9fe2b156008 drm/edid: propagate drm_edid to drm_edid_to_eld()
b4b764dfd316 drm/edid: convert drm_edid_connector_update() to drm_edid fully
c25559b7e2cf drm/edid: convert struct detailed_mode_closure to drm_edid
0c4403bc2931 drm/edid: convert drm_mode_detailed() to drm_edid
68d3e834de47 drm/edid: convert drm_dmt_modes_for_range() to drm_edid
78e7de5f61ff drm/edid: convert drm_gtf_modes_for_range() to drm_edid
a1bce597df2d drm/edid: convert drm_cvt_modes_for_range() to drm_edid
727ea972b7bc drm/edid: convert drm_mode_std() and children to drm_edid
7a6eb5cdaf09 drm/edid: convert mode_in_range() and drm_monitor_supports_rb() to drm_edid
eb58907519c4 drm/edid: convert get_monitor_name() to drm_edid
07189e36c881 drm/edid: convert drm_for_each_detailed_block() to drm_edid
-:33: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around drm_edid->edid->detailed_timings[i]
#33: FILE: drivers/gpu/drm/drm_edid.c:2594:
+		cb(&(drm_edid->edid->detailed_timings[i]), closure);

total: 0 errors, 0 warnings, 1 checks, 129 lines checked
b3c6e86982ba drm/edid: add drm_edid helper for drm_edid_to_sad()
ae55ee36f30d drm/edid: add drm_edid helper for drm_edid_to_speaker_allocation()
3a0b663d0761 drm/edid: add drm_edid helper for drm_detect_hdmi_monitor()
47e3c35b33c5 drm/edid: add drm_edid helper for drm_detect_monitor_audio()
42f9ecf45903 drm/edid: convert cea_db_iter_edid_begin() to drm_edid
2f064307b607 drm/edid: convert drm_edid_iter_begin() to drm_edid
84170f97f641 drm/edid: add drm_edid helper for drm_update_tile_info()
4919fb4097cb drm/displayid: convert to drm_edid
45a163aa8771 drm/edid: convert version_greater() to drm_edid


