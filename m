Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C53C45014BD
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 17:33:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE0710E46B;
	Thu, 14 Apr 2022 15:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A827110E46B;
 Thu, 14 Apr 2022 15:33:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4E77AADD1;
 Thu, 14 Apr 2022 15:33:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 14 Apr 2022 15:33:10 -0000
Message-ID: <164995039067.1345.16348119577911831159@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1649948562.git.jani.nikula@intel.com>
In-Reply-To: <cover.1649948562.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_CEA_data_block_iterators=2C_and_more?=
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

Series: drm/edid: CEA data block iterators, and more
URL   : https://patchwork.freedesktop.org/series/102703/
State : warning

== Summary ==

Error: dim checkpatch failed
3c1721b51008 drm/edid: reset display info in drm_add_edid_modes() for NULL edid
819f872f2dc6 drm/edid: check for HF-SCDB block
7e17e23267ca drm/edid: clean up CTA data block tag definitions
8e937c02955c drm/edid: add iterator for EDID base and extension blocks
-:62: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#62: FILE: drivers/gpu/drm/drm_edid.c:1643:
+#define drm_edid_iter_for_each(__block, __iter)			\
+	while (((__block) = __drm_edid_iter_next(__iter)))

total: 1 errors, 0 warnings, 0 checks, 54 lines checked
d595d79740f6 drm/edid: add iterator for CTA data blocks
-:229: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#229: FILE: drivers/gpu/drm/drm_edid.c:4603:
+#define cea_db_iter_for_each(__db, __iter) \
+	while (((__db) = __cea_db_iter_next(__iter)))

total: 1 errors, 0 warnings, 0 checks, 220 lines checked
12b81bc86769 drm/edid: clean up cea_db_is_*() functions
4004dcf3a2b4 drm/edid: convert add_cea_modes() to use cea db iter
01d4e0ae9328 drm/edid: convert drm_edid_to_speaker_allocation() to use cea db iter
9abcb5c73959 drm/edid: convert drm_edid_to_sad() to use cea db iter
9126fc808a23 drm/edid: convert drm_detect_hdmi_monitor() to use cea db iter
368fe47462d6 drm/edid: convert drm_detect_monitor_audio() to use cea db iter
9b633e97dbda drm/edid: convert drm_parse_cea_ext() to use cea db iter
979dd78e0741 drm/edid: convert drm_edid_to_eld() to use cea db iter
4cba3f211ab2 drm/edid: sunset the old unused cea data block iterators
bc93fd68b1f8 drm/edid: restore some type safety to cea_db_*() functions
2496ed9b0d8f drm/edid: detect basic audio in all CEA extensions
7a47b72aa703 drm/edid: detect color formats and CTA revision in all CTA extensions
ccb8bb4176d0 drm/edid: skip CTA extension scan in drm_edid_to_eld() just for CTA rev
839b27b73cdc drm/edid: sunset drm_find_cea_extension()


