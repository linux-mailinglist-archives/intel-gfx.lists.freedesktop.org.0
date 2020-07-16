Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C708222D1E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 22:40:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 089026ECE6;
	Thu, 16 Jul 2020 20:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 808E06E17E;
 Thu, 16 Jul 2020 20:40:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8229DA66C9;
 Thu, 16 Jul 2020 20:40:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Jul 2020 20:40:21 -0000
Message-ID: <159493202150.25374.4239793565962838606@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200716203201.11977-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200716203201.11977-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/selftests=3A_Add_co?=
 =?utf-8?q?mpiler_paranoia_for_checking_HWSP_values?=
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

Series: series starting with [1/2] drm/i915/selftests: Add compiler paranoia for checking HWSP values
URL   : https://patchwork.freedesktop.org/series/79565/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
31bcd6fa4b2a drm/i915/selftests: Add compiler paranoia for checking HWSP values
-:35: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#35: FILE: drivers/gpu/drm/i915/gt/selftest_timeline.c:566:
+			GEM_TRACE_ERR("Invalid seqno:%lu stored in timeline %llu @ %x, found 0x%x\n",
+			       n, tl->fence_context, tl->hwsp_offset, *tl->hwsp_seqno);

-:48: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#48: FILE: drivers/gpu/drm/i915/gt/selftest_timeline.c:638:
+			GEM_TRACE_ERR("Invalid seqno:%lu stored in timeline %llu @ %x, found 0x%x\n",
+			       n, tl->fence_context, tl->hwsp_offset, *tl->hwsp_seqno);

-:57: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#57: FILE: drivers/gpu/drm/i915/gt/selftest_timeline.c:736:
+		if (READ_ONCE(*hwsp_seqno[0]) != seqno[0] || READ_ONCE(*hwsp_seqno[1]) != seqno[1]) {

-:70: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#70: FILE: drivers/gpu/drm/i915/gt/selftest_timeline.c:971:
+				GEM_TRACE_ERR("Invalid seqno:%lu stored in timeline %llu @ %x found 0x%x\n",
+				       count, tl->fence_context, tl->hwsp_offset, *tl->hwsp_seqno);

total: 0 errors, 1 warnings, 3 checks, 52 lines checked
58fd41068987 drm/i915/gt: Wait for aux invalidation on Tigerlake


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
