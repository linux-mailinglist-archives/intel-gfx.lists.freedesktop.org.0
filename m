Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E5F7A72E0
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 08:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F383310E440;
	Wed, 20 Sep 2023 06:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4464D10E440
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 06:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695191886; x=1726727886;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5W5Lu/L69BWFiPQbKsoAFqRHkOFGJvBtwJknX24Br8Y=;
 b=RnPk9AbYuq1Xvv9D2YfTGRqbZzHq1R36X7zWWS3B/UolY3OIIyaUuUx7
 oqwEO3FyT6c31pq6v9nIuzofUaAZjsUeU7JIbkZbyX4bkA39smYJEmCYB
 gfQq6ZOr7sXUJn9r7hSL9BzzCFWSMjQKl764PVTLFPzM/ZZvyEDS9X5aq
 bZcymjXTLnut67NvTV/o5PulXIYPnn8Sujgn2mYLKQA4ukMcmpYwv8ffQ
 POlttchPc77zi3ssqK9qRV84KazEMltpIf9cKiGgyrvI4ZC+ZSs9+B7w8
 1728WQdpoAd/l8vmY8PJOYqfqi75LlfaaowyYfdX1Z9+tmFLPxYZJJC8A w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="379028800"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="379028800"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 23:38:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="836728150"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="836728150"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Sep 2023 23:38:04 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Sep 2023 12:06:09 +0530
Message-Id: <20230920063611.242942-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Refactor i915 HDCP for XE
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
Cc: jani.nikula@intel.com
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
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 620 +-----------------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   3 +
 4 files changed, 30 insertions(+), 602 deletions(-)

-- 
2.25.1

