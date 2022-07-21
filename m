Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0C657CB88
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 15:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C01110F98C;
	Thu, 21 Jul 2022 13:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 93B3410F1D3;
 Thu, 21 Jul 2022 13:10:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8AB67A882E;
 Thu, 21 Jul 2022 13:10:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tangudu, Tilak" <tilak.tangudu@intel.com>
Date: Thu, 21 Jul 2022 13:10:51 -0000
Message-ID: <165840905154.29951.12835586208204928655@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
In-Reply-To: <20220721095955.3986943-1-tilak.tangudu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_D3Cold-Off_support_for_runtime-pm_=28rev3?=
 =?utf-8?q?=29?=
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

Series: drm/i915: Add D3Cold-Off support for runtime-pm (rev3)
URL   : https://patchwork.freedesktop.org/series/105427/
State : warning

== Summary ==

Error: dim checkpatch failed
4f11e13b3cc3 drm/i915: Added is_intel_rpm_allowed helper
6171adbfb722 drm/i915: Guard rc6 helpers with is_intel_rpm_allowed
b7376087143b drm/i915: Extend rpm in intel_guc_global_policies_update
af8d888e4322 drm/i915: sanitize dc state in rpm resume
b8b9121feb43 Drm/i915/rpm: Add intel_runtime_idle
11e785317730 drm/i915/rpm: d3cold Policy
-:61: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#61: FILE: drivers/gpu/drm/i915/i915_params.c:201:
+i915_param_named_unsafe(d3cold_sr_lmem_threshold, int, 0600,
+	"Enable VRAM Self refresh when size of lmem is greater to this threshold. "

total: 0 errors, 0 warnings, 1 checks, 97 lines checked
f6bc98625c72 drm/i915: Add i915_save/load_pci_state helpers
038d9ea49a5c drm/i915 : Add D3COLD OFF support


