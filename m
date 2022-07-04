Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA53565E13
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jul 2022 21:36:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF89A9328A;
	Mon,  4 Jul 2022 19:35:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 35D6A93495;
 Mon,  4 Jul 2022 19:35:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EAE3A7DFF;
 Mon,  4 Jul 2022 19:35:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Mon, 04 Jul 2022 19:35:59 -0000
Message-ID: <165696335918.24078.10160127544254090997@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1656921701.git.mchehab@kernel.org>
In-Reply-To: <cover.1656921701.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fix_TLB_invalidate_issues_with_Broadwell_=28rev3=29?=
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

Series: Fix TLB invalidate issues with Broadwell (rev3)
URL   : https://patchwork.freedesktop.org/series/105167/
State : warning

== Summary ==

Error: dim checkpatch failed
3daefa3c9e78 drm/i915/gt: Serialize GRDOM access between multiple engine resets
-:109: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Chris Wilson <chris.p.wilson@intel.com>' != 'Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>'

total: 0 errors, 1 warnings, 0 checks, 77 lines checked
0187c8b1cef5 drm/i915/gt: Serialize TLB invalidates with GT resets
-:61: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Chris Wilson <chris.p.wilson@intel.com>'

total: 1 errors, 0 warnings, 0 checks, 27 lines checked


