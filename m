Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A33B9B45AD
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 10:25:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E19A10E5F0;
	Tue, 29 Oct 2024 09:25:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i6ffJmQm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A4CB10E5EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 09:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730193933; x=1761729933;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kO5SFFtz/TQyCJj0kNciqr4xmoWTnlu56GAEu4dkMAM=;
 b=i6ffJmQmufPJXhuYIcnbFvHf9SqzPPdTZbgt0eCR449hTn4rFRwILTxk
 7++n0GVbRS5pGjC45kWVLdOFqJgCwnyCsoUzXjOTpniYUVXSDxGyk1V5l
 MSfL25MFiIbj+Qjev7ocneew9Ti+sKSNKPgXsvaPu5IgW9RsY91uH6Oi+
 +kwi2jUbU2OkNIKsE7IQHD6DcGrjEw3NOUBYDAJ0zz6iFY3HTnQtdpKBT
 v3fZWqtv72ndwQT1L83fX628GsWdWsJZ1NTr29xt9tJ10PbbSA/q8S57A
 +WNWUn1hVNqoswuH3gtsLYDHLWzMpu0I22y3lvKtLo4ExB5R24b3WxnhS g==;
X-CSE-ConnectionGUID: gU4ZEvwjTQS87wRfvCKl/Q==
X-CSE-MsgGUID: vtIW/B4qTO2yYnPF0MFCPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="29723953"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="29723953"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 02:25:32 -0700
X-CSE-ConnectionGUID: 8pJmV2VPQEeIOcTHJoCefg==
X-CSE-MsgGUID: YWIndSU9ShG3sbwuy1uxQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="105245173"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 02:25:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 0/4] drm/i915: add dedicated lock for each sideband
Date: Tue, 29 Oct 2024 11:25:22 +0200
Message-Id: <cover.1730193891.git.jani.nikula@intel.com>
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

It's misleading to use the same sideband mutex for LPT/WPT IOSF, VLV/CHV
IOSF, and punit. Add dedicated locks for clarity.

Jani Nikula (4):
  drm/i915/sbi: add intel_sbi_{lock,unlock}()
  drm/i915/sbi: add a dedicated mutex for LPT/WPT IOSF sideband
  drm/i915: add a dedicated mutex for VLV/CHV IOSF sideband
  drm/i915: hide VLV PUNIT IOSF sideband qos handling better

 .../gpu/drm/i915/display/intel_pch_refclk.c   | 26 ++++++++---------
 drivers/gpu/drm/i915/i915_driver.c            |  8 ++++--
 drivers/gpu/drm/i915/i915_drv.h               | 10 ++++++-
 drivers/gpu/drm/i915/intel_sbi.c              | 22 ++++++++++++++-
 drivers/gpu/drm/i915/intel_sbi.h              |  4 +++
 drivers/gpu/drm/i915/vlv_sideband.c           | 28 +++++++++++++++----
 drivers/gpu/drm/i915/vlv_sideband.h           |  3 ++
 7 files changed, 79 insertions(+), 22 deletions(-)

-- 
2.39.5

