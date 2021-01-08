Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 117472EF20D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 13:10:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8209B6E808;
	Fri,  8 Jan 2021 12:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FA946E802;
 Fri,  8 Jan 2021 12:10:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3EBFDA0118;
 Fri,  8 Jan 2021 12:10:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 08 Jan 2021 12:10:33 -0000
Message-ID: <161010783322.334.706053196709312416@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210108104355.8958-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210108104355.8958-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBS?=
 =?utf-8?q?FC_drm/i915=3A_Expose_union=28class=29_utililisation?=
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

Series: RFC drm/i915: Expose union(class) utililisation
URL   : https://patchwork.freedesktop.org/series/85609/
State : failure

== Summary ==

Applying: RFC drm/i915: Expose union(class) utililisation
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_engine_cs.c
A	drivers/gpu/drm/i915/gt/intel_engine_stats.h
M	drivers/gpu/drm/i915/gt/intel_engine_types.h
M	drivers/gpu/drm/i915/gt/intel_engine_user.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/intel_engine_user.c
Auto-merging drivers/gpu/drm/i915/gt/intel_engine_types.h
CONFLICT (modify/delete): drivers/gpu/drm/i915/gt/intel_engine_stats.h deleted in HEAD and modified in RFC drm/i915: Expose union(class) utililisation. Version RFC drm/i915: Expose union(class) utililisation of drivers/gpu/drm/i915/gt/intel_engine_stats.h left in tree.
Auto-merging drivers/gpu/drm/i915/gt/intel_engine_cs.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_engine_cs.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 RFC drm/i915: Expose union(class) utililisation
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
