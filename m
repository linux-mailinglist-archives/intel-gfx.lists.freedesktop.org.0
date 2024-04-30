Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AED178B6A98
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 08:42:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0076310E0D9;
	Tue, 30 Apr 2024 06:42:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GR0DOwWO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B617E10E0D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 06:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714459373; x=1745995373;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x6MRAHGXpDlstTTYwT4p6mfYHlVBHGppdjBio8ncfgw=;
 b=GR0DOwWOGeO7p0H72kXAvtmSPK550qorbuZcgi1uEPdTV7o6r5vGkhiK
 WMGzG47P+PpGB9o6D+36fk1J6EsalFMn6DowHHTAZkchyP2l9K6PkLzct
 nj3C/uLIclrq0hXmbF6anIpZZxa/J87Fkb16Qshrwm5/oH/BfFkXZ1psv
 vZ9DTs8t0MJmZBm8JaVEG+GsC947/7xMAVNHsL1m+Ui4jeOruoVZATM2i
 VjYqvwcttudkhVvRWmks+jw7h2yYH8m0LeeGwbBfLGztCyohxY/c9+7q+
 yn7lsp8BYlJStA41B3qRTlWgl4Z3SRMpke/CCOeXSVKt34KJuWsC+X/we Q==;
X-CSE-ConnectionGUID: R+zlc5o8R4yGnWjodaHGbA==
X-CSE-MsgGUID: maWPWMy4Q+mIEKo3NcePcw==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="9979478"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; 
   d="scan'208";a="9979478"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 23:42:52 -0700
X-CSE-ConnectionGUID: mqclNWn8RKmNN7JIrPtvRw==
X-CSE-MsgGUID: +lffad7qR92HrEKnBjT7aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="30835247"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa005.fm.intel.com with ESMTP; 29 Apr 2024 23:42:50 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Fixes in hdcp remote capability
Date: Tue, 30 Apr 2024 12:10:27 +0530
Message-ID: <20240430064030.887080-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

This patch series aims to avoid page fault errors caused by aux
early assignment as connector may not be mst and using encoder
to check for connector type.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hdcp: Move aux assignment after connector type check
  drm/i915/hdcp: Check mst_port to determine connector type

 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

-- 
2.43.2

