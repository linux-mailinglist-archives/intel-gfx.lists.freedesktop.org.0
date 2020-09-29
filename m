Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D660A27D4F2
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 19:51:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FDFB89AFF;
	Tue, 29 Sep 2020 17:51:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C96989AEB;
 Tue, 29 Sep 2020 17:51:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 241E2A47E9;
 Tue, 29 Sep 2020 17:51:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Tue, 29 Sep 2020 17:51:22 -0000
Message-ID: <160140188213.28024.4844519768986131118@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200929121127.254086-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20200929121127.254086-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/edp/jsl=3A_Update_vswing_table_for_HBR_and_HBR2?=
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

Series: drm/i915/edp/jsl: Update vswing table for HBR and HBR2
URL   : https://patchwork.freedesktop.org/series/82206/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
548dfee5bc0f drm/i915/edp/jsl: Update vswing table for HBR and HBR2
-:83: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#83: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1143:
+				return jsl_combo_phy_ddi_translations_edp_hbr2;
+			} else {

-:88: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#88: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1148:
+		/* fall through */

total: 0 errors, 2 warnings, 0 checks, 97 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
