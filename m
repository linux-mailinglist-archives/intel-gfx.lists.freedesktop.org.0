Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C183180DEA7
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 23:55:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DCA210E03C;
	Mon, 11 Dec 2023 22:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DAB9E10E03C;
 Mon, 11 Dec 2023 22:55:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D3680AADDA;
 Mon, 11 Dec 2023 22:55:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dmc=3A_DMC_?=
 =?utf-8?q?event_stuff?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 11 Dec 2023 22:55:21 -0000
Message-ID: <170233532183.19580.3236297493395235250@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/dmc: DMC event stuff
URL   : https://patchwork.freedesktop.org/series/127648/
State : warning

== Summary ==

Error: dim checkpatch failed
89e12320e6a2 drm/i915/dmc: Don't enable any pipe DMC events
de77a19f62f5 drm/i915/dmc: Also disable the flip queue event on TGL main DMC
7bff52cebcc2 drm/i915/dmc: Also disable HRR event on TGL main DMC
24f771108834 drm/i915/dmc: Print out the DMC mmio register list at fw load time
-:49: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:734:
+			    is_dmc_evt_htp_reg(i915, dmc_id, dmc_info->mmioaddr[i]) ? " (EVT_HTP)" : "",

total: 0 errors, 1 warnings, 0 checks, 33 lines checked


