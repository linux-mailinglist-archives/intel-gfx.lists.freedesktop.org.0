Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8001D605B07
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 11:22:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0042310E509;
	Thu, 20 Oct 2022 09:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E034510E509
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 09:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666257739; x=1697793739;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EOw/5Lv9wz9kBXTn9jgC51phfXPGfoZK/nV4H1cjL4s=;
 b=nMmhidjBlSaf0dAZEEtS0GN3aAKWsAn/I8zklg30LUF3eFB0mCKiXnVR
 2G6332qkINw++k3jT+r12RCUZZt3nHpdhOA0epJrZ3dSZ3AHyNkZvGAl/
 IzrIaomtJ65fDz76bNY/zjGzyRBUvmbDxdMkZ16keRz/+DN7xOeGq7EQ9
 Rx+F3x5gAipgfbKNDHW7jCGz1gq4eLpJXYsGoR4jA3lcAnoVZ62eusynT
 qi1/rZzSNAhzlKRsvFcNr6NP+wbgV31PDfhRCd21yDxfBNrRleofqo4cc
 JDebaxNo/NqMMk/N63ZVpBFeE/A1DM9Id4C/QyNyc9PCB/23aFvxdn1B5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286378322"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="286378322"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 02:22:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="662936118"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="662936118"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 20 Oct 2022 02:21:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 14:50:48 +0530
Message-Id: <20221020092049.857144-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Removing Connector iterator macro
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

Removing connector iterator macro (for_each_connector_on_encoder)
as it is only used once and changing the function to use macros
currently present.

Suraj Kandpal (1):
  drm/i915: Removing one use macro

 drivers/gpu/drm/i915/display/intel_display.h     |  4 ----
 .../gpu/drm/i915/display/intel_modeset_setup.c   | 16 +++++++++++++---
 2 files changed, 13 insertions(+), 7 deletions(-)

-- 
2.25.1

