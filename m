Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E07633750B0
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 10:26:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B77FA6E084;
	Thu,  6 May 2021 08:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 125206E084;
 Thu,  6 May 2021 08:26:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0ADFFA47E9;
 Thu,  6 May 2021 08:26:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nischal Varide" <nischal.varide@intel.com>
Date: Thu, 06 May 2021 08:26:38 -0000
Message-ID: <162028959801.15693.2029931992041776156@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210506004719.4121-1-nischal.varide@intel.com>
In-Reply-To: <20210506004719.4121-1-nischal.varide@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Expose_HDMI_properties_to_userspace?=
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

Series: drm/i915/display: Expose HDMI properties to userspace
URL   : https://patchwork.freedesktop.org/series/89833/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fed7f9fc21db drm/i915/display: Expose HDMI properties to userspace
-:48: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!new_blob"
#48: FILE: drivers/gpu/drm/i915/display/intel_atomic.c:113:
+		if (new_blob == NULL)

-:75: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!prop"
#75: FILE: drivers/gpu/drm/i915/display/intel_connector.c:280:
+	if (prop == NULL) {

-:78: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!prop"
#78: FILE: drivers/gpu/drm/i915/display/intel_connector.c:283:
+		if (prop == NULL)

-:137: CHECK:BRACES: braces {} should be used on all arms of this statement
#137: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:775:
+	if (!intel_conn_state->hdmi_vendor_product_blob)
[...]
+	else {
[...]

-:139: CHECK:BRACES: Unbalanced braces around else statement
#139: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:777:
+	else {

-:143: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#143: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:781:
+			ret = hdmi_spd_infoframe_init(frame, hdmi_vp_info->vendor,
+				hdmi_vp_info->product);

total: 0 errors, 0 warnings, 6 checks, 126 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
