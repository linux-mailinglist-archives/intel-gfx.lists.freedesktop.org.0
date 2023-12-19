Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CECC817F1C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 02:02:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A841610E3CB;
	Tue, 19 Dec 2023 01:02:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C63B10E0D9;
 Tue, 19 Dec 2023 01:02:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 92EC6A0169;
 Tue, 19 Dec 2023 01:02:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Early_Transport_for_?=
 =?utf-8?q?Panel_Replay_and_PSR?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 19 Dec 2023 01:02:06 -0000
Message-ID: <170294772659.17580.12311489597369825875@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231218175004.52875-1-jouni.hogander@intel.com>
In-Reply-To: <20231218175004.52875-1-jouni.hogander@intel.com>
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

Series: Early Transport for Panel Replay and PSR
URL   : https://patchwork.freedesktop.org/series/127918/
State : warning

== Summary ==

Error: dim checkpatch failed
1d6235f22b22 drm: Add eDP 1.5 early transport definition
2127c2ba9e9e drm/i915/psr: Extend SU area to cover cursor fully if needed
2a116b89e55a drm/i915/psr: Carry su area in crtc_state
-:61: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#61: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1970:
+		val |= PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(

-:63: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#63: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1972:
+		val |= PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(

total: 0 errors, 0 warnings, 2 checks, 181 lines checked
4e70e1f21dc2 drm/i915/psr: Calculate and configure CUR_POS_ERLY_TPT
9ce655839ccc drm/i915/psr: Configure PIPE_SRCSZ_ERLY_TPT for psr2 early transport
fc65492f9490 drm/i915/psr: Enable psr2 early transport as possible
b425597c47c3 drm/i915/psr: Disable early transport by default


