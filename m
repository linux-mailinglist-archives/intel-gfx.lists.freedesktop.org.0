Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 177979E2C8A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 20:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8DD310E13E;
	Tue,  3 Dec 2024 19:58:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C995510E0D0;
 Tue,  3 Dec 2024 19:58:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Regression_on_linux-next_?=
 =?utf-8?q?=28next-20241120=29_and_drm-tip_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Dec 2024 19:58:58 -0000
Message-ID: <173325593881.2126109.15467807071470523333@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <5e405ad4-34d6-4507-978f-3d81d4af2455@t-8ch.de>
In-Reply-To: <5e405ad4-34d6-4507-978f-3d81d4af2455@t-8ch.de>
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

Series: Regression on linux-next (next-20241120) and drm-tip (rev2)
URL   : https://patchwork.freedesktop.org/series/142029/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/142029/revisions/2/mbox/ not applied
Applying: Regression on linux-next (next-20241120) and drm-tip
error: patch failed: drivers/usb/typec/ucsi/ucsi.c:651
error: drivers/usb/typec/ucsi/ucsi.c: patch does not apply
error: Did you hand edit your patch?
It does not apply to blobs recorded in its index.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Using index info to reconstruct a base tree...
Patch failed at 0001 Regression on linux-next (next-20241120) and drm-tip
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


