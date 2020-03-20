Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6DC18D815
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 20:05:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 952676EB5B;
	Fri, 20 Mar 2020 19:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A9AAC6EB5B;
 Fri, 20 Mar 2020 19:05:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8709CA010F;
 Fri, 20 Mar 2020 19:05:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 20 Mar 2020 19:05:03 -0000
Message-ID: <158473110352.11039.14093971035862950378@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1584714939.git.jani.nikula@intel.com>
In-Reply-To: <cover.1584714939.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_drm_device_based_logging_changes?=
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

Series: drm/i915: drm device based logging changes
URL   : https://patchwork.freedesktop.org/series/74927/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ddb4a444dd75 drm/i915/ddi: use struct drm_device based logging
07dd9ea10f43 drm/i915/display_power: use struct drm_device based logging
df9678067397 drm/i915/dp_aux_backlight: use struct drm_device based logging
70006dcff1cf drm/i915/dp_mst: use struct drm_device based logging
96a362dca265 drm/i915/dsi: use struct drm_device based logging
6d311eabae6b drm/i915/hdmi: use struct drm_device based logging
2c83198c9de1 drm/i915/dsi: use struct drm_device based logging
0eea474ebae3 drm/i915/connector: use MISSING_CASE instead of logging
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
b1419778ed0f drm/i915/tv: use struct drm_device based logging
87560bf44a17 drm/i915/display: clean up intel_PLL_is_valid()
c057e5d545d4 drm/i915/display: use struct drm_device based logging
-:113: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#113: FILE: drivers/gpu/drm/i915/display/intel_display.c:2941:
+		drm_dbg_kms(&i915->drm,
+			      "Bad CCS x/y (main %d,%d ccs %d,%d) full (main %d,%d ccs %d,%d)\n",

total: 0 errors, 0 warnings, 1 checks, 50 lines checked
f022c9422f91 drm/i915/psr: use struct drm_device based logging
5196c0d8ee07 drm/i915/wopcm: convert to drm device based logging

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
