Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF99013ABC3
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 15:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDCDD89D5F;
	Tue, 14 Jan 2020 14:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8768989D73
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 14:02:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 06:01:51 -0800
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="213340867"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 06:01:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 16:01:34 +0200
Message-Id: <cover.1579010266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 0/5] drm/i915: eDP DPCD aux backlight fixes
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2 of Lyude's series [1]. I've postponed reviewing the series so long
that I was too embarrassed to ask for a small fix in patch 1. Otherwise
it's just rebasing. :|

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/69914/


Cc: Lyude Paul <lyude@redhat.com>


Lyude Paul (5):
  drm/i915: Fix eDP DPCD aux max backlight calculations
  drm/i915: Assume 100% brightness when not in DPCD control mode
  drm/i915: Fix DPCD register order in intel_dp_aux_enable_backlight()
  drm/i915: Auto detect DPCD backlight support by default
  drm/i915: Force DPCD backlight mode on X1 Extreme 2nd Gen 4K AMOLED
    panel

 drivers/gpu/drm/drm_dp_helper.c               |   4 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 .../drm/i915/display/intel_dp_aux_backlight.c | 167 ++++++++++++------
 drivers/gpu/drm/i915/i915_params.c            |   2 +-
 drivers/gpu/drm/i915/i915_params.h            |   2 +-
 include/drm/drm_dp_helper.h                   |   8 +
 6 files changed, 134 insertions(+), 52 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
