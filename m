Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD58815213
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 22:49:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FBDF10E127;
	Fri, 15 Dec 2023 21:49:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 98ED310E127;
 Fri, 15 Dec 2023 21:49:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 909E5AA915;
 Fri, 15 Dec 2023 21:49:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_perf=3A_Fix_perf=5Fe?=
 =?utf-8?q?vent=5Fvalidate=5Fsize=28=29_lockdep_splat?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 15 Dec 2023 21:49:37 -0000
Message-ID: <170267697758.27832.16190317417848826105@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231215162217.3273876-1-lucas.demarchi@intel.com>
In-Reply-To: <20231215162217.3273876-1-lucas.demarchi@intel.com>
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

Series: perf: Fix perf_event_validate_size() lockdep splat
URL   : https://patchwork.freedesktop.org/series/127883/
State : warning

== Summary ==

Error: dim checkpatch failed
ae4af2d14505 perf: Fix perf_event_validate_size() lockdep splat
-:23: WARNING:BAD_FIXES_TAG: Please use correct Fixes: style 'Fixes: <12 chars of sha1> ("<title line>")' - ie: 'Fixes: 382c27f4ed28 ("perf: Fix perf_event_validate_size()")'
#23: 
Fixes: 382c27f4ed28f803 ("perf: Fix perf_event_validate_size()")

-:26: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#26: 
Reported-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reported-by: Pengfei Xu <pengfei.xu@intel.com>

-:27: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#27: 
Reported-by: Pengfei Xu <pengfei.xu@intel.com>
Signed-off-by: Mark Rutland <mark.rutland@arm.com>

total: 0 errors, 3 warnings, 0 checks, 16 lines checked


