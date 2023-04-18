Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAFE6E6F4B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 00:20:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0285010E021;
	Tue, 18 Apr 2023 22:20:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B3ADB10E100;
 Tue, 18 Apr 2023 22:20:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0F27AA3D8;
 Tue, 18 Apr 2023 22:20:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 18 Apr 2023 22:20:21 -0000
Message-ID: <168185642163.17885.8935858840995802959@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Scaler/pfit_stuff_=28rev2=29?=
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

== Series Details ==

Series: drm/i915: Scaler/pfit stuff (rev2)
URL   : https://patchwork.freedesktop.org/series/116661/
State : warning

== Summary ==

Error: dim checkpatch failed
96742f02457a drm/i915: Check pipe source size when using skl+ scalers
-:19: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Closes:', use 'Link:' instead
#19: 
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8357

total: 0 errors, 1 warnings, 0 checks, 29 lines checked
020b73ecaea1 drm/i915: Relocate VBLANK_EVASION_TIME_US
985d1c61ab4b drm/i915: Relocate intel_atomic_setup_scalers()
d8119d553652 drm/i915: Relocate skl_get_pfit_config()
abb5209c730e drm/i915: Use REG_BIT() & co for the pre-ilk pfit registers
e661ff574bbc drm/i915: Namespace pfit registers properly
5f7ed896b1db drm/i915: Use REG_BIT() & co. for ilk+ pfit registers
8337eb734cde drm/i915: Drop a useless forward declararion
152fabebf7a4 drm/i915: Define bitmasks for ilk pfit window pos/size
afe2b9bb87f3 drm/i915: Remove dead scaler register defines
500da878f1fb drm/i915: Rename skl+ scaler binding bits
c4690f428705 drm/i915: s/PS_COEE_INDEX_AUTO_INC/PS_COEF_INDEX_AUTO_INC/
73ea67a05509 drm/i915: Define bitmasks for sik+ scaler window pos/size
dcfed7ebc951 drm/i915: Use REG_BIT() & co. for pipe scaler registers
f9431f7d6815 drm/i915: Define more PS_CTRL bits
-:44: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/i915_reg.h:4076:
+#define   PS_PIPE_SCALER_LOC_AFTER_OUTPUT_CSC	REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 0) /* non-linear */

-:45: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/i915_reg.h:4077:
+#define   PS_PIPE_SCALER_LOC_AFTER_CSC		REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 1) /* linear */

total: 0 errors, 2 warnings, 0 checks, 31 lines checked


