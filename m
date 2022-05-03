Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 088C4518464
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 14:35:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8952210E9E1;
	Tue,  3 May 2022 12:35:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C9BF10FB6B;
 Tue,  3 May 2022 12:35:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7F4BDA7DFC;
 Tue,  3 May 2022 12:35:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 03 May 2022 12:35:51 -0000
Message-ID: <165158135151.30557.897228503941572459@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1651569697.git.jani.nikula@intel.com>
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_CEA_data_block_iterators=2C_and_more_=28rev3=29?=
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

Series: drm/edid: CEA data block iterators, and more (rev3)
URL   : https://patchwork.freedesktop.org/series/102703/
State : warning

== Summary ==

Error: dim checkpatch failed
aadd541b02ce drm/edid: reset display info in drm_add_edid_modes() for NULL edid
046cc3c84c91 drm/edid: check for HF-SCDB block
3efb1f6ff585 drm/edid: rename HDMI Forum VSDB to SCDS
-:102: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#102: FILE: drivers/gpu/drm/drm_edid.c:5207:
+			hdmi_dsc->total_chunk_kbytes = hf_scds[13] & DRM_EDID_DSC_TOTAL_CHUNK_KBYTES;

total: 0 errors, 1 warnings, 0 checks, 103 lines checked
54c1067c90ae drm/edid: clean up CTA data block tag definitions
bc5e351a67e9 drm/edid: add iterator for EDID base and extension blocks
-:62: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#62: FILE: drivers/gpu/drm/drm_edid.c:1642:
+#define drm_edid_iter_for_each(__block, __iter)			\
+	while (((__block) = __drm_edid_iter_next(__iter)))

total: 1 errors, 0 warnings, 0 checks, 54 lines checked
9e956b01d914 drm/edid: add iterator for CTA data blocks
-:229: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#229: FILE: drivers/gpu/drm/drm_edid.c:4579:
+#define cea_db_iter_for_each(__db, __iter) \
+	while (((__db) = __cea_db_iter_next(__iter)))

total: 1 errors, 0 warnings, 0 checks, 220 lines checked
f22a46dabd41 drm/edid: clean up cea_db_is_*() functions
a076db126ba3 drm/edid: convert add_cea_modes() to use cea db iter
212321de498e drm/edid: convert drm_edid_to_speaker_allocation() to use cea db iter
d07366d8e040 drm/edid: convert drm_edid_to_sad() to use cea db iter
e1eca6afb6fe drm/edid: convert drm_detect_hdmi_monitor() to use cea db iter
bf551c27d108 drm/edid: convert drm_detect_monitor_audio() to use cea db iter
15069bdf38fa drm/edid: convert drm_parse_cea_ext() to use cea db iter
ec618d6bfac1 drm/edid: convert drm_edid_to_eld() to use cea db iter
be947a4b6240 drm/edid: sunset the old unused cea data block iterators
d3286d135d63 drm/edid: restore some type safety to cea_db_*() functions
6f0a19051f83 drm/edid: detect basic audio in all CEA extensions
9055409d5613 drm/edid: detect color formats and CTA revision in all CTA extensions
2c62cf957ad9 drm/edid: skip CTA extension scan in drm_edid_to_eld() just for CTA rev
7c461c0a58d3 drm/edid: sunset drm_find_cea_extension()


