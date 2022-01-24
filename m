Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5780B497D7A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 11:55:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B9FB10E9F4;
	Mon, 24 Jan 2022 10:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD0D010E849;
 Mon, 24 Jan 2022 10:55:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B82E7A0169;
 Mon, 24 Jan 2022 10:55:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 24 Jan 2022 10:55:53 -0000
Message-ID: <164302175371.1342.2912950981785475672@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1642769982.git.jani.nikula@intel.com>
In-Reply-To: <cover.1642769982.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_drm_device_based_logging_conversions_?=
 =?utf-8?b?KHJldjMp?=
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

Series: drm/i915/display: drm device based logging conversions (rev3)
URL   : https://patchwork.freedesktop.org/series/99151/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
145b0a01b8e8 drm/i915/snps: convert to drm device based logging
c0ed446aaf38 drm/i915/pps: convert to drm device based logging
ed14ffd548f6 drm/i915/hotplug: convert to drm device based logging
1cbb8abc5672 drm/i915/dp: convert to drm device based logging
b53c3cbc5c7c drm/i915/plane: convert to drm device based logging and WARN
6f6a1eab23e7 drm/i915/sprite: convert to drm device based logging
74ae0578c8de drm/i915/lspcon: convert to drm device based logging
-:488: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#488: FILE: drivers/gpu/drm/i915/display/intel_lspcon.c:696:
+			drm_err(&i915->drm, "LSPCON init failed on port %c\n",
 				  port_name(dig_port->base.port));

total: 0 errors, 0 warnings, 1 checks, 451 lines checked
a217f61a4f50 drm/i915/cdclk: update intel_dump_cdclk_config() logging
53c0bb02a17b drm/i915/cdclk: convert to drm device based logging


