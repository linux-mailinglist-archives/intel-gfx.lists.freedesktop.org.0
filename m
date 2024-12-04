Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 674199E3DC0
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 16:07:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A97410ED4F;
	Wed,  4 Dec 2024 15:07:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h4cN7Q6Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2BB410E4C0;
 Wed,  4 Dec 2024 15:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733324848; x=1764860848;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=whzLuXTBXHJhGtoOOK8YREUvTejNNUbA+eBAQlBFl5c=;
 b=h4cN7Q6Z7+vY2OcIISaGxgzef2TGjczAXWLVV3ovJUpMdfcHRh6kBT/p
 IvFMF/VXdmJoBeXq8+uDRHJ2emk0meNxuaTtv9Ctyn0/sz4gmeOcf7UxH
 1rNKybcZt6/HQtHwecGKhCaSk4TDOlOgcIuuneF19X2ZuSg9sVuLu4tBL
 5BandhSqGki7QdbTbIIE1tVWLm0lAB3jO9XwRPkIXd3L9mqV49wKSjsKZ
 Vpf937SVlJfZoTKIviOtYT96Tw1RuwnbqlSPcrP+VBCQx675VbFNP+4bQ
 Z3TKAA5Q4wNlS6wa9jONI7Ecgw7VcTpH8e+YSJRkm4VvByFJaFNWGzJmJ A==;
X-CSE-ConnectionGUID: 9cQrJT0nTImTyQ1zgqNT3g==
X-CSE-MsgGUID: KpK5/fEQSPqB3rekkMCzGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33745666"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="33745666"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:07:28 -0800
X-CSE-ConnectionGUID: 4LqU56XMTyKi7iX9ReVb+A==
X-CSE-MsgGUID: UA/OGNjUScC+Ud7f2XBQhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="117038222"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:07:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 0/5] drm/i915/display: handle hdmi connector init failures,
 and no HDMI/DP cases
Date: Wed,  4 Dec 2024 17:07:16 +0200
Message-Id: <cover.1733324735.git.jani.nikula@intel.com>
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

v2 of [1] attempting to resolve [2].

BR,
Jani.


Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>

[1] https://lore.kernel.org/r/cover.1731599468.git.jani.nikula@intel.com
[2] https://lore.kernel.org/r/20241031105145.2140590-1-senozhatsky@chromium.org

Jani Nikula (5):
  drm/i915/hdmi: propagate errors from intel_hdmi_init_connector()
  drm/i915/hdmi: add error handling in g4x_hdmi_init()
  drm/i915/ddi: propagate errors from intel_ddi_init_hdmi_connector()
  drm/i915/display: add intel_encoder_is_hdmi()
  drm/i915/ddi: only call shutdown hooks for valid encoders

 drivers/gpu/drm/i915/display/g4x_hdmi.c       | 35 ++++++++++++-------
 drivers/gpu/drm/i915/display/g4x_hdmi.h       |  5 +--
 drivers/gpu/drm/i915/display/intel_ddi.c      | 12 +++++--
 .../drm/i915/display/intel_display_types.h    | 13 +++++++
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 10 +++---
 drivers/gpu/drm/i915/display/intel_hdmi.h     |  2 +-
 6 files changed, 55 insertions(+), 22 deletions(-)

-- 
2.39.5

