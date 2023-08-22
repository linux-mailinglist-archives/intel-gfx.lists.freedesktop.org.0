Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F19E783825
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 04:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E5FD10E2CD;
	Tue, 22 Aug 2023 02:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E6EA10E2CD;
 Tue, 22 Aug 2023 02:46:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16D16ACC1E;
 Tue, 22 Aug 2023 02:46:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Date: Tue, 22 Aug 2023 02:46:07 -0000
Message-ID: <169267236706.20551.699373631527536573@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230810074758.154968-1-suraj.kandpal@intel.com>
In-Reply-To: <20230810074758.154968-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBI?=
 =?utf-8?q?DCP_MST_aux_issue_fix_=28rev2=29?=
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

Series: HDCP MST aux issue fix (rev2)
URL   : https://patchwork.freedesktop.org/series/122267/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/122267/revisions/2/mbox/ not applied
Applying: drm/i915/hdcp: Use intel_connector argument in intel_hdcp_shim
error: patch failed: drivers/gpu/drm/i915/display/intel_display_types.h:504
error: drivers/gpu/drm/i915/display/intel_display_types.h: patch does not apply
error: patch failed: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:437
error: drivers/gpu/drm/i915/display/intel_dp_hdcp.c: patch does not apply
error: patch failed: drivers/gpu/drm/i915/display/intel_hdcp.c:1415
error: drivers/gpu/drm/i915/display/intel_hdcp.c: patch does not apply
error: patch failed: drivers/gpu/drm/i915/display/intel_hdmi.c:1665
error: drivers/gpu/drm/i915/display/intel_hdmi.c: patch does not apply
error: Did you hand edit your patch?
It does not apply to blobs recorded in its index.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_hdmi.c
Patch failed at 0001 drm/i915/hdcp: Use intel_connector argument in intel_hdcp_shim
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


