Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 492AC9C8EB7
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 16:52:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E62D410E80D;
	Thu, 14 Nov 2024 15:52:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G0py4s2m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 373CF10E80B;
 Thu, 14 Nov 2024 15:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731599545; x=1763135545;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h2GFfPswiW1ooB+IBUEVbCBA4SuEVSV0CD9JGdCoSdk=;
 b=G0py4s2mRm7ET1VLdXuyNWuLtrCc51+egBsn7ZDMUV8tvLbsekYp//xv
 yivpqLjsuUCSmi6iTnB4bPPPvjTL6qKj+ajv9Pseu3bOHQwCP02WbzliY
 ZiqxftWmNcUEvuWdETVeKd5aUlxaOTjvarWsUrSfV3GC/4JvJkE7xaE97
 rGRmtwk95E82e8BXczcmasVFFow6Tir7QutjAjYwBHlJtn/E9yVT/o4ta
 A5ZczCqcQSkaiMDC0NXJD9gHizBX05/ytKWpGe+9AQFB2VVXsPl3LFwKG
 /qDnWw9fV+9OMXVZ4LwY+Be4InNZdNJizWLJ0tM/ke/L3GDUrXzlYRiX/ A==;
X-CSE-ConnectionGUID: F8Y84lx3QjSvBtfdkRC/BQ==
X-CSE-MsgGUID: e15n5wI8SV+Nsbpn6zKevA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="35269695"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="35269695"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 07:52:25 -0800
X-CSE-ConnectionGUID: Y1d00W0SSRC1lJb3HXGf+A==
X-CSE-MsgGUID: vqIVbvmUS1WKg84HjtvDEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="88645996"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 07:52:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [PATCH 0/3] drm/i915/display: handle hdmi connector init failures
Date: Thu, 14 Nov 2024 17:52:14 +0200
Message-Id: <cover.1731599468.git.jani.nikula@intel.com>
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

This is an attempt to resolve [1].

BR,
Jani.


[1] https://lore.kernel.org/r/20241031105145.2140590-1-senozhatsky@chromium.org


Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>

Jani Nikula (3):
  drm/i915/hdmi: propagate errors from intel_hdmi_init_connector()
  drm/i915/hdmi: add error handling in g4x_hdmi_init()
  drm/i915/ddi: propagate errors from intel_ddi_init_hdmi_connector()

 drivers/gpu/drm/i915/display/g4x_hdmi.c   | 35 +++++++++++++++--------
 drivers/gpu/drm/i915/display/g4x_hdmi.h   |  5 ++--
 drivers/gpu/drm/i915/display/intel_ddi.c  |  6 +++-
 drivers/gpu/drm/i915/display/intel_hdmi.c | 10 ++++---
 drivers/gpu/drm/i915/display/intel_hdmi.h |  4 +--
 5 files changed, 39 insertions(+), 21 deletions(-)

-- 
2.39.5

