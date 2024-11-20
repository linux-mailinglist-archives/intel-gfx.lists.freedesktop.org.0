Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6672E9D3D43
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 15:15:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C199510E28C;
	Wed, 20 Nov 2024 14:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6E8710E013;
 Wed, 20 Nov 2024 14:15:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_MST_and_?=
 =?utf-8?q?DDI_cleanups_and_refactoring_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2024 14:15:06 -0000
Message-ID: <173211210683.742982.17825624237380094522@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1732106557.git.jani.nikula@intel.com>
In-Reply-To: <cover.1732106557.git.jani.nikula@intel.com>
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

Series: drm/i915: MST and DDI cleanups and refactoring (rev4)
URL   : https://patchwork.freedesktop.org/series/141500/
State : warning

== Summary ==

Error: dim checkpatch failed
1fb4a5b4a62f drm/i915/mst: pass intel_dp around in mst stream helpers
bebffa012cbe drm/i915/mst: unify MST connector function naming to mst_connector_*
636f5d275336 drm/i915/mst: simplify mst_connector_get_hw_state()
4adf072ef91c drm/i915/mst: unify MST topology callback naming to mst_topology_*
e23c28bd4fdd drm/i915/ddi: use intel_ddi_* naming convention for encoder enable/disable
f30767d383d3 drm/i915/reg: convert DP_TP_CTL/DP_TP_STATUS to REG_BIT() and friends
-:87: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/i915_reg.h:3857:
+#define   DP_TP_STATUS_STREAMS_ENABLED_MASK	REG_GENMASK(18, 16) /* 17:16 on hsw but bit 18 mbz */

total: 0 errors, 1 warnings, 0 checks, 68 lines checked
e55b5a57f2c2 drm/i915/dp: refactor clear/wait for act sent
3fef2f4d37c5 drm/i915/ddi: rename temp to ddi_func_ctl in intel_ddi_read_func_ctl()
2a77f1e4692a drm/i915/ddi: split up intel_ddi_read_func_ctl() by output type
e60aa172c49a drm/i915/ddi: refactor intel_ddi_connector_get_hw_state()
22cb9fd9593d drm/i915/ddi: simplify intel_ddi_get_encoder_pipes() slightly


