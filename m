Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D7CAE9BD4
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 12:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 886D310E287;
	Thu, 26 Jun 2025 10:52:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ngDEI2Uo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A6D310E287
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jun 2025 10:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750935122; x=1782471122;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qyn9Ozq5YnJWmqaoYikBi8fPR8UF6Eq4cF12LUnCA5o=;
 b=ngDEI2Uob6ZJdKjSrOTSuJS9Zu5e851ehNUHaVhR5aDIj9QNcLnNm85l
 8UnZGv9akM96r4I5Xgk7fJF3Cbijp7s/6yLQfQStl0memAqCRvaPE1Vlu
 E6GbfmdWOem7PwGdqVArw4mL483wlqW6Tth3M1VvhAVt1xMyTiFX5tbAS
 e3F6AsjheOCeEBkKWXq0KytDf3CGqSnKyVAui3FSRIKYJaD+vSv/U5Wqh
 Sp3NqoMlhiRttEKFZ9qau4uRy9HXfnnjVmTYw+Sqs6YS9siE2A8+8rP9H
 pDt1xNSbsqTPuMci2Ysgs/6HcBuNAXJvz7/64aGIphawPeCwPrfZ6Z92X Q==;
X-CSE-ConnectionGUID: TgX/x5XhQaCxs+UhlcPCBw==
X-CSE-MsgGUID: YbuqmJsYRiWUQYKEOSq9/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="75772189"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="75772189"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 03:52:02 -0700
X-CSE-ConnectionGUID: Uw1h2mAKS6+pVt7HWDBlHA==
X-CSE-MsgGUID: JGDmu29kSEuk/x4X2O2C/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="151907595"
Received: from unknown (HELO
 dg2adlp-Alder-Lake-Client-Platform.iind.intel.com) ([10.223.55.70])
 by orviesa010.jf.intel.com with ESMTP; 26 Jun 2025 03:52:01 -0700
From: Mohammed Thasleem <mohammed.thasleem@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: karthik.poosa@intel.com, anshuman.gupta@intel.com,
 Mohammed Thasleem <mohammed.thasleem@intel.com>
Subject: [PATCH v2 0/1] Enable VRSR
Date: Thu, 26 Jun 2025 16:21:15 +0530
Message-Id: <20250626105116.106154-1-mohammed.thasleem@intel.com>
X-Mailer: git-send-email 2.25.1
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

Enable VRAM Self Refresh.

Mohammed Thasleem (1):
  tests/intel/kms_pm_vrsr: Add test to validate VRAM Self Refresh

 tests/intel/kms_pm_vrsr.c | 623 ++++++++++++++++++++++++++++++++++++++
 tests/meson.build         |   1 +
 2 files changed, 624 insertions(+)
 create mode 100644 tests/intel/kms_pm_vrsr.c

-- 
2.25.1

