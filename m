Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BA23F17BC
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 13:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C561B6E5C3;
	Thu, 19 Aug 2021 11:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B89F26E5C3;
 Thu, 19 Aug 2021 11:09:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4A52A01BB;
 Thu, 19 Aug 2021 11:09:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Desmond Cheong Zhi Xi" <desmondcheongzx@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Aug 2021 11:09:45 -0000
Message-ID: <162937138564.11704.6825589634797382560@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210818073824.1560124-1-desmondcheongzx@gmail.com>
In-Reply-To: <20210818073824.1560124-1-desmondcheongzx@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=2C_kernel=3A_update_locking_for_DRM_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm, kernel: update locking for DRM (rev2)
URL   : https://patchwork.freedesktop.org/series/93782/
State : failure

== Summary ==

Applying: drm: move master_lookup_lock into drm_device
Applying: drm: hold master_lookup_lock when releasing a drm_file's master
Applying: drm: check for null master in drm_is_current_master_locked
Applying: drm: fix potential null ptr dereferences in drm_{auth, ioctl}
Applying: drm: protect magic_map, unique{_len} with master_lookup_lock
Applying: drm: convert drm_device.master_mutex into a rwsem
Applying: drm: update global mutex lock in the ioctl handler
error: patch failed: drivers/gpu/drm/drm_ioctl.c:712
error: drivers/gpu/drm/drm_ioctl.c: patch does not apply
error: patch failed: drivers/gpu/drm/drm_lease.c:500
error: drivers/gpu/drm/drm_lease.c: patch does not apply
error: Did you hand edit your patch?
It does not apply to blobs recorded in its index.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_ioctl.c
M	drivers/gpu/drm/drm_lease.c
Patch failed at 0007 drm: update global mutex lock in the ioctl handler
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


