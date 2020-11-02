Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E29782A30B6
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 18:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E8B06EB8A;
	Mon,  2 Nov 2020 17:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FF676EB87;
 Mon,  2 Nov 2020 17:01:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48279A0019;
 Mon,  2 Nov 2020 17:01:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 02 Nov 2020 17:01:21 -0000
Message-ID: <160433648127.26395.11959762612154122606@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201102161931.30031-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201102161931.30031-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Hold_onto_an_explicit_ref_to_i915=5Fvma=5Fwork?=
 =?utf-8?q?=2Epinned?=
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

Series: drm/i915: Hold onto an explicit ref to i915_vma_work.pinned
URL   : https://patchwork.freedesktop.org/series/83362/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
906ed3e10d17 drm/i915: Hold onto an explicit ref to i915_vma_work.pinned
-:18: WARNING:BAD_SIGN_OFF: email address '<stable@vger.kernel.org> # v5.6+' might be better as 'stable@vger.kernel.org# v5.6+'
#18: 
Cc: <stable@vger.kernel.org> # v5.6+

total: 0 errors, 1 warnings, 0 checks, 19 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
