Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0200E57B916
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 17:01:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EF3811BFAD;
	Wed, 20 Jul 2022 15:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E7DFB12AB4A;
 Wed, 20 Jul 2022 15:01:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF16FA0169;
 Wed, 20 Jul 2022 15:01:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Osipenko" <dmitry.osipenko@collabora.com>
Date: Wed, 20 Jul 2022 15:01:09 -0000
Message-ID: <165832926981.27269.2304924184188021616@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220715005244.42198-1-dmitry.osipenko@collabora.com>
In-Reply-To: <20220715005244.42198-1-dmitry.osipenko@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBN?=
 =?utf-8?q?ove_all_drivers_to_a_common_dma-buf_locking_convention?=
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

Series: Move all drivers to a common dma-buf locking convention
URL   : https://patchwork.freedesktop.org/series/106533/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/106533/revisions/1/mbox/ not applied
Applying: dma-buf: Add _unlocked postfix to function names
Applying: drm/gem: Take reservation lock for vmap/vunmap operations
Applying: dma-buf: Move all dma-bufs to dynamic locking specification
Applying: dma-buf: Acquire wait-wound context on attachment
error: sha1 information is lacking or useless (drivers/dma-buf/dma-buf.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0004 dma-buf: Acquire wait-wound context on attachment
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


