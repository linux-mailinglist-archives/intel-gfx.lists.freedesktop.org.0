Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAF39C15B6
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 05:56:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F345B10E268;
	Fri,  8 Nov 2024 04:56:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55BBF10E268;
 Fri,  8 Nov 2024 04:56:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Potentia?=
 =?utf-8?q?l_boot_oops_fix_and_some_cleanups_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 08 Nov 2024 04:56:07 -0000
Message-ID: <173104176734.1425511.6361783112289801714@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Potential boot oops fix and some cleanups (rev2)
URL   : https://patchwork.freedesktop.org/series/141059/
State : warning

== Summary ==

Error: dim checkpatch failed
5e4f7ec4a2f4 drm/i915: Grab intel_display from the encoder to avoid potential oopsies
0304a56feb4d drm/i915/crt: Split long line
f2602bbee7bb drm/i915/crt: Drop the unused ADPA_DPMS bit definitions
2f6e032c4c9f drm/i915/crt: Use REG_BIT() & co.
204169868886 drm/i915/crt: Clean up ADPA_HOTPLUG_BITS definitions
9aa4ae95e363 drm/i915/crt: Extract intel_crt_regs.h
-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 127 lines checked
4fa09ba11c71 drm/i915/crt: s/pipe_config/crtc_state/
5eca45483507 drm/i915/crt: Drop pointless drm_device variables
099905936f5d drm/i915/crt: Rename some variables
e158f18d67b0 drm/i915/crt: Nuke unused crt->connector


