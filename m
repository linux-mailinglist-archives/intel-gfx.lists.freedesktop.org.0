Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6329D3AD6
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:43:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7689310E736;
	Wed, 20 Nov 2024 12:43:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ly3RN/xT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F4D10E733;
 Wed, 20 Nov 2024 12:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732106605; x=1763642605;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zS5XXhPMqMnAbunuMBb8PXOocL9a3JVTcy40n7NLtb8=;
 b=Ly3RN/xTjv6sAc0WZQH6RukmKhEVH84CIlbSwlt1E9Ja8c+sWON8L7M7
 ev6NCpsp9ogXFUe8XQtGvz6llBv9hC/VAtMzHJNFSBuWKIW6uXkyqXhJP
 wLz+7UfqDPiEIMEYx1+e1W/NYB9jYuvWVqZVNC4mjYEX0iYWSGvzJ34vK
 6vsbZZNl2pIhCMuW2DqxR8w4zPv+6d4houTjf7sfxZM6+oRsjrOSUFdJE
 NMxIucz579B3wOL82ejYjxrkEfPZSg8nlG3s7enbfgGMq0+3xRVVAQEOB
 Y3hh5KS3CMAGTHSQYaf8CwVDEJtiS1WC7PX3sOUSYu4+VmrN3lOJYVqz4 Q==;
X-CSE-ConnectionGUID: S9cZy9WQToCtD3DNNvnhDQ==
X-CSE-MsgGUID: SOlrdq+8SUm3Hz5oMCdnig==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32092685"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="32092685"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:43:24 -0800
X-CSE-ConnectionGUID: /2MfwGkqTju2KZNSNmquIA==
X-CSE-MsgGUID: FHKz4oF4Qo6wDfpuW6nnKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="120838508"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:43:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [CI 00/11] drm/i915: MST and DDI cleanups and refactoring
Date: Wed, 20 Nov 2024 14:43:08 +0200
Message-Id: <cover.1732106557.git.jani.nikula@intel.com>
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

CI resend of https://lore.kernel.org/r/cover.1731941270.git.jani.nikula@intel.comx

Jani Nikula (11):
  drm/i915/mst: pass intel_dp around in mst stream helpers
  drm/i915/mst: unify MST connector function naming to mst_connector_*
  drm/i915/mst: simplify mst_connector_get_hw_state()
  drm/i915/mst: unify MST topology callback naming to mst_topology_*
  drm/i915/ddi: use intel_ddi_* naming convention for encoder
    enable/disable
  drm/i915/reg: convert DP_TP_CTL/DP_TP_STATUS to REG_BIT() and friends
  drm/i915/dp: refactor clear/wait for act sent
  drm/i915/ddi: rename temp to ddi_func_ctl in intel_ddi_read_func_ctl()
  drm/i915/ddi: split up intel_ddi_read_func_ctl() by output type
  drm/i915/ddi: refactor intel_ddi_connector_get_hw_state()
  drm/i915/ddi: simplify intel_ddi_get_encoder_pipes() slightly

 drivers/gpu/drm/i915/display/intel_ddi.c    | 319 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_ddi.h    |   8 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 161 +++++-----
 drivers/gpu/drm/i915/i915_reg.h             |  56 ++--
 4 files changed, 287 insertions(+), 257 deletions(-)

-- 
2.39.5

