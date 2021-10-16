Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED45C4304CD
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Oct 2021 21:36:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 067906E4B5;
	Sat, 16 Oct 2021 19:36:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 125216E4BA;
 Sat, 16 Oct 2021 19:36:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0BCD0A9A42;
 Sat, 16 Oct 2021 19:36:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Claudio Suarez" <cssk@net-c.es>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 16 Oct 2021 19:36:44 -0000
Message-ID: <163441300404.20372.5119192588713709101@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211016184226.3862-1-cssk@net-c.es>
In-Reply-To: <20211016184226.3862-1-cssk@net-c.es>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_replace_drm=5Fdetect=5Fhdmi=5Fmonitor=28=29_with_drm=5Fdisp?=
 =?utf-8?b?bGF5X2luZm8uaXNfaGRtaSAocmV2Mik=?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi (rev2)
URL   : https://patchwork.freedesktop.org/series/95880/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7b39eddd53ad gpu/drm: make drm_add_edid_modes() consistent when updating connector->display_info
46dbab3185c1 drm/vc4: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
ffa81a725bbf drm/radeon: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
-:19: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#19: 
drm_get_edid() - which internally calls drm_connector_update_edid_property().

total: 0 errors, 1 warnings, 0 checks, 111 lines checked
6cbe78362dff drm/tegra: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
9364f4f058dc drm/gma500: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
26861ada9f8f drm/exynos: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
38784a13b7f3 drm/msm: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
6b995911e7af drm/sun4i: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
d75d232101ee drm/sti: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
cfbb96664239 drm/rockchip: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
c9cb54c0941a drm/bridge: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
ef8c940adad0 drm/nouveau: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
9fe31441fd76 drm/i915: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi


