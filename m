Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A81A2253C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:53:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C44D10E167;
	Wed, 29 Jan 2025 20:53:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C413710E0C9;
 Wed, 29 Jan 2025 20:53:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Regression_on_linux-next_?=
 =?utf-8?q?=28next-20250120=29_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Al Viro" <viro@ZenIV.linux.org.uk>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2025 20:53:37 -0000
Message-ID: <173818401779.2530294.11352683650301608238@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <SJ1PR11MB6129D7DA59A733AD38E081E3B9E02@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129D7DA59A733AD38E081E3B9E02@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

Series: Regression on linux-next (next-20250120) (rev2)
URL   : https://patchwork.freedesktop.org/series/143978/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/143978/revisions/2/mbox/ not applied
Applying: Regression on linux-next (next-20250120)
Using index info to reconstruct a base tree...
M	fs/debugfs/file.c
Falling back to patching base and 3-way merge...
Auto-merging fs/debugfs/file.c
CONFLICT (content): Merge conflict in fs/debugfs/file.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 Regression on linux-next (next-20250120)
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


