Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 591949A48D4
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 23:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 976BC10E240;
	Fri, 18 Oct 2024 21:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85EED10E240;
 Fri, 18 Oct 2024 21:18:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Add_xe3lpd_edp_enabl?=
 =?utf-8?q?ing_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Oct 2024 21:18:29 -0000
Message-ID: <172928630954.1294974.7702777627976193694@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
In-Reply-To: <20241018200311.67324-1-matthew.s.atwood@intel.com>
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

Series: Add xe3lpd edp enabling (rev4)
URL   : https://patchwork.freedesktop.org/series/139731/
State : warning

== Summary ==

Error: dim checkpatch failed
a9981eac7be9 drm/i915/xe3lpd: Update pmdemand programming
-:75: ERROR:ELSE_AFTER_BRACE: else should follow close brace '}'
#75: FILE: drivers/gpu/drm/i915/display/intel_pmdemand.c:341:
+	}
+	else

total: 1 errors, 0 warnings, 0 checks, 161 lines checked
4df58ffb4efa drm/i915/xe3lpd: Add cdclk changes
-:15: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#15: 
v3: xe3lpd doesnt supply the power control unit the voltage index
           ^^^^^^

total: 0 errors, 1 warnings, 0 checks, 89 lines checked
fa8e1f47015a drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
23bd5927d849 drm/i915/xe3lpd: Add C20 Phy consolidated programming table
5e14947e9214 drm/i915/xe3lpd: Add new bit range of MAX swing setup
-:9: WARNING:TYPO_SPELLING: 'seperate' may be misspelled - perhaps 'separate'?
#9: 
v2: implement as two seperate macros instead of a single macro
                     ^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
be840fa05685 drm/i915/xe3lpd: Add check to see if edp over type c is allowed
ab3d3ff44b04 drm/i915/xe3lpd: Add condition for EDP to powerdown P2.PG


