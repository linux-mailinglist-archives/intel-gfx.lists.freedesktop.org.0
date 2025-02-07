Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B61FA2C0C0
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 11:41:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B4010EAA9;
	Fri,  7 Feb 2025 10:41:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CIf4xcOu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607B410EAA5;
 Fri,  7 Feb 2025 10:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738924879; x=1770460879;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0lt3wC9ielUE+OGTupYDJDnjPPw6oHfJotGKKQSTCxs=;
 b=CIf4xcOuIYT6G4/2bnx9IknK3VQ978irTwrIVGFPF1PArPyKzvlf3sbI
 CuJA4gr+VOjR6p1koElBuW9kV7+fDdvc8yFYRJKzp/WXZp2nSgntafaE6
 460sAe2n0IfxBjJOtS6/M/7rk4Wul2ijA8fOriKIrFviqAlkqSZ8tpCXE
 vaBjV5U+R8jcz99j2vkBrr5QGPPZVrlZmnLMfRCoADWBWwfa3xl6Ogw6x
 n9D2ZbOWkad3fTR0R4ihNUsuGe2cVK+ehoOvh1cCzQs7zrwaD/9yN8t27
 5CRhr5Py/Lfng7GXsHBZBl7y5A4JE3nw67OwxfHH+Kn5bsmFhJbqybntb w==;
X-CSE-ConnectionGUID: VGMTJBMNRGanrfIqoqYAvQ==
X-CSE-MsgGUID: hpHskP+GQOa2np63usg0Dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="38762400"
X-IronPort-AV: E=Sophos;i="6.13,266,1732608000"; d="scan'208";a="38762400"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:41:19 -0800
X-CSE-ConnectionGUID: +sv45pSgRwaXzJZLgD3RZA==
X-CSE-MsgGUID: 8OfdH0lpRSuvpMxAd0xzug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="148706353"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:41:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	suraj.kandpal@intel.com
Subject: [PATCH 0/3] drm/i915/hdcp: move hdcp debugfs to intel_hdcp.c, cleanups
Date: Fri,  7 Feb 2025 12:41:09 +0200
Message-Id: <cover.1738924826.git.jani.nikula@intel.com>
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

Jani Nikula (3):
  drm/i915/hdcp: Move HDCP debugfs to intel_hdcp.c
  drm/i915/hdcp: rename intel_connector to connector
  drm/i915/hdcp: Convert platform checks to use display->platform

 .../drm/i915/display/intel_display_debugfs.c  | 74 +-------------
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 96 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_hdcp.h     |  4 +
 3 files changed, 93 insertions(+), 81 deletions(-)

-- 
2.39.5

