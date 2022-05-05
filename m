Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E518F51BF35
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 14:23:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F221910E15B;
	Thu,  5 May 2022 12:23:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D92F210E0A7;
 Thu,  5 May 2022 12:23:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8925A00FD;
 Thu,  5 May 2022 12:23:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 05 May 2022 12:23:28 -0000
Message-ID: <165175340885.7659.10408984298241651612@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1651569697.git.jani.nikula@intel.com>
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_CEA_data_block_iterators=2C_and_more_=28rev4=29?=
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

Series: drm/edid: CEA data block iterators, and more (rev4)
URL   : https://patchwork.freedesktop.org/series/102703/
State : warning

== Summary ==

Error: dim checkpatch failed
fe31b8863c44 drm/edid: reset display info in drm_add_edid_modes() for NULL edid
39c77f38058d drm/edid: check for HF-SCDB block
8a69009ae79e drm/edid: rename HDMI Forum VSDB to SCDS
-:103: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#103: FILE: drivers/gpu/drm/drm_edid.c:5207:
+			hdmi_dsc->total_chunk_kbytes = hf_scds[13] & DRM_EDID_DSC_TOTAL_CHUNK_KBYTES;

total: 0 errors, 1 warnings, 0 checks, 103 lines checked
49da01f0ed8d drm/edid: clean up CTA data block tag definitions
f04e1aa0bd2c drm/edid: add iterator for EDID base and extension blocks
-:62: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#62: FILE: drivers/gpu/drm/drm_edid.c:1642:
+#define drm_edid_iter_for_each(__block, __iter)			\
+	while (((__block) = __drm_edid_iter_next(__iter)))

total: 1 errors, 0 warnings, 0 checks, 54 lines checked
cbc4981236d3 drm/edid: add iterator for CTA data blocks
-:229: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#229: FILE: drivers/gpu/drm/drm_edid.c:4579:
+#define cea_db_iter_for_each(__db, __iter) \
+	while (((__db) = __cea_db_iter_next(__iter)))

total: 1 errors, 0 warnings, 0 checks, 220 lines checked
c72627579501 drm/edid: clean up cea_db_is_*() functions
903a8909d92a drm/edid: convert add_cea_modes() to use cea db iter
461e615f4e9d drm/edid: convert drm_edid_to_speaker_allocation() to use cea db iter
698df3348a3f drm/edid: convert drm_edid_to_sad() to use cea db iter
b15f1602d640 drm/edid: convert drm_detect_hdmi_monitor() to use cea db iter
c0126566d38d drm/edid: convert drm_detect_monitor_audio() to use cea db iter
5a6cd0d012cd drm/edid: convert drm_parse_cea_ext() to use cea db iter
92fad37e90ba drm/edid: convert drm_edid_to_eld() to use cea db iter
68f011828dda drm/edid: sunset the old unused cea data block iterators
db54ca9aa208 drm/edid: restore some type safety to cea_db_*() functions
00538c86c458 drm/edid: detect basic audio in all CEA extensions
4fc9a9dbcabd drm/edid: detect color formats and CTA revision in all CTA extensions
e8a93157bd66 drm/edid: skip CTA extension scan in drm_edid_to_eld() just for CTA rev
5e689ae0ae0e drm/edid: sunset drm_find_cea_extension()


