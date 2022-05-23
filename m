Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F34EC53153B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 19:26:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CA0B10FB3D;
	Mon, 23 May 2022 17:26:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3AD2B10FB3D;
 Mon, 23 May 2022 17:26:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2F693AA0ED;
 Mon, 23 May 2022 17:26:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1919295296694194067=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Badal Nilawar" <badal.nilawar@intel.com>
Date: Mon, 23 May 2022 17:26:56 -0000
Message-ID: <165332681615.9279.17969337998987512319@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220523110841.1151431-1-badal.nilawar@intel.com>
In-Reply-To: <20220523110841.1151431-1-badal.nilawar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_HWMON_support?=
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

--===============1919295296694194067==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add HWMON support
URL   : https://patchwork.freedesktop.org/series/104278/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11691 -> Patchwork_104278v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_104278v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_104278v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/index.html

Participating hosts (45 -> 44)
------------------------------

  Additional (2): bat-dg2-8 fi-tgl-u2 
  Missing    (3): fi-bsw-kefka fi-icl-u2 fi-bsw-n3050 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104278v1:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11691 and Patchwork_104278v1:

### New IGT tests (112) ###

  * igt@dmabuf@all@dma_fence_chain:
    - Statuses : 36 pass(s)
    - Exec time: [5.22, 7.62] s

  * igt@gem_busy@busy:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_busy@busy@all:
    - Statuses : 42 pass(s)
    - Exec time: [0.01, 0.32] s

  * igt@gem_exec_parallel@engines:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_parallel@engines@basic:
    - Statuses : 41 pass(s) 1 skip(s)
    - Exec time: [0.00, 10.67] s

  * igt@gem_exec_parallel@engines@contexts:
    - Statuses : 39 pass(s) 3 skip(s)
    - Exec time: [0.00, 16.30] s

  * igt@gem_exec_parallel@engines@fds:
    - Statuses : 37 pass(s) 5 skip(s)
    - Exec time: [0.0, 15.30] s

  * igt@gem_exec_store@basic:
    - Statuses : 41 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.17] s

  * igt@gem_wait@busy:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_wait@busy@all:
    - Statuses : 42 pass(s)
    - Exec time: [0.51, 0.60] s

  * igt@gem_wait@wait:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_wait@wait@all:
    - Statuses : 42 pass(s)
    - Exec time: [1.01, 1.11] s

  * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
    - Statuses : 3 pass(s)
    - Exec time: [0.70, 0.85] s

  * igt@kms_flip@basic-flip-vs-dpms@a-dp2:
    - Statuses : 3 pass(s)
    - Exec time: [0.61, 0.74] s

  * igt@kms_flip@basic-flip-vs-dpms@a-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.55, 2.11] s

  * igt@kms_flip@basic-flip-vs-dpms@a-edp1:
    - Statuses : 1 dmesg-warn(s) 8 pass(s)
    - Exec time: [2.66, 3.43] s

  * igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1:
    - Statuses : 9 pass(s)
    - Exec time: [0.64, 0.88] s

  * igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.65, 1.08] s

  * igt@kms_flip@basic-flip-vs-dpms@a-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.78] s

  * igt@kms_flip@basic-flip-vs-dpms@a-vga1:
    - Statuses : 10 pass(s)
    - Exec time: [0.68, 1.70] s

  * igt@kms_flip@basic-flip-vs-dpms@b-dp1:
    - Statuses : 3 pass(s)
    - Exec time: [0.70, 0.81] s

  * igt@kms_flip@basic-flip-vs-dpms@b-dp2:
    - Statuses : 3 pass(s)
    - Exec time: [0.60, 0.73] s

  * igt@kms_flip@basic-flip-vs-dpms@b-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.35, 1.67] s

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - Statuses : 9 pass(s)
    - Exec time: [2.29, 2.51] s

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:
    - Statuses : 9 pass(s)
    - Exec time: [0.64, 0.85] s

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.63, 1.02] s

  * igt@kms_flip@basic-flip-vs-dpms@b-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.41] s

  * igt@kms_flip@basic-flip-vs-dpms@b-vga1:
    - Statuses : 10 pass(s)
    - Exec time: [0.65, 1.37] s

  * igt@kms_flip@basic-flip-vs-dpms@c-dp1:
    - Statuses : 2 pass(s)
    - Exec time: [0.77, 0.81] s

  * igt@kms_flip@basic-flip-vs-dpms@c-dp2:
    - Statuses : 3 pass(s)
    - Exec time: [0.60, 0.72] s

  * igt@kms_flip@basic-flip-vs-dpms@c-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.34, 1.64] s

  * igt@kms_flip@basic-flip-vs-dpms@c-edp1:
    - Statuses : 9 pass(s)
    - Exec time: [2.30, 2.51] s

  * igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1:
    - Statuses : 7 pass(s)
    - Exec time: [0.65, 0.85] s

  * igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.61, 1.08] s

  * igt@kms_flip@basic-flip-vs-dpms@c-vga1:
    - Statuses : 3 pass(s)
    - Exec time: [0.72, 0.86] s

  * igt@kms_flip@basic-flip-vs-dpms@d-dsi1:
    - Statuses : 1 pass(s)
    - Exec time: [1.61] s

  * igt@kms_flip@basic-flip-vs-dpms@d-edp1:
    - Statuses : 3 pass(s)
    - Exec time: [2.30, 2.37] s

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - Statuses : 3 pass(s)
    - Exec time: [0.72, 0.87] s

  * igt@kms_flip@basic-flip-vs-modeset@a-dp2:
    - Statuses : 3 pass(s)
    - Exec time: [0.62, 0.75] s

  * igt@kms_flip@basic-flip-vs-modeset@a-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.56, 2.10] s

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - Statuses : 2 dmesg-warn(s) 7 pass(s)
    - Exec time: [2.66, 3.81] s

  * igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1:
    - Statuses : 9 pass(s)
    - Exec time: [0.71, 0.91] s

  * igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.66, 1.16] s

  * igt@kms_flip@basic-flip-vs-modeset@a-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.80] s

  * igt@kms_flip@basic-flip-vs-modeset@a-vga1:
    - Statuses : 10 pass(s)
    - Exec time: [0.71, 1.59] s

  * igt@kms_flip@basic-flip-vs-modeset@b-dp1:
    - Statuses : 3 pass(s)
    - Exec time: [0.71, 0.79] s

  * igt@kms_flip@basic-flip-vs-modeset@b-dp2:
    - Statuses : 3 pass(s)
    - Exec time: [0.62, 0.73] s

  * igt@kms_flip@basic-flip-vs-modeset@b-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.34, 1.59] s

  * igt@kms_flip@basic-flip-vs-modeset@b-edp1:
    - Statuses : 9 pass(s)
    - Exec time: [2.28, 3.46] s

  * igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a1:
    - Statuses : 9 pass(s)
    - Exec time: [0.60, 0.81] s

  * igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.59, 0.91] s

  * igt@kms_flip@basic-flip-vs-modeset@b-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.40] s

  * igt@kms_flip@basic-flip-vs-modeset@b-vga1:
    - Statuses : 10 pass(s)
    - Exec time: [0.66, 1.28] s

  * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
    - Statuses : 2 pass(s)
    - Exec time: [0.76, 0.80] s

  * igt@kms_flip@basic-flip-vs-modeset@c-dp2:
    - Statuses : 3 pass(s)
    - Exec time: [0.61, 0.75] s

  * igt@kms_flip@basic-flip-vs-modeset@c-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.34, 1.55] s

  * igt@kms_flip@basic-flip-vs-modeset@c-edp1:
    - Statuses : 9 pass(s)
    - Exec time: [2.31, 3.45] s

  * igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a1:
    - Statuses : 7 pass(s)
    - Exec time: [0.59, 0.81] s

  * igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.59, 0.90] s

  * igt@kms_flip@basic-flip-vs-modeset@c-vga1:
    - Statuses : 3 pass(s)
    - Exec time: [0.73, 0.88] s

  * igt@kms_flip@basic-flip-vs-modeset@d-dsi1:
    - Statuses : 1 pass(s)
    - Exec time: [1.58] s

  * igt@kms_flip@basic-flip-vs-modeset@d-edp1:
    - Statuses : 3 pass(s)
    - Exec time: [2.37, 3.46] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
    - Statuses : 3 pass(s)
    - Exec time: [1.04, 1.16] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp2:
    - Statuses : 3 pass(s)
    - Exec time: [0.90, 1.07] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.87, 1.97] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - Statuses : 9 pass(s)
    - Exec time: [1.97, 2.75] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1:
    - Statuses : 9 pass(s)
    - Exec time: [0.97, 1.25] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.95, 1.41] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.97] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:
    - Statuses : 10 pass(s)
    - Exec time: [1.02, 1.88] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-dp1:
    - Statuses : 3 pass(s)
    - Exec time: [1.02, 1.15] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-dp2:
    - Statuses : 3 pass(s)
    - Exec time: [0.90, 1.07] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.72, 1.90] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - Statuses : 9 pass(s)
    - Exec time: [1.98, 2.50] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a1:
    - Statuses : 9 pass(s)
    - Exec time: [0.92, 1.20] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.90, 1.31] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.91] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1:
    - Statuses : 10 pass(s)
    - Exec time: [0.96, 1.63] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1:
    - Statuses : 2 pass(s)
    - Exec time: [1.0, 1.01] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2:
    - Statuses : 3 pass(s)
    - Exec time: [0.90, 1.07] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.67, 1.90] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - Statuses : 9 pass(s)
    - Exec time: [1.97, 2.50] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a1:
    - Statuses : 7 pass(s)
    - Exec time: [0.90, 1.19] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.90, 1.32] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-vga1:
    - Statuses : 3 pass(s)
    - Exec time: [1.12, 1.16] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-dsi1:
    - Statuses : 1 pass(s)
    - Exec time: [1.65] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1:
    - Statuses : 3 pass(s)
    - Exec time: [1.93, 2.24] s

  * igt@kms_flip@basic-plain-flip@a-dp1:
    - Statuses : 3 pass(s)
    - Exec time: [0.73, 0.80] s

  * igt@kms_flip@basic-plain-flip@a-dp2:
    - Statuses : 3 pass(s)
    - Exec time: [0.62, 0.70] s

  * igt@kms_flip@basic-plain-flip@a-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.52, 1.63] s

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - Statuses : 9 pass(s)
    - Exec time: [1.75, 2.47] s

  * igt@kms_flip@basic-plain-flip@a-hdmi-a1:
    - Statuses : 9 pass(s)
    - Exec time: [0.68, 0.88] s

  * igt@kms_flip@basic-plain-flip@a-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.67, 1.13] s

  * igt@kms_flip@basic-plain-flip@a-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.58] s

  * igt@kms_flip@basic-plain-flip@a-vga1:
    - Statuses : 10 pass(s)
    - Exec time: [0.74, 1.59] s

  * igt@kms_flip@basic-plain-flip@b-dp1:
    - Statuses : 3 pass(s)
    - Exec time: [0.71, 0.72] s

  * igt@kms_flip@basic-plain-flip@b-dp2:
    - Statuses : 3 pass(s)
    - Exec time: [0.62, 0.68] s

  * igt@kms_flip@basic-plain-flip@b-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.43, 1.47] s

  * igt@kms_flip@basic-plain-flip@b-edp1:
    - Statuses : 9 pass(s)
    - Exec time: [1.72, 2.25] s

  * igt@kms_flip@basic-plain-flip@b-hdmi-a1:
    - Statuses : 9 pass(s)
    - Exec time: [0.61, 0.83] s

  * igt@kms_flip@basic-plain-flip@b-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.61, 1.02] s

  * igt@kms_flip@basic-plain-flip@b-lvds1:
    - Statuses : 1 pass(s)
    - Exec time: [1.50] s

  * igt@kms_flip@basic-plain-flip@b-vga1:
    - Statuses : 10 pass(s)
    - Exec time: [0.67, 1.38] s

  * igt@kms_flip@basic-plain-flip@c-dp1:
    - Statuses : 2 pass(s)
    - Exec time: [0.72, 0.73] s

  * igt@kms_flip@basic-plain-flip@c-dp2:
    - Statuses : 3 pass(s)
    - Exec time: [0.62, 0.69] s

  * igt@kms_flip@basic-plain-flip@c-dsi1:
    - Statuses : 3 pass(s)
    - Exec time: [1.43, 1.51] s

  * igt@kms_flip@basic-plain-flip@c-edp1:
    - Statuses : 9 pass(s)
    - Exec time: [1.73, 2.24] s

  * igt@kms_flip@basic-plain-flip@c-hdmi-a1:
    - Statuses : 7 pass(s)
    - Exec time: [0.61, 0.83] s

  * igt@kms_flip@basic-plain-flip@c-hdmi-a2:
    - Statuses : 5 pass(s)
    - Exec time: [0.61, 1.03] s

  * igt@kms_flip@basic-plain-flip@c-vga1:
    - Statuses : 3 pass(s)
    - Exec time: [0.71, 0.84] s

  * igt@kms_flip@basic-plain-flip@d-dsi1:
    - Statuses : 1 pass(s)
    - Exec time: [1.46] s

  * igt@kms_flip@basic-plain-flip@d-edp1:
    - Statuses : 3 pass(s)
    - Exec time: [1.74, 1.78] s

  

