Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA519BB7D5
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 15:31:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E2410E456;
	Mon,  4 Nov 2024 14:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DBAD10E44B;
 Mon,  4 Nov 2024 14:31:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5BRESEND=2CPATCHv2=2C1/3=5D_drm/i915/dp=3A_use_fsleep_instead_o?=
 =?utf-8?q?f_usleep=5Frange_for_LT?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 04 Nov 2024 14:31:01 -0000
Message-ID: <173073066137.1391508.5433166803646792469@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241104035859.3796797-1-arun.r.murthy@intel.com>
In-Reply-To: <20241104035859.3796797-1-arun.r.murthy@intel.com>
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

Series: series starting with [RESEND,PATCHv2,1/3] drm/i915/dp: use fsleep instead of usleep_range for LT
URL   : https://patchwork.freedesktop.org/series/140856/
State : warning

== Summary ==

Error: dim checkpatch failed
a56d6fcb9e14 drm/i915/dp: use fsleep instead of usleep_range for LT
-:12: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match
#12: 
Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
d90676bee728 drm/i915/dp: read Aux RD interval just before setting the FFE preset
-:14: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match
#14: 
Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
dbb1353c00ca drm/i915/dp: Include the time taken by AUX Tx for timeout
-:13: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match
#13: 
Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

total: 0 errors, 1 warnings, 0 checks, 8 lines checked


