Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7932F35F391
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 14:27:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61FC6E49A;
	Wed, 14 Apr 2021 12:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F37B7895A8;
 Wed, 14 Apr 2021 12:27:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EDA07A47DF;
 Wed, 14 Apr 2021 12:27:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jun Miao" <jun.miao@windriver.com>
Date: Wed, 14 Apr 2021 12:27:03 -0000
Message-ID: <161840322397.4308.9458496543517241785@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210414032922.12639-1-jun.miao@windriver.com>
In-Reply-To: <20210414032922.12639-1-jun.miao@windriver.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gt=3A_Fix_a_lockdep_warnning_on_RT_kernel?=
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

Series: drm/i915/gt: Fix a lockdep warnning on RT kernel
URL   : https://patchwork.freedesktop.org/series/89071/
State : failure

== Summary ==

Applying: drm/i915/gt: Fix a lockdep warning on RT kernel
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/gt/intel_breadcrumbs.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/gt: Fix a lockdep warning on RT kernel
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
