Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 140AC46FD83
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 10:15:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDD7810E289;
	Fri, 10 Dec 2021 09:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BEFB710E289;
 Fri, 10 Dec 2021 09:15:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B60C3A0099;
 Fri, 10 Dec 2021 09:15:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anisse Astier" <anisse@astier.eu>
Date: Fri, 10 Dec 2021 09:15:07 -0000
Message-ID: <163912770770.3444.6522706730515009726@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211209220042.310848-1-anisse@astier.eu>
In-Reply-To: <20211209220042.310848-1-anisse@astier.eu>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GPD_Win_Max_display_fixes_=28rev6=29?=
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

Series: GPD Win Max display fixes (rev6)
URL   : https://patchwork.freedesktop.org/series/90483/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
77130fc0f92b drm/i915/opregion: add support for mailbox #5 EDID
-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
https://patchwork.kernel.org/project/intel-gfx/patch/20200828061941.17051-1-jani.nikula@intel.com/

-:30: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match 
#30: 
Co-developed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Anisse Astier <anisse@astier.eu>
-:46: ERROR:CODE_INDENT: code indent should use tabs where possible
#46: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4982:
+^I^I^I            "[CONNECTOR:%d:%s] Using OpRegion EDID\n",$

-:47: ERROR:CODE_INDENT: code indent should use tabs where possible
#47: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4983:
+^I^I^I            connector->base.id, connector->name);$

-:171: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#171: FILE: drivers/gpu/drm/i915/display/intel_opregion.h:77:
+struct edid * intel_opregion_get_edid(struct intel_connector *connector);

total: 3 errors, 2 warnings, 0 checks, 134 lines checked
373d0f5e01c4 drm: Add orientation quirk for GPD Win Max


