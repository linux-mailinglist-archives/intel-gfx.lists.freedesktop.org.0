Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F998D1966
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:29:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F43610FE51;
	Tue, 28 May 2024 11:29:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FbPWpE0/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAB6710FE51
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716895752; x=1748431752;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vJj9k/sjgT/YYunxs4BurZDi/hoNKUkFuaNTLWWbRHI=;
 b=FbPWpE0/CKGupkkAL771xSEHCA6BEzjjalgsWPZGJ63tolp1DkL2ckOa
 U/iI+KYSvGGlwCvGiQ0WWXj4H6kNSCiSNbJwne/rFAv3A4aUS2bNCb4OB
 PPp3XWu2WgzTJPi730LyWbe3TwTyPSgiQl7S8SwckINAqvaMGocmrUsgV
 5q++jYAkSi29JzgLp5GZ05qBcV+O2yZXGAY2R0NGxQkyAPjvesU+RHms/
 werdMB3kQdOsQXAttoRueCTRiD+UGuVUDw/C1r1VPWtBp23whuexha54S
 6s7F0LgJvWnEgd6UbMahgV2Lj5XpmImnTY8UWvTseo8jOPpTXoq7kOw7W Q==;
X-CSE-ConnectionGUID: c1BghbpxRTqH5UEVayVYXA==
X-CSE-MsgGUID: bRkz3gKZQ1yj8vLApZS6Lw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13078567"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13078567"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:29:11 -0700
X-CSE-ConnectionGUID: jltcxcmSTwKDj3+weNbC8g==
X-CSE-MsgGUID: 6/cONkCxTp2RpM10k2P1Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="34962271"
Received: from dgoldx-mobl1.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.249.36.167])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:29:10 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@intel.com
Subject: [PATCH 0/2] drm/i915: prevent some static analyzer warnings
Date: Tue, 28 May 2024 14:28:59 +0300
Message-Id: <20240528112901.476068-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
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

Hi,

Here's a couple of patches to prevent some static analyzer warnings.
They are not really an issue as is, but with these two patches the
code will be cleaner and a bit safer, while at the same time silencing
these warnings.

Plese review.

Cheers,
Luca.


Luca Coelho (2):
  drm/i915/bios: double check array-boundary in parse_sdvo_lvds_data
  drm/i915: move uapi.event outside spinlock in intel_crtc_vblank_work

 drivers/gpu/drm/i915/display/intel_bios.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_crtc.c |  2 +-
 2 files changed, 13 insertions(+), 1 deletion(-)

-- 
2.39.2

