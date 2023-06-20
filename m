Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE68873769F
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 23:30:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EC3110E023;
	Tue, 20 Jun 2023 21:30:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2338C10E023;
 Tue, 20 Jun 2023 21:30:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1CE88AADE8;
 Tue, 20 Jun 2023 21:30:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 20 Jun 2023 21:30:11 -0000
Message-ID: <168729661109.10438.5498983812378075528@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Init_DDI_ports_in_VBT_order_=28rev4=29?=
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

Series: drm/i915: Init DDI ports in VBT order (rev4)
URL   : https://patchwork.freedesktop.org/series/114200/
State : warning

== Summary ==

Error: dim checkpatch failed
1cfecb74803d drm/i915: Initialize dig_port->aux_ch to NONE to be sure
2a35c4073b30 drm/i915: Only populate aux_ch is really needed
bbada56642e0 drm/i915: Remove DDC pin sanitation
e5c2e8d5ad51 drm/i915: Remove AUX CH sanitation
-:15: WARNING:TYPO_SPELLING: 'succesfully' may be misspelled - perhaps 'successfully'?
#15: 
favoring the first encoder to succesfully initialize. The reason
                              ^^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 154 lines checked
c3eb8b0537b2 drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child device
-:180: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#180: FILE: drivers/gpu/drm/i915/display/intel_bios.c:3598:
+void intel_bios_for_each_encoder(struct drm_i915_private *i915,
+				 void (*func)(struct drm_i915_private *i915,
+					      const struct intel_bios_encoder_data *devdata,
+					      enum port port))
+{

total: 1 errors, 0 warnings, 0 checks, 303 lines checked


