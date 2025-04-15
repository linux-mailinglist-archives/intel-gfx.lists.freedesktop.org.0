Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 289CBA8A48E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 18:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0344A8910E;
	Tue, 15 Apr 2025 16:53:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b68e5b3b99e1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A7BE8910E;
 Tue, 15 Apr 2025 16:53:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/edid=3A_more_dis?=
 =?utf-8?q?playid_timing_parsing_and_cleanups_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Apr 2025 16:53:01 -0000
Message-ID: <174473598110.7529.6086885602361172532@b68e5b3b99e1>
X-Patchwork-Hint: ignore
References: <cover.1744708239.git.jani.nikula@intel.com>
In-Reply-To: <cover.1744708239.git.jani.nikula@intel.com>
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

Series: drm/edid: more displayid timing parsing and cleanups (rev2)
URL   : https://patchwork.freedesktop.org/series/147738/
State : warning

== Summary ==

Error: dim checkpatch failed
c9dbd0a8e023 drm/edid: Implement DisplayID Type IX & X timing blocks parsing
-:64: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#64: FILE: drivers/gpu/drm/drm_edid.c:6837:
+							   const struct displayid_formula_timings_9 *timings,

-:80: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#80: FILE: drivers/gpu/drm/drm_edid.c:6853:
+	mode = drm_cvt_mode(dev, hactive, vactive, timings->vrefresh + 1, timing_formula == 1, false, false);

-:95: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#95: FILE: drivers/gpu/drm/drm_edid.c:6868:
+	const struct displayid_formula_timing_block *formula_block = (struct displayid_formula_timing_block *)block;

total: 0 errors, 3 warnings, 0 checks, 100 lines checked
f8fda90102b2 drm/edid: Refactor DisplayID timing block structs
-:56: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#56: FILE: drivers/gpu/drm/drm_edid.c:6763:
+							    const struct displayid_detailed_timings_1 *timings,

total: 0 errors, 1 warnings, 0 checks, 66 lines checked


