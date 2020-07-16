Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CA9222597
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 16:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 449E16EC65;
	Thu, 16 Jul 2020 14:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A2E746EBA5;
 Thu, 16 Jul 2020 14:31:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C54EA66C7;
 Thu, 16 Jul 2020 14:31:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Jul 2020 14:31:11 -0000
Message-ID: <159490987161.25377.9577795759719192540@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200716142207.13003-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200716142207.13003-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/2=5D_drm/i915=3A_Be_wary_of_?=
 =?utf-8?q?data_races_when_reading_the_active_execlists?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [CI,1/2] drm/i915: Be wary of data races when reading the active execlists
URL   : https://patchwork.freedesktop.org/series/79556/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a9025407e910 drm/i915: Be wary of data races when reading the active execlists
-:92: WARNING:TYPO_SPELLING: 'overwritting' may be misspelled - perhaps 'overwriting'?
#92: FILE: drivers/gpu/drm/i915/i915_request.c:409:
+	 * of execlists->pending[] to execlists->inflight[], overwritting

total: 0 errors, 1 warnings, 0 checks, 67 lines checked
b3af951bbc96 drm/i915: Remove i915_request.lock requirement for execution callbacks


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
