Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F9588A621
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 16:17:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C02F810E97D;
	Mon, 25 Mar 2024 15:17:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED8910E97B;
 Mon, 25 Mar 2024 15:17:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/ttm=3A_remove_unused_?=
 =?utf-8?q?paramter?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jesse Zhang" <jesse.zhang@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Mar 2024 15:17:53 -0000
Message-ID: <171137987384.1035680.10649793535603597186@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240325074540.2426476-1-jesse.zhang@amd.com>
In-Reply-To: <20240325074540.2426476-1-jesse.zhang@amd.com>
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

Series: drm/ttm: remove unused paramter
URL   : https://patchwork.freedesktop.org/series/131576/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/131576/revisions/1/mbox/ not applied
Applying: drm/ttm: remove unused paramter
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/ttm/ttm_bo.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/ttm/ttm_bo.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/ttm/ttm_bo.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/ttm: remove unused paramter
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


