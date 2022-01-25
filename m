Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFD249BA17
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 18:22:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFD7510E3AF;
	Tue, 25 Jan 2022 17:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0A62710E2CE;
 Tue, 25 Jan 2022 17:22:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03CADA00E8;
 Tue, 25 Jan 2022 17:22:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 25 Jan 2022 17:22:17 -0000
Message-ID: <164313133798.27367.2162384971574794162@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1643130139.git.jani.nikula@intel.com>
In-Reply-To: <cover.1643130139.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/dp=2C_drm/i915=3A_128b/132b_updates?=
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

Series: drm/dp, drm/i915: 128b/132b updates
URL   : https://patchwork.freedesktop.org/series/99324/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b47aaf278ffa drm/dp: add drm_dp_128b132b_read_aux_rd_interval()
e5a3a86f9a2a drm/dp: add 128b/132b link status helpers from DP 2.0 E11
6a17182df365 drm/dp: add some new DPCD macros from DP 2.0 E11
359fd2d968fb drm/i915/dp: move intel_dp_prepare_link_train() call
0b15ba0af330 drm/i915/dp: rewrite DP 2.0 128b/132b link training based on errata
-:46: CHECK:LINE_SPACING: Please don't use multiple blank lines
#46: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1105:
 
+

total: 0 errors, 0 warnings, 1 checks, 269 lines checked
ae473fb41e94 drm/i915/dp: add 128b/132b support to link status checks
d00649fdfc8b drm/i915/dp: give more time for CDS
70912cc5c3aa drm/i915/mst: update slot information for 128b/132b


