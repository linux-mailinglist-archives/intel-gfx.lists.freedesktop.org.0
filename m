Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 787B76BC904
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 09:25:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEBB510EC7C;
	Thu, 16 Mar 2023 08:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0539E10EC7C;
 Thu, 16 Mar 2023 08:25:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0C96AADE3;
 Thu, 16 Mar 2023 08:25:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Thu, 16 Mar 2023 08:25:24 -0000
Message-ID: <167895512494.19095.7557184368789335373@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230316082035.567520-1-christian.koenig@amd.com>
In-Reply-To: <20230316082035.567520-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/7=5D_drm=3A_remove_drm=5Fdev=5Fset=5Fu?=
 =?utf-8?q?nique?=
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

Series: series starting with [1/7] drm: remove drm_dev_set_unique
URL   : https://patchwork.freedesktop.org/series/115239/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/115239/revisions/1/mbox/ not applied
Applying: drm: remove drm_dev_set_unique
Applying: drm/tegra: allow compile test on !ARM
Applying: drm/debugfs: stop calling debugfs_init() for the render node
Applying: drm/debugfs: rework debugfs directory creation v2
Applying: drm/debugfs: remove dev->debugfs_list and debugfs_mutex v2
Applying: drm/debugfs: rework drm_debugfs_create_files implementation
Applying: drm/debugfs: remove debugfs_root pointer from minor
error: sha1 information is lacking or useless (drivers/gpu/drm/drm_debugfs.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0007 drm/debugfs: remove debugfs_root pointer from minor
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


