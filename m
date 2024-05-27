Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BDB8D017E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 15:30:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E38110EAD9;
	Mon, 27 May 2024 13:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4402210EAD9;
 Mon, 27 May 2024 13:30:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/pps=3A_pass?=
 =?utf-8?q?_dev=5Fpriv_explicitly_to_PPS_regs?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2024 13:30:11 -0000
Message-ID: <171681661127.2213173.11872087936763576289@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1716806471.git.jani.nikula@intel.com>
In-Reply-To: <cover.1716806471.git.jani.nikula@intel.com>
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

Series: drm/i915/pps: pass dev_priv explicitly to PPS regs
URL   : https://patchwork.freedesktop.org/series/134073/
State : warning

== Summary ==

Error: dim checkpatch failed
9a1686c5ec1d drm/i915: pass dev_priv explicitly to _MMIO_PPS
491e963cbb41 drm/i915: pass dev_priv explicitly to PP_STATUS
6e5c39a790ba drm/i915: pass dev_priv explicitly to PP_CONTROL
1a76341e9af0 drm/i915: pass dev_priv explicitly to PP_ON_DELAYS
-:69: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#69: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1718:
+		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(dev_priv, 0)) & PANEL_PORT_SELECT_MASK;

-:78: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#78: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1745:
+		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(dev_priv, 0)) & PANEL_PORT_SELECT_MASK;

total: 0 errors, 2 warnings, 0 checks, 64 lines checked
f7e5a1556671 drm/i915: pass dev_priv explicitly to PP_OFF_DELAYS
09053de63e5f drm/i915: pass dev_priv explicitly to PP_DIVISOR


