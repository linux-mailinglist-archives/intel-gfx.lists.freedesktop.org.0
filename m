Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5A59491B6
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 15:38:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5E1710E0B1;
	Tue,  6 Aug 2024 13:38:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GC4ux26D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7818E10E0B1
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2024 13:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722951531; x=1754487531;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=80ahXyHy44FNTunIMYcbTfa1tu+x6b77EeS9UAg4NGI=;
 b=GC4ux26DC5fQX84Hp/8YSVpfjElpWx48jDqqIfMoBBF7CXEW59/DBZWm
 gM/lz86c7p1S+OMrViE8WsFa3PP5IdWzky9FYqQycLVzQJPKNf06DBTZV
 WIXOpuGtr7z66Gt6qGpYWo71HMXpgAm0xR+zjWZhL+lXJS62U4Eu4Su1X
 W8lHcmL0759xJQpa5L/EMyPMfRXUSa39FmhjAkkdqhRPCuIvuNt2myExR
 gqbyCx8f1m3EVtR4j2RaxmIujewwxf0rT7WVHImuFvlrdGVpr7bm2pRQc
 59JA337SiXU0tVYm2VXYSXujS2pkjSgYB6nNIVqgLNNIpBTNrZh15qJek w==;
X-CSE-ConnectionGUID: 0jVIQRXmQSeoObNx5fiHLg==
X-CSE-MsgGUID: jJ++R1TFQJ+Odv5I9XsM5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="24756944"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="24756944"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:38:50 -0700
X-CSE-ConnectionGUID: 4XqnedcxRpyzLnzkOKY+Fg==
X-CSE-MsgGUID: aU6/lk2RRdSDQeWOH3fRmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="57090111"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:38:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/3] drm/i915: remove __i915_printk()
Date: Tue,  6 Aug 2024 16:38:29 +0300
Message-Id: <cover.1722951405.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

I don't think we need the bug reporting request in the few specific
places that lead to __i915_printk(). With them gone, there's really no
need for __i915_printk(). Just switch to regular drm logging.

Jani Nikula (3):
  drm/i915: remove a few __i915_printk() uses
  drm/i915: remove i915_report_error()
  drm/i915: remove __i915_printk()

 drivers/gpu/drm/i915/i915_driver.c |  8 ++---
 drivers/gpu/drm/i915/i915_utils.c  | 51 +++---------------------------
 drivers/gpu/drm/i915/i915_utils.h  | 16 ++++------
 3 files changed, 15 insertions(+), 60 deletions(-)

-- 
2.39.2

