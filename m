Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C8E4313B4
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 11:42:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88EEF6E82C;
	Mon, 18 Oct 2021 09:42:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8FBD6E82C
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 09:41:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="228092138"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="228092138"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 02:41:58 -0700
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="493516707"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 02:41:56 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Mon, 18 Oct 2021 12:41:48 +0300
Message-Id: <20211018094154.1407705-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915/dp: Fix link parameter use in lack
 of a valid DPCD
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

This patchset fixes a few issues, related to invalid accesses from the
intel_dp->common_rates[] array and in general the link rate, lane count
parameters being invalid until a valid DPCD is read from the sink.

One issue in intel_dp_sync_state() was caught by the CONFIG_UBSAN
feature. The first 3 patches are also needed for stable kernels.

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Imre Deak (6):
  drm/i915/dp: Skip the HW readout of DPCD on disabled encoders
  drm/i915/dp: Ensure sink rate values are always valid
  drm/i915/dp: Ensure max link params are always valid
  drm/i915/dp: Ensure sink/link max lane count values are always valid
  drm/i915/dp: Sanitize sink rate DPCD register values
  drm/i915/dp: Sanitize link common rate array lookups

 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 127 ++++++++++++++----
 2 files changed, 101 insertions(+), 28 deletions(-)

-- 
2.27.0

