Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C098A36503
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 18:53:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AEC810ED2C;
	Fri, 14 Feb 2025 17:53:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DBCE10ED2A;
 Fri, 14 Feb 2025 17:53:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5Bv3=2C1/2=5D_drm/edid=3A_Implement_DisplayID_Type_IX_=26_X_tim?=
 =?utf-8?q?ing_blocks_parsing?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Egor Vorontsov" <sdoregor@sdore.me>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2025 17:53:00 -0000
Message-ID: <173955558063.2114920.13042064884353848519@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250214110643.506740-1-sdoregor@sdore.me>
In-Reply-To: <20250214110643.506740-1-sdoregor@sdore.me>
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

Series: series starting with [v3,1/2] drm/edid: Implement DisplayID Type IX & X timing blocks parsing
URL   : https://patchwork.freedesktop.org/series/144887/
State : warning

== Summary ==

Error: dim checkpatch failed
6652ef3c4e6a drm/edid: Implement DisplayID Type IX & X timing blocks parsing
-:62: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#62: FILE: drivers/gpu/drm/drm_edid.c:6837:
+							   const struct displayid_formula_timings_9 *timings,

-:78: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#78: FILE: drivers/gpu/drm/drm_edid.c:6853:
+	mode = drm_cvt_mode(dev, hactive, vactive, timings->vrefresh + 1, timing_formula == 1, false, false);

-:93: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#93: FILE: drivers/gpu/drm/drm_edid.c:6868:
+	const struct displayid_formula_timing_block *formula_block = (struct displayid_formula_timing_block *)block;

total: 0 errors, 3 warnings, 0 checks, 100 lines checked
e063ac33bb03 drm/edid: Refactor DisplayID timing block structs
-:54: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#54: FILE: drivers/gpu/drm/drm_edid.c:6763:
+							    const struct displayid_detailed_timings_1 *timings,

total: 0 errors, 1 warnings, 0 checks, 66 lines checked


