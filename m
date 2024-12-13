Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B94289F0ED6
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 15:16:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C4A10F046;
	Fri, 13 Dec 2024 14:16:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QMzL2R98";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D82A410F044;
 Fri, 13 Dec 2024 14:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734099367; x=1765635367;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mEsb+xrMe/1FpvFft04LmnA1DS6zL+IryGZOKMa38lw=;
 b=QMzL2R987vF0kSAv2Y6d+p5DmfNr8LazufgpsEn7ZEvN8x7Y12K7XKBt
 MXG5FHi//VmxQLpTJYez2sYygTRo6EjDnnt0euI97fxiClqY8TbJFYuss
 EBsI4s+LOmbvDErw763cr9qifD5a9A21V8KlHEIGlSF13AO+NugHk8gy1
 ByJ3Pt7d6WNVfxSAzDvkY68n/ZantZvDu6do8AJULfdW+4IwQhj5z/wdi
 Zr9RcnpJRGcQrxEjCG5M12lHeaXycPMqXNvUbdjN1msXI6SzRMRSXEsM6
 eQKd0esd7XRoO40O7LsNEi9+S6fM+ZbvO5Fh/Z/jClGGchbzKtpTi8uYE Q==;
X-CSE-ConnectionGUID: 0xJLR8MTRva5HCX7PfbM3w==
X-CSE-MsgGUID: VHeDgGxwTFaEyGlI0rkagQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="34689389"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34689389"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 06:16:07 -0800
X-CSE-ConnectionGUID: E+4JYOWSS1+tPmXEzsUGfA==
X-CSE-MsgGUID: WhlxvYEGQ7y4erylg7hAkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133916233"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 06:16:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 0/6] drm/i915/display: handle hdmi connector init failures,
 and no HDMI/DP cases
Date: Fri, 13 Dec 2024 16:15:52 +0200
Message-Id: <cover.1734099220.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Another round of [1], adding patch 1 and slightly modifying patch 4.

There are cases where we want to gracefully handle but *not* propagate
errors from HDMI connector init, because we don't want to fail the
entire DDI init, as the DP could still be functional.

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1733324735.git.jani.nikula@intel.com

Jani Nikula (6):
  drm/i915/ddi: change intel_ddi_init_{dp,hdmi}_connector() return type
  drm/i915/hdmi: propagate errors from intel_hdmi_init_connector()
  drm/i915/hdmi: add error handling in g4x_hdmi_init()
  drm/i915/ddi: gracefully handle errors from
    intel_ddi_init_hdmi_connector()
  drm/i915/display: add intel_encoder_is_hdmi()
  drm/i915/ddi: only call shutdown hooks for valid encoders

 drivers/gpu/drm/i915/display/g4x_hdmi.c       | 35 ++++++++++++------
 drivers/gpu/drm/i915/display/g4x_hdmi.h       |  5 ++-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 37 ++++++++++++-------
 .../drm/i915/display/intel_display_types.h    | 13 +++++++
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 10 +++--
 drivers/gpu/drm/i915/display/intel_hdmi.h     |  2 +-
 6 files changed, 69 insertions(+), 33 deletions(-)

-- 
2.39.5

