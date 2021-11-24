Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 640D245C5B9
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 14:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C46506E0D5;
	Wed, 24 Nov 2021 13:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE5736E0D5;
 Wed, 24 Nov 2021 13:58:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B72ABA9932;
 Wed, 24 Nov 2021 13:58:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: cgel.zte@gmail.com
Date: Wed, 24 Nov 2021 13:58:46 -0000
Message-ID: <163776232671.25293.5099355206049786707@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211124030607.34914-1-yao.jing2@zte.com.cn>
In-Reply-To: <20211124030607.34914-1-yao.jing2@zte.com.cn>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/dmabuf=3A_remove_duplicate_include_in_i915=5Fgem=5Fdmab?=
 =?utf-8?q?uf=2Ec?=
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

Series: drm/i915/dmabuf: remove duplicate include in i915_gem_dmabuf.c
URL   : https://patchwork.freedesktop.org/series/97244/
State : failure

== Summary ==

Applying: drm/i915/dmabuf: remove duplicate include in i915_gem_dmabuf.c
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/dmabuf: remove duplicate include in i915_gem_dmabuf.c
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


