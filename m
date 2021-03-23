Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA21346B1B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 22:32:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA3A66E917;
	Tue, 23 Mar 2021 21:32:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCFED6E917;
 Tue, 23 Mar 2021 21:32:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B649EA882E;
 Tue, 23 Mar 2021 21:32:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Tue, 23 Mar 2021 21:32:56 -0000
Message-ID: <161653517671.20053.1842141038550656812@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210319223856.2983244-1-jason@jlekstrand.net>
In-Reply-To: <20210319223856.2983244-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_uAPI_clean-ups_part_2_=28rev2=29?=
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

Series: drm/i915: uAPI clean-ups part 2 (rev2)
URL   : https://patchwork.freedesktop.org/series/88196/
State : failure

== Summary ==

Applying: drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE
Applying: drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP
Applying: drm/i915: Drop the CONTEXT_CLONE API
Applying: drm/i915: Implement SINGLE_TIMELINE with a syncobj (v2)
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/gem/i915_gem_context.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0004 drm/i915: Implement SINGLE_TIMELINE with a syncobj (v2)
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
