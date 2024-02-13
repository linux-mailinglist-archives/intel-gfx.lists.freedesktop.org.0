Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACFF853D3B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 22:35:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCACB10E76A;
	Tue, 13 Feb 2024 21:35:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A39410E76A;
 Tue, 13 Feb 2024 21:35:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Fix_crash_due_to_ope?=
 =?utf-8?q?n_pmu_events_during_unbind?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Feb 2024 21:35:06 -0000
Message-ID: <170786010626.1218995.7370117338605694822@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240213180302.47266-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20240213180302.47266-1-umesh.nerlige.ramappa@intel.com>
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

Series: Fix crash due to open pmu events during unbind
URL   : https://patchwork.freedesktop.org/series/129845/
State : warning

== Summary ==

Error: dim checkpatch failed
7b353b9e67ee i915/pmu: Add pmu_teardown helper
252db2a88e4a i915/pmu: Cleanup pending events on unbind
-:33: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#33: 
Ref: https://lore.kernel.org/lkml/20240115170120.662220-1-tvrtko.ursulin@linux.intel.com/T/#me72abfa2771e6fc94b167ce47efdbf391cc313ab

-:33: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Ref:', use 'Link:' or 'Closes:' instead
#33: 
Ref: https://lore.kernel.org/lkml/20240115170120.662220-1-tvrtko.ursulin@linux.intel.com/T/#me72abfa2771e6fc94b167ce47efdbf391cc313ab

-:240: ERROR:TRAILING_WHITESPACE: trailing whitespace
#240: FILE: drivers/gpu/drm/i915/i915_pmu.h:167:
+^I * @work: worker to delay release of drm device reference $

total: 1 errors, 2 warnings, 0 checks, 166 lines checked


