Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B818BA735
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 08:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1868310F3E3;
	Fri,  3 May 2024 06:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8F2210F3E3;
 Fri,  3 May 2024 06:48:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_LunarLake_IO_and_Fas?=
 =?utf-8?q?t_Wake_changes?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 03 May 2024 06:48:07 -0000
Message-ID: <171471888788.1870171.10769783920013456763@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240503060621.987820-1-jouni.hogander@intel.com>
In-Reply-To: <20240503060621.987820-1-jouni.hogander@intel.com>
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

Series: LunarLake IO and Fast Wake changes
URL   : https://patchwork.freedesktop.org/series/133160/
State : warning

== Summary ==

Error: dim checkpatch failed
ce27af43583c drm/i915/psr: LunarLake IO and Fast Wake time line count maximums are 63
b85a97f53836 drm/i915/psr: LunarLake PSR2_CTL[IO Wake Lines] is 6 bits wide
-:41: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:178:
+							       (lines) - LNL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES)

total: 0 errors, 1 warnings, 0 checks, 18 lines checked
c72cbdb2623a drm/i915/psr: PSR2_CTL[Block Count Number] no needed for LunarLake


