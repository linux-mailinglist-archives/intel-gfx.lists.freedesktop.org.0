Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A76A5AE8E6
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 14:58:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C57E910E660;
	Tue,  6 Sep 2022 12:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A542210E65E;
 Tue,  6 Sep 2022 12:58:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9EAA3A7DFC;
 Tue,  6 Sep 2022 12:58:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zheng Hacker" <hackerzheng666@gmail.com>
Date: Tue, 06 Sep 2022 12:58:11 -0000
Message-ID: <166246909164.8880.10585519190282207260@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <tencent_E1BBF05904DFB73C478DCD592740AAE0780A@qq.com>
In-Reply-To: <tencent_E1BBF05904DFB73C478DCD592740AAE0780A@qq.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gvt=3A_fix_double-free_bug_in_split=5F2MB=5Fgtt=5Fentry?=
 =?utf-8?q?=2E?=
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

Series: drm/i915/gvt: fix double-free bug in split_2MB_gtt_entry.
URL   : https://patchwork.freedesktop.org/series/108188/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/108188/revisions/1/mbox/ not applied
Applying: drm/i915/gvt: fix double-free bug in split_2MB_gtt_entry.
error: patch failed: drivers/gpu/drm/i915/gvt/gtt.c:1215
error: drivers/gpu/drm/i915/gvt/gtt.c: patch does not apply
error: Did you hand edit your patch?
It does not apply to blobs recorded in its index.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Using index info to reconstruct a base tree...
Patch failed at 0001 drm/i915/gvt: fix double-free bug in split_2MB_gtt_entry.
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


