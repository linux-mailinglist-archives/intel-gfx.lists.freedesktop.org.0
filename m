Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AC14309F9
	for <lists+intel-gfx@lfdr.de>; Sun, 17 Oct 2021 17:24:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B6536E5D5;
	Sun, 17 Oct 2021 15:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 245456E5D4;
 Sun, 17 Oct 2021 15:24:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 05558A0169;
 Sun, 17 Oct 2021 15:24:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Claudio Suarez" <cssk@net-c.es>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 17 Oct 2021 15:24:46 -0000
Message-ID: <163448428698.7564.7410653441840482668@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211016184226.3862-1-cssk@net-c.es>
In-Reply-To: <20211016184226.3862-1-cssk@net-c.es>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_replace_drm=5Fdetect=5Fhdmi=5Fmonitor=28=29_with_drm=5Fdisp?=
 =?utf-8?b?bGF5X2luZm8uaXNfaGRtaSAocmV2Myk=?=
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

Series: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi (rev3)
URL   : https://patchwork.freedesktop.org/series/95880/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bcbb68918d43 gpu/drm: make drm_add_edid_modes() consistent when updating connector->display_info
25340326dac7 drm/vc4: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
65d2ced8ec91 drm/radeon: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
-:19: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#19: 
drm_get_edid() - which internally calls drm_connector_update_edid_property().

total: 0 errors, 1 warnings, 0 checks, 111 lines checked
f53d37f02d12 drm/tegra: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
0a005136d282 drm/gma500: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
b6048d04f9ef drm/exynos: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
fd6c2adeaad4 drm/msm: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
5784e84bbf18 drm/sun4i: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
08aa49298fbd drm/sti: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
f90cf0fc32c7 drm/rockchip: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
4540f3464323 drm/bridge: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
4c633affde23 drm/nouveau: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
643066d1ab7b drm/i915: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi


