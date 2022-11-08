Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13375621F3B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 23:27:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F99010E52B;
	Tue,  8 Nov 2022 22:27:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3364A10E52B;
 Tue,  8 Nov 2022 22:27:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11DB0AADDC;
 Tue,  8 Nov 2022 22:27:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mateusz Kwiatkowski" <kfyatek@gmail.com>
Date: Tue, 08 Nov 2022 22:27:40 -0000
Message-ID: <166794646003.2237.9858614733248640406@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220728-rpi-analog-tv-properties-v7-0-7072a478c6b3@cerno.tech>
In-Reply-To: <20220728-rpi-analog-tv-properties-v7-0-7072a478c6b3@cerno.tech>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_Analog_TV_Improvements_=28rev8=29?=
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

Series: drm: Analog TV Improvements (rev8)
URL   : https://patchwork.freedesktop.org/series/107892/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/107892/revisions/8/mbox/ not applied
Applying: drm/tests: Add Kunit Helpers
Applying: drm/connector: Rename legacy TV property
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_connector.c
M	drivers/gpu/drm/i915/display/intel_tv.c
M	include/drm/drm_connector.h
Falling back to patching base and 3-way merge...
Auto-merging include/drm/drm_connector.h
Auto-merging drivers/gpu/drm/i915/display/intel_tv.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_tv.c
Auto-merging drivers/gpu/drm/drm_connector.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm/connector: Rename legacy TV property
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


