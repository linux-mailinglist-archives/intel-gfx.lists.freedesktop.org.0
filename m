Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E089F470401
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 16:37:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B22B10E3AB;
	Fri, 10 Dec 2021 15:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E15210E3AB;
 Fri, 10 Dec 2021 15:37:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2774AA9A42;
 Fri, 10 Dec 2021 15:37:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 10 Dec 2021 15:37:09 -0000
Message-ID: <163915062915.3442.1806021932635846078@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211210122726.12577-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211210122726.12577-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Move_pipe/transcoder/abox_masks_under_intel=5Fd?=
 =?utf-8?q?evice=5Finfo=2Edisplay?=
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

Series: drm/i915: Move pipe/transcoder/abox masks under intel_device_info.display
URL   : https://patchwork.freedesktop.org/series/97864/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9fb166758466 drm/i915: Move pipe/transcoder/abox masks under intel_device_info.display
-:45: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#45: FILE: drivers/gpu/drm/i915/display/intel_display.h:383:
+		for_each_if (INTEL_INFO(__dev_priv)->display.cpu_transcoder_mask & BIT(__t))

-:80: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#80: FILE: drivers/gpu/drm/i915/i915_drv.h:1512:
+#define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display.cpu_transcoder_mask & BIT(trans)) != 0)

total: 0 errors, 2 warnings, 0 checks, 325 lines checked


