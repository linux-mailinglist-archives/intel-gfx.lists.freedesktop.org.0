Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BFE9FE6E3
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 15:14:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2DC510E05A;
	Mon, 30 Dec 2024 14:14:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UHRJhZfI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07D6B10E05A;
 Mon, 30 Dec 2024 14:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735568092; x=1767104092;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Je9tqFOjSyG3b+/vBONrAu1yt2n9ZJZZzdy1PqZtRKU=;
 b=UHRJhZfIX/AsWmFxH+BpjOzxBX4YmeSGTuUHjf0GjtmQn2Zc7FBmRnsR
 fuNslIK+CydGWSyIyJiis7eIS+TTwzgei19G1peK7yVo2GMywE0ha7MPA
 wf94iMURrxs2SHE69CRcwArRWjfSILHpIFc8mOpuLhWJUwTp7Nj2QO6KD
 5nivfQuJpSVWiPNi9BUIozkhPoiP5kR97LIgHN9zCYP2GYrf2ihfwWUYA
 6+MdQSHxQ9BB71CtBHpaJ0l3OQnUtPmEQI8WsBsE37u+dUGbP5y2qFE7/
 S0vR9KeJ5JSPP4eK5iUuQGUz+r7X/tvob4/Ylqamjjy3CO3ZNRvIG2AKs w==;
X-CSE-ConnectionGUID: wnxNU9ltTnGS8K3noF62DQ==
X-CSE-MsgGUID: /pGGaXU7S4uMPNQLtI1wXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="39538273"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="39538273"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:14:52 -0800
X-CSE-ConnectionGUID: RsIemUHbRbCELKRVOOOhNA==
X-CSE-MsgGUID: ayysYY+xSqiHUGjZAp9v4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="101215236"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:14:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [CI v3 0/6] drm/i915/display: handle hdmi connector init failures,
 and no HDMI/DP cases
Date: Mon, 30 Dec 2024 16:14:39 +0200
Message-Id: <cover.1735568047.git.jani.nikula@intel.com>
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

Resend for CI.

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

