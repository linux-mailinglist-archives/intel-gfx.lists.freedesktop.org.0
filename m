Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 278F42C4CD5
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 02:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423BB6E4C4;
	Thu, 26 Nov 2020 01:50:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F19F06E4C4;
 Thu, 26 Nov 2020 01:50:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE1C6AA01E;
 Thu, 26 Nov 2020 01:50:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Date: Thu, 26 Nov 2020 01:50:04 -0000
Message-ID: <160635540487.4111.18419767856717837102@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201126013506.29402-1-airlied@gmail.com>
In-Reply-To: <20201126013506.29402-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_refactor_panel_backlight_control_functions=2E?=
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

Series: drm/i915: refactor panel backlight control functions.
URL   : https://patchwork.freedesktop.org/series/84282/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bc1e8df3e412 drm/i915: refactor panel backlight control functions.
-:32: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct intel_connector *' should also have an identifier name
#32: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:237:
+	void (*power)(struct intel_connector *, bool enable);

-:50: WARNING:TYPO_SPELLING: 'overriden' may be misspelled - perhaps 'overridden'?
#50: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:266:
+		/* power can be overriden for edp. */

total: 0 errors, 2 warnings, 0 checks, 310 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
