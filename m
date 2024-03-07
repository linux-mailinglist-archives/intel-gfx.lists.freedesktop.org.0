Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB04D874B0C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 10:38:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DB3A11373F;
	Thu,  7 Mar 2024 09:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 838B811373F;
 Thu,  7 Mar 2024 09:38:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_add_missing_h?=
 =?utf-8?q?eader_guards_to_drm=5Fcrtc=5Finternal=2Eh_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Mar 2024 09:38:28 -0000
Message-ID: <170980430852.580595.7101979794784051457@8e613ede5ea5>
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

Series: drm: add missing header guards to drm_crtc_internal.h (rev2)
URL   : https://patchwork.freedesktop.org/series/130822/
State : warning

== Summary ==

Error: dim checkpatch failed
6394cb645816 drm/crtc: make drm_crtc_internal.h self-contained
4cb3460431f8 drm: add missing header guards to drm_internal.h
3f954fa07b03 drm/kunit: fix drm_kunit_helpers.h kernel-doc
5be8ac36f46e drm/amdgpu: make amd_asic_type.h self-contained
1ae8c19e8c79 drm: bridge: samsung-dsim: make samsung-dsim.h self-contained
80b03dd3b097 drm/dp_mst: fix drm_dp_mst_helper.h kernel-doc
216f77633704 drm/crc: make drm_debugfs_crc.h self-contained and fix kernel-doc
284b74d93245 drm/encoder: silence drm_encoder_slave.h kernel-doc
9089631058e7 drm: fix drm_format_helper.h kernel-doc warnings
1f6860a8eab1 drm/lease: make drm_lease.h self-contained
cb5bde9a1eb6 drm: fix drm_gem_vram_helper.h kernel-doc
b38b83148335 drm/of: make drm_of.h self-contained
938d6af9200c drm/i2c: silence ch7006.h and sil164.h kernel-doc warnings
3c80c2d926a3 drm/suballoc: fix drm_suballoc.h kernel-doc
9662bb932024 drm/i915: fix i915_gsc_proxy_mei_interface.h kernel-doc
83b44e084b06 drm/i915/hdcp: fix i915_hdcp_interface.h kernel-doc warnings
fd68c807f8dc drm/i915/pxp: fix i915_pxp_tee_interface.h kernel-doc warnings
92d41eb32533 drm/ttm: fix ttm_bo.h kernel-doc warnings
2c974eab6508 drm/ttm: make ttm_caching.h self-contained
83c3a112a66e drm/ttm: fix ttm_execbuf_util.h kernel-doc warnings
9c6acd9ee15a drm/ttm: fix ttm_kmap_iter.h kernel-doc warnings
2bc4cf88a51e drm: ensure drm headers are self-contained and pass kernel-doc
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 58 lines checked


