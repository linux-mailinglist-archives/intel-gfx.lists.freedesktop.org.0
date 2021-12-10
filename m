Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D7B46F7CC
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 01:00:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3C8910E155;
	Fri, 10 Dec 2021 00:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 53EFA10E14E;
 Fri, 10 Dec 2021 00:00:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4BC00A9A42;
 Fri, 10 Dec 2021 00:00:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 10 Dec 2021 00:00:16 -0000
Message-ID: <163909441630.3444.9088818501379015160@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211209104711.14790-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20211209104711.14790-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Introduce_new_Ti?=
 =?utf-8?q?le_4_format?=
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

Series: series starting with [1/2] drm/i915: Introduce new Tile 4 format
URL   : https://patchwork.freedesktop.org/series/97778/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
59d54448d9b9 drm/i915: Introduce new Tile 4 format
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
granularity, Tile Y has a shape of 16B x 32 rows, but this tiling has a shape

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
d65b79d94e2e drm/i915/dg2: Tile 4 plane format support
-:13: WARNING:TYPO_SPELLING: 'assocating' may be misspelled - perhaps 'associating'?
#13: 
v2: - Moved Tile4 assocating struct for modifier/display to
                  ^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 159 lines checked


