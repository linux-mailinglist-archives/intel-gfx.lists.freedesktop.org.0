Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3194B7D8F21
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 09:02:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5377510E933;
	Fri, 27 Oct 2023 07:02:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C687110E933;
 Fri, 27 Oct 2023 07:02:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0BF8AADE3;
 Fri, 27 Oct 2023 07:02:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 27 Oct 2023 07:02:41 -0000
Message-ID: <169839016177.19710.15208354556590502968@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231018222831.4132968-1-lucas.demarchi@intel.com>
In-Reply-To: <20231018222831.4132968-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Cleanup_a_few_functions_in_C10/C20_handling_=28rev3=29?=
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

Series: Cleanup a few functions in C10/C20 handling (rev3)
URL   : https://patchwork.freedesktop.org/series/125323/
State : warning

== Summary ==

Error: dim checkpatch failed
12067ee10d5d drm/i915/display: Abstract C10/C20 pll hw readout
320dc6644c89 drm/i915/display: Abstract C10/C20 pll calculation
-:98: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#98: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3863:
+		crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->cx0pll_state);

total: 0 errors, 1 warnings, 0 checks, 96 lines checked


