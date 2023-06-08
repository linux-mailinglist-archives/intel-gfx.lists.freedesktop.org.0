Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E152A7287AF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 21:11:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F48010E60A;
	Thu,  8 Jun 2023 19:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 34D5B10E112;
 Thu,  8 Jun 2023 19:11:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E077AADDD;
 Thu,  8 Jun 2023 19:11:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 08 Jun 2023 19:11:22 -0000
Message-ID: <168625148215.18384.7498099249995340928@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1686236840.git.jani.nikula@intel.com>
In-Reply-To: <cover.1686236840.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_further_device_info_cleanups?=
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

Series: drm/i915: further device info cleanups
URL   : https://patchwork.freedesktop.org/series/119086/
State : warning

== Summary ==

Error: dim checkpatch failed
4151efbd9a55 drm/i915: separate display info printing from the rest
-:36: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#36: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:931:
+#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))

total: 0 errors, 0 warnings, 1 checks, 125 lines checked
b99c5a5fff3c drm/i915: fix display info usage
175ec5f1d82b drm/i915: move display device and runtime info to struct intel_display
b5b33d394a67 drm/i915: make device info a const pointer to rodata


