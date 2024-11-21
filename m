Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA399D4CCE
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 13:32:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F47F10E1CF;
	Thu, 21 Nov 2024 12:32:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96DAE10E1CF;
 Thu, 21 Nov 2024 12:32:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_use_hw_support_for_m?=
 =?utf-8?q?in/interim_ddb_allocation_for_async_flip_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Nov 2024 12:32:01 -0000
Message-ID: <173219232163.1148499.8925956935878688633@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241121112726.510220-1-vinod.govindapillai@intel.com>
In-Reply-To: <20241121112726.510220-1-vinod.govindapillai@intel.com>
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

Series: use hw support for min/interim ddb allocation for async flip (rev2)
URL   : https://patchwork.freedesktop.org/series/140926/
State : warning

== Summary ==

Error: dim checkpatch failed
d6ecfa64fafa drm/i915/display: update to plane_wm register access function
768a456cf746 drm/i915/display: update to relative data rate handling
d2e9432eeaeb drm/i915/xe3: Use hw support for min/interim ddb allocations for async flip
-:133: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#133: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:389:
+							_PLANE_MIN_BUF_CFG_1_A, _PLANE_MIN_BUF_CFG_1_B, \

-:134: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#134: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:390:
+							_PLANE_MIN_BUF_CFG_2_A, _PLANE_MIN_BUF_CFG_2_B)

-:139: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#139: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:395:
+#define	  PLANE_INTERIM_DBUF_BLOCKS(val)	REG_FIELD_PREP(PLANE_INTERIM_DBUF_BLOCKS_MASK, (val))

total: 0 errors, 3 warnings, 0 checks, 357 lines checked


