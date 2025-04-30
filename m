Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AADAA3FF8
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 03:04:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E45F10E22A;
	Wed, 30 Apr 2025 01:04:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC30310E22A;
 Wed, 30 Apr 2025 01:04:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=3A_Clear?=
 =?utf-8?q?_TRAINING=5FPATTERN=5FSET_=28DPCD_00102h=29_before_starting_Link_?=
 =?utf-8?q?Training?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Apr 2025 01:04:02 -0000
Message-ID: <174597504277.26812.16048205677932870353@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250430001441.2621576-1-khaled.almahallawy@intel.com>
In-Reply-To: <20250430001441.2621576-1-khaled.almahallawy@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dp: Clear TRAINING_PATTERN_SET (DPCD 00102h) before starting Link Training
URL   : https://patchwork.freedesktop.org/series/148450/
State : warning

== Summary ==

Error: dim checkpatch failed
18f1a51dd17b drm/i915/dp: Clear TRAINING_PATTERN_SET (DPCD 00102h) before starting Link Training
-:53: CHECK:LINE_SPACING: Please don't use multiple blank lines
#53: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:778:
+
+

total: 0 errors, 0 warnings, 1 checks, 38 lines checked


