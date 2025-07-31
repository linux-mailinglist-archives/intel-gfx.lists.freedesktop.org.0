Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72568B16DB5
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 10:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AC9C10E731;
	Thu, 31 Jul 2025 08:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D589310E72E;
 Thu, 31 Jul 2025 08:39:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Regression_on_linux-next_?=
 =?utf-8?q?=28next-20250721=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Johansen" <john.johansen@canonical.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Jul 2025 08:39:29 -0000
Message-ID: <175395116986.201293.9320388595696125850@1538d3639d33>
X-Patchwork-Hint: ignore
References: <6a98e630-0610-4ba2-89c9-b2bd0d8ef9af@intel.com>
In-Reply-To: <6a98e630-0610-4ba2-89c9-b2bd0d8ef9af@intel.com>
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

Series: Regression on linux-next (next-20250721)
URL   : https://patchwork.freedesktop.org/series/152326/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/152326/revisions/1/mbox/ not applied
Applying: Regression on linux-next (next-20250721)
error: patch failed: security/apparmor/lsm.c:505
error: security/apparmor/lsm.c: patch does not apply
error: Did you hand edit your patch?
It does not apply to blobs recorded in its index.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Using index info to reconstruct a base tree...
M	security/apparmor/lsm.c
Patch failed at 0001 Regression on linux-next (next-20250721)
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


