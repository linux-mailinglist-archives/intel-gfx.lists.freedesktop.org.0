Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B683975DB
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 16:57:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65D0C8970B;
	Tue,  1 Jun 2021 14:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 73AB58970B;
 Tue,  1 Jun 2021 14:57:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6CD7EA47EB;
 Tue,  1 Jun 2021 14:57:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Tue, 01 Jun 2021 14:57:02 -0000
Message-ID: <162255942242.19252.14445205991457901845@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210601092357.536364-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210601092357.536364-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Only_set_bind=5Fasync=5Fflags_when_concurrent_a?=
 =?utf-8?q?ccess_wa_is_not_active=2C_v3=2E_=28rev2=29?=
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

Series: drm/i915: Only set bind_async_flags when concurrent access wa is not active, v3. (rev2)
URL   : https://patchwork.freedesktop.org/series/90818/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
99698554997c drm/i915: Only set bind_async_flags when concurrent access wa is not active, v3.
-:74: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#74: FILE: drivers/gpu/drm/i915/i915_vma.c:439:
+		vma->ops->bind_vma(vma->vm, work ? &work->stash : NULL, vma, cache_level, bind_flags);

total: 0 errors, 1 warnings, 0 checks, 44 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
