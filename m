Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB71397AC7
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 21:42:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AEFC6EAD6;
	Tue,  1 Jun 2021 19:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 833966EAD6;
 Tue,  1 Jun 2021 19:42:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74449A47E1;
 Tue,  1 Jun 2021 19:42:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Will Deacon" <will@kernel.org>
Date: Tue, 01 Jun 2021 19:42:27 -0000
Message-ID: <162257654745.19249.2909555042230463066@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210518064215.2856977-1-tientzu@chromium.org>
In-Reply-To: <20210518064215.2856977-1-tientzu@chromium.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBS?=
 =?utf-8?q?estricted_DMA_=28rev5=29?=
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

Series: Restricted DMA (rev5)
URL   : https://patchwork.freedesktop.org/series/89341/
State : failure

== Summary ==

Applying: swiotlb: Refactor swiotlb init functions
Applying: swiotlb: Refactor swiotlb_create_debugfs
Applying: swiotlb: Add DMA_RESTRICTED_POOL
Applying: swiotlb: Add restricted DMA pool initialization
Using index info to reconstruct a base tree...
M	drivers/base/core.c
M	include/linux/device.h
M	include/linux/swiotlb.h
M	kernel/dma/swiotlb.c
Falling back to patching base and 3-way merge...
Auto-merging kernel/dma/swiotlb.c
CONFLICT (content): Merge conflict in kernel/dma/swiotlb.c
Auto-merging include/linux/swiotlb.h
CONFLICT (content): Merge conflict in include/linux/swiotlb.h
Auto-merging include/linux/device.h
CONFLICT (content): Merge conflict in include/linux/device.h
Auto-merging drivers/base/core.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0004 swiotlb: Add restricted DMA pool initialization
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
