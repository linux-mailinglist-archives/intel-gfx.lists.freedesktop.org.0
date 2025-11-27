Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9667CC8DACF
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 11:03:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB8FB10E80B;
	Thu, 27 Nov 2025 10:03:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7E1A10E807;
 Thu, 27 Nov 2025 10:03:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_REGRESSION_on_linux-next_?=
 =?utf-8?q?=28next-20251125=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christian Brauner" <brauner@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Nov 2025 10:03:39 -0000
Message-ID: <176423781968.33971.17573300315816041502@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <a27eb5f4-c4c9-406c-9b53-93f7888db14a@intel.com>
In-Reply-To: <a27eb5f4-c4c9-406c-9b53-93f7888db14a@intel.com>
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

Series: REGRESSION on linux-next (next-20251125)
URL   : https://patchwork.freedesktop.org/series/158158/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/158158/revisions/1/mbox/ not applied
Applying: REGRESSION on linux-next (next-20251125)
error: patch failed: drivers/dma-buf/sync_file.c:244
error: drivers/dma-buf/sync_file.c: patch does not apply
error: Did you hand edit your patch?
It does not apply to blobs recorded in its index.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Using index info to reconstruct a base tree...
M	drivers/dma-buf/sync_file.c
Patch failed at 0001 REGRESSION on linux-next (next-20251125)
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


