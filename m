Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8976A84AB0
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 19:07:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DA1610E34B;
	Thu, 10 Apr 2025 17:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 32c37dd7f93d (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C1FC10E34B;
 Thu, 10 Apr 2025 17:07:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_Eliminate_red?=
 =?utf-8?q?undant_drm=5Fformat=5Finfo_lookups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Apr 2025 17:07:28 -0000
Message-ID: <174430484804.366.5669900463310260411@32c37dd7f93d>
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

Series: drm: Eliminate redundant drm_format_info lookups
URL   : https://patchwork.freedesktop.org/series/147544/
State : warning

== Summary ==

Error: dim checkpatch failed
ef446fee01d7 drm: Pass pixel_format+modifier to .get_format_info()
38547e9c8681 drm: Pass pixel_format+modifier directly to drm_get_format_info()
9e94a892ea72 drm: Look up the format info earlier
2e868d525e92 drm: Pass the format info to .fb_create()
-:101: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#101: 
                                     const struct drm_mode_fb_cmd2 *mode_cmd);

total: 0 errors, 1 warnings, 0 checks, 412 lines checked
27608bd0b77e drm: Allow the caller to pass in the format info to drm_helper_mode_fill_fb_struct()
-:26: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#26: 
                                    const struct drm_mode_fb_cmd2 *mode_cmd)

total: 0 errors, 1 warnings, 0 checks, 157 lines checked
fc4ef53cdbab drm/malidp: Pass along the format info from .fb_create() malidp_verify_afbc_framebuffer_size()
241ee444d762 drm/gem: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
f1367dbd20be drm/gem/afbc: Eliminate redundant drm_get_format_info()
c83e62965bdf drm/amdgpu: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
f6f83e507988 drm/armada: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
5d5d6d379df0 drm/exynos: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
08658efcfef5 drm/gma500: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
35809f0fc563 drm/i915: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
268d83aa2b31 drm/komeda: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
4ba5181f4cec drm/msm: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
aeee68377f89 drm/tegra: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
9c308662eb4c drm/virtio: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
d652c4213bec drm/vmwgfx: Pass along the format info from .fb_create() to drm_helper_mode_fill_fb_struct()
5ca183878535 drm: Make passing of format info to drm_helper_mode_fill_fb_struct() mandatory


