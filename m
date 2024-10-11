Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C874599A01F
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 11:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A79410E16C;
	Fri, 11 Oct 2024 09:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E78C110E16C;
 Fri, 11 Oct 2024 09:25:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/selftests?=
 =?utf-8?q?=3A_Implement_frequency_logging_for_energy_reading_validation_=28?=
 =?utf-8?q?rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sk Anirban" <sk.anirban@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2024 09:25:31 -0000
Message-ID: <172863873194.1239907.15824518166521757664@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241010173439.2006496-1-sk.anirban@intel.com>
In-Reply-To: <20241010173439.2006496-1-sk.anirban@intel.com>
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

Series: drm/i915/selftests: Implement frequency logging for energy reading validation (rev4)
URL   : https://patchwork.freedesktop.org/series/139235/
State : warning

== Summary ==

Error: dim checkpatch failed
ff83961d3b48 drm/i915/selftests: Implement frequency logging for energy reading validation
-:65: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#65: FILE: drivers/gpu/drm/i915/gt/selftest_rc6.c:87:
+				pr_debug("No power measured while in RC0! GPU Freq: %u in RC0\n",
+			rc0_freq);

-:66: CHECK:BRACES: Unbalanced braces around else statement
#66: FILE: drivers/gpu/drm/i915/gt/selftest_rc6.c:88:
+			else {

total: 0 errors, 0 warnings, 2 checks, 56 lines checked


