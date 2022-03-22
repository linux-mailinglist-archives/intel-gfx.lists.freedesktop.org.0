Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C6B4E48EE
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 23:07:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B48910E0D7;
	Tue, 22 Mar 2022 22:07:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7B1C810E0D7;
 Tue, 22 Mar 2022 22:07:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77C05A00A0;
 Tue, 22 Mar 2022 22:07:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 22 Mar 2022 22:07:54 -0000
Message-ID: <164798687446.20010.6599846590645776226@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1647985054.git.jani.nikula@intel.com>
In-Reply-To: <cover.1647985054.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_overhaul_CEA_data_block_iteration?=
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

Series: drm/edid: overhaul CEA data block iteration
URL   : https://patchwork.freedesktop.org/series/101659/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a1fd8fea9724 drm/edid: add drm_edid_extension_block_count() and drm_edid_size()
a04b9a47ee0e drm: use drm_edid_extension_block_count() and drm_edid_size()
-:75: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!edid"
#75: FILE: drivers/gpu/drm/drm_edid.c:3356:
+	if (edid == NULL || drm_edid_extension_block_count(edid) == 0)

total: 0 errors, 0 warnings, 1 checks, 63 lines checked
a946b4b8093f drm/edid: clean up CEA data block tag definitions
0d0acb1b0708 drm/edid: add iterator for EDID base and extension blocks
-:56: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#56: FILE: drivers/gpu/drm/drm_edid.c:3389:
+#define drm_edid_iter_for_each(__block, __iter)			\
+	while (((__block) = __drm_edid_iter_next(__iter)))

total: 1 errors, 0 warnings, 0 checks, 52 lines checked
4c530a148bfe drm/edid: add iterator for CEA data blocks
-:219: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#219: FILE: drivers/gpu/drm/drm_edid.c:4435:
+#define cea_db_iter_for_each(__db, __iter) \
+	while (((__db) = __cea_db_iter_next(__iter)))

total: 1 errors, 0 warnings, 0 checks, 216 lines checked
8f74ddc1652a drm/edid: clean up cea_db_is_*() functions
db6dc8dd41fb drm/edid: convert add_cea_modes() to use cea db iter
d7bef300e712 drm/edid: convert drm_edid_to_speaker_allocation() to use cea db iter
1d63449f0022 drm/edid: convert drm_edid_to_sad() to use cea db iter
22a1b23994a7 drm/edid: convert drm_detect_hdmi_monitor() to use cea db iter
ffdd375908fd drm/edid: convert drm_detect_monitor_audio() to use cea db iter
ade266ca2a2d drm/edid: convert drm_parse_cea_ext() to use cea db iter
bdf077ccb603 drm/edid: convert drm_edid_to_eld() to use cea db iter
0ba046c15f17 drm/edid: sunset the old unused cea data block iterators
e3edc2173219 drm/edid: restore some type safety to cea_db_*() functions
3fc75617d81c drm/edid: detect basic audio only on CEA extension
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
References: https://patchwork.freedesktop.org/patch/msgid/20220321044330.27723-1-cooper.chiou@intel.com

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
6fa348a171ae drm/edid: detect color formats and CEA revision only on CEA extension
13cc175a8ee2 drm/edid: skip CEA extension scan in drm_edid_to_eld() just for CEA rev
a6b8101aaa65 drm/edid: sunset drm_find_cea_extension()


