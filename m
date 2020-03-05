Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A6D17AF3E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 20:58:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB4DF6EC0C;
	Thu,  5 Mar 2020 19:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B6D86EC0C;
 Thu,  5 Mar 2020 19:58:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3266EA47DF;
 Thu,  5 Mar 2020 19:58:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mario Kleiner" <mario.kleiner.de@gmail.com>
Date: Thu, 05 Mar 2020 19:58:35 -0000
Message-ID: <158343831517.17237.10748442764769008781@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305081219.2900-1-mario.kleiner.de@gmail.com>
In-Reply-To: <20200305081219.2900-1-mario.kleiner.de@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/dp=3A_Add_dpcd_link=5Frate_quirk_for_Apple_15=22_MBP_20?=
 =?utf-8?b?MTcgKHJldjIp?=
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

Series: drm/i915/dp: Add dpcd link_rate quirk for Apple 15" MBP 2017 (rev2)
URL   : https://patchwork.freedesktop.org/series/74100/
State : failure

== Summary ==

Applying: drm/i915/dp: Add dpcd link_rate quirk for Apple 15" MBP 2017 (v2)
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_dp_helper.c
M	drivers/gpu/drm/i915/display/intel_dp.c
M	include/drm/drm_dp_helper.h
Falling back to patching base and 3-way merge...
Auto-merging include/drm/drm_dp_helper.h
CONFLICT (content): Merge conflict in include/drm/drm_dp_helper.h
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
Auto-merging drivers/gpu/drm/drm_dp_helper.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0001 drm/i915/dp: Add dpcd link_rate quirk for Apple 15" MBP 2017 (v2)
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
