Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 299AB87668F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 15:46:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 824A710F88E;
	Fri,  8 Mar 2024 14:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90F0E10F25E;
 Fri,  8 Mar 2024 14:46:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_fix_headers?=
 =?utf-8?q?=2C_add_header_test_facility?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 08 Mar 2024 14:46:23 -0000
Message-ID: <170990918359.621641.12161202172443137515@8e613ede5ea5>
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

Series: drm: fix headers, add header test facility
URL   : https://patchwork.freedesktop.org/series/130917/
State : warning

== Summary ==

Error: dim checkpatch failed
12dea9670af4 drm: add missing header guards to drm_crtc_internal.h
26f540b42f9a drm: add missing header guards to drm_crtc_helper_internal.h
d978be98f7ac drm/encoder: improve drm_encoder_slave.h kernel-doc
469f1455781b drm/i2c: silence ch7006.h and sil164.h kernel-doc warnings
eaccbce10cd0 drm/i915: fix i915_gsc_proxy_mei_interface.h kernel-doc
9590430cf3fc drm/i915/hdcp: fix i915_hdcp_interface.h kernel-doc warnings
93f494692171 drm/i915/pxp: fix i915_pxp_tee_interface.h kernel-doc warnings
c4651d2cb636 m68k: pgtable: Add missing #include <asm/page.h>
7414a033f8ca drm/ttm: fix ttm_bo.h kernel-doc warnings
ef3bf0bded92 drm/ttm: make ttm_caching.h self-contained
9def0397c416 drm/ttm: fix ttm_execbuf_util.h kernel-doc warnings
17200e5ac18b drm/ttm: fix ttm_kmap_iter.h kernel-doc warnings
e1b31cc22f2b drm/ttm: make ttm_pool.h self-contained
b89faf75f4c2 drm/dp_mst: avoid includes in drm_dp_mst_topology_internal.h
dce831434abc drm: avoid includes in drm_crtc_helper_internal.h
68f05d9b8d8e drm: ensure drm headers are self-contained and pass kernel-doc
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:80: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#80: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 58 lines checked


