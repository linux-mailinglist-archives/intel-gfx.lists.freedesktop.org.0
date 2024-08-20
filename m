Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 832DC958CB5
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 19:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E2A310E474;
	Tue, 20 Aug 2024 17:04:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 876BF10E467;
 Tue, 20 Aug 2024 17:04:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Increase_fastwake_sy?=
 =?utf-8?q?nc_pulse_count_as_a_quirk?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2024 17:04:27 -0000
Message-ID: <172417346754.700411.12343450733244642397@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240820161429.2213343-1-jouni.hogander@intel.com>
In-Reply-To: <20240820161429.2213343-1-jouni.hogander@intel.com>
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

Series: Increase fastwake sync pulse count as a quirk
URL   : https://patchwork.freedesktop.org/series/137524/
State : warning

== Summary ==

Error: dim checkpatch failed
60c0584e640b drm/i915/display: Add mechanism to use sink model when applying quirk
-:161: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#161: FILE: drivers/gpu/drm/i915/display/intel_quirks.c:203:
+	{ 0x3185, 0x8086, 0x2072, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_increase_ddi_disabled_time },

-:162: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#162: FILE: drivers/gpu/drm/i915/display/intel_quirks.c:204:
+	{ 0x3184, 0x8086, 0x2072, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_increase_ddi_disabled_time },

-:166: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#166: FILE: drivers/gpu/drm/i915/display/intel_quirks.c:206:
+	{ 0x3185, 0x1849, 0x2212, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_increase_ddi_disabled_time },

-:167: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#167: FILE: drivers/gpu/drm/i915/display/intel_quirks.c:207:
+	{ 0x3184, 0x1849, 0x2212, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_increase_ddi_disabled_time },

-:171: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#171: FILE: drivers/gpu/drm/i915/display/intel_quirks.c:209:
+	{ 0x3185, 0x1019, 0xa94d, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_increase_ddi_disabled_time },

-:172: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#172: FILE: drivers/gpu/drm/i915/display/intel_quirks.c:210:
+	{ 0x3184, 0x1019, 0xa94d, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_increase_ddi_disabled_time },

total: 0 errors, 6 warnings, 0 checks, 202 lines checked
827a71d6a0ee drm/i915/display: Increase Fast Wake Sync length as a quirk
-:119: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#119: FILE: drivers/gpu/drm/i915/display/intel_quirks.c:206:
+	{ 0x7d55, 0x1028, 0x0cc7, SINK_OUI(0x38, 0xec, 0x11), SINK_DEVICE_ID_ANY, quirk_fw_sync_len },

total: 0 errors, 1 warnings, 0 checks, 84 lines checked


