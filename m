Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD0635F386
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 14:24:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74E0189247;
	Wed, 14 Apr 2021 12:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0775789247;
 Wed, 14 Apr 2021 12:24:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F2911A47E9;
 Wed, 14 Apr 2021 12:24:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 14 Apr 2021 12:24:33 -0000
Message-ID: <161840307397.4306.18239118804811681081@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B01/12=5D_drm/arm=3A_Don=27t_set_allow=5F?=
 =?utf-8?q?fb=5Fmodifiers_explicitly_=28rev2=29?=
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

Series: series starting with [01/12] drm/arm: Don't set allow_fb_modifiers explicitly (rev2)
URL   : https://patchwork.freedesktop.org/series/88999/
State : failure

== Summary ==

Applying: drm/arm: Don't set allow_fb_modifiers explicitly
Applying: drm/arm/malidp: Always list modifiers
Applying: drm/exynos: Don't set allow_fb_modifiers explicitly
Applying: drm/i915: Don't set allow_fb_modifiers explicitly
Applying: drm/imx: Don't set allow_fb_modifiers explicitly
Applying: drm/msm/dpu1: Don't set allow_fb_modifiers explicitly
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0006 drm/msm/dpu1: Don't set allow_fb_modifiers explicitly
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
