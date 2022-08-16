Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E94595F50
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 17:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6191212AA17;
	Tue, 16 Aug 2022 15:37:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D800B12AA61
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 15:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660664255; x=1692200255;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vQOiRqr88tVWTOF/gbboZiBgxLV07RY+tRqmcUIK61Q=;
 b=HOuRqxPAB0TaiAOtzQL2xTiyV4cuf1rDrpTKNXJJ4R5HGnMu9W2Inrj8
 x8eojQezIAufw62pRvrlhMFG7csC+qiyEZVGWtZrc/UAvm+nkSZgf9u8c
 WWAW7Sb1cgPf3vJsFvLrYNMiLvppToh9cPORe4/e+ueoCs23B9i2LKu6g
 JfeT0kC62X6+wa3RjV8dpMVhF6cNPxfDvZ/kqYWGDyvhvCqFLzL4IYvDc
 ISbDub8dA12p6haW1mxexUxeqGlmLzDP8JPi6o7FV944+dnz/XN2MG6o4
 3ljTj91Q/gQuwe06DoxKtLXhDOeKmb6BB9sMK2+FecoN3cJoAUOcemd6d g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="293527884"
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="293527884"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 08:37:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="667159255"
Received: from kinzelba-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.194])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 08:37:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Aug 2022 18:37:19 +0300
Message-Id: <cover.1660664162.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RESEND 0/3] drm/i915/dsi: fix DSI DCS backlight port
 handling
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hopefully fix a null pointer dereference in DSI DCS backlight handling.

Resend because patchwork got confused with the first submission, for
some reason.

Jani Nikula (3):
  drm/i915/dsi: filter invalid backlight and CABC ports
  drm/i915/dsi: fix dual-link DSI backlight and CABC ports for display
    11+
  drm/i915/dsi: use VBT backlight and CABC port definitions directly

 drivers/gpu/drm/i915/display/icl_dsi.c             |  7 +++++--
 drivers/gpu/drm/i915/display/intel_bios.c          | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_dsi.h           |  3 ---
 .../gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 14 ++++++++------
 drivers/gpu/drm/i915/display/vlv_dsi.c             |  7 +++++--
 5 files changed, 24 insertions(+), 17 deletions(-)

-- 
2.34.1

