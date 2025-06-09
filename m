Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 306AFAD1738
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 05:01:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 309C010E3D9;
	Mon,  9 Jun 2025 03:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41F7F10E499;
 Mon,  9 Jun 2025 03:01:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_bits=3A_Split_asm_and_non?=
 =?utf-8?q?-asm_GENMASK*=28=29_and_unify_definitions_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vincent Mailhol via B4 Relay"
 <devnull+mailhol.vincent.wanadoo.fr@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Jun 2025 03:01:51 -0000
Message-ID: <174943811126.58753.855510885491721276@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250609-consolidate-genmask-v2-0-b8cce8107e49@wanadoo.fr>
In-Reply-To: <20250609-consolidate-genmask-v2-0-b8cce8107e49@wanadoo.fr>
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

Series: bits: Split asm and non-asm GENMASK*() and unify definitions (rev2)
URL   : https://patchwork.freedesktop.org/series/146626/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/146626/revisions/2/mbox/ not applied
Applying: bits: split the definition of the asm and non-asm GENMASK*()
Using index info to reconstruct a base tree...
M	include/linux/bits.h
Falling back to patching base and 3-way merge...
Auto-merging include/linux/bits.h
CONFLICT (content): Merge conflict in include/linux/bits.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 bits: split the definition of the asm and non-asm GENMASK*()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


