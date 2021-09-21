Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0784129E8
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 02:23:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C0D06E8BD;
	Tue, 21 Sep 2021 00:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 521A56E8BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 00:23:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="308811917"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="308811917"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:23:17 -0700
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="549183669"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:23:16 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 21 Sep 2021 03:23:00 +0300
Message-Id: <20210921002313.1132357-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/13] drm/i915/tc: Fix TypeC connect/disconnect
 sequences
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patchset fixes two issues on ADL-P related to the TypeC PHY
connect/disconnect sequences in patch 11 and 13 and a few other minor
TypeC issues I noticed on the way. The fix in patch 11 requires some
refactoring and it affects all TypeC platforms; this was the way that
made sense to me to keep things consistent across all platforms and
TypeC modes and also bring the connect/disconnect sequences closer to
the specification.

Tested on ICL, TGL, ADL-P, on all the 3 TypeC port types where
available.

Cc: José Roberto de Souza <jose.souza@intel.com>

Imre Deak (13):
  drm/i915/tc: Fix TypeC port init/resume time sanitization
  drm/i915/adlp/tc: Fix PHY connected check for Thunderbolt mode
  drm/i915/tc: Remove waiting for PHY complete during releasing
    ownership
  drm/i915/tc: Check for DP-alt,legacy sinks before taking PHY ownership
  drm/i915/tc: Add/use helpers to retrieve TypeC port properties
  drm/i915/tc: Don't keep legacy TypeC ports in connected state w/o a
    sink
  drm/i915/tc: Add a mode for the TypeC PHY's disconnected state
  drm/i915/tc: Refactor TC-cold block/unblock helpers
  drm/i915/tc: Avoid using legacy AUX PW in TBT mode
  drm/i915/icl/tc: Remove the ICL special casing during TC-cold blocking
  drm/i915/tc: Fix TypeC PHY connect/disconnect logic on ADL-P
  drm/i915/tc: Drop extra TC cold blocking from
    intel_tc_port_connected()
  drm/i915/tc: Fix system hang on ADL-P during TypeC PHY disconnect

 drivers/gpu/drm/i915/display/intel_ddi.c      |  46 +--
 drivers/gpu/drm/i915/display/intel_display.c  |  26 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   1 +
 .../drm/i915/display/intel_display_power.c    |   4 +-
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   6 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   5 +-
 drivers/gpu/drm/i915/display/intel_tc.c       | 275 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_tc.h       |   6 +-
 9 files changed, 218 insertions(+), 154 deletions(-)

-- 
2.27.0

