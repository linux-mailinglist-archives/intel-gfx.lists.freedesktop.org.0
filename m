Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C32DB22C4B4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 14:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F03A6E95E;
	Fri, 24 Jul 2020 12:04:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 855F16E959;
 Fri, 24 Jul 2020 12:04:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7F9EEA00C7;
 Fri, 24 Jul 2020 12:04:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 Jul 2020 12:04:16 -0000
Message-ID: <159559225649.15336.7001186201153571110@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200724115352.19892-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200724115352.19892-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/gt=3A_Disable_prepa?=
 =?utf-8?q?rser_around_xcs_invalidations_on_tgl?=
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

Series: series starting with [1/3] drm/i915/gt: Disable preparser around xcs invalidations on tgl
URL   : https://patchwork.freedesktop.org/series/79846/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e60c2dc861ee drm/i915/gt: Disable preparser around xcs invalidations on tgl
d31422d62dfb drm/i915/gt: Stall around xcs invalidations on tgl
3ba7f391d548 drm/i915/selftests: Add compiler paranoia for checking HWSP values
-:72: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#72: FILE: drivers/gpu/drm/i915/gt/selftest_timeline.c:972:
+					      count, tl->fence_context, tl->hwsp_offset, *tl->hwsp_seqno);

total: 0 errors, 1 warnings, 0 checks, 53 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
