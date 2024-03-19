Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D7487FD9E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 13:33:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6305410EA21;
	Tue, 19 Mar 2024 12:33:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E9+CjUPM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC8A10E085
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 12:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710851622; x=1742387622;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9yp2cJP3JK+PwwrGINPzVd1xBrHabKhMeJJxiHA9GNM=;
 b=E9+CjUPMeP+hXwYm+4ctyJvQJG6ZoJvsk5/7gPltc6YY0IkGN7D71upY
 S094Rgcf8SmHkCT30vIY8+mTHNx6Pxz5SgI5b84BZD5S/4FtvPeV3gWjx
 ZlgpQOiJQAMw+sXY/+Dr6WCetik42SEH0KjT+08km+7Fd9Mw6nFfRIv6B
 PsRbZsJZ2wTumi5J/bNRSUfU6zMkBYXezdBrGhGM2AP6cbh38T5YhS/oP
 a3qi9Lf0dbtXJvU6Bfc8uGIeaQlw8lPR660RjJfxHHMrmAMBkcnI7GN3T
 zjCcN+uTFtXQ7D7dTamCw/atWcnaN3VrXNvBw2KZrnsyBqRKcSUa86HE9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5894280"
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; 
   d="scan'208";a="5894280"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 05:33:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; d="scan'208";a="18437959"
Received: from jlaghzal-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.53.224])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 05:33:39 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/5] Wa_16021440873 and early transport fixes
Date: Tue, 19 Mar 2024 14:33:22 +0200
Message-Id: <20240319123327.1661097-1-jouni.hogander@intel.com>
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

This patch set is implementing Wa_16021440873 and fixing some problems
with cursor su area alignment and PIPE_SRCSZ_ERLY_TPT writing.

Jouni Högander (5):
  drm/i915/psr: Calculate PIPE_SRCSZ_ERLY_TPT value
  drm/i915/psr: Move writing early transport pipe src
  drm/i915/display/intel_psr: Fix intel_psr2_sel_fetch_et_alignment
    usage
  drm/i915/display: Add definition for MCURSOR_MODE_64_2B
  drm/i915/display: Implement Wa_16021440873

 drivers/gpu/drm/i915/display/intel_cursor.c   | 24 ++++-
 drivers/gpu/drm/i915/display/intel_display.c  |  9 --
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 88 ++++++++++++++-----
 drivers/gpu/drm/i915/i915_reg.h               |  1 +
 5 files changed, 91 insertions(+), 33 deletions(-)

-- 
2.34.1

