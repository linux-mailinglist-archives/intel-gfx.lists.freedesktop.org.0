Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECE796607A
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 13:20:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B37CA10EA83;
	Fri, 30 Aug 2024 11:20:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EEAD10EA80;
 Fri, 30 Aug 2024 11:20:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?hdmi_and_dp_related_struct_intel=5Fdisplay_conversions?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2024 11:20:06 -0000
Message-ID: <172501680625.854380.14367428949033316978@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1725012870.git.jani.nikula@intel.com>
In-Reply-To: <cover.1725012870.git.jani.nikula@intel.com>
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

Series: drm/i915/display: hdmi and dp related struct intel_display conversions
URL   : https://patchwork.freedesktop.org/series/138011/
State : warning

== Summary ==

Error: dim checkpatch failed
d270a4bbcb0c drm/xe/display: use xe && 0 to avoid warnings about unused variables
ac206e0d7578 drm/i915/hdmi: convert to struct intel_display
791551134173 drm/i915/dp: convert g4x_dp.[ch] to struct intel_display
5e60fd1de534 drm/i915/dp: convert intel_dp_tunnel.[ch] to struct intel_display
af092ee07714 drm/i915/dp: convert intel_dp_aux.[ch] to struct intel_display
cbd59627603c drm/i915/dp: convert intel_dp_link_training.[ch] to struct intel_display
b9f8058594df drm/i915/pps: pass intel_dp to pps_name()
f93e3fe651a2 drm/i915/pps: convert intel_pps.[ch] to struct intel_display
628d581f4d66 drm/i915/psr: convert intel_psr.[ch] to struct intel_display
-:1291: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1291: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1722:
+		    intel_de_read(display, EDP_PSR2_CTL(display, cpu_transcoder)) & EDP_PSR2_ENABLE);

total: 0 errors, 1 warnings, 0 checks, 2394 lines checked
76c85aeae518 drm/i915/ddi: stop using dp_to_i915()
69dc42931928 drm/i915/dp: hide dp_to_i915() inside intel_dp.c


