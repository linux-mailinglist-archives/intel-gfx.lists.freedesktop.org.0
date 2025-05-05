Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80579AA8BC2
	for <lists+intel-gfx@lfdr.de>; Mon,  5 May 2025 07:42:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2495F10E2E1;
	Mon,  5 May 2025 05:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06C1110E2E1;
 Mon,  5 May 2025 05:42:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/vrr=3A_Prog?=
 =?utf-8?q?ram_EMP=5FAS=5FSDP=5FTL_for_DP_AS_SDP_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 05 May 2025 05:42:13 -0000
Message-ID: <174642373302.43866.5739839615859394202@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250505033911.393628-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250505033911.393628-1-ankit.k.nautiyal@intel.com>
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

Series: drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP (rev2)
URL   : https://patchwork.freedesktop.org/series/148421/
State : warning

== Summary ==

Error: dim checkpatch failed
8e1010bec523 drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP
-:93: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#93: FILE: drivers/gpu/drm/i915/display/intel_vrr_regs.h:115:
+#define EMP_AS_SDP_DB_TL(db_transmit_line)	REG_FIELD_PREP(EMP_AS_SDP_DB_TL_MASK, (db_transmit_line))

total: 0 errors, 1 warnings, 0 checks, 53 lines checked


