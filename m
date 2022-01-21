Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7BA49685E
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jan 2022 00:54:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E584710E71E;
	Fri, 21 Jan 2022 23:54:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E94210E71E;
 Fri, 21 Jan 2022 23:54:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 486F3A9932;
 Fri, 21 Jan 2022 23:54:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 21 Jan 2022 23:54:24 -0000
Message-ID: <164280926426.19938.1887418856874052235@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1642769982.git.jani.nikula@intel.com>
In-Reply-To: <cover.1642769982.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_drm_device_based_logging_conversions_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/display: drm device based logging conversions (rev2)
URL   : https://patchwork.freedesktop.org/series/99151/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ef1acbbf5c73 drm/i915/snps: convert to drm device based logging
a3babf263cdf drm/i915/pps: convert to drm device based logging
61548a8ffb4e drm/i915/hotplug: convert to drm device based logging
65346aba056f drm/i915/dp: convert to drm device based logging
1bb50368c977 drm/i915/plane: convert to drm device based logging and WARN
7fe0ce0527bc drm/i915/sprite: convert to drm device based logging
c9b9891ad33e drm/i915/lspcon: convert to drm device based logging
-:488: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#488: FILE: drivers/gpu/drm/i915/display/intel_lspcon.c:696:
+			drm_err(&i915->drm, "LSPCON init failed on port %c\n",
 				  port_name(dig_port->base.port));

total: 0 errors, 0 warnings, 1 checks, 451 lines checked
3c5cf4bdfcf2 drm/i915/cdclk: update intel_dump_cdclk_config() logging
4e5d67787a94 drm/i915/cdclk: convert to drm device based logging


