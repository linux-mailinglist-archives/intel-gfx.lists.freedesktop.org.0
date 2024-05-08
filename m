Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C948C022B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 18:41:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42D1A113115;
	Wed,  8 May 2024 16:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3545113104;
 Wed,  8 May 2024 16:41:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?remove_implicit_dev=5Fpriv_from_VRR?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 08 May 2024 16:41:14 -0000
Message-ID: <171518647499.2017561.4761287856823900292@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1715183162.git.jani.nikula@intel.com>
In-Reply-To: <cover.1715183162.git.jani.nikula@intel.com>
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

Series: drm/i915/display: remove implicit dev_priv from VRR
URL   : https://patchwork.freedesktop.org/series/133330/
State : warning

== Summary ==

Error: dim checkpatch failed
b51cea67ab0e drm/i915: pass dev_priv explicitly to TRANS_VRR_CTL
-:70: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#70: FILE: drivers/gpu/drm/i915/i915_reg.h:1236:
+#define TRANS_VRR_CTL(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_CTL_A)

total: 0 errors, 1 warnings, 0 checks, 50 lines checked
467129a9c71a drm/i915: pass dev_priv explicitly to TRANS_VRR_VMAX
de6095cefa23 drm/i915: pass dev_priv explicitly to TRANS_VRR_VMIN
3bd71a922c5b drm/i915: pass dev_priv explicitly to TRANS_VRR_VMAXSHIFT
d88994b3456c drm/i915: pass dev_priv explicitly to TRANS_VRR_STATUS
-:34: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#34: FILE: drivers/gpu/drm/i915/i915_reg.h:1274:
+#define TRANS_VRR_STATUS(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS_A)

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
299de36e3f57 drm/i915: pass dev_priv explicitly to TRANS_VRR_VTOTAL_PREV
e102cc339513 drm/i915: pass dev_priv explicitly to TRANS_VRR_FLIPLINE
-:31: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#31: FILE: drivers/gpu/drm/i915/display/intel_vrr.c:316:
+							 TRANS_VRR_FLIPLINE(dev_priv, cpu_transcoder)) + 1;

total: 0 errors, 1 warnings, 0 checks, 26 lines checked
1f9d98de293e drm/i915: pass dev_priv explicitly to TRANS_VRR_STATUS2
48ea1d97c2f0 drm/i915: pass dev_priv explicitly to TRANS_PUSH
05c90497a890 drm/i915: pass dev_priv explicitly to TRANS_VRR_VSYNC
-:31: ERROR:CODE_INDENT: code indent should use tabs where possible
#31: FILE: drivers/gpu/drm/i915/display/intel_vrr.c:295:
+^I^I               TRANS_VRR_VSYNC(dev_priv, cpu_transcoder), 0);$

-:54: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#54: FILE: drivers/gpu/drm/i915/i915_reg.h:1325:
+#define TRANS_VRR_VSYNC(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)

total: 1 errors, 1 warnings, 0 checks, 35 lines checked


