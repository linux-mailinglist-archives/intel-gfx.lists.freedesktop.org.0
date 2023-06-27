Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 067F174061E
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 00:00:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7598D10E09B;
	Tue, 27 Jun 2023 22:00:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A20A10E09B;
 Tue, 27 Jun 2023 22:00:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43939A882E;
 Tue, 27 Jun 2023 22:00:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Date: Tue, 27 Jun 2023 22:00:00 -0000
Message-ID: <168790320027.2459.4920827152755906047@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230627153451.2834196-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230627153451.2834196-1-mitulkumar.ajitkumar.golani@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_HDMI_2=2E0/DP1p62Gbps_skew_violation_when_there_is_skew_bet?=
 =?utf-8?q?ween_DL_PCLK?=
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

Series: HDMI 2.0/DP1p62Gbps skew violation when there is skew between DL PCLK
URL   : https://patchwork.freedesktop.org/series/119934/
State : warning

== Summary ==

Error: dim checkpatch failed
9bc5743dec81 drm/i915/display: HDMI2.0/DP1p62Gbps skew violation when there is skew between DL PCLK
-:28: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#28: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1367:
+			if ((crtc_state->port_clock == 594000 &&
+			    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) ||

total: 0 errors, 0 warnings, 1 checks, 29 lines checked


