Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCA1947D85
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 17:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D5810E222;
	Mon,  5 Aug 2024 15:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1FC010E221;
 Mon,  5 Aug 2024 15:02:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_i915=3A_change_pr=5F?=
 =?utf-8?q?info_to_pr=5Finfo=5Fratelimited?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mikulas Patocka" <mpatocka@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 05 Aug 2024 15:02:31 -0000
Message-ID: <172287015166.540582.15237138942693103795@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <41f16eed-cc12-ad7d-45ae-bb67815d1728@redhat.com>
In-Reply-To: <41f16eed-cc12-ad7d-45ae-bb67815d1728@redhat.com>
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

Series: i915: change pr_info to pr_info_ratelimited
URL   : https://patchwork.freedesktop.org/series/136887/
State : warning

== Summary ==

Error: dim checkpatch failed
912454c8f57f i915: change pr_info to pr_info_ratelimited
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
Purging GPU memory, 0 pages freed, 0 pages still pinned, 2029 pages left available.

-:16: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#16: 
Reported-by: Zdenek Kabelac <zkabelac@redhat.com>


total: 0 errors, 2 warnings, 0 checks, 8 lines checked


