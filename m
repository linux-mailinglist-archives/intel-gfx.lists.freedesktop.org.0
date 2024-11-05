Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B33209BCE5D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 14:55:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D8610E5AB;
	Tue,  5 Nov 2024 13:55:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D4BA10E5AB;
 Tue,  5 Nov 2024 13:55:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Power_request_asserting/deasserting_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Nov 2024 13:55:05 -0000
Message-ID: <173081490544.1412321.4245772597366450167@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241105131732.331436-1-mika.kahola@intel.com>
In-Reply-To: <20241105131732.331436-1-mika.kahola@intel.com>
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

Series: drm/i915/display: Power request asserting/deasserting (rev3)
URL   : https://patchwork.freedesktop.org/series/140766/
State : warning

== Summary ==

Error: dim checkpatch failed
dc78860b267c drm/i915/xe3lpd: Power request asserting/deasserting
-:52: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:207:
+						REG_FIELD_PREP(TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK, val))

total: 0 errors, 1 warnings, 0 checks, 57 lines checked
717226cf2615 drm/i915/display: Use struct intel_display instead of struct drm_i915_private
-:10: WARNING:TYPO_SPELLING: 'funtion' may be misspelled - perhaps 'function'?
#10: 
v2: Drop tc_to_intel_display() helper funtion (Jani)
                                      ^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 30 lines checked


