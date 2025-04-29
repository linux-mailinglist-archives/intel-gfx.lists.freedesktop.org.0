Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E890BAA1885
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 20:01:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2769C10E45F;
	Tue, 29 Apr 2025 18:01:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5448B10E45A;
 Tue, 29 Apr 2025 18:01:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/vrr=3A_Prog?=
 =?utf-8?q?ram_EMP=5FAS=5FSDP=5FTL_for_DP_AS_SDP?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Apr 2025 18:01:03 -0000
Message-ID: <174594966334.25057.4781901270152969400@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250429143055.130701-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250429143055.130701-1-ankit.k.nautiyal@intel.com>
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

Series: drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP
URL   : https://patchwork.freedesktop.org/series/148421/
State : warning

== Summary ==

Error: dim checkpatch failed
e852a710a0e5 drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP
-:86: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#86: FILE: drivers/gpu/drm/i915/display/intel_vrr_regs.h:115:
+#define EMP_AS_SDP_DB_TL(db_transmit_line)	REG_FIELD_PREP(EMP_AS_SDP_DB_TL_MASK, (db_transmit_line))

total: 0 errors, 1 warnings, 0 checks, 50 lines checked


