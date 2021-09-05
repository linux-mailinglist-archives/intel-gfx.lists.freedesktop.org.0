Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8104011C4
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Sep 2021 23:25:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F2C289AA6;
	Sun,  5 Sep 2021 21:25:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1010889A62;
 Sun,  5 Sep 2021 21:25:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED6D6A01BB;
 Sun,  5 Sep 2021 21:25:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anisse Astier" <anisse@astier.eu>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 05 Sep 2021 21:25:09 -0000
Message-ID: <163087710994.8929.16273302192058935276@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210905211226.3525-1-anisse@astier.eu>
In-Reply-To: <20210905211226.3525-1-anisse@astier.eu>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GPD_Win_Max_display_fixes_=28rev5=29?=
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

Series: GPD Win Max display fixes (rev5)
URL   : https://patchwork.freedesktop.org/series/90483/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
539314301edd drm/i915/opregion: add support for mailbox #5 EDID
-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
https://patchwork.kernel.org/project/intel-gfx/patch/20200828061941.17051-1-jani.nikula@intel.com/

-:30: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match 
#30: 
Co-developed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Anisse Astier <anisse@astier.eu>
-:46: ERROR:CODE_INDENT: code indent should use tabs where possible
#46: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4828:
+^I^I^I            "[CONNECTOR:%d:%s] Using OpRegion EDID\n",$

-:47: ERROR:CODE_INDENT: code indent should use tabs where possible
#47: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4829:
+^I^I^I            connector->base.id, connector->name);$

-:171: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#171: FILE: drivers/gpu/drm/i915/display/intel_opregion.h:77:
+struct edid * intel_opregion_get_edid(struct intel_connector *connector);

total: 3 errors, 2 warnings, 0 checks, 134 lines checked
c389bd6aaaf0 drm: Add orientation quirk for GPD Win Max


