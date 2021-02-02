Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B12730CE76
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 23:09:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EE566E86D;
	Tue,  2 Feb 2021 22:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 748996E4C9;
 Tue,  2 Feb 2021 22:09:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6EE95A00E6;
 Tue,  2 Feb 2021 22:09:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 02 Feb 2021 22:09:22 -0000
Message-ID: <161230376242.19548.13005755461734614034@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210202212011.28814-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210202212011.28814-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5BCI=2C1/3=5D_***_HAX_FOR_CI_***_Revert_?=
 =?utf-8?q?=22rtc=3A_mc146818=3A_Detect_and_handle_broken_RTCs=22?=
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

Series: series starting with [CI,1/3] *** HAX FOR CI *** Revert "rtc: mc146818: Detect and handle broken RTCs"
URL   : https://patchwork.freedesktop.org/series/86596/
State : failure

== Summary ==

Applying: *** HAX FOR CI *** Revert "rtc: mc146818: Detect and handle broken RTCs"
Using index info to reconstruct a base tree...
M	drivers/rtc/rtc-cmos.c
M	drivers/rtc/rtc-mc146818-lib.c
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.
Applying: drm-tip: 2021y-02m-02d-12h-50m-06s UTC integration manifest
Using index info to reconstruct a base tree...
Falling back to patching base and 3-way merge...
CONFLICT (add/add): Merge conflict in integration-manifest
Auto-merging integration-manifest
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm-tip: 2021y-02m-02d-12h-50m-06s UTC integration manifest
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
