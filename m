Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B8F207181
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 12:51:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5568B6E0CA;
	Wed, 24 Jun 2020 10:51:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 73B7C6E0CA;
 Wed, 24 Jun 2020 10:51:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DAB2A0009;
 Wed, 24 Jun 2020 10:51:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 24 Jun 2020 10:51:37 -0000
Message-ID: <159299589741.19236.15323518631653361058@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200623185756.19502-1-kunal1.joshi@intel.com>
In-Reply-To: <20200623185756.19502-1-kunal1.joshi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Send_a_hotplug_when_edid_changes_=28rev8=29?=
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

Series: Send a hotplug when edid changes (rev8)
URL   : https://patchwork.freedesktop.org/series/62816/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
eeee75d80077 drm: Add helper to compare edids.
-:32: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "edid1"
#32: FILE: drivers/gpu/drm/drm_edid.c:1628:
+	bool edid1_present = edid1 != NULL;

-:33: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "edid2"
#33: FILE: drivers/gpu/drm/drm_edid.c:1629:
+	bool edid2_present = edid2 != NULL;

-:39: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#39: FILE: drivers/gpu/drm/drm_edid.c:1635:
+	if (edid1) {
+

-:54: CHECK:LINE_SPACING: Please don't use multiple blank lines
#54: FILE: drivers/gpu/drm/drm_edid.c:1650:
+
+

total: 0 errors, 0 warnings, 4 checks, 54 lines checked
127303584a7e drm: Introduce epoch counter to drm_connector
-:56: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#56: FILE: drivers/gpu/drm/drm_connector.c:2012:
+				DRM_DEBUG_KMS("[CONNECTOR:%d:%s] Edid was changed.\n",
+				    connector->base.id, connector->name);

-:60: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#60: FILE: drivers/gpu/drm/drm_connector.c:2016:
+				DRM_DEBUG_KMS("Updating change counter to %llu\n",
+				    connector->epoch_counter);

-:129: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#129: FILE: drivers/gpu/drm/drm_probe_helper.c:790:
+	uint64_t old_epoch_counter;

-:160: WARNING:BRACES: braces {} are not necessary for single statement blocks
#160: FILE: drivers/gpu/drm/drm_probe_helper.c:826:
+		if (old_epoch_counter != connector->epoch_counter) {
 			changed = true;
+		}

-:183: ERROR:CODE_INDENT: code indent should use tabs where possible
#183: FILE: include/drm/drm_connector.h:1332:
+        /** @epoch_counter: used to detect any other changes in connector, besides status */$

-:184: ERROR:CODE_INDENT: code indent should use tabs where possible
#184: FILE: include/drm/drm_connector.h:1333:
+        uint64_t epoch_counter;$

-:184: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#184: FILE: include/drm/drm_connector.h:1333:
+        uint64_t epoch_counter;$

-:184: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#184: FILE: include/drm/drm_connector.h:1333:
+        uint64_t epoch_counter;

total: 2 errors, 2 warnings, 4 checks, 136 lines checked
6f6d00bcff9f drm/i915: Send hotplug event if edid had changed
-:42: ERROR:CODE_INDENT: code indent should use tabs where possible
#42: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:286:
+        u64 old_epoch_counter;$

-:42: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#42: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:286:
+        u64 old_epoch_counter;$

-:43: ERROR:CODE_INDENT: code indent should use tabs where possible
#43: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:287:
+        bool ret = false;$

-:43: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#43: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:287:
+        bool ret = false;$

-:62: ERROR:CODE_INDENT: code indent should use tabs where possible
#62: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:295:
+        if (old_epoch_counter != connector->base.epoch_counter)$

-:62: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#62: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:295:
+        if (old_epoch_counter != connector->base.epoch_counter)$

-:63: ERROR:CODE_INDENT: code indent should use tabs where possible
#63: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:296:
+                ret = true;$

-:63: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#63: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:296:
+                ret = true;$

-:65: ERROR:CODE_INDENT: code indent should use tabs where possible
#65: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:298:
+        if(ret) {$

-:65: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#65: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:298:
+        if(ret) {$

-:65: ERROR:SPACING: space required before the open parenthesis '('
#65: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:298:
+        if(ret) {

-:73: ERROR:CODE_INDENT: code indent should use tabs where possible
#73: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:306:
+        }$

-:73: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#73: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:306:
+        }$

-:74: ERROR:CODE_INDENT: code indent should use tabs where possible
#74: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:307:
+        return INTEL_HOTPLUG_UNCHANGED;$

-:74: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#74: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:307:
+        return INTEL_HOTPLUG_UNCHANGED;$

total: 8 errors, 7 warnings, 0 checks, 38 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
