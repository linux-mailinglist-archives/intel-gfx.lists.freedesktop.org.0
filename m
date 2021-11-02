Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD25644305A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 15:25:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C646FFE7;
	Tue,  2 Nov 2021 14:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC7C96FFE7;
 Tue,  2 Nov 2021 14:25:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7A19A8830;
 Tue,  2 Nov 2021 14:25:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Claudio Suarez" <cssk@net-c.es>
Date: Tue, 02 Nov 2021 14:25:37 -0000
Message-ID: <163586313765.15502.4885217183547453343@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211016184226.3862-1-cssk@net-c.es>
In-Reply-To: <20211016184226.3862-1-cssk@net-c.es>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_replace_drm=5Fdetect=5Fhdmi=5Fmonitor=28=29_with_drm=5Fdisp?=
 =?utf-8?b?bGF5X2luZm8uaXNfaGRtaSAocmV2Nik=?=
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

Series: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi (rev6)
URL   : https://patchwork.freedesktop.org/series/95880/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
eb299b5af8c2 gpu/drm: make drm_add_edid_modes() consistent when updating connector->display_info
003659b18480 drm/vc4: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
94bf3778a86a drm/radeon: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
-:19: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#19: 
drm_get_edid() - which internally calls drm_connector_update_edid_property().

total: 0 errors, 1 warnings, 0 checks, 111 lines checked
c3a418e934c6 drm/tegra: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
43f3a7df7086 drm/gma500: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
a020dbb5ce04 drm/exynos: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
b86160a2fbe3 drm/msm: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
4a13b1f0c49c drm/sun4i: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
0a69a03128bc drm/sti: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
3c336a5dca86 drm/rockchip: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
4c8140582eeb drm/bridge: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
77cf5cf45f0c drm/nouveau: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
aa8dfbaac97b drm/i915: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'Commit a92d083d08b0 ("drm/edid: Add flag to drm_display_info to identify HDMI sinks")'
#7: 
Commit a92d083d08b0 created the new flag is_hdmi in drm_display_info

-:19: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 5186421cbfe2 ("drm: Introduce epoch counter to drm_connector")'
#19: 
drm_connector_update_edid_property(). Since commit 5186421cbfe2,

total: 2 errors, 0 warnings, 0 checks, 18 lines checked


