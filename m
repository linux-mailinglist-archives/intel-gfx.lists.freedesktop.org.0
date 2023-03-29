Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 158D66CEC6D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 17:11:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA1910E173;
	Wed, 29 Mar 2023 15:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F54E10E173
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 15:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680102662; x=1711638662;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=50vSkl75BcBFm9M0f1Y77+ceB4jpoSlN7OF0vVnqNfY=;
 b=A5OnXIYnrVRciTkatTiu5VXKlIUuoMbjpSQeXT4w/q+YDaHiL8wu+yok
 KWCSXWRLaf29Ytvny/3XJ0szfTwFwWIGELwYjeOM4WnIBF5dPBQ+kyHYj
 Go5lJgmYvZ1T1PKM+9YL+tpKDfTQ9zkeoUHUd1Pf+NckhmqHC5VQdS1WU
 DcFsNaAo8yOhijqycmCAof514gDduOqHcRWIvxOWp+aOhaE0FG2OLxj4d
 teRRoxbp1NuiBGE72XzBaQeTh3JXTKkCTz8j+YnKOiweqPDeYCqXX2aTn
 cSjCXtKe/PUZigloPIpjmgD6wVSzSzCUEc4jejlNTFuc03cHW30BMhz65 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="368672822"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="368672822"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:07:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="753625928"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="753625928"
Received: from pgarraul-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.223.204])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:07:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 18:06:57 +0300
Message-Id: <20230329150703.432072-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 0/6]  High refresh rate PSR fixes
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

Fix/adjust Wa_16013835468 and implement Wa_14015648006. Implement Wa_1136 and
check for vblank being long enough for psr2.

v7:
 - Apply  Wa_14015648006 for display version 12 only
 - Disable WM optimization in pre plane hook allow in post plane hook
v6:
 - Handle mode change in psr enable/disable
 - Handle wm_level_disable changes separately in pre plane hook
 - Handle WA #1136 in pre/post plane hooks
v5:
 - Add missing patch
v4:
 - Keep/fix Wa_16013835468
 - Use calculated block count number instead of fixed 12
v3:
 - apply Wa_16013835468 for icl as well
 - set/clear chicken bit in post plane update
 - Unify pre/post hooks
v2: Implement Wa_1136

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Jouni Högander (6):
  drm/i915/psr: Unify pre/post hooks
  drm/i915/psr: Modify/Fix Wa_16013835468 and prepare for Wa_14015648006
  drm/i915/psr: Implement Wa_14015648006
  drm/i915/psr: Add helpers for block count number handling
  drm/i915/psr: Check that vblank is long enough for psr2
  drm/i915/psr: Implement Display WA #1136

 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 90 +++++++++++++++----
 drivers/gpu/drm/i915/display/skl_watermark.c  |  6 +-
 3 files changed, 74 insertions(+), 23 deletions(-)

-- 
2.34.1

