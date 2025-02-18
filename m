Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFA9A39B79
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 12:52:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8EA210E697;
	Tue, 18 Feb 2025 11:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E098F10E2BA;
 Tue, 18 Feb 2025 11:52:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/xe/display=3A_Fix_fbd?=
 =?utf-8?q?ev_GGTT_mapping_handling=2E_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2025 11:52:45 -0000
Message-ID: <173987956591.3553319.10983250521759351590@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250212113509.14972-1-dev@lankhorst.se>
In-Reply-To: <20250212113509.14972-1-dev@lankhorst.se>
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

Series: drm/xe/display: Fix fbdev GGTT mapping handling. (rev4)
URL   : https://patchwork.freedesktop.org/series/144603/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/144603/revisions/4/mbox/ not applied
Applying: drm/xe/display: Fix fbdev GGTT mapping handling.
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/xe/display/xe_display.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/xe/display/xe_display.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/xe/display/xe_display.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/xe/display: Fix fbdev GGTT mapping handling.
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


