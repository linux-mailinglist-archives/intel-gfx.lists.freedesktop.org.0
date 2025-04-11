Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC0BA866C2
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 22:06:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C15D910EC82;
	Fri, 11 Apr 2025 20:06:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 32c37dd7f93d (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5604C10EC82;
 Fri, 11 Apr 2025 20:06:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_Eliminate_red?=
 =?utf-8?q?undant_drm=5Fformat=5Finfo_lookups_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Apr 2025 20:06:27 -0000
Message-ID: <174440198734.5917.2758737215878868768@32c37dd7f93d>
X-Patchwork-Hint: ignore
References: <20250410163218.15130-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250410163218.15130-1-ville.syrjala@linux.intel.com>
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

Series: drm: Eliminate redundant drm_format_info lookups (rev6)
URL   : https://patchwork.freedesktop.org/series/147544/
State : warning

== Summary ==

Error: dim checkpatch failed
abeda0fbd094 drm: Pass pixel_format+modifier to .get_format_info()
b71e5958c8d2 drm: Pass pixel_format+modifier directly to drm_get_format_info()
c4a291094b57 drm: Look up the format info earlier
7f86ef5d89ec drm: Pass the format info to .fb_create()
-:101: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#101: 
                                     const struct drm_mode_fb_cmd2 *mode_cmd);

total: 0 errors, 1 warnings, 0 checks, 426 lines checked
2662ad5cb8e1 drm: Allow the caller to pass in the format info to drm_helper_mode_fill_fb_struct()
-:26: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#26: 
                                    const struct drm_mode_fb_cmd2 *mode_cmd)

total: 0 errors, 1 warnings, 0 checks, 157 lines checked
e48df0addbfd drm/malidp: Pass along the format info from .fb_create() malidp_verify_afbc_framebuffer_size()
d7b60d3cff03 drm/gem: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
0f3d1c0320c5 drm/gem/afbc: Eliminate redundant drm_get_format_info()
bf093c225033 drm/amdgpu: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
566310f72316 drm/armada: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
11cc7e69b4e1 drm/exynos: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
eccd9d90807b drm/gma500: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
b92708860615 drm/i915: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
c077734d7347 drm/komeda: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
9704549efb46 drm/msm: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
dfc8f4108490 drm/tegra: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
d9765921e1b7 drm/virtio: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
1e6d5d69b8d1 drm/vmwgfx: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
f696f20218bf drm: Make passing of format info to drm_helper_mode_fill_fb_struct() mandatory


