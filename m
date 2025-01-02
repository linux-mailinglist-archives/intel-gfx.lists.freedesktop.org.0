Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FB69FF729
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2025 10:02:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1656A10E074;
	Thu,  2 Jan 2025 09:02:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 298CF10E074;
 Thu,  2 Jan 2025 09:02:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_PSR_DSB_support_=28r?=
 =?utf-8?q?ev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 02 Jan 2025 09:02:10 -0000
Message-ID: <173580853016.1978598.3165734031183710074@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250102083638.2552066-1-jouni.hogander@intel.com>
In-Reply-To: <20250102083638.2552066-1-jouni.hogander@intel.com>
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

Series: PSR DSB support (rev2)
URL   : https://patchwork.freedesktop.org/series/142520/
State : warning

== Summary ==

Error: dim checkpatch failed
a26c90abb484 drm/i915/psr: Use PSR2_MAN_TRK_CTL CFF bit only to send full update
ca70087cd57a drm/i915/psr: Rename psr_force_hw_tracking_exit as intel_psr_force_update
740712c01613 drm/i915/psr: Split setting sff and cff bits away from intel_psr_force_update
29237168a418 drm/i915/psr: Add register definitions for SFF_CTL and CFF_CTL registers
b8856651aeb2 drm/i915/psr: Use SFF_CTL on invalidate/flush for LunarLake onwards
d8c25fd5ed1c drm/i915/psr: Allow writing PSR2_MAN_TRK_CTL using DSB
74feba65980a drm/i915/psr: Changes for PSR2_MAN_TRK_CTL handling when DSB is in use
-:17: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#17: 
Taking PSR lock over DSB commit is not needed because PSR2_MAN_TRK_CTL is now

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
8fde87325e81 drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken bit
1cfe5a0dc54b drm/i915/psr: Allow DSB usage when PSR is enabled


