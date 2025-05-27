Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3804DAC4F83
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 15:20:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50C7710E4B2;
	Tue, 27 May 2025 13:20:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 188D810E4D0;
 Tue, 27 May 2025 13:20:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/sbi=3A_move?=
 =?utf-8?q?_under_display=2C_cleanup_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 27 May 2025 13:20:06 -0000
Message-ID: <174835200609.24233.992086342104995663@1538d3639d33>
X-Patchwork-Hint: ignore
References: <cover.1748343520.git.jani.nikula@intel.com>
In-Reply-To: <cover.1748343520.git.jani.nikula@intel.com>
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

Series: drm/i915/sbi: move under display, cleanup (rev2)
URL   : https://patchwork.freedesktop.org/series/148961/
State : warning

== Summary ==

Error: dim checkpatch failed
b24dec775fbf drm/i915/sbi: move intel_sbi.[ch] under display/
-:33: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#33: 
rename from drivers/gpu/drm/i915/intel_sbi.c

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
d723af0c2cfd drm/i915/sbi: convert intel_sbi.[ch] to struct intel_display
fb69ffea6955 drm/i915/sbi: move sbi_lock under struct intel_display
a7b078b1fcc3 drm/i915/de: rename timeout parameters timeout_ms to highlight unit
256d1e7f5aea drm/i915: add out_value to intel_wait_for_register_fw() and intel_de_wait_fw()
e57f82409d6a drm/i915/sbi: convert to intel_de_*()
4ae40cf16fa9 drm/i915/sbi: split out intel_sbi_regs.h
-:40: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#40: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 130 lines checked
4c53c1461ee2 drm/i915/sbi: clean up SBI register macro definitions and usage


