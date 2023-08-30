Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD0678D62F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 15:37:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FCBB10E13B;
	Wed, 30 Aug 2023 13:37:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F041810E13B;
 Wed, 30 Aug 2023 13:37:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC195AADD8;
 Wed, 30 Aug 2023 13:37:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Date: Wed, 30 Aug 2023 13:37:20 -0000
Message-ID: <169340264096.15232.18441956927117403491@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230830121524.15101-1-gustavo.sousa@intel.com>
In-Reply-To: <20230830121524.15101-1-gustavo.sousa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/cx0=3A_Check_and_increase_msgbus_timeout_threshold?=
 =?utf-8?q?_=28rev2=29?=
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

Series: drm/i915/cx0: Check and increase msgbus timeout threshold (rev2)
URL   : https://patchwork.freedesktop.org/series/122982/
State : warning

== Summary ==

Error: dim checkpatch failed
cf32144e3989 drm/i915/cx0: Check and increase msgbus timeout threshold
-:109: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#109: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:118:
+										 _XELPDP_PORT_MSGBUS_TIMER_LN0_A, \

-:110: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#110: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:119:
+										 _XELPDP_PORT_MSGBUS_TIMER_LN0_B, \

-:111: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#111: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:120:
+										 _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1, \

-:112: WARNING:LONG_LINE: line length of 131 exceeds 100 columns
#112: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:121:
+										 _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2) + (lane) * 4)

-:115: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#115: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:124:
+#define   XELPDP_PORT_MSGBUS_TIMER_VAL(val)		REG_FIELD_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val)

total: 0 errors, 5 warnings, 0 checks, 76 lines checked


