Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C7F7BD7BF
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 11:57:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ACD810E0EB;
	Mon,  9 Oct 2023 09:57:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5106D10E0EB
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 09:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696845449; x=1728381449;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L7TXRvuofrf1WDCa1328CXc9ig1/ragH8ksyuLYUO2Q=;
 b=JzZ1YVFnFcBHtTNsaKSEpBKM00fAajwdBFIb6FaeF5o1DqgLys92VvUY
 s16Xp7ihZyqxGLE8P0/YM4TJ5DAOHAFapd9dYdJUzpsPtdkpfumFNyDUS
 75hkwXKNz298XWeIUP+PT+n6mVnih/YfaTmAyHqESiR7H5ju1YB4BelAc
 9yOFZwa3V2pS2vzA2maSGqN7Q6fX7bN/n8OT7/7td7KUBs48GcaCgZWk1
 ku7LzjB1v0NsAdVaMoj/uFSO5sXykD4ceWzvmxMyZBzNIb6g5/IvHDaSs
 MEq5ReoqjlKUKTglSiMjQytQg7/gjn0AjbqpdA7OSKtHwg32zHCPh3EpA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="381371351"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="381371351"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 02:57:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="782432313"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="782432313"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga008.jf.intel.com with ESMTP; 09 Oct 2023 02:57:27 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Oct 2023 15:25:35 +0530
Message-Id: <20231009095537.653619-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/2] Refactor i915 HDCP for XE
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

This patch series contains some refactors for i915 side of things
which will help with a cleaner code and maximum reuse of code
for XE going forward.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hdcp: Move checks for gsc health status
  drm/i915/hdcp: Move common message filling function to its own file

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   8 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 617 +-----------------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   1 +
 .../drm/i915/display/intel_hdcp_gsc_message.c | 592 +++++++++++++++++
 .../drm/i915/display/intel_hdcp_gsc_message.h |  72 ++
 6 files changed, 692 insertions(+), 599 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h

-- 
2.25.1

