Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FA185D1D2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 08:53:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07ABE10E432;
	Wed, 21 Feb 2024 07:53:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GhMQCIfe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8273110E433
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 07:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708502030; x=1740038030;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kK+TmwGCvbn9+Be88dqpkD5Msc/ElZyKPJJwFnXwXkE=;
 b=GhMQCIfe6FUtDQT4LHnhbTPD6ulst+6xPiSH+chsIecg2dqlNTo694k8
 Y9yPTokYv6f9zNX6Tiqbx+NbQpzxnFKu+VR5lVqy3O7LvIWHgKbOzQKAX
 L1cDMALIlHkb/OfIiUBZSq4zJFXdGN2ruwdMNobVnvoEEfhfSe11gDccO
 z4xlUEJj+1JSSY/f54z3miib+DwVrlCvlUm7yT/DZzMhvzo2wam9c/lGD
 jTzWZzE1BZktZybtuiNmkEVgRGRCBZWpIl9Fhr6AuAibCayUefW8/Ex/3
 jRmVFkXHPGL+G6EsRWHVDz93Pq3PbwAC9a8p4ICINxIPN6pb+vGtxpXky Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="20082032"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="20082032"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 23:53:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="827302723"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="827302723"
Received: from esavax-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.221.77])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 23:53:47 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/3] IO and fast wake lines calculation and increase fw sync
 length
Date: Wed, 21 Feb 2024 09:53:19 +0200
Message-Id: <20240221075322.2764209-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This patch set is improving IO and fast wake lines calculation in PSR
code:

Use actual fast wake sync pulse count in calculation
Implement getter for IO buffer wake times and use that
Better presentation on how these are calculated

Also number of precharge pulses is increased by 2 pulses to fix
problems with certain panel models.

Jouni Högander (3):
  drm/i915/display: Add aux function pointer for fast wake sync pulse
    count
  drm/i915/psr: Improve fast and IO wake lines calculation
  drm/i915/display: Increase number of fast wake precharge pulses

 .../drm/i915/display/intel_display_types.h    |  6 +++
 drivers/gpu/drm/i915/display/intel_dp_aux.c   | 12 +++---
 drivers/gpu/drm/i915/display/intel_psr.c      | 40 +++++++++++++++----
 3 files changed, 46 insertions(+), 12 deletions(-)

-- 
2.34.1

