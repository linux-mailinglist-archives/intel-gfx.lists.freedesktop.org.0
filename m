Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C65872E0BFE
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 15:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C8286E3F5;
	Tue, 22 Dec 2020 14:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1BB26E3F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 14:50:04 +0000 (UTC)
IronPort-SDR: UX/do5yYF1VVMo8mXThmwKZqqYdwDyc+tenUFRcualb2Dc5+6AjiCbA97j0W6xnriChaEdRIP+
 6q6VN+uVi6Aw==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="162931140"
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="162931140"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 06:50:04 -0800
IronPort-SDR: OHG0NkvJylxJ6jC42duFAOx8MkVTeIfuif6nfbso0/sn5wEAXx4MII28uMeT3EGlaBgpifivLU
 7rPYL6qfm59Q==
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; d="scan'208";a="373384808"
Received: from sauterhx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.229])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 06:50:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Dec 2020 16:49:40 +0200
Message-Id: <cover.1608648128.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/13] drm/i915/dp: split out pps and aux
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

Clean up intel_dp.c pre-emptively before Dave gets here. ;)

Split out pps and aux code to intel_pps.[ch] and intel_dp_aux.[ch],
respectively.

This reduces intel_dp.c size by 2k lines:

- 8370 drivers/gpu/drm/i915/display/intel_dp.c
+ 6313 drivers/gpu/drm/i915/display/intel_dp.c

The pps code is pretty messy, so I've first done almost pure code
movement, and added interface cleanups on top in smaller bits for easier
review. The patches can be squashed together, but I figured it's easier
this way. There's still room for improvement, but it's a good start to
move the code to a separate file.


BR,
Jani.


Jani Nikula (13):
  drm/i915/pps: abstract panel power sequencer from intel_dp.c
  drm/i915/pps: rename pps_{,un}lock -> intel_pps_{,un}lock
  drm/i915/pps: rename intel_edp_backlight_* to intel_pps_backlight_*
  drm/i915/pps: rename intel_edp_panel_* to intel_pps_*
  drm/i915/pps: rename edp_panel_* to intel_pps_*_unlocked
  drm/i915/pps: abstract intel_pps_vdd_off_sync
  drm/i915/pps: add higher level intel_pps_init() call
  drm/i915/pps: abstract intel_pps_reinit()
  drm/i915/pps: rename intel_dp_check_edp to
    intel_pps_check_power_unlocked
  drm/i915/pps: rename intel_power_sequencer_reset to
    intel_pps_reset_all
  drm/i915/pps: add locked intel_pps_wait_power_cycle
  drm/i915/pps: rename vlv_init_panel_power_sequencer to vlv_pps_init
  drm/i915/dp: split out aux functionality to intel_dp_aux.c

 drivers/gpu/drm/i915/Makefile                 |    2 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |    9 +-
 .../drm/i915/display/intel_display_power.c    |    6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 2235 +----------------
 drivers/gpu/drm/i915/display/intel_dp.h       |    5 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  683 +++++
 drivers/gpu/drm/i915/display/intel_dp_aux.h   |   18 +
 drivers/gpu/drm/i915/display/intel_pps.c      | 1393 ++++++++++
 drivers/gpu/drm/i915/display/intel_pps.h      |   49 +
 9 files changed, 2243 insertions(+), 2157 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_aux.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_aux.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_pps.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pps.h

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
