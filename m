Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42339A53E55
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 00:21:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C1E110E866;
	Wed,  5 Mar 2025 23:21:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 64e06c682a23 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A56510E866;
 Wed,  5 Mar 2025 23:21:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Fix_harm?=
 =?utf-8?q?full_driver_register/unregister_assymetry_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 05 Mar 2025 23:21:10 -0000
Message-ID: <174121687043.63796.17640176264142067562@64e06c682a23>
X-Patchwork-Hint: ignore
References: <20250305191152.164615-6-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20250305191152.164615-6-janusz.krzysztofik@linux.intel.com>
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

Series: drm/i915: Fix harmfull driver register/unregister assymetry (rev4)
URL   : https://patchwork.freedesktop.org/series/144436/
State : warning

== Summary ==

Error: dim checkpatch failed
fc579ebc3a39 drm/i915: Skip harmful unregister steps if not registered
-:14: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#14: 
<3> [525.823143] i915 0000:00:02.0: [drm] *ERROR* Failed to register driver for

-:189: WARNING:MISSING_FIXES_TAG: The commit message has 'Call Trace:', perhaps it also needs a 'Fixes:' tag?

total: 0 errors, 2 warnings, 0 checks, 43 lines checked
a091b5e002d5 drm/i915: Omit unnecessary driver unregister steps
a52a28d2dd35 drm/i915: Fix asymmetry in PMU register/unregister step order
77e3abf6a56b drm/i915: Group not skipped unregister steps


