Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A809B65FB6B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jan 2023 07:25:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45E8010E133;
	Fri,  6 Jan 2023 06:25:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 62A3C10E133;
 Fri,  6 Jan 2023 06:25:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49861A7E03;
 Fri,  6 Jan 2023 06:25:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yan Zhao" <yan.y.zhao@intel.com>
Date: Fri, 06 Jan 2023 06:25:35 -0000
Message-ID: <167298633529.25043.5516887722445981385@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221223005739.1295925-1-seanjc@google.com>
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gvt=3A_KVM=3A_KVMGT_fixes_and_page-track_cleanups_=28re?=
 =?utf-8?b?djMp?=
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

Series: drm/i915/gvt: KVM: KVMGT fixes and page-track cleanups (rev3)
URL   : https://patchwork.freedesktop.org/series/112196/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/112196/revisions/3/mbox/ not applied
Applying: drm/i915/gvt: Verify pfn is "valid" before dereferencing "struct page"
Applying: KVM: x86/mmu: Factor out helper to get max mapping size of a memslot
Applying: drm/i915/gvt: Incorporate KVM memslot info into check for 2MiB GTT entry
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/gvt/gtt.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/i915/gvt: Incorporate KVM memslot info into check for 2MiB GTT entry
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


