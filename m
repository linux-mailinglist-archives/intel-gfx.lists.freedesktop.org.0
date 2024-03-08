Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD196876B38
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 20:30:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21426113977;
	Fri,  8 Mar 2024 19:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA36113977;
 Fri,  8 Mar 2024 19:30:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_fix_headers?=
 =?utf-8?q?=2C_add_header_test_facility_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 08 Mar 2024 19:30:20 -0000
Message-ID: <170992622078.621641.15592561926824471667@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1709898638.git.jani.nikula@intel.com>
In-Reply-To: <cover.1709898638.git.jani.nikula@intel.com>
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

Series: drm: fix headers, add header test facility (rev2)
URL   : https://patchwork.freedesktop.org/series/130917/
State : warning

== Summary ==

Error: dim checkpatch failed
b821d1b2ac6b drm: add missing header guards to drm_crtc_internal.h
2a1e5c572621 drm: add missing header guards to drm_crtc_helper_internal.h
e75d804d2119 drm/encoder: improve drm_encoder_slave.h kernel-doc
3c6e4a345eee drm/i2c: silence ch7006.h and sil164.h kernel-doc warnings
c9a2f7285745 drm/i915: fix i915_gsc_proxy_mei_interface.h kernel-doc
9d60d72e28b0 drm/i915/hdcp: fix i915_hdcp_interface.h kernel-doc warnings
f1197781882a drm/i915/pxp: fix i915_pxp_tee_interface.h kernel-doc warnings
fd4f4727fa9e m68k: pgtable: Add missing #include <asm/page.h>
5c26a13afb9f drm/ttm: fix ttm_bo.h kernel-doc warnings
851eacd1736f drm/ttm: make ttm_caching.h self-contained
eea3a98aac6f drm/ttm: fix ttm_execbuf_util.h kernel-doc warnings
d1e5b982e1b0 drm/ttm: fix ttm_kmap_iter.h kernel-doc warnings
1e654faa3ce2 drm/ttm: make ttm_pool.h self-contained
7554c7a7b3be drm/dp_mst: avoid includes in drm_dp_mst_topology_internal.h
58bc8ad9d048 drm: avoid includes in drm_crtc_helper_internal.h
2d0d70a1c9ae drm: ensure drm headers are self-contained and pass kernel-doc
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:80: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#80: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 58 lines checked


