Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD06140C73
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 15:29:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2834A6F5A6;
	Fri, 17 Jan 2020 14:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C479B6F5AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 14:29:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:29:35 -0800
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="218922230"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:29:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 16:29:20 +0200
Message-Id: <cover.1579270868.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 0/9] drm/i915/bios: stop using vbt.ddi_port_info
 directly
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

My long term plan is to reference all post-setup VBT child device
details through the encoder. We can add an (opaque) encoder->child
pointer, and forgo the dance to get to the relevant VBT details. This
will be helpful in, for example, adding support for multiple local
panels; the data must be made encoder specific instead of just using
i915->vbt.edp or i915->vbt.dsi directly.

The i915->vbt.ddi_port_info[] array stands in the way. Start hiding it
in intel_bios.c. We do gain a lot of intel_bios_*() accessors which may
seem noisy. But it seems to me this is a helpful iterative step no
matter what.

BR,
Jani.


Jani Nikula (9):
  drm/i915/bios: add intel_bios_max_tmds_encoder()
  drm/i915/bios: add intel_bios_hdmi_level_shift()
  drm/i915/bios: intel_bios_dp_boost_level()
  drm/i915/bios: intel_bios_hdmi_boost_level()
  drm/i915/bios: add intel_bios_dp_max_link_rate()
  drm/i915/bios: add intel_bios_alternate_ddc_pin()
  drm/i915/bios: add intel_bios_port_supports_*()
  drm/i915/bios: check port presence based on child device
  drm/i915: use intel_bios_is_port_present()

 drivers/gpu/drm/i915/display/intel_bios.c     | 74 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     | 11 +++
 .../gpu/drm/i915/display/intel_combo_phy.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 36 ++++-----
 drivers/gpu/drm/i915/display/intel_dp.c       |  6 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 25 +++----
 6 files changed, 115 insertions(+), 41 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
