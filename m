Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF03B7BD775
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 11:45:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0778A10E0E9;
	Mon,  9 Oct 2023 09:45:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD7310E0E9
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 09:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696844713; x=1728380713;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L7TXRvuofrf1WDCa1328CXc9ig1/ragH8ksyuLYUO2Q=;
 b=DYT/jztWJ1SnzI2t8YZ3fFLBjEkBDIeE5wE4VHHAsTWWVcuyY9JWcqLs
 WIqpR94c04aw219TOv1+HUQjf/SFGhtfR9ZSOBv+Fd55bcDoxGIR6AJQn
 MbnQJtcfHRiAmO4V0ocDnPwUG+b8JmvYJ6t4+8xYOG9syd3p+lgJLbu6z
 +5kZKGOQEYJgDfvToOx1x9399IgZrkELJJ2TE43WFk94gRTZv4kOCm9YG
 BbH0cxNFGICzRfo5vemd669UEaxivFYWUnprBhJKkidhNqdXCNY24WA21
 MQzSJHaLS6sVnxO2dL/3UyZADw8x9V7XmZKo/E1bbeAM9YEfm5Y/OgOSw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="369170480"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="369170480"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 02:45:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="788102806"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="788102806"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 09 Oct 2023 02:45:12 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Oct 2023 15:12:54 +0530
Message-Id: <20231009094254.653551-1-suraj.kandpal@intel.com>
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

