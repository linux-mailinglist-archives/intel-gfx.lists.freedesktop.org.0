Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A9314A9C3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 19:26:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3628A6E820;
	Mon, 27 Jan 2020 18:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04AE46E820
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 18:26:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:26:13 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="221818574"
Received: from scharfhe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.52.61])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:26:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jan 2020 20:26:02 +0200
Message-Id: <cover.1580149467.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 0/8] drm/i915/display: mass conversion to
 intel_de_*() register accessors
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rebase of the patches from [1] that failed to apply.

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/72533/


Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>


Jani Nikula (8):
  drm/i915/icl_dsi: use intel_de_*() functions for register access
  drm/i915/combo_phy: use intel_de_*() functions for register access
  drm/i915/ddi: use intel_de_*() functions for register access
  drm/i915/display: use intel_de_*() functions for register access
  drm/i915/display_power: use intel_de_*() functions for register access
  drm/i915/dp: use intel_de_*() functions for register access
  drm/i915/hdcp: use intel_de_*() functions for register access
  drm/i915/psr: use intel_de_*() functions for register access

 drivers/gpu/drm/i915/display/icl_dsi.c        |  271 ++--
 .../gpu/drm/i915/display/intel_combo_phy.c    |   66 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  464 +++----
 drivers/gpu/drm/i915/display/intel_display.c  | 1171 +++++++++--------
 .../drm/i915/display/intel_display_power.c    |  292 ++--
 drivers/gpu/drm/i915/display/intel_dp.c       |  234 ++--
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  142 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |    4 +-
 8 files changed, 1397 insertions(+), 1247 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
