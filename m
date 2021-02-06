Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03084311824
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 03:05:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F09AE6E2A3;
	Sat,  6 Feb 2021 02:05:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 373CF6E249;
 Sat,  6 Feb 2021 02:05:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22060A363B;
 Sat,  6 Feb 2021 02:05:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Sat, 06 Feb 2021 02:05:39 -0000
Message-ID: <161257713911.3570.14996337104233315455@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210205234515.1216538-1-lyude@redhat.com>
In-Reply-To: <20210205234515.1216538-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Extract_DPCD_backlight_helpers_from_i915=2C_add_supp?=
 =?utf-8?q?ort_in_nouveau_=28rev5=29?=
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

Series: drm: Extract DPCD backlight helpers from i915, add support in nouveau (rev5)
URL   : https://patchwork.freedesktop.org/series/84754/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
990b106df931 drm/nouveau/kms/nv40-/backlight: Assign prop type once
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
755b16f66afc drm/nouveau/kms: Don't probe eDP connectors more then once
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
eDP doesn't do hotplugging, so there's no reason for us to reprobe it (unless a

-:23: CHECK:CAMELCASE: Avoid CamelCase: <DCB_CONNECTOR_eDP>
#23: FILE: drivers/gpu/drm/nouveau/nouveau_connector.c:560:
+	if (nv_connector->type == DCB_CONNECTOR_eDP &&

total: 0 errors, 1 warnings, 1 checks, 12 lines checked
948c71628815 drm/i915/dpcd_bl: Remove redundant AUX backlight frequency calculations
c05e38fb6b81 drm/i915/dpcd_bl: Handle drm_dpcd_read/write() return values correctly
e9190019cd99 drm/i915/dpcd_bl: Cleanup intel_dp_aux_vesa_enable_backlight() a bit
8e101f1fa419 drm/i915/dpcd_bl: Cache some backlight capabilities in intel_panel.backlight
d023a0b271b0 drm/i915/dpcd_bl: Move VESA backlight enabling code closer together
bb9ab8c80a61 drm/i915/dpcd_bl: Return early in vesa_calc_max_backlight if we can't read PWMGEN_BIT_COUNT
9a5a96645e75 drm/i915/dpcd_bl: Print return codes for VESA backlight failures
da4a690db4b7 drm/dp: Extract i915's eDP backlight code into DRM helpers


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
