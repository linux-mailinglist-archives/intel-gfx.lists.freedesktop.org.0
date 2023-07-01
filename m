Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 971337448AB
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Jul 2023 13:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D0B10E00C;
	Sat,  1 Jul 2023 11:07:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A94510E00C;
 Sat,  1 Jul 2023 11:07:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0875FA0169;
 Sat,  1 Jul 2023 11:07:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 01 Jul 2023 11:07:15 -0000
Message-ID: <168820963501.27404.576263298676849838@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Init_DDI_ports_in_VBT_order_=28rev6=29?=
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

Series: drm/i915: Init DDI ports in VBT order (rev6)
URL   : https://patchwork.freedesktop.org/series/114200/
State : warning

== Summary ==

Error: dim checkpatch failed
7a43fe4325d8 drm/i915: Initialize dig_port->aux_ch to NONE to be sure
eccdbce5dd35 drm/i915: Only populate aux_ch if really needed
339d607c028f drm/i915: Remove DDC pin sanitation
1f5f862f317e drm/i915: Remove AUX CH sanitation
64999d5bd3ca drm/i915/bios: Extract intel_bios_encoder_port()
109ab03af2ff drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child device
-:181: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#181: FILE: drivers/gpu/drm/i915/display/intel_bios.c:3600:
+void intel_bios_for_each_encoder(struct drm_i915_private *i915,
+				 void (*func)(struct drm_i915_private *i915,
+					      const struct intel_bios_encoder_data *devdata))
+{

total: 1 errors, 0 warnings, 0 checks, 299 lines checked


