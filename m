Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3384D50E17C
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 15:22:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4102E10EAEE;
	Mon, 25 Apr 2022 13:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6FFD010EAEE;
 Mon, 25 Apr 2022 13:22:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6EF30A7DFC;
 Mon, 25 Apr 2022 13:22:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bjorn Andersson" <bjorn.andersson@linaro.org>
Date: Mon, 25 Apr 2022 13:22:07 -0000
Message-ID: <165089292742.32286.6080038706562135295@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220422223225.1297434-1-bjorn.andersson@linaro.org>
In-Reply-To: <20220422223225.1297434-1-bjorn.andersson@linaro.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/2=5D_drm=3A_Add_HPD_state_to?=
 =?utf-8?q?_drm=5Fconnector=5Foob=5Fhotplug=5Fevent=28=29?=
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

Series: series starting with [v3,1/2] drm: Add HPD state to drm_connector_oob_hotplug_event()
URL   : https://patchwork.freedesktop.org/series/103078/
State : warning

== Summary ==

Error: dim checkpatch failed
f2ad7f841168 drm: Add HPD state to drm_connector_oob_hotplug_event()
-:118: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#118: FILE: drivers/usb/typec/altmodes/displayport.c:146:
+						hpd ? DRM_CONNECTOR_HPD_HIGH : DRM_CONNECTOR_HPD_LOW);

total: 0 errors, 1 warnings, 0 checks, 119 lines checked
26f3d1dccc50 drm/msm/dp: Implement oob_hotplug_event()
-:33: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#33: FILE: drivers/gpu/drm/msm/dp/dp_display.c:455:
+	struct dp_display_private *dp = container_of(dp_display, struct dp_display_private, dp_display);

total: 0 errors, 1 warnings, 0 checks, 123 lines checked


