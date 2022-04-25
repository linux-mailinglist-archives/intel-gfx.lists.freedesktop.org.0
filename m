Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F8550D9E2
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 09:07:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A0D11222B;
	Mon, 25 Apr 2022 07:07:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A5BE211222B;
 Mon, 25 Apr 2022 07:07:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9051A3C0D;
 Mon, 25 Apr 2022 07:07:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Mon, 25 Apr 2022 07:07:33 -0000
Message-ID: <165087045368.32284.16657484933558148231@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220425064612.2993587-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20220425064612.2993587-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Attach_and_Set_vrr=5Fenabled_property_=28rev2=29?=
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

Series: Attach and Set vrr_enabled property (rev2)
URL   : https://patchwork.freedesktop.org/series/102978/
State : warning

== Summary ==

Error: dim checkpatch failed
74f8ea70155d drm/vrr: Attach vrr_enabled property to the drm crtc
-:90: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#90: FILE: drivers/gpu/drm/drm_mode_config.c:327:
+	prop = drm_property_create_bool(dev, DRM_MODE_PROP_ATOMIC,
 			"VRR_ENABLED");

total: 0 errors, 0 warnings, 1 checks, 63 lines checked
ecc537c1ea75 drm/i915/vrr: Attach and set drm crtc vrr_enabled property


