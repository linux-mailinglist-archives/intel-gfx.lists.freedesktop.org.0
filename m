Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FE3A984EA
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 11:10:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5457010E1AE;
	Wed, 23 Apr 2025 09:10:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TAXmAmno";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D98D810E0E9;
 Wed, 23 Apr 2025 09:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745399397; x=1776935397;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T1XAPNhY1PwvdxFM+LpkDczhf6jN+hmp1Y1mGEzVQn4=;
 b=TAXmAmnoq7+XBizsXtyd33eVzMwN+alAhAk96NQuCoJ3EOCYSgHWhr0H
 zIdv3gU4rubxwyyg1CdELMaUPgGKFgCpIvjMYwoBYUbRGF3vPM7qhR+HK
 lQC3qM7JThku6QHSqN43dqlW5PgV1b9FaM9D23O6b+7vqpS5YboWuvYWh
 Wdd/HI/+lVW2Bw1ZSRxDnqe6Z2mXsySAYjV6Nn5qwdXb7gTRQ0yhhdXyF
 XSa/lhuxGEE83VzC3jyRjnuXNyFIGpRLUQp7eHxleXlchwUxktS8XYkv5
 XOZxajcv3YiGrIf7iXcln0Z2ISR/7O/V0Rds2jwfoTqDAaDzsdjSFJ2Ob A==;
X-CSE-ConnectionGUID: VbvauBIAQbm09olfQsJNFw==
X-CSE-MsgGUID: EGxigdRmQSev8HrCf9XUpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46686913"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46686913"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:09:57 -0700
X-CSE-ConnectionGUID: Z5Uyr5K6RsKwDpVfnc5gDw==
X-CSE-MsgGUID: oehgn6ggS7mYfTGofZDErw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="163317696"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.175])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:09:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/3] drm/i915/display: remove intel_de_*() compat wrappers
Date: Wed, 23 Apr 2025 12:09:45 +0300
Message-Id: <cover.1745399318.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

A milestone, with this all the intel_de_*() users pass in struct
intel_display, and we can remove the compat wrappers. \o/

Jani Nikula (3):
  drm/i915/dpt: convert intel_dpt_common.c to struct intel_display
  drm/i915/hdmi: convert rest of intel_hdmi.c to struct intel_display
  drm/i915/de: drop drm_i915_private compat wrappers from intel_de_*()

 drivers/gpu/drm/i915/display/intel_de.h         | 14 ++++----------
 drivers/gpu/drm/i915/display/intel_dpt_common.c | 15 +++++++--------
 drivers/gpu/drm/i915/display/intel_hdmi.c       | 14 +++++++-------
 3 files changed, 18 insertions(+), 25 deletions(-)

-- 
2.39.5

