Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3822B93B5
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 14:34:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB5E96E50E;
	Thu, 19 Nov 2020 13:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF4286E509;
 Thu, 19 Nov 2020 13:34:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9075A363B;
 Thu, 19 Nov 2020 13:34:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 19 Nov 2020 13:34:03 -0000
Message-ID: <160579284386.18187.17950080309875088534@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201119090717.30687-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201119090717.30687-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Whitespace_cleanups?=
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

Series: drm/i915/display: Whitespace cleanups
URL   : https://patchwork.freedesktop.org/series/84054/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa13fd9ed600 drm/i915/display: Whitespace cleanups
-:45: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#45: FILE: drivers/gpu/drm/i915/display/intel_display.c:15370:
+	slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;

-:46: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#46: FILE: drivers/gpu/drm/i915/display/intel_display.c:15371:
+	slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;

-:47: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#47: FILE: drivers/gpu/drm/i915/display/intel_display.c:15372:
+	slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;

total: 0 errors, 0 warnings, 3 checks, 43 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
