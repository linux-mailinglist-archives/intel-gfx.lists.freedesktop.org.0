Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FCF7293D8
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 10:54:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DE9610E662;
	Fri,  9 Jun 2023 08:54:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D0A810E662
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 08:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686300879; x=1717836879;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=esNwtBhteNPS/4x0vUEud3US6c1LOe2vgg3eDLWbsFE=;
 b=LnPaRWlHtHOrJjk0tyvJBuKNx/js/rdP7hS2s/HUYxvnnYyQ5QDpbyEJ
 r1iqXf/ScIetvLEVRJLVHXDeqLEo+blOU/gxt3fNhgnaRZCAW2w8BxB4+
 PQxHCf30e/u69cMRGJ850q43uefv8IKvwZxlarE4+c2SSUfOWvkEYC0Ov
 /QYf7aQ9bdwLdoWDiJbXL6qTGZGX46tV/2vNcHuG1wDIbtW0jc4HF5V6i
 47+JkPr45r2DZzcV1pLaiIAhh1dHbkJ9L4zz48Zo6ah1ejaJwg1HugBVO
 ItV/2CvRxrTvlRkz6TDbZDgm5Z0cFfuRZD3lSJXCP+D8idH2c0gZdVNj0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="337912406"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="337912406"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 01:54:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="780232131"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="780232131"
Received: from cohenyu1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.211.144])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 01:54:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 11:53:56 +0300
Message-Id: <20230609085359.1259932-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Move stolen memory handling details into
 i915_gem_stolen
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We are preparing for Xe driver. Stolen memory handling will be
different in Xe driver. Due to this we want to remove all stolen
memory handling details away from FBC code.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Jouni Högander (3):
  drm/i915: Move stolen memory handling into i915_gem_stolen
  drm/i915/fbc: Make FBC check stolen at use time
  drm/i915/fbc: Moved fence related code away from intel_fbc

 drivers/gpu/drm/i915/display/intel_fbc.c   | 64 ++++++++++++----------
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 37 +++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h | 13 +++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h   |  2 +
 drivers/gpu/drm/i915/i915_vma.h            |  5 ++
 5 files changed, 91 insertions(+), 30 deletions(-)

-- 
2.34.1

