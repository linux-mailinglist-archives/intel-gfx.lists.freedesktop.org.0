Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D23987C2A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 02:32:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14A1810E33C;
	Fri, 27 Sep 2024 00:32:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D61D10E33C;
 Fri, 27 Sep 2024 00:32:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Some_correction_in_t?=
 =?utf-8?q?he_DP_Link_Training_sequence_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2024 00:32:00 -0000
Message-ID: <172739712030.1109329.17953779115715177377@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240925034432.1777029-1-arun.r.murthy@intel.com>
In-Reply-To: <20240925034432.1777029-1-arun.r.murthy@intel.com>
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

Series: Some correction in the DP Link Training sequence (rev3)
URL   : https://patchwork.freedesktop.org/series/139027/
State : warning

== Summary ==

Error: dim checkpatch failed
e456c1053e15 drm/i915/dp: use fsleep instead of usleep_range for LT
-:12: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match
#12: 
Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
3116d74a4c4a drm/i915/dp: read Aux RD interval just before setting the FFE preset
-:12: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match
#12: 
Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
3335a96987f6 drm/i915/dp: Include the time taken by AUX Tx for timeout
-:13: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match
#13: 
Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

total: 0 errors, 1 warnings, 0 checks, 8 lines checked


