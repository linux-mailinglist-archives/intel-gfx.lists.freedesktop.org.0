Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B34F53B6CC
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 12:19:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDD47112D66;
	Thu,  2 Jun 2022 10:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E8FDC112D64;
 Thu,  2 Jun 2022 10:19:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE8F0A7E03;
 Thu,  2 Jun 2022 10:19:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 02 Jun 2022 10:19:12 -0000
Message-ID: <165416515287.17948.4285650151721289509@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220602094542.1386151-1-jani.nikula@intel.com>
In-Reply-To: <20220602094542.1386151-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/regs=3A_split_out_intel_audio_register_definitions?=
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

Series: drm/i915/regs: split out intel audio register definitions
URL   : https://patchwork.freedesktop.org/series/104645/
State : warning

== Summary ==

Error: dim checkpatch failed
977753637a20 drm/i915/regs: split out intel audio register definitions
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 10, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:28: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#28: 
new file mode 100644

-:72: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#72: FILE: drivers/gpu/drm/i915/display/intel_audio_regs.h:40:
+#define CPT_HDMIW_HDMIEDID(pipe)	_MMIO_PIPE(pipe, _CPT_HDMIW_HDMIEDID_A, _CPT_HDMIW_HDMIEDID_B)

-:80: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#80: FILE: drivers/gpu/drm/i915/display/intel_audio_regs.h:48:
+#define VLV_HDMIW_HDMIEDID(pipe)	_MMIO_PIPE(pipe, _VLV_HDMIW_HDMIEDID_A, _VLV_HDMIW_HDMIEDID_B)

-:103: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#103: FILE: drivers/gpu/drm/i915/display/intel_audio_regs.h:71:
+#define   AUD_CONFIG_N(n) \
+	(((((n) >> 12) & 0xff) << AUD_CONFIG_UPPER_N_SHIFT) |	\
+	 (((n) & 0xfff) << AUD_CONFIG_LOWER_N_SHIFT))

-:130: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#130: FILE: drivers/gpu/drm/i915/display/intel_audio_regs.h:98:
+#define HSW_AUD_MISC_CTRL(trans)	_MMIO_TRANS(trans, _HSW_AUD_MISC_CTRL_A, _HSW_AUD_MISC_CTRL_B)

-:134: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#134: FILE: drivers/gpu/drm/i915/display/intel_audio_regs.h:102:
+#define HSW_AUD_M_CTS_ENABLE(trans)	_MMIO_TRANS(trans, _HSW_AUD_M_CTS_ENABLE_A, _HSW_AUD_M_CTS_ENABLE_B)

-:141: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#141: FILE: drivers/gpu/drm/i915/display/intel_audio_regs.h:109:
+#define HSW_AUD_DIP_ELD_CTRL(trans)	_MMIO_TRANS(trans, _HSW_AUD_DIP_ELD_CTRL_ST_A, _HSW_AUD_DIP_ELD_CTRL_ST_B)

-:151: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#151: FILE: drivers/gpu/drm/i915/display/intel_audio_regs.h:119:
+#define HSW_AUD_EDID_DATA(trans)	_MMIO_TRANS(trans, _HSW_AUD_EDID_DATA_A, _HSW_AUD_EDID_DATA_B)

-:162: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#162: FILE: drivers/gpu/drm/i915/display/intel_audio_regs.h:130:
+#define AUD_DP_2DOT0_CTRL(trans)	_MMIO_TRANS(trans, _AUD_TCA_DP_2DOT0_CTRL, _AUD_TCB_DP_2DOT0_CTRL)

total: 0 errors, 8 warnings, 1 checks, 349 lines checked


