Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E09760D07
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 10:31:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33FA910E3B6;
	Tue, 25 Jul 2023 08:31:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 002E310E3B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 08:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690273880; x=1721809880;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tnZAcCGMT+j8IHAsVKrZJrBRrW/kiUFzJOfbnVXqvio=;
 b=OvzKsi02lVVPU/e+Pv5gbb11F7llQvLwZUYSGdRYRp2HURREtDDPf1H6
 W9A9Sbx0QBehJnvktFsxDZCZUenDGalMUbCIOTvzQrNk1D+IN4tToi1P2
 bFi0Yuo2t/lGW7+AqlfGtjJbu5QpFZPV5y+s+YzanJ9pjkMsNblKmG2Li
 X2rh9g2+eaWRG9ygJVUZRLbBfeezJX3nVLIAc5mblBOI5IHFvTuSLuD1V
 w5w5BzdQgfRhLZGkg6yEnaaUjXmpl6vvVHAGxqSVNigkcyMRPdbIHU55v
 FugV4dEJxRQhjM0ozzXTyYxT00r014Vh0LI4DVIk9UKB3ZYm0uHxrVq/S Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="371262279"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="371262279"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 01:30:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="899849383"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="899849383"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orsmga005.jf.intel.com with ESMTP; 25 Jul 2023 01:30:54 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jul 2023 14:00:00 +0530
Message-Id: <20230725083002.3779717-1-chaitanya.kumar.borah@intel.com>
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

 drivers/gpu/drm/i915/display/intel_color.c | 28 +++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

-- 
2.25.1

