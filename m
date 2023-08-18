Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6215780AEE
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 13:20:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7238210E4EE;
	Fri, 18 Aug 2023 11:20:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30C5A10E4F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 11:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692357606; x=1723893606;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gvr6956kpACGBJZ5Oi+jl1J/XvipyL+Xy7U0k7ynmBQ=;
 b=P7ZiAi+eNgo5JtQIJLDGCKBLS91QN47hHzYteR4r180rbCG2C5zMS5xV
 nZ8ekL5oqeR/ds1NnnNOW6ImjqFPLY2ELIWvJrX7jFD4OBNAlwIo9yeqe
 LjBvcFlTvcFi6Sc79WImKVn9Mu1DULmmaoeyo5kndtkDtEs1+EP5PKNQJ
 l5hWdjiuHc5lvz0KGWQgBTc7WgqAd8sDrgCOXzDNVLugfbYzzW/1tZp2H
 4hCx0bXkn4VG8W1pLa04P42UC//zTYbpRjugoxOu5BgmFxUUtP985cgxA
 zE7L4lyrnQ0icG6QWfbaNcZhJaGuFJpGB69HIpwyVDiQZjL0cQ6yxQNIM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="370538200"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="370538200"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 04:20:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="728579578"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="728579578"
Received: from vgovind2-mobl3.tm.intel.com ([10.237.50.39])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 04:20:03 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Aug 2023 14:19:46 +0300
Message-Id: <20230818111950.128992-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/4] SDP split for DP-MST
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

SDP split config for DP-MST

v2: Style changes and patch splits (Jani Nikula)

v3: More style changes and reorder patches (Jani Nikula)

v4: call sdp split register update before enable trancoder in MST

Vinod Govindapillai (4):
  drm/i915/display: remove redundant parameter from sdp split update
  drm/i915/display: combine DP audio compute config steps
  drm/i915/display: update intel_dp_has_audio to support MST
  drm/i915/display: configure SDP split for DP-MST

 drivers/gpu/drm/i915/display/intel_audio.c  |  6 +++---
 drivers/gpu/drm/i915/display/intel_audio.h  |  3 +--
 drivers/gpu/drm/i915/display/intel_ddi.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c     | 23 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 21 ++++---------------
 6 files changed, 24 insertions(+), 34 deletions(-)

-- 
2.34.1

