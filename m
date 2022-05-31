Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB31538D54
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 11:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4837E10FC0D;
	Tue, 31 May 2022 09:00:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC3C710FC1A;
 Tue, 31 May 2022 09:00:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3A48A66C9;
 Tue, 31 May 2022 09:00:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Tue, 31 May 2022 09:00:30 -0000
Message-ID: <165398763071.17349.3818823496326965818@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220517072636.3516381-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20220517072636.3516381-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Attach_and_Set_vrr=5Fenabled_property_=28rev4=29?=
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

Series: Attach and Set vrr_enabled property (rev4)
URL   : https://patchwork.freedesktop.org/series/102978/
State : warning

== Summary ==

Error: dim checkpatch failed
309e112a47da drm/vrr: Attach vrr_enabled property to the drm crtc
-:81: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#81: FILE: drivers/gpu/drm/drm_mode_config.c:327:
+	prop = drm_property_create_bool(dev, DRM_MODE_PROP_ATOMIC,
 			"VRR_ENABLED");

total: 0 errors, 0 warnings, 1 checks, 50 lines checked
29d8e71f94d6 drm/i915/vrr: Set drm crtc vrr_enabled property
-:13: WARNING:TYPO_SPELLING: 'alreay' may be misspelled - perhaps 'already'?
#13: 
V3: Don't attach vrr_enabled prop, as it is alreay attached.
                                            ^^^^^^

total: 0 errors, 1 warnings, 0 checks, 20 lines checked


