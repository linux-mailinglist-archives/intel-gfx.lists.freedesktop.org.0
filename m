Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9AD32B9DA
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 19:29:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06A326E0EC;
	Wed,  3 Mar 2021 18:29:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E37676E0EC;
 Wed,  3 Mar 2021 18:29:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0B13A0091;
 Wed,  3 Mar 2021 18:29:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Han, Zhen" <zhen.han@intel.com>
Date: Wed, 03 Mar 2021 18:29:11 -0000
Message-ID: <161479615191.23596.753194886891341572@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210303010728.3605269-1-lucas.demarchi@intel.com>
In-Reply-To: <20210303010728.3605269-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/4=5D_drm/i915/gen12=3A_Add_recommended?=
 =?utf-8?q?_hardware_tuning_value_=28rev2=29?=
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

Series: series starting with [1/4] drm/i915/gen12: Add recommended hardware tuning value (rev2)
URL   : https://patchwork.freedesktop.org/series/87560/
State : failure

== Summary ==

Applying: drm/i915/gen12: Add recommended hardware tuning value
Applying: drm/i915/icl: add Wa_22010271021 for all gen11
Applying: drm/i915: Wa_14010826681 does the same as Wa_22010271021
Applying: drm/i915/dg1: WA GPU hang at RCC
error: patch failed: drivers/gpu/drm/i915/gt/intel_workarounds.c:739
error: drivers/gpu/drm/i915/gt/intel_workarounds.c: patch does not apply
error: Did you hand edit your patch?
It does not apply to blobs recorded in its index.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Using index info to reconstruct a base tree...
Patch failed at 0004 drm/i915/dg1: WA GPU hang at RCC
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
