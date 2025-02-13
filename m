Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7608BA33ECC
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 13:07:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40CB310EA7C;
	Thu, 13 Feb 2025 12:07:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EDD010E3BC;
 Thu, 13 Feb 2025 12:07:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915=3A_Add_drm=5Fpan?=
 =?utf-8?q?ic_support_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jocelyn Falempe" <jfalempe@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Feb 2025 12:07:16 -0000
Message-ID: <173944843657.1652012.3498963122396746377@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250213112620.1923927-1-jfalempe@redhat.com>
In-Reply-To: <20250213112620.1923927-1-jfalempe@redhat.com>
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

Series: drm/i915: Add drm_panic support (rev4)
URL   : https://patchwork.freedesktop.org/series/141935/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/141935/revisions/4/mbox/ not applied
Applying: drm/i915/fbdev: Add intel_fbdev_get_map()
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_fb_pin.c
M	drivers/gpu/drm/i915/display/intel_fb_pin.h
M	drivers/gpu/drm/i915/display/intel_fbdev.c
M	drivers/gpu/drm/i915/display/intel_fbdev.h
M	drivers/gpu/drm/xe/display/xe_fb_pin.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/xe/display/xe_fb_pin.c
Auto-merging drivers/gpu/drm/i915/display/intel_fbdev.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_fbdev.h
Auto-merging drivers/gpu/drm/i915/display/intel_fbdev.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_fbdev.c
Auto-merging drivers/gpu/drm/i915/display/intel_fb_pin.h
Auto-merging drivers/gpu/drm/i915/display/intel_fb_pin.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/fbdev: Add intel_fbdev_get_map()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


