Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C8C7583FC
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 20:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4760E10E0AC;
	Tue, 18 Jul 2023 18:00:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5EE6910E0AC;
 Tue, 18 Jul 2023 18:00:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 57D26A0093;
 Tue, 18 Jul 2023 18:00:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 18 Jul 2023 18:00:44 -0000
Message-ID: <168970324432.22204.14095870147445532019@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230718172934.69049-1-imre.deak@intel.com>
In-Reply-To: <20230718172934.69049-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_Avoid_endless_HP?=
 =?utf-8?q?D_poll_detect_loop_via_runtime_suspend/resume?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/3] drm/i915: Avoid endless HPD poll detect loop via runtime suspend/resume
URL   : https://patchwork.freedesktop.org/series/120931/
State : warning

== Summary ==

Error: dim checkpatch failed
0aa33f8c1790 drm/i915: Avoid endless HPD poll detect loop via runtime suspend/resume
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
commit a8ddac7c9f06 ("drm/i915: Avoid HPD poll detect triggering a new detect cycle")

-:41: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' or 'Closes:' instead
#41: 
References: https://gitlab.freedesktop.org/drm/intel/-/issues/7940#note_1997403

total: 0 errors, 2 warnings, 0 checks, 84 lines checked
c362e2937e34 drm: Add an HPD poll helper to reschedule the poll work
3f5f864c2c37 drm/i915: Fix HPD polling, reenabling the output poll work as needed


