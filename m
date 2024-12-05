Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 126339E6044
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 22:54:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 976F710E5E5;
	Thu,  5 Dec 2024 21:54:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83AC010E5E5;
 Thu,  5 Dec 2024 21:54:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/xe/display=3A_Re-use_?=
 =?utf-8?q?display_vmas_when_possible_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 05 Dec 2024 21:54:04 -0000
Message-ID: <173343564452.3077870.17841879777664587051@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241205193934.49526-1-dev@lankhorst.se>
In-Reply-To: <20241205193934.49526-1-dev@lankhorst.se>
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

Series: drm/xe/display: Re-use display vmas when possible (rev2)
URL   : https://patchwork.freedesktop.org/series/136034/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/136034/revisions/2/mbox/ not applied
Applying: drm/xe/display: Re-use display vmas when possible
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/xe/display/xe_fb_pin.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/xe/display/xe_fb_pin.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/xe/display/xe_fb_pin.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/xe/display: Re-use display vmas when possible
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


