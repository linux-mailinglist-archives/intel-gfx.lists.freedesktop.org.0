Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9476B88AA
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 03:33:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB8AB10E6BE;
	Tue, 14 Mar 2023 02:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FC5E10E6BE;
 Tue, 14 Mar 2023 02:32:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 98B77A47EB;
 Tue, 14 Mar 2023 02:32:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Tue, 14 Mar 2023 02:32:57 -0000
Message-ID: <167876117760.26414.10812543396471235715@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <167820543971229@kroah.com>
In-Reply-To: <167820543971229@kroah.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Don=27t_use_BAR_mappings_for_ring_buffers_with_LLC_?=
 =?utf-8?b?KHJldjMp?=
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

Series: drm/i915: Don't use BAR mappings for ring buffers with LLC (rev3)
URL   : https://patchwork.freedesktop.org/series/115090/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/115090/revisions/3/mbox/ not applied
Applying: drm/i915: Don't use BAR mappings for ring buffers with LLC
Using index info to reconstruct a base tree...
A	drivers/gpu/drm/i915/gt/intel_ringbuffer.c
Falling back to patching base and 3-way merge...
CONFLICT (modify/delete): drivers/gpu/drm/i915/gt/intel_ringbuffer.c deleted in HEAD and modified in drm/i915: Don't use BAR mappings for ring buffers with LLC. Version drm/i915: Don't use BAR mappings for ring buffers with LLC of drivers/gpu/drm/i915/gt/intel_ringbuffer.c left in tree.
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: Don't use BAR mappings for ring buffers with LLC
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


