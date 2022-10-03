Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBA15F3983
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 01:04:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDCFA10E1C4;
	Mon,  3 Oct 2022 23:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB14510E1C4;
 Mon,  3 Oct 2022 23:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664838264; x=1696374264;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MeaX0dfLVrIWG5cwX1TNop26DMLgiDRNcd9bpZBh62s=;
 b=d1t1OmH5kimGwYJyaZ8INy9jZfF2EChp+El1td5B/KxZI0Of5POATnfS
 2Ke2JcQ8/XpttLl+eGoCfukMV36DphSJpsl02noDrpq3zeFLux4olRru7
 oW6iBT8RqyFcU37USPdwXnh8cLIBL2wk8aufd95Po/TJ35VMIp3Mt889E
 wkCLi0zr970X8ctLLIXJhjk83CbX0LwFZVUB8wPP0heMK3+HD5cU2JYi8
 fJzPB+tSGfuU0kCJfEnrEFNUjk0zuZ02W0OpxNZymxGheWuvezevEEuTW
 5giufELU2JFxFzXhjv4pVRYkdYBLqLtO1+lAXuaIXJoIk60/NfQbs7HzH A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="366878580"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="366878580"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 16:04:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="798917095"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="798917095"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga005.jf.intel.com with ESMTP; 03 Oct 2022 16:04:24 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon,  3 Oct 2022 16:04:06 -0700
Message-Id: <20221003230408.7313-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/slpc: Update frequency debugfs for
 SLPC
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

Remove the RPS related information that is not valid when
SLPC is enabled.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (2):
  drm/i915: Add a wrapper for frequency debugfs
  drm/i915/slpc: Update the frequency debugfs

 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 157 +------------
 drivers/gpu/drm/i915/gt/intel_rps.c           | 206 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h           |   3 +
 3 files changed, 210 insertions(+), 156 deletions(-)

-- 
2.35.1

