Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DB617ED41
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 01:23:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40A7B6E5CA;
	Tue, 10 Mar 2020 00:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4502A6E5C1;
 Tue, 10 Mar 2020 00:23:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3C399A41FB;
 Tue, 10 Mar 2020 00:23:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rajat Jain" <rajatja@google.com>
Date: Tue, 10 Mar 2020 00:23:23 -0000
Message-ID: <158379980321.24168.1621517910187828723@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200310000617.20662-1-rajatja@google.com>
In-Reply-To: <20200310000617.20662-1-rajatja@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Add_support_for_integrated_privacy_screen?=
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

Series: drm: Add support for integrated privacy screen
URL   : https://patchwork.freedesktop.org/series/74473/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4d85b0afcb69 intel_acpi: Rename drm_dev local variable to dev
8f19bae8d1da drm/connector: Add support for privacy-screen property
ad4ee254fd45 drm/i915: Lookup and attach ACPI device node for connectors
4d56cad4f624 drm/i915: Add support for integrated privacy screen
-:33: WARNING:LONG_LINE: line over 100 characters
#33: FILE: drivers/gpu/drm/i915/display/intel_atomic.c:153:
+	    new_conn_state->base.privacy_screen_status != old_conn_state->base.privacy_screen_status ||

-:72: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#72: FILE: drivers/gpu/drm/i915/display/intel_dp.c:6897:
+static void intel_dp_update_privacy_screen(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state,

-:103: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#103: 
new file mode 100644

total: 0 errors, 2 warnings, 1 checks, 275 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
