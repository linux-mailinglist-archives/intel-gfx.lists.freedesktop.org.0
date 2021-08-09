Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 702823E4890
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 17:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A592789C3F;
	Mon,  9 Aug 2021 15:19:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0FCCE89BF0;
 Mon,  9 Aug 2021 15:19:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 05136A73C9;
 Mon,  9 Aug 2021 15:19:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "zhouchuangao" <zhouchuangao@vivo.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Aug 2021 15:19:09 -0000
Message-ID: <162852234901.2459.5452405473514264147@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1628326354-96951-1-git-send-email-zhouchuangao@vivo.com>
In-Reply-To: <1628326354-96951-1-git-send-email-zhouchuangao@vivo.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBn?=
 =?utf-8?q?pu/drm/i915=3A_Remove_duplicated_include_of_intel=5Fregion=5Flm?=
 =?utf-8?b?ZW0uaCAocmV2Mik=?=
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

Series: gpu/drm/i915: Remove duplicated include of intel_region_lmem.h (rev2)
URL   : https://patchwork.freedesktop.org/series/93305/
State : failure

== Summary ==

Applying: gpu/drm/i915: Remove duplicated include of intel_region_lmem.h
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_region_lmem.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/intel_region_lmem.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_region_lmem.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 gpu/drm/i915: Remove duplicated include of intel_region_lmem.h
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


