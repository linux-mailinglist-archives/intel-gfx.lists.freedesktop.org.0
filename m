Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5904BA75C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 18:42:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24EDF10EC4B;
	Thu, 17 Feb 2022 17:42:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E46110EC4B;
 Thu, 17 Feb 2022 17:42:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A15EA0BCB;
 Thu, 17 Feb 2022 17:42:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 17 Feb 2022 17:42:01 -0000
Message-ID: <164511972101.18052.6084052210466490843@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220216232806.6194-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220216232806.6194-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Plane/wm_cleanups_=28rev3=29?=
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

Series: drm/i915: Plane/wm cleanups (rev3)
URL   : https://patchwork.freedesktop.org/series/100020/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0d7ee8c549ee drm/i915: Introduce intel_crtc_planes_update_arm()
f983e7c5abed drm/i915: Clean up SSKPD/MLTR defines
0e2211c01abe drm/i915: Polish ilk+ wm register bits
-:198: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#198: FILE: drivers/gpu/drm/i915/intel_pm.c:7188:
+	intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM3_LP_ILK) & ~WM_LP_ENABLE);

-:199: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#199: FILE: drivers/gpu/drm/i915/intel_pm.c:7189:
+	intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM2_LP_ILK) & ~WM_LP_ENABLE);

-:200: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#200: FILE: drivers/gpu/drm/i915/intel_pm.c:7190:
+	intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM1_LP_ILK) & ~WM_LP_ENABLE);

total: 0 errors, 3 warnings, 0 checks, 172 lines checked


