Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E47302310AA
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 19:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BFF06E1B8;
	Tue, 28 Jul 2020 17:14:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 93E3F6E130;
 Tue, 28 Jul 2020 17:14:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D2F1A00EF;
 Tue, 28 Jul 2020 17:14:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 28 Jul 2020 17:14:55 -0000
Message-ID: <159595649554.21869.16604391596322893268@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200728152110.830-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200728152110.830-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Disable_?=
 =?utf-8?q?preparser_around_xcs_invalidations_on_tgl?=
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

Series: series starting with [CI,1/2] drm/i915/gt: Disable preparser around xcs invalidations on tgl
URL   : https://patchwork.freedesktop.org/series/79985/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6c95b9fa97de drm/i915/gt: Disable preparser around xcs invalidations on tgl
c288f3122cdb drm/i915/selftests: Add compiler paranoia for checking HWSP values
-:72: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#72: FILE: drivers/gpu/drm/i915/gt/selftest_timeline.c:972:
+					      count, tl->fence_context, tl->hwsp_offset, *tl->hwsp_seqno);

total: 0 errors, 1 warnings, 0 checks, 53 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