Known issues
------------

  Here are the changes found in Patchwork_104278v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-u2:          NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [PASS][4] -> [DMESG-FAIL][5] ([i915#4494] / [i915#4957])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@reset:
    - fi-bdw-5557u:       [PASS][6] -> [INCOMPLETE][7] ([i915#6000])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/fi-bdw-5557u/igt@i915_selftest@live@reset.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-bdw-5557u/igt@i915_selftest@live@reset.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-u2:          NOTRUN -> [DMESG-WARN][8] ([i915#402]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-tgl-u2/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - bat-adlp-4:         [PASS][9] -> [DMESG-WARN][10] ([i915#3576]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/bat-adlp-4/igt@kms_busy@basic@modeset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/bat-adlp-4/igt@kms_busy@basic@modeset.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-pnv-d510:        NOTRUN -> [SKIP][11] ([fdo#109271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][12] ([fdo#111827])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-tgl-u2:          NOTRUN -> [SKIP][13] ([fdo#109284] / [fdo#111827]) +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-u2:          NOTRUN -> [SKIP][14] ([i915#4103]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-u2:          NOTRUN -> [SKIP][15] ([fdo#109285])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-tgl-u2:          NOTRUN -> [SKIP][16] ([i915#3555])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-tgl-u2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-u2:          NOTRUN -> [SKIP][17] ([i915#3301])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-tgl-u2/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [DMESG-FAIL][18] ([i915#4528]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@workarounds:
    - {bat-adlp-6}:       [DMESG-FAIL][20] -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/bat-adlp-6/igt@i915_selftest@live@workarounds.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/bat-adlp-6/igt@i915_selftest@live@workarounds.html
    - bat-adlp-4:         [DMESG-WARN][22] -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/bat-adlp-4/igt@i915_selftest@live@workarounds.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/bat-adlp-4/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-modeset@b-edp1 (NEW):
    - bat-adlp-4:         [DMESG-WARN][24] ([i915#3576]) -> [PASS][25] +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-adlp-6}:       [DMESG-WARN][26] ([i915#3576]) -> [PASS][27] +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/bat-adlp-6/igt@kms_force_connector_basic@force-connector-state.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/bat-adlp-6/igt@kms_force_connector_basic@force-connector-state.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [INCOMPLETE][28] ([i915#3303] / [i915#4785]) -> [INCOMPLETE][29] ([i915#4785])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [INCOMPLETE][30] ([i915#5982]) -> [FAIL][31] ([fdo#103375])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5153]: https://gitlab.freedesktop.org/drm/intel/issues/5153
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5885]: https://gitlab.freedesktop.org/drm/intel/issues/5885
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6000]: https://gitlab.freedesktop.org/drm/intel/issues/6000


Build changes
-------------

  * Linux: CI_DRM_11691 -> Patchwork_104278v1

  CI-20190529: 20190529
  CI_DRM_11691: 20762208303d98e86cd19306752ee2c830fe4f2b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6485: 51663917b40d36086cc1c555ce4f67b22937694d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104278v1: 20762208303d98e86cd19306752ee2c830fe4f2b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6bdab94e0086 drm/i915/hwmon: Add HWMON current voltage support
f52dae00490e drm/i915/hwmon: Add HWMON energy support
651bec8e7652 drm/i915/hwmon: Add HWMON power sensor support

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/index.html

--===============1919295296694194067==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Add HWMON support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104278/">https://patchwork.freedesktop.org/series/104278/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11691 -&gt; Patchwork_104278v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_104278v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_104278v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Additional (2): bat-dg2-8 fi-tgl-u2 <br />
  Missing    (3): fi-bsw-kefka fi-icl-u2 fi-bsw-n3050 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_104278v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11691 and Patchwork_104278v1:</p>
<h3>New IGT tests (112)</h3>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence_chain:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [5.22, 7.62] s</li>
</ul>
</li>
<li>
<p>igt@gem_busy@busy:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>Statuses : 42 pass(s)</li>
<li>Exec time: [0.01, 0.32] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>Statuses : 41 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 10.67] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>Statuses : 39 pass(s) 3 skip(s)</li>
<li>Exec time: [0.00, 16.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>Statuses : 37 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 15.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_store@basic:</p>
<ul>
<li>Statuses : 41 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>Statuses : 42 pass(s)</li>
<li>Exec time: [0.51, 0.60] s</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>Statuses : 42 pass(s)</li>
<li>Exec time: [1.01, 1.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.70, 0.85] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.61, 0.74] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.55, 2.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-edp1:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 8 pass(s)</li>
<li>Exec time: [2.66, 3.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.64, 0.88] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.65, 1.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.78] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-vga1:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.68, 1.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.70, 0.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.60, 0.73] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.35, 1.67] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [2.29, 2.51] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.64, 0.85] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.63, 1.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-vga1:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.65, 1.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.77, 0.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.60, 0.72] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.34, 1.64] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-edp1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [2.30, 2.51] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.65, 0.85] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.61, 1.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-vga1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.72, 0.86] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-dsi1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-edp1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [2.30, 2.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dp1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.72, 0.87] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dp2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.62, 0.75] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.56, 2.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>Statuses : 2 dmesg-warn(s) 7 pass(s)</li>
<li>Exec time: [2.66, 3.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.71, 0.91] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.66, 1.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.80] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-vga1:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.71, 1.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.71, 0.79] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.62, 0.73] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.34, 1.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-edp1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [2.28, 3.46] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.60, 0.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.59, 0.91] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.40] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-vga1:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.66, 1.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.76, 0.80] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.61, 0.75] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.34, 1.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-edp1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [2.31, 3.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a1:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.59, 0.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.59, 0.90] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-vga1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.73, 0.88] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dsi1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-edp1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [2.37, 3.46] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.04, 1.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.90, 1.07] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.87, 1.97] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [1.97, 2.75] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.97, 1.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.95, 1.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.97] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [1.02, 1.88] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-dp1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.02, 1.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-dp2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.90, 1.07] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.72, 1.90] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [1.98, 2.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.92, 1.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.90, 1.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.91] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.96, 1.63] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.0, 1.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.90, 1.07] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.67, 1.90] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [1.97, 2.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a1:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.90, 1.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.90, 1.32] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-vga1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.12, 1.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-dsi1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.93, 2.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-dp1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.73, 0.80] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-dp2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.62, 0.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.52, 1.63] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [1.75, 2.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-hdmi-a1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.68, 0.88] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.67, 1.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-vga1:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.74, 1.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dp1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.71, 0.72] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dp2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.62, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.43, 1.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-edp1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [1.72, 2.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-hdmi-a1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.61, 0.83] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.61, 1.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-lvds1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-vga1:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.67, 1.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.72, 0.73] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.62, 0.69] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dsi1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.43, 1.51] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-edp1:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [1.73, 2.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-hdmi-a1:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.61, 0.83] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-hdmi-a2:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.61, 1.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-vga1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.71, 0.84] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@d-dsi1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.46] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@d-edp1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.74, 1.78] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104278v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/fi-bdw-5557u/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-bdw-5557u/igt@i915_selftest@live@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6000">i915#6000</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-tgl-u2/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/bat-adlp-4/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/bat-adlp-4/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-tgl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/bat-adlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/bat-adlp-6/igt@i915_selftest@live@workarounds.html">PASS</a></p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/bat-adlp-4/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/bat-adlp-4/igt@i915_selftest@live@workarounds.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-edp1 (NEW):</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/bat-adlp-6/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/bat-adlp-6/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11691/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104278v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11691 -&gt; Patchwork_104278v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11691: 20762208303d98e86cd19306752ee2c830fe4f2b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6485: 51663917b40d36086cc1c555ce4f67b22937694d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104278v1: 20762208303d98e86cd19306752ee2c830fe4f2b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6bdab94e0086 drm/i915/hwmon: Add HWMON current voltage support<br />
f52dae00490e drm/i915/hwmon: Add HWMON energy support<br />
651bec8e7652 drm/i915/hwmon: Add HWMON power sensor support</p>

</body>
</html>

--===============1919295296694194067==--
