Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4F08283A2
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 11:05:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB2A110E075;
	Tue,  9 Jan 2024 10:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1867810E075
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 10:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704794729; x=1736330729;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PT2TwyACrW12B6qYyDpn5XymEpSLjBBVUB9RTc7TWak=;
 b=F4CPpNiiKAcue1I1O3ygmgIz4q3HpkINClypbjF3kNpQHcwfzkb7u/uP
 BbH1aNZQDAV6tQNgwWr2uSMAJQ+L1csm4EhB/MOENJBI7fHsZCR4h7aW5
 dFOZB0wJ2i3cZ7QM2cyXCmIZBl9H+0qYMDFgbLRNdCmKAhFMV3SADSunK
 z7rT1kMTjzK1J0W4oey9lotKqSiDrQ6aiYWKJVg4aTLWjG5t+JyK5iKcQ
 NqCqNYSlOmL2PLSsUPNLg5dZjtza3yQP7YKfnuIfFy3I1uISO2Jrufuip
 CnSWOlr5y5oNuN6rLDc6WiYBjVcBXmALXTU+KYMP9IJWk7a0TSjJm2nEp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="5517888"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; 
   d="scan'208";a="5517888"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 02:05:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="925194203"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; d="scan'208";a="925194203"
Received: from ahuge-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.36.112])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 02:05:27 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/2] Allow PSR mode changes without full modeset
Date: Tue,  9 Jan 2024 12:05:15 +0200
Message-Id: <20240109100517.1947414-1-jouni.hogander@intel.com>
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

Currently PSR mode changes are triggering full modeset. This patch set
allows changes to PSR mode using fast modeset.

Jouni Högander (2):
  drm/i915/display: No need for full modeset due to psr
  drm/i915/psr: CAN_PSR and CAN_PANEL_REPLAY can be now local defines

 drivers/gpu/drm/i915/display/intel_display.c | 7 -------
 drivers/gpu/drm/i915/display/intel_dp.c      | 7 -------
 drivers/gpu/drm/i915/display/intel_psr.c     | 6 ++++++
 drivers/gpu/drm/i915/display/intel_psr.h     | 6 ------
 4 files changed, 6 insertions(+), 20 deletions(-)

-- 
2.34.1

