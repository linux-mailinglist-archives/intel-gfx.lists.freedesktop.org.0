Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3148F6CD50D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 10:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8868410E51B;
	Wed, 29 Mar 2023 08:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0808A10E506
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 08:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680079633; x=1711615633;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gisHwk4lwex2emjvrmYkIqNOOp5SaGPv/l9guK07Dvk=;
 b=BHqFnHhEpCCZjZJarISnD+mVbaIdFcH+8hQFRgfC+Ukik6yh12XA4Z21
 1oSPlMDiTf+acw4VjHiW5jG2c0F5OKsp+fjq6mmhUHKWDlmVXN58ZT7RP
 hAIdP/GTdRnPhTcNsrZA6g48uEOF8DSc/cV+BX643iF0MzkK3z6QWNJYA
 hsabs0PMBXNYvhBbtRq9kVhhS9AugqOxu41DVQM9mDFMYsFl2ydwElJ7a
 MQL5HbK3K3VlizvNWsw/gRff9cWwyfSCUbv4F3gbn+Kp6cEAOZcBDeCLx
 v9DHp3TN9rF5nGPYyJF2MwXMSAUFC5tW695pfPYJkUw0C16f6PDnTKF2g A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="427093291"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="427093291"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 01:46:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="773487348"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="773487348"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 01:46:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 14:14:47 +0530
Message-Id: <20230329084449.717954-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Update DSC Bigjoiner BW check
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

Update the DSC Bigjoiner BW check for computing compressed bpp:
-As per latest Bspec update bigjoiner interface bits for DP for
DISPLAY > 12 is 36.
-Use current cdclk for the calculation of compressed_bpp instead of
maxcdclk.

Ankit Nautiyal (2):
  drm/i915/dp: Update Bigjoiner interface bits for computing compressed
    bpp
  drm/i915/dp: Use current cdclk for DSC Bigjoiner BW check

 drivers/gpu/drm/i915/display/intel_dp.c     | 10 +++++++---
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  1 +
 3 files changed, 9 insertions(+), 3 deletions(-)

-- 
2.25.1

