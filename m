Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A71374D7FE
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 15:44:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD7A10E0EF;
	Mon, 10 Jul 2023 13:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC32C10E0EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 13:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688996656; x=1720532656;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lbtglhnHmHodcurhx4x29dqEr7GYXlrfDYUzP/6LaAY=;
 b=LT6tR+UcR6ewuzTSLEpnGhLEM9c/M9KalW2bNJEERPLbUmlA/FrJonHe
 fpj6BrM8o2ugtuOOBaw760hGnYbXfK/YYNdJtoGxsTmS2GOLDFeB8PI4+
 /dTqLxEp9AuxH/wmJhJg3X5tcMEZPVISzDYXbQ4zUbSQUAk97MDzB3O03
 AF/NZTWf59R8I7/1lqf0L/8EqSnvzrxqtGDzWvYyNpSBgwyi27cNef8zD
 KuD7W8Sw1M51WpC8rvUU4CHFDRHS2foSbfTGS9yjSTFhep70V+p+u+TmE
 Md2saXPo104NHQc0yeOGYNs4UKTwNU9a1Yn3lUJhfKTE6sZvG6XJpJ8eb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="343939133"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="343939133"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 06:44:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="1051364394"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="1051364394"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jul 2023 06:44:14 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jul 2023 19:13:15 +0530
Message-Id: <20230710134317.2794177-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] MTL Degamma implementation
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

MTL onwards Degamma LUT/PRE-CSC LUT precision has been increased from
16 bits to 24 bits. Currently, drm framework only supports LUTs up to 16
bit precision. Until a new uapi comes along to support higher bitdepth,
upscale the values sent from userland to 24 bit before writing into the
HW to continue supporting degamma on MTL.

To avoid pipe config mismatch between 24 bit HW lut values and 16 bit
userspace sent values, convert back the 24 bit lut values read from HW
to 16 bit values.

Chaitanya Kumar Borah (2):
  drm/i915/color: Upscale degamma values for MTL
  drm/i915/color: Downscale degamma lut values read from hardware

 drivers/gpu/drm/i915/display/intel_color.c | 27 +++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

-- 
2.25.1

