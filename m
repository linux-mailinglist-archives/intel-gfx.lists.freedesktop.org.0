Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 230A6135753
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 11:47:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B77C6E8FB;
	Thu,  9 Jan 2020 10:47:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 805246E8FA;
 Thu,  9 Jan 2020 10:47:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7BDB6A0134;
 Thu,  9 Jan 2020 10:47:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 09 Jan 2020 10:47:01 -0000
Message-ID: <157856682150.4565.4912999176687751715@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108153550.3803446-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200108153550.3803446-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Early_return_for_no-op_?=
 =?utf-8?b?aTkxNV92bWFfcGluX2ZlbmNlKCk=?=
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

Series: series starting with [1/2] drm/i915: Early return for no-op i915_vma_pin_fence()
URL   : https://patchwork.freedesktop.org/series/71772/
State : failure

== Summary ==

Applying: drm/i915: Early return for no-op i915_vma_pin_fence()
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_gem_fence_reg.c
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.
Applying: drm/i915: Reduce warning for i915_vma_pin_iomap() without runtime-pm
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_vma.c
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
