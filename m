Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB13A3E0C5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 17:30:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E1010E9BC;
	Thu, 20 Feb 2025 16:30:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 321E910E9CA;
 Thu, 20 Feb 2025 16:30:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_perf/x86/rapl=3A_Fix?=
 =?utf-8?q?_PP1_event_for_Intel_Meteor/Lunar_Lake?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Feb 2025 16:30:22 -0000
Message-ID: <174006902219.207390.2875368532326903564@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250220153857.2593704-6-lucas.demarchi@intel.com>
In-Reply-To: <20250220153857.2593704-6-lucas.demarchi@intel.com>
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

Series: perf/x86/rapl: Fix PP1 event for Intel Meteor/Lunar Lake
URL   : https://patchwork.freedesktop.org/series/145184/
State : warning

== Summary ==

Error: dim checkpatch failed
52a64a338612 perf/x86/rapl: Fix PP1 event for Intel Meteor/Lunar Lake
-:32: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Lucas De Marchi <lucas.demarchi@intel.com'
#32: 
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com

-:43: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#43: FILE: arch/x86/events/rapl.c:592:
+	[PERF_RAPL_PP0]  = { MSR_PP0_ENERGY_STATUS,      &rapl_events_cores_group, test_msr, false, RAPL_MSR_MASK },

-:44: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#44: FILE: arch/x86/events/rapl.c:593:
+	[PERF_RAPL_PKG]  = { MSR_PKG_ENERGY_STATUS,      &rapl_events_pkg_group,   test_msr, false, RAPL_MSR_MASK },

-:45: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#45: FILE: arch/x86/events/rapl.c:594:
+	[PERF_RAPL_RAM]  = { MSR_DRAM_ENERGY_STATUS,     &rapl_events_ram_group,   test_msr, false, RAPL_MSR_MASK },

-:46: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#46: FILE: arch/x86/events/rapl.c:595:
+	[PERF_RAPL_PP1]  = { MSR_PP1_ENERGY_STATUS,      &rapl_events_gpu_group,   test_msr, true,  RAPL_MSR_MASK },

-:47: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#47: FILE: arch/x86/events/rapl.c:596:
+	[PERF_RAPL_PSYS] = { MSR_PLATFORM_ENERGY_STATUS, &rapl_events_psys_group,  test_msr, false, RAPL_MSR_MASK },

-:87: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Lucas De Marchi <lucas.demarchi@intel.com>'

total: 2 errors, 5 warnings, 0 checks, 47 lines checked


