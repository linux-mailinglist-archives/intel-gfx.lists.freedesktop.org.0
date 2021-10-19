Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F6D4341EE
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 01:15:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58BA96E204;
	Tue, 19 Oct 2021 23:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 628FD6E1E9;
 Tue, 19 Oct 2021 23:15:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28D2EAADD7;
 Tue, 19 Oct 2021 23:15:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Claudio Suarez" <cssk@net-c.es>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Oct 2021 23:15:01 -0000
Message-ID: <163468530113.5186.11989691543909112780@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211016184226.3862-1-cssk@net-c.es>
In-Reply-To: <20211016184226.3862-1-cssk@net-c.es>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_replace_drm=5Fdetect=5Fhdmi=5Fmonitor=28=29_with_drm=5Fdisp?=
 =?utf-8?b?bGF5X2luZm8uaXNfaGRtaSAocmV2NSk=?=
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

Series: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi (rev5)
URL   : https://patchwork.freedesktop.org/series/95880/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
34716383fea8 gpu/drm: make drm_add_edid_modes() consistent when updating connector->display_info
1180ca83baa8 drm/vc4: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
6467b8c22e2e drm/radeon: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
-:19: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#19: 
drm_get_edid() - which internally calls drm_connector_update_edid_property().

total: 0 errors, 1 warnings, 0 checks, 111 lines checked
4f4be9d8da74 drm/tegra: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
4e2489b2ac97 drm/gma500: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
d343d69908cd drm/exynos: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
a43989d686a3 drm/msm: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
045c9182b766 drm/sun4i: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
199244a0b398 drm/sti: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
7c1d51956f94 drm/rockchip: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
5f65b0c735df drm/bridge: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
69ae884f14bd drm/nouveau: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
415fad5a7f91 drm/i915: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi


