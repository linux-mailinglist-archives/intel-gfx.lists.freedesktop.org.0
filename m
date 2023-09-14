Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E45207A0021
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 11:35:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 139A410E51E;
	Thu, 14 Sep 2023 09:35:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 474A310E51E
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 09:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694684104; x=1726220104;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b+Oi8SA/EjnnkkcyxX14+fQNQRwMo0wKwcBRx4RAke0=;
 b=E+8xOS85nAvGMJNJO+y7BFfAr4n45dOpP/c2cWoSiqwcn7JvBAgVbrXe
 Dq/Oj2miQk7xv6YszBP8C2yvZ91+Jy2EPkDP3pFPfftZuM64ov+mCnbbv
 /pelUD7+ULvmB+r3nfdxNxy2vfnQRwu87Gn5noNKqd4H//bzlFZUlEDEc
 uY5hmZw62QM1OJ4Fw+ySek2ZYFKmEOkqd9bciBVJQeizcPPk+vlQR1e9/
 53yijyQZcbv5bOq4a184aG+weGWU2jtxe/cwwxnkbjKTcv+ZlVyEP1A5o
 ngQFi7OzuDW+Ppkj5BR09cFzEg84NFvqLXjW6bxALy8EK3pGUFwrsz2L7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="409856663"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="409856663"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 02:35:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="773825306"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="773825306"
Received: from haslam-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 02:35:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 12:34:56 +0300
Message-Id: <cover.1694684044.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/display: remove last uses of
 GEM_BUG_ON/GEM_WARN_ON
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

The display code has almost no uses of GEM_BUG_ON/GEM_WARN_ON. Remove
the last ones to be clean of them.

Jani Nikula (3):
  drm/i915/fbc: replace GEM_BUG_ON() to drm_WARN_ON()
  drm/i915/fb: replace GEM_WARN_ON() with drm_WARN_ON()
  drm/i915/dpt: replace GEM_BUG_ON() with drm_WARN_ON()

 drivers/gpu/drm/i915/display/intel_dpt.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_fbc.c    | 14 ++++++++------
 3 files changed, 11 insertions(+), 8 deletions(-)

-- 
2.39.2

