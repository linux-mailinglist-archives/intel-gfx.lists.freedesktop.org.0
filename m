Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91150687CD1
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 13:05:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2E5910E4F1;
	Thu,  2 Feb 2023 12:04:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84E1E10E4F1
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 12:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675339497; x=1706875497;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MNFZyVMrWtJwAso5c6zwi/xJMlx8WN741ba3+M+Kcl8=;
 b=NcRv8jUvMgUFYu+S9i+ubBBthwobD5H+tqYtlESSiHPSZ+lgxY/Q2D58
 24z2VDzvCA5GA/lIxQu9Ss2F7eMcEyDnGNtJu8t/Khck+dPkn6MSDDTMh
 vpkPbXqwb98p2rlFOLa/GjTzlByFglOQfQbTo5kzYLuegzGweljvnmQan
 CAShEE5daFcIqYGHTeBKL+welLNcmaTn2kvYGEFuaKN00g5OIgfAz1Kc+
 PUMAvyWTlS6YOcFWVwJeOezmzbcKhvRHH6p6H6Bj/8wcMJ2gFEqbzKDH1
 Wikp6B+3P3tlpQUvPuOyzbXoPiZ42JbEaNUlm1kKEZzRXaSxHw6OqX167 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="308767163"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="308767163"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:04:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="695756689"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="695756689"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.132])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:04:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 14:04:47 +0200
Message-Id: <cover.1675339447.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915/dmc: some dmc id related fixes and
 cleanups
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

Address some static analyzer complaints around dmc id usage.

Jani Nikula (5):
  drm/i915/dmc: add proper name to dmc id enum and use it
  drm/i915/dmc: add for_each_dmc_id() and use it
  drm/i915/dmc: remove unnecessary dmc_id validity check
  drm/i915/dmc: add is_valid_dmc_id() and use it
  drm/i915/dmc: check incoming dmc id validity

 drivers/gpu/drm/i915/display/intel_dmc.c | 100 ++++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dmc.h |   2 +-
 2 files changed, 54 insertions(+), 48 deletions(-)

-- 
2.34.1

