Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B6AA0813A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 21:13:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0834B10E0A1;
	Thu,  9 Jan 2025 20:13:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D80710E0A1;
 Thu,  9 Jan 2025 20:13:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Display_Global_Histogram_?=
 =?utf-8?q?=28rev12=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Jan 2025 20:13:37 -0000
Message-ID: <173645361718.1723339.5835128857399052545@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250110-dpst-v7-0-605cb0271162@intel.com>
In-Reply-To: <20250110-dpst-v7-0-605cb0271162@intel.com>
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

Series: Display Global Histogram (rev12)
URL   : https://patchwork.freedesktop.org/series/135793/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/135793/revisions/12/mbox/ not applied
Applying: drm: Define histogram structures exposed to user
Applying: drm: Define ImageEnhancemenT LUT structures exposed to user
Applying: drm/crtc: Expose API to create drm crtc property for histogram
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_crtc.c
M	include/drm/drm_crtc.h
Falling back to patching base and 3-way merge...
Auto-merging include/drm/drm_crtc.h
CONFLICT (content): Merge conflict in include/drm/drm_crtc.h
Auto-merging drivers/gpu/drm/drm_crtc.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/drm_crtc.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/crtc: Expose API to create drm crtc property for histogram
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


