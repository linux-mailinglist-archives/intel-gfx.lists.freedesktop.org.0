Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0466520C068
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2020 11:07:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63A116E153;
	Sat, 27 Jun 2020 09:07:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 10BB46E138;
 Sat, 27 Jun 2020 09:07:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0966AA00FD;
 Sat, 27 Jun 2020 09:07:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Sat, 27 Jun 2020 09:07:26 -0000
Message-ID: <159324884601.5394.12272927308480844512@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200626091333.17516-1-kunal1.joshi@intel.com>
In-Reply-To: <20200626091333.17516-1-kunal1.joshi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Send_a_hotplug_when_edid_changes_=28rev9=29?=
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

Series: Send a hotplug when edid changes (rev9)
URL   : https://patchwork.freedesktop.org/series/62816/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8c236463353b drm: Add helper to compare edids.
-:34: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "edid1"
#34: FILE: drivers/gpu/drm/drm_edid.c:1628:
+	bool edid1_present = edid1 != NULL;

-:35: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "edid2"
#35: FILE: drivers/gpu/drm/drm_edid.c:1629:
+	bool edid2_present = edid2 != NULL;

-:41: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#41: FILE: drivers/gpu/drm/drm_edid.c:1635:
+	if (edid1) {
+

-:56: CHECK:LINE_SPACING: Please don't use multiple blank lines
#56: FILE: drivers/gpu/drm/drm_edid.c:1650:
+
+

total: 0 errors, 0 warnings, 4 checks, 54 lines checked
67927d889ffe drm: Introduce epoch counter to drm_connector
-:58: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#58: FILE: drivers/gpu/drm/drm_connector.c:2012:
+				DRM_DEBUG_KMS("[CONNECTOR:%d:%s] Edid was changed.\n",
+				    connector->base.id, connector->name);

-:62: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#62: FILE: drivers/gpu/drm/drm_connector.c:2016:
+				DRM_DEBUG_KMS("Updating change counter to %llu\n",
+				    connector->epoch_counter);

-:131: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#131: FILE: drivers/gpu/drm/drm_probe_helper.c:790:
+	uint64_t old_epoch_counter;

-:162: WARNING:BRACES: braces {} are not necessary for single statement blocks
#162: FILE: drivers/gpu/drm/drm_probe_helper.c:826:
+		if (old_epoch_counter != connector->epoch_counter) {
 			changed = true;
+		}

-:186: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#186: FILE: include/drm/drm_connector.h:1333:
+	uint64_t epoch_counter;

total: 0 errors, 1 warnings, 4 checks, 136 lines checked
04bfaff00368 drm/i915: Send hotplug event if edid had changed

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
