Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A99AF51D781
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 14:23:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A218211207E;
	Fri,  6 May 2022 12:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ED300112065;
 Fri,  6 May 2022 12:23:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB65AA66C8;
 Fri,  6 May 2022 12:23:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 06 May 2022 12:23:13 -0000
Message-ID: <165183979394.18817.2302557556229074814@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1651830938.git.jani.nikula@intel.com>
In-Reply-To: <cover.1651830938.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_introduce_struct_drm=5Fedid_=28rev2=29?=
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

Series: drm/edid: introduce struct drm_edid (rev2)
URL   : https://patchwork.freedesktop.org/series/103665/
State : warning

== Summary ==

Error: dim checkpatch failed
49478b13e157 drm/edid: use else-if in CTA extension parsing
253ce252ebb2 drm/edid: convert drm_for_each_detailed_block() to edid iter
c8d7ad09c4aa drm/edid: add struct drm_edid container
8e89b03ed6a0 drm/edid: start propagating drm_edid to lower levels
-:32: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!drm_edid"
#32: FILE: drivers/gpu/drm/drm_edid.c:5823:
+	if (drm_edid == NULL) {

total: 0 errors, 0 warnings, 1 checks, 43 lines checked
da470150559b drm/edid: keep propagating drm_edid to display info
ab5bc257050a drm/edid: propagate drm_edid to drm_edid_to_eld()
a741fdf94b61 drm/edid: convert drm_edid_connector_update() to drm_edid fully
09ad0a7d5307 drm/edid: convert struct detailed_mode_closure to drm_edid
7b6af4143dd1 drm/edid: convert drm_mode_detailed() to drm_edid
eec9950bca92 drm/edid: convert drm_dmt_modes_for_range() to drm_edid
838b672aecc4 drm/edid: convert drm_gtf_modes_for_range() to drm_edid
3c5ab00b051b drm/edid: convert drm_cvt_modes_for_range() to drm_edid
4dcf8a802425 drm/edid: convert drm_mode_std() and children to drm_edid
ee06f362cf11 drm/edid: convert mode_in_range() and drm_monitor_supports_rb() to drm_edid
508406f1b73b drm/edid: convert get_monitor_name() to drm_edid
ccbe240b4563 drm/edid: convert drm_for_each_detailed_block() to drm_edid
-:33: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around drm_edid->edid->detailed_timings[i]
#33: FILE: drivers/gpu/drm/drm_edid.c:2594:
+		cb(&(drm_edid->edid->detailed_timings[i]), closure);

total: 0 errors, 0 warnings, 1 checks, 129 lines checked
64317639af4b drm/edid: add drm_edid helper for drm_edid_to_sad()
990d6dd977b3 drm/edid: add drm_edid helper for drm_edid_to_speaker_allocation()
8f27b7c1913d drm/edid: add drm_edid helper for drm_detect_hdmi_monitor()
c231a095dbf1 drm/edid: add drm_edid helper for drm_detect_monitor_audio()
6cdff6355337 drm/edid: convert cea_db_iter_edid_begin() to drm_edid
eaa41b2334bb drm/edid: convert drm_edid_iter_begin() to drm_edid
8b926179bfd0 drm/edid: add drm_edid helper for drm_update_tile_info()
e09326603eec drm/displayid: convert to drm_edid
e5bea8a49f5c drm/edid: convert version_greater() to drm_edid


