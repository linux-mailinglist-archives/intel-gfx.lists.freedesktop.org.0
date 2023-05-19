Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 569FB70A384
	for <lists+intel-gfx@lfdr.de>; Sat, 20 May 2023 01:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F23DA10E621;
	Fri, 19 May 2023 23:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 560A810E547;
 Fri, 19 May 2023 23:58:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CCD5AADF2;
 Fri, 19 May 2023 23:58:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 19 May 2023 23:58:46 -0000
Message-ID: <168454072621.26991.9538006349922685884@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230519225642.134778-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230519225642.134778-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915/perf=3A_Avoid_reading_OA_reports_before_they_land?=
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

Series: i915/perf: Avoid reading OA reports before they land
URL   : https://patchwork.freedesktop.org/series/118054/
State : warning

== Summary ==

Error: dim checkpatch failed
0e9ec65e25cf i915/perf: Avoid reading OA reports before they land
-:9: WARNING:TYPO_SPELLING: 'occassionally' may be misspelled - perhaps 'occasionally'?
#9: 
(13.3 us) and heavy render workload, occassionally, the OA HW TAIL
                                     ^^^^^^^^^^^^^

-:26: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Bug:', use 'Link:' or 'Closes:' instead
#26: 
Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7484

-:27: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Bug:', use 'Link:' or 'Closes:' instead
#27: 
Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7757

total: 0 errors, 3 warnings, 0 checks, 21 lines checked


