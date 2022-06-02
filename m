Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A85D353BC19
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 18:08:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0425710E08C;
	Thu,  2 Jun 2022 16:08:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBF5310E077;
 Thu,  2 Jun 2022 16:08:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D3BD7AA3D8;
 Thu,  2 Jun 2022 16:08:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Thu, 02 Jun 2022 16:08:53 -0000
Message-ID: <165418613383.17949.3966825829823750105@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220602141850.21301-1-animesh.manna@intel.com>
In-Reply-To: <20220602141850.21301-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Dual_LFP/EDP_enablement?=
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

Series: Dual LFP/EDP enablement
URL   : https://patchwork.freedesktop.org/series/104663/
State : warning

== Summary ==

Error: dim checkpatch failed
45c6598f2be3 drm/i915/bios: calculate drrs mode using panel index for dual LFP
0416548d3850 drm/i915/display: Use panel index to parse panel timing for dual EDP
99a11ed67734 drm/i915/display: Use panel index to parse lfp backlight
733a6bde7af9 drm/i915/display: prepend connector name to the backlight
-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_backlight.c:971:
+	name = kasprintf(GFP_KERNEL, "%s.intel_backlight",
+			connector->base.name);

total: 0 errors, 0 warnings, 1 checks, 8 lines checked
11643f55c70f drm/i915/display/tgl+: Use PPS index from vbt


