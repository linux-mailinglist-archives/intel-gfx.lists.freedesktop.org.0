Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9DB6D2B34
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Apr 2023 00:18:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EBCD10E55B;
	Fri, 31 Mar 2023 22:18:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F1A7410E55B;
 Fri, 31 Mar 2023 22:17:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D7494A882E;
 Fri, 31 Mar 2023 22:17:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Fri, 31 Mar 2023 22:17:52 -0000
Message-ID: <168030107285.14985.10366323977937279231@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230331221213.1691997-1-markyacoub@google.com>
In-Reply-To: <20230331221213.1691997-1-markyacoub@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/hdcp=3A_Pull_HDCP_auth/exchange/check_into_helpers_=28rev8?=
 =?utf-8?q?=29?=
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

Series: drm/hdcp: Pull HDCP auth/exchange/check into helpers (rev8)
URL   : https://patchwork.freedesktop.org/series/94712/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/94712/revisions/8/mbox/ not applied
Applying: drm/hdcp: Add drm_hdcp_atomic_check()
Applying: drm/hdcp: Avoid changing crtc state in hdcp atomic check
Applying: drm/hdcp: Update property value on content type and user changes
Applying: drm/hdcp: Expand HDCP helper library for enable/disable/check
Applying: drm/i915/hdcp: Consolidate HDCP setup/state cache
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_hdcp.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_hdcp.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_hdcp.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0005 drm/i915/hdcp: Consolidate HDCP setup/state cache
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


