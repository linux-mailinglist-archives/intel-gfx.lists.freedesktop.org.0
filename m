Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46917874545
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 01:47:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41FE3113635;
	Thu,  7 Mar 2024 00:47:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46274113634;
 Thu,  7 Mar 2024 00:47:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_fix_headers?=
 =?utf-8?q?=2C_add_header_test_facility?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Mar 2024 00:47:07 -0000
Message-ID: <170977242728.563886.17257059937071545925@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1709749576.git.jani.nikula@intel.com>
In-Reply-To: <cover.1709749576.git.jani.nikula@intel.com>
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

Series: drm: fix headers, add header test facility
URL   : https://patchwork.freedesktop.org/series/130822/
State : warning

== Summary ==

Error: dim checkpatch failed
7caa1d7414d8 drm/crtc: make drm_crtc_internal.h self-contained
ff01e9a4a385 drm: add missing header guards to drm_internal.h
484ccce02868 drm/kunit: fix drm_kunit_helpers.h kernel-doc
c67cf26f7073 drm/amdgpu: make amd_asic_type.h self-contained
af8d06d5eb2a drm: bridge: samsung-dsim: make samsung-dsim.h self-contained
2e91dc9893a3 drm/dp_mst: fix drm_dp_mst_helper.h kernel-doc
b3dd137d7dab drm/crc: make drm_debugfs_crc.h self-contained and fix kernel-doc
3550e9bcfa9e drm/encoder: silence drm_encoder_slave.h kernel-doc
289e2b1ac5ae drm: fix drm_format_helper.h kernel-doc warnings
b74a77ec4c32 drm/lease: make drm_lease.h self-contained
8a9a4a19fbb8 drm: fix drm_gem_vram_helper.h kernel-doc
5fbbba2bbe57 drm/of: make drm_of.h self-contained
a38f277c44d1 drm/i2c: silence ch7006.h and sil164.h kernel-doc warnings
26ecd5d71303 drm/suballoc: fix drm_suballoc.h kernel-doc
e864912c9fc2 drm/i915: fix i915_gsc_proxy_mei_interface.h kernel-doc
bebf12a4424f drm/i915/hdcp: fix i915_hdcp_interface.h kernel-doc warnings
3ca71e65fa25 drm/i915/pxp: fix i915_pxp_tee_interface.h kernel-doc warnings
469555e5f56b drm/ttm: fix ttm_bo.h kernel-doc warnings
f47400d36bc9 drm/ttm: make ttm_caching.h self-contained
5c2973e678f8 drm/ttm: fix ttm_execbuf_util.h kernel-doc warnings
1bccfd5835f9 drm/ttm: fix ttm_kmap_iter.h kernel-doc warnings
187a5ae6df10 drm: ensure drm headers are self-contained and pass kernel-doc
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 58 lines checked


