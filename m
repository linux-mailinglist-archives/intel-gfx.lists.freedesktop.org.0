Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 859C1595E9C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 16:55:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A07E0A9F02;
	Tue, 16 Aug 2022 14:55:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2906A979DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 14:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660661716; x=1692197716;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IskEKbLWxwUworLnF0WSRv63/EBcCK6toiT28WdaDVU=;
 b=P2iB6io0USZj4BfGvM6Oohx65DmX0l0c5rWzC1pgczrs0rTWIR+Qvx6T
 SfWnyWCj+rw2rLXK3XlJ5CZ5KEcQwY9AcxBp0ozVM06dCV2HZNQW07suv
 Re19BvX+K8yawn1vHOTpbj1WWvha8RxXEe75SlAFzLyHAv8lhlv8x4MQY
 8obstJHcF8RmBpx5gy2OPlg8KGpwrjLairxR3f73L123eoj9Yzw3Sb7rq
 udugjg5EtdTwtQOcKF1ZMzjSawePbc3voWp4PAkPl/npC/en1rMOE9ZkG
 d6BlzXKG9uKhLdfwPibbD3384VdVHG7q19F5gMosM0fWMtmCYnBlVvnPd Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="293515178"
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="293515178"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 07:55:15 -0700
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="667142410"
Received: from kinzelba-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.194])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 07:55:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Aug 2022 17:55:07 +0300
Message-Id: <cover.1660661647.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/dsi: fix DSI DCS backlight port
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

