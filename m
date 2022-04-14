Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF3B5019AF
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 19:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492C810F556;
	Thu, 14 Apr 2022 17:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D07C910F556;
 Thu, 14 Apr 2022 17:10:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D29BBAA3D8;
 Thu, 14 Apr 2022 17:10:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 14 Apr 2022 17:10:48 -0000
Message-ID: <164995624886.1347.4351349649696207248@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1649948562.git.jani.nikula@intel.com>
In-Reply-To: <cover.1649948562.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_CEA_data_block_iterators=2C_and_more_=28rev2=29?=
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

Series: drm/edid: CEA data block iterators, and more (rev2)
URL   : https://patchwork.freedesktop.org/series/102703/
State : warning

== Summary ==

Error: dim checkpatch failed
3bcd5f30a3e4 drm/edid: reset display info in drm_add_edid_modes() for NULL edid
4bddacab36a6 drm/edid: check for HF-SCDB block
ffce1de31d0c drm/edid: clean up CTA data block tag definitions
8b09476b13f9 drm/edid: add iterator for EDID base and extension blocks
-:62: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#62: FILE: drivers/gpu/drm/drm_edid.c:1643:
+#define drm_edid_iter_for_each(__block, __iter)			\
+	while (((__block) = __drm_edid_iter_next(__iter)))

total: 1 errors, 0 warnings, 0 checks, 54 lines checked
f55960efe03f drm/edid: add iterator for CTA data blocks
-:229: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#229: FILE: drivers/gpu/drm/drm_edid.c:4603:
+#define cea_db_iter_for_each(__db, __iter) \
+	while (((__db) = __cea_db_iter_next(__iter)))

total: 1 errors, 0 warnings, 0 checks, 220 lines checked
a14e73077a45 drm/edid: clean up cea_db_is_*() functions
f918932a3f48 drm/edid: convert add_cea_modes() to use cea db iter
3cfc1783ced4 drm/edid: convert drm_edid_to_speaker_allocation() to use cea db iter
2df23cfc5742 drm/edid: convert drm_edid_to_sad() to use cea db iter
9544c3161dca drm/edid: convert drm_detect_hdmi_monitor() to use cea db iter
2d7d4c5c0364 drm/edid: convert drm_detect_monitor_audio() to use cea db iter
f744ab703d1e drm/edid: convert drm_parse_cea_ext() to use cea db iter
005e994b420a drm/edid: convert drm_edid_to_eld() to use cea db iter
1ae45454e89a drm/edid: sunset the old unused cea data block iterators
cd1b5694e25f drm/edid: restore some type safety to cea_db_*() functions
7ccdea6c5c41 drm/edid: detect basic audio in all CEA extensions
6a676c921789 drm/edid: detect color formats and CTA revision in all CTA extensions
a305f87dfba9 drm/edid: skip CTA extension scan in drm_edid_to_eld() just for CTA rev
f6c85da3774d drm/edid: sunset drm_find_cea_extension()


