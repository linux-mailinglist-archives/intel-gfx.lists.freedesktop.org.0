Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4418A97BFCF
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C6910E60A;
	Wed, 18 Sep 2024 17:47:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qz3w3yBM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC14D10E293;
 Wed, 18 Sep 2024 17:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726681676; x=1758217676;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b1VPNqY7LtUE57tQxWFQjqFX5HeNUJK3IUTveKnQ8U8=;
 b=Qz3w3yBMzgQOy0PTocfB52oLTooocBrMQQUWhPD36J0Wuib/JPELZO2l
 8PrIUpZvXBKpa/1Lb248sdpBp26fV1/YZvs/lLvnPGvA5OtnScTXxVMeE
 jLjq7BlbTkKuRinyyahTruG+EFz+rFOKvbEsgw1MBHQTI2wDLWtXR7jDh
 PjiC+2NRwpTi1wGdx1mD4YgnBCNzXOvMmT2wfDdBLw0rq/ldBsLoJ6g20
 MfaQPfJPkXP5jQdS/RFttusgVwLwdHhD8m5+jmz23ZmeBvxS73X/Vq4OE
 s7yKbUYEEsuz/l0w49lCI95KbLcsCNJIc66lQE3EWh4p5CIow1CdE2J0I Q==;
X-CSE-ConnectionGUID: I8u5yhELSbWBSzUd4XAngQ==
X-CSE-MsgGUID: LsL91zpMQf2Fx/TqSBX8aw==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25095098"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25095098"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:47:55 -0700
X-CSE-ConnectionGUID: 504r4BlNRLCpG1262P/fzg==
X-CSE-MsgGUID: AqP/WbUWQ/CmYUsjWeLNpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="74447321"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:47:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 0/9] drm/i915/pps: hide VLV/CHV PPS pipe stuff inside
 intel_pps.c
Date: Wed, 18 Sep 2024 20:47:40 +0300
Message-Id: <cover.1726681620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

v3 of https://lore.kernel.org/r/cover.1725883885.git.jani.nikula@intel.com

Jani Nikula (9):
  drm/i915/pps: add vlv_ prefix to pps_pipe and active_pipe members
  drm/i915/pps: add bxt_ prefix to pps_reset
  drm/i915/pps: only touch the vlv_ members on VLV/CHV
  drm/i915/pps: add vlv_pps_pipe_init()
  drm/i915/pps: add vlv_pps_pipe_reset()
  drm/i915/pps: add vlv_pps_port_disable()
  drm/i915/pps: rename vlv_pps_init() to vlv_pps_port_enable_unlocked()
  drm/i915/pps: add vlv_pps_backlight_initial_pipe()
  drm/i915/pps: move vlv_active_pipe() to intel_pps.c

 drivers/gpu/drm/i915/display/g4x_dp.c         |  32 +---
 drivers/gpu/drm/i915/display/g4x_dp.h         |   5 -
 .../drm/i915/display/intel_display_types.h    |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  20 +--
 drivers/gpu/drm/i915/display/intel_pps.c      | 160 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_pps.h      |   9 +-
 6 files changed, 130 insertions(+), 102 deletions(-)

-- 
2.39.2

