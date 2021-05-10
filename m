Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DC6378214
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 12:31:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A52B06E059;
	Mon, 10 May 2021 10:31:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 658356E059;
 Mon, 10 May 2021 10:31:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5CD73A0019;
 Mon, 10 May 2021 10:31:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Paul Zimmerman" <pauldzim@gmail.com>
Date: Mon, 10 May 2021 10:31:17 -0000
Message-ID: <162064267735.9575.629472333443156583@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210509044330.4655-1-pauldzim@gmail.com>
In-Reply-To: <20210509044330.4655-1-pauldzim@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBS?=
 =?utf-8?q?evert_=22drm/i915=3A_Try_to_use_fast+narrow_link_on_eDP_again_a?=
 =?utf-8?q?nd_fall_back_to_the_old_max_strategy_on_failure=22?=
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

Series: Revert "drm/i915: Try to use fast+narrow link on eDP again and fall back to the old max strategy on failure"
URL   : https://patchwork.freedesktop.org/series/89941/
State : failure

== Summary ==

Applying: Revert "drm/i915: Try to use fast+narrow link on eDP again and fall back to the old max strategy on failure"
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display_types.h
M	drivers/gpu/drm/i915/display/intel_dp.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dp.c
Auto-merging drivers/gpu/drm/i915/display/intel_display_types.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 Revert "drm/i915: Try to use fast+narrow link on eDP again and fall back to the old max strategy on failure"
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
